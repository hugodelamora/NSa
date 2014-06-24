using log4net.Appender;
using log4net.Config;
using log4net.Repository.Hierarchy;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity.Core.EntityClient;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace NominasSAT
{
    public static class Log4NetManager
    {
        public static void InitializeLog4Net()
        {
            //initialize the log4net configuration based on the log4net.config file
            XmlConfigurator.ConfigureAndWatch(new FileInfo(System.AppDomain.CurrentDomain.BaseDirectory + @"\Log4Net.config"));

            Hierarchy hier = log4net.LogManager.GetRepository() as Hierarchy;
            if (hier != null)
            {
                // Get ADONetAppender by name
                AdoNetAppender adoAppender = (from appender in hier.GetAppenders()
                                              where appender.Name.Equals("DbAppender", StringComparison.InvariantCultureIgnoreCase)
                                              select appender).FirstOrDefault() as AdoNetAppender;

                // Change only when the auto setting is set
                if (adoAppender != null && adoAppender.ConnectionString.Contains("{auto}"))
                {
                    adoAppender.ConnectionString = ExtractConnectionStringFromEntityConnectionString(
                            GetEntitiyConnectionStringFromWebConfig());

                    //refresh settings of appender
                    adoAppender.ActivateOptions();

                }
            }
        }

        private static string GetEntitiyConnectionStringFromWebConfig()
        {
            return ConfigurationManager.ConnectionStrings["NominasSATLogEntities"].ConnectionString;
        }

        private static string ExtractConnectionStringFromEntityConnectionString(string entityConnectionString)
        {
            



            // create a entity connection string from the input            
            EntityConnectionStringBuilder entityBuilder = new EntityConnectionStringBuilder(entityConnectionString);

            // read the db connectionstring
            return entityBuilder.ProviderConnectionString;
        }
        private static  void test() {


            // Specify the provider name, server and database.
            string providerName = "System.Data.SqlClient";
            string serverName = ".";
            string databaseName = "AdventureWorks";

            // Initialize the connection string builder for the
            // underlying provider.
            SqlConnectionStringBuilder sqlBuilder =
                new SqlConnectionStringBuilder();

            // Set the properties for the data source.
            sqlBuilder.DataSource = serverName;
            sqlBuilder.InitialCatalog = databaseName;
            sqlBuilder.IntegratedSecurity = true;

            // Build the SqlConnection connection string.
            string providerString = sqlBuilder.ToString();

            // Initialize the EntityConnectionStringBuilder.
            EntityConnectionStringBuilder entityBuilder =
                new EntityConnectionStringBuilder();

            //Set the provider name.
            entityBuilder.Provider = providerName;

            // Set the provider-specific connection string.
            entityBuilder.ProviderConnectionString = providerString;

            // Set the Metadata location.
            entityBuilder.Metadata = @"res://*/AdventureWorksModel.csdl|
                            res://*/AdventureWorksModel.ssdl|
                            res://*/AdventureWorksModel.msl";
            Console.WriteLine(entityBuilder.ToString());

            using (EntityConnection conn =
                new EntityConnection(entityBuilder.ToString()))
            {
                conn.Open();
                Console.WriteLine("Just testing the connection.");
                conn.Close();
            }
            
        }
    }
}