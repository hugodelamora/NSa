using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using NominasSAT.Models;
using System.Security.Cryptography.X509Certificates;
using System.Configuration;
using BotDetect.Web.UI.Mvc;
using Microsoft.Practices.EnterpriseLibrary.Logging;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;
using NominasSAT.Logger;

namespace NominasSAT.Controllers
{
    [Authorize]
    public class AccountController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        public AccountController()
            : this(new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext())))
        {

        }

        public AccountController(UserManager<ApplicationUser> userManager)
        {
            UserManager = userManager;
            var userValidator = UserManager.UserValidator as UserValidator<ApplicationUser>;
            userValidator.AllowOnlyAlphanumericUserNames = false;
        }

        public UserManager<ApplicationUser> UserManager { get; private set; }

        //
        // GET: /Account/Login
        [AllowAnonymous]
        public ActionResult Login(string returnUrl)
        {
            loghemc();


            ViewBag.ReturnUrl = returnUrl;
            return View();
        }
        public void loghemc() {
            BasicLogger.Log.Critical("Hello World Critical");
            BasicLogger.Log.Error("Hello World Error");
            BasicLogger.Log.Warning("Hello World Warning");
     /*      
            BasicLogger.Log.ErrorWithKeywordsControllerAction("Error With Keywords ControllerAction");
            BasicLogger.Log.ErrorWithKeywordsControllerActionAndKeywordsPage("Error With Keywords ControllerAction And Keywords Page");
            BasicLogger.Log.ErrorWithKeywordsDiagnosticStartStop("Error With Keywords DiagnosticStartStop");
            BasicLogger.Log.ErrorWithNoKeywordsDefined("Error With No Keywords Defined");


            BasicLogger.Log.WarningWithEventTaskAmazingTask("WarningWithEventTaskAmazingTask");
            BasicLogger.Log.WarningWithEventTaskPage("WarningWithEventTaskPage");
            BasicLogger.Log.WarningWithNoEventTaskDefined("WarningWithNoEventTaskDefined");


            BasicLogger.Log.WarningWithOpcodePage("WarningWithOpcodePage");
   */
        }

        //
        // POST: /Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Login(LoginViewModel model)
        {
            try
            {
                ViewBag.CustomErrors = "";

                if (ModelState.IsValid)
                {
                    var user = await UserManager.FindAsync(model.UserName, model.Password);

                    if (user != null)
                    {
                        await SignInAsync(user, false);
                        return RedirectToLocal("~/");
                    }
                    else
                    {
                        ViewBag.CustomErrors += "Usuario y/o contraseña inválidos";
                        return View(model);
                    }
                }

                // Si llegamos a este punto, es que se ha producido un error y volvemos a mostrar el formulario
                return View(model);

            }
            catch (Exception ex)
            {
                ViewBag.CustomErrors += ex.Message;
                return View(model);
            }
        }

        //
        // GET: /Account/Login
        [AllowAnonymous]
        public ActionResult LoginCSD()
        {
            return View();
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> LoginCSD(LoginCSDViewModel model, HttpPostedFileBase cer, HttpPostedFileBase key)
        {
            try
            {
                ViewBag.CustomErrors = "";

                if (ModelState.IsValid)
                {
                    //Validate certificates
                    byte[] cer_InBytes = new byte[(int)cer.InputStream.Length];
                    cer.InputStream.Read(cer_InBytes, 0, (int)cer.InputStream.Length);
                    byte[] key_InBytes = new byte[(int)key.InputStream.Length];
                    key.InputStream.Read(key_InBytes, 0, (int)key.InputStream.Length);
                    X509Certificate2 certificadoValidate = new System.Security.Cryptography.X509Certificates.X509Certificate2(cer_InBytes);
                    byte[] pfx = ValidateCertificate(model.UserName.ToUpper(), cer_InBytes, key_InBytes, model.CertificadoContrasena);
                    if (pfx == null)
                    {
                        throw new Exception("El certificado no es valido");
                    }

                    var user = UserManager.FindByName(model.UserName);
                    if (user != null)
                    {
                        await SignInAsync(user, false);
                        return RedirectToLocal("~/");
                    }
                    else
                    {
                        ViewBag.CustomErrors += "Usuario, contraseña o certificados inválidos";
                        return View(model);
                    }
                }

                // Si llegamos a este punto, es que se ha producido un error y volvemos a mostrar el formulario
                return View(model);

            }
            catch (Exception ex)
            {
                ViewBag.CustomErrors += ex.Message;
                return View(model);
            }
        }

        //
        // GET: /Account/Register
        [AllowAnonymous]
        public ActionResult Register()
        {
            return View();
        }

        //
        // POST: /Account/Register
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Register(RegisterViewModel model, HttpPostedFileBase cer, HttpPostedFileBase key)
        {
            try
            {
                ViewBag.CustomErrors = "";

                if (ModelState.IsValid)
                {
                    byte[] cer_InBytes = new byte[(int)cer.InputStream.Length];
                    cer.InputStream.Read(cer_InBytes, 0, (int)cer.InputStream.Length);

                    byte[] key_InBytes = new byte[(int)key.InputStream.Length];
                    key.InputStream.Read(key_InBytes, 0, (int)key.InputStream.Length);

                    X509Certificate2 certificadoValidate = new System.Security.Cryptography.X509Certificates.X509Certificate2(cer_InBytes);

                    byte[] pfx = ValidateCertificate(model.RFC.ToUpper(), cer_InBytes, key_InBytes, model.CertificadoContrasena);

                    if (pfx == null)
                    {
                        throw new Exception("El certificado no es valido");
                    }

                    //Create the new User
                    var user = new ApplicationUser()
                    {
                        Nombres = model.Nombres,
                        Apellidos = model.Apellidos,
                        UserName = model.RFC,
                        Email = model.Email,
                        RFC = model.RFC,
                        CertificadoCer = model.CertificadoCer,
                        CertificadoKey = model.CertificadoKey,
                        CertificadoContasena = model.CertificadoContrasena,
                        PFX = pfx,
                        CompletedWizard = false
                    };

                    //Use the default password
                    var result = await UserManager.CreateAsync(user, System.Configuration.ConfigurationManager.AppSettings["defaultPassword"].ToString());
                    if (result.Succeeded)
                    {
                        await SignInAsync(user, isPersistent: false);

                        //Crear la licencia en BDD
                        var licencia = new Licencia();

                        return RedirectToAction("Index", "Home");
                    }
                    else
                    {
                        AddCustomErrors(result);
                    }
                }

                // Si llegamos a este punto, es que se ha producido un error y volvemos a mostrar el formulario
                return View(model);

            }
            catch (Exception ex)
            {
                ViewBag.CustomErrors += ex.Message + "<br>";
                return View(model);
            }
        }

        //
        // GET: /Account/Register
        [AllowAnonymous]
        public ActionResult Recovery()
        {
            return View();
        }

        //
        // POST: /Account/Login
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        [CaptchaValidation("CaptchaCode", "SampleCaptcha", "Incorrect CAPTCHA code!")]
        public async Task<ActionResult> Recovery(RecoveryViewModel model)
        {
            try
            {
                ViewBag.CustomErrors = "";

                if (ModelState.IsValid)
                {

                    //var user = await UserManager.FindAsync(model.UserName, model.Password);
                    //if (user != null)
                    //{
                    //    await SignInAsync(user, model.RememberMe);
                    //    return RedirectToLocal("~/");
                    //}
                    //else
                    //{
                    //    ViewBag.CustomErrors += "Usuario y/o contraseña inválidos";
                    //    return View(model);
                    //}
                    return RedirectToAction("RecoveryPassword", "Mail", new { rfc = model.UserName });
                }

                // Si llegamos a este punto, es que se ha producido un error y volvemos a mostrar el formulario
                return View(model);
            }
            catch (Exception ex)
            {
                ViewBag.CustomErrors += ex.Message;
                return View(model);
            }
        }

        private void AddCustomErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ViewBag.CustomErrors += error + "<br>";
            }
        }

        //
        // POST: /Account/Disassociate
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Disassociate(string loginProvider, string providerKey)
        {
            ManageMessageId? message = null;
            IdentityResult result = await UserManager.RemoveLoginAsync(User.Identity.GetUserId(), new UserLoginInfo(loginProvider, providerKey));
            if (result.Succeeded)
            {
                message = ManageMessageId.RemoveLoginSuccess;
            }
            else
            {
                message = ManageMessageId.Error;
            }
            return RedirectToAction("Manage", new { Message = message });
        }

        //
        // GET: /Account/Manage
        public ActionResult Manage(ManageMessageId? message)
        {
            ViewBag.StatusMessage =
                message == ManageMessageId.ChangePasswordSuccess ? "La contraseña se ha cambiado."
                : message == ManageMessageId.SetPasswordSuccess ? "La contraseña se ha establecido."
                : message == ManageMessageId.RemoveLoginSuccess ? "El inicio de sesión externo se ha quitado."
                : message == ManageMessageId.Error ? "Se produjo un error."
                : "";
            ViewBag.HasLocalPassword = HasPassword();
            ViewBag.ReturnUrl = Url.Action("Manage");
            return View();
        }

        //
        // POST: /Account/Manage
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Manage(ManageUserViewModel model)
        {
            bool hasPassword = HasPassword();
            ViewBag.HasLocalPassword = hasPassword;
            ViewBag.ReturnUrl = Url.Action("Manage");
            if (hasPassword)
            {
                if (ModelState.IsValid)
                {
                    IdentityResult result = await UserManager.ChangePasswordAsync(User.Identity.GetUserId(), model.OldPassword, model.NewPassword);
                    if (result.Succeeded)
                    {
                        return RedirectToAction("Manage", new { Message = ManageMessageId.ChangePasswordSuccess });
                    }
                    else
                    {
                        AddErrors(result);
                    }
                }
            }
            else
            {
                // User does not have a password so remove any validation errors caused by a missing OldPassword field
                ModelState state = ModelState["OldPassword"];
                if (state != null)
                {
                    state.Errors.Clear();
                }

                if (ModelState.IsValid)
                {
                    IdentityResult result = await UserManager.AddPasswordAsync(User.Identity.GetUserId(), model.NewPassword);
                    if (result.Succeeded)
                    {
                        return RedirectToAction("Manage", new { Message = ManageMessageId.SetPasswordSuccess });
                    }
                    else
                    {
                        AddErrors(result);
                    }
                }
            }

            // Si llegamos a este punto, es que se ha producido un error y volvemos a mostrar el formulario
            return View(model);
        }

        //
        // POST: /Account/ExternalLogin
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult ExternalLogin(string provider, string returnUrl)
        {
            // Solicitar redireccionamiento al proveedor de inicio de sesión externo
            return new ChallengeResult(provider, Url.Action("ExternalLoginCallback", "Account", new { ReturnUrl = returnUrl }));
        }

        //
        // GET: /Account/ExternalLoginCallback
        [AllowAnonymous]
        public async Task<ActionResult> ExternalLoginCallback(string returnUrl)
        {
            var loginInfo = await AuthenticationManager.GetExternalLoginInfoAsync();
            if (loginInfo == null)
            {
                return RedirectToAction("Login");
            }

            // Sign in the user with this external login provider if the user already has a login
            var user = await UserManager.FindAsync(loginInfo.Login);
            if (user != null)
            {
                await SignInAsync(user, isPersistent: false);
                return RedirectToLocal(returnUrl);
            }
            else
            {
                // If the user does not have an account, then prompt the user to create an account
                ViewBag.ReturnUrl = returnUrl;
                ViewBag.LoginProvider = loginInfo.Login.LoginProvider;
                return View("ExternalLoginConfirmation", new ExternalLoginConfirmationViewModel { UserName = loginInfo.DefaultUserName });
            }
        }

        //
        // POST: /Account/LinkLogin
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult LinkLogin(string provider)
        {
            // Request a redirect to the external login provider to link a login for the current user
            return new ChallengeResult(provider, Url.Action("LinkLoginCallback", "Account"), User.Identity.GetUserId());
        }

        //
        // GET: /Account/LinkLoginCallback
        public async Task<ActionResult> LinkLoginCallback()
        {
            var loginInfo = await AuthenticationManager.GetExternalLoginInfoAsync(XsrfKey, User.Identity.GetUserId());
            if (loginInfo == null)
            {
                return RedirectToAction("Manage", new { Message = ManageMessageId.Error });
            }
            var result = await UserManager.AddLoginAsync(User.Identity.GetUserId(), loginInfo.Login);
            if (result.Succeeded)
            {
                return RedirectToAction("Manage");
            }
            return RedirectToAction("Manage", new { Message = ManageMessageId.Error });
        }

        //
        // POST: /Account/ExternalLoginConfirmation
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ExternalLoginConfirmation(ExternalLoginConfirmationViewModel model, string returnUrl)
        {
            if (User.Identity.IsAuthenticated)
            {
                return RedirectToAction("Manage");
            }

            if (ModelState.IsValid)
            {
                // Obtener datos del usuario del proveedor de inicio de sesión externo
                var info = await AuthenticationManager.GetExternalLoginInfoAsync();
                if (info == null)
                {
                    return View("ExternalLoginFailure");
                }
                var user = new ApplicationUser() { UserName = model.UserName };
                var result = await UserManager.CreateAsync(user);
                if (result.Succeeded)
                {
                    result = await UserManager.AddLoginAsync(user.Id, info.Login);
                    if (result.Succeeded)
                    {
                        await SignInAsync(user, isPersistent: false);
                        return RedirectToLocal(returnUrl);
                    }
                }
                AddErrors(result);
            }

            ViewBag.ReturnUrl = returnUrl;
            return View(model);
        }

        //
        // POST: /Account/LogOff
        [HttpPost]
        public ActionResult LogOff()
        {
            AuthenticationManager.SignOut();
            return RedirectToAction("Index", "Home");
        }

        //
        // GET: /Account/ExternalLoginFailure
        [AllowAnonymous]
        public ActionResult ExternalLoginFailure()
        {
            return View();
        }

        [ChildActionOnly]
        public ActionResult RemoveAccountList()
        {
            var linkedAccounts = UserManager.GetLogins(User.Identity.GetUserId());
            ViewBag.ShowRemoveButton = HasPassword() || linkedAccounts.Count > 1;
            return (ActionResult)PartialView("_RemoveAccountPartial", linkedAccounts);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing && UserManager != null)
            {
                UserManager.Dispose();
                UserManager = null;
            }
            base.Dispose(disposing);
        }

        #region Aplicaciones auxiliares
        // Used for XSRF protection when adding external logins
        private const string XsrfKey = "XsrfId";

        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.GetOwinContext().Authentication;
            }
        }

        private async Task SignInAsync(ApplicationUser user, bool isPersistent)
        {
            AuthenticationManager.SignOut(DefaultAuthenticationTypes.ExternalCookie);
            var identity = await UserManager.CreateIdentityAsync(user, DefaultAuthenticationTypes.ApplicationCookie);
            AuthenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = isPersistent }, identity);
        }

        private void AddErrors(IdentityResult result)
        {
            foreach (var error in result.Errors)
            {
                ModelState.AddModelError("", error);
            }
        }

        private bool HasPassword()
        {
            var user = UserManager.FindById(User.Identity.GetUserId());
            if (user != null)
            {
                return user.PasswordHash != null;
            }
            return false;
        }

        public enum ManageMessageId
        {
            ChangePasswordSuccess,
            SetPasswordSuccess,
            RemoveLoginSuccess,
            Error
        }

        private ActionResult RedirectToLocal(string returnUrl)
        {
            if (Url.IsLocalUrl(returnUrl))
            {
                return Redirect(returnUrl);
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }

        private class ChallengeResult : HttpUnauthorizedResult
        {
            public ChallengeResult(string provider, string redirectUri)
                : this(provider, redirectUri, null)
            {
            }

            public ChallengeResult(string provider, string redirectUri, string userId)
            {
                LoginProvider = provider;
                RedirectUri = redirectUri;
                UserId = userId;
            }

            public string LoginProvider { get; set; }
            public string RedirectUri { get; set; }
            public string UserId { get; set; }

            public override void ExecuteResult(ControllerContext context)
            {
                var properties = new AuthenticationProperties() { RedirectUri = RedirectUri };
                if (UserId != null)
                {
                    properties.Dictionary[XsrfKey] = UserId;
                }
                context.HttpContext.GetOwinContext().Authentication.Challenge(properties, LoginProvider);
            }
        }
        #endregion

        #region Codigo Auxiliar
        public byte[] ValidateCertificate(string RFC, byte[] byte_cer, byte[] byte_key, string password)
        {


            bool validate2 = false;
            byte[] cert_pfx = null;
            try
            {
                if (null != byte_cer && null != byte_key)
                {

                    if (!CertificateValidation.MakeCert.validateModulus(byte_cer, byte_key, password))
                    {
                        throw new Exception("El certificado no corresponde con la llave");
                    }


                    X509Certificate2 installedCert = new X509Certificate2(byte_cer, password, X509KeyStorageFlags.MachineKeySet);

                    CertificateValidation.BussinessLayer.BLCertificate bl = new CertificateValidation.BussinessLayer.BLCertificate();

                    string PathSAT = ConfigurationManager.AppSettings["pathSATFiles"] + @"files SAT\certificadosSAT\";
                    validate2 = bl.validaCertificadoCA(byte_cer, PathSAT);
                    if (!validate2)
                    {
                        throw new Exception("El certificado no está emitido por una entidad certificadora");
                    }


                    X509KeyUsageExtension keyUsageExtension;
                    string KeyUsages;
                    int isfiel = 0;

                    for (int i = 0; i <= installedCert.Extensions.Count; i++)
                    {
                        try
                        {
                            keyUsageExtension = installedCert.Extensions[i] as X509KeyUsageExtension;
                            KeyUsages = keyUsageExtension.KeyUsages.ToString();

                            if (keyUsageExtension.KeyUsages.ToString().IndexOf("KeyAgreement") != -1 || keyUsageExtension.KeyUsages.ToString().IndexOf("DataEncipherment") != -1)
                            {
                                isfiel = 1;
                            }
                        }
                        catch (Exception e)
                        {
                            continue;
                        }


                    }

                    if (1 == isfiel)
                    {


                        if (ConfigurationManager.AppSettings["AcceptFIEL"].ToString() == "true")
                        {





                            // tenemos que validar si lo puede hacer por el hecho de que sea una persona fisica

                            if (RFC.Length != 13)
                            {
                                throw new Exception("Las personas morales no pueden entrar con un CSD");

                            }

                            // BLCFDRevocados validaLCO = new BLCFDRevocados();


                            //// CFDRevocados CFDLCO = validaLCO.spValidaListadoCSD(RFC);

                            // // tenemos que validar si lo puede hacer por el hecho de que no tenga CSD registrado previamente
                            // //if (CFDLCO != null)
                            // //{
                            // //    throw new Exception(MessageExceptions.COD_1488 + MessageExceptions.MSG_1488);

                            // //}


                            // CFDRevocados FIELLCO = validaLCO.ValidaRFCsFIEL(RFC, hexString2Ascii(installedCert.SerialNumber));
                            // // tenemos que validar si lo puede hacer por el hecho de que no tenga CSD registrado previamente
                            // if (FIELLCO == null)
                            // {
                            //     throw new ExceptionFIEL(MessageExceptions.COD_1489_2, MessageExceptions.MSG_1489_2);

                            // }



                        }
                        else
                        {

                            // throw new ExceptionFIEL(MessageExceptions.COD_1471, MessageExceptions.MSG_1471);

                        }
                    }


                    cert_pfx = CertificateValidation.MakeCert.generatePFX(byte_cer, byte_key, password);

                    installedCert = new X509Certificate2(cert_pfx, password, X509KeyStorageFlags.MachineKeySet);
                    if (null != installedCert)
                    {
                        if (!installedCert.Issuer.Contains("O=Servicio de Administración Tributaria"))
                            throw new Exception("No es un certificado emitido por el SAT");
                        if ((DateTime.Now > installedCert.NotAfter) || (DateTime.Now < installedCert.NotBefore))
                            throw new Exception("El certificado no se encuentra dentro de un periodo de validez");
                        if (!installedCert.HasPrivateKey)
                            throw new Exception("El certificado no tiene llave privada");
                        if (!installedCert.Subject.ToUpper().Contains(RFC.ToUpper()))
                            throw new Exception("El certificado no pertene al contribuyente");
                    }

                }
                else
                    throw new Exception("Ni idea de que error sea 1");
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message.ToString());
            }

            return cert_pfx;
        }
        #endregion
    }
}