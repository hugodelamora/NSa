USE [NominasSAT]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

/****Estados****/
CREATE TABLE [dbo].[Estados](
	[EstadoId] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Abreviatura] [varchar](10) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[EstadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

/****Municipios****/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipios](
	[MunicipioId] [int] IDENTITY(1,1) NOT NULL,
	[EstadoId] [int] NULL,
	[Nombre] [varchar](500) NULL,
 CONSTRAINT [PK_Municipios] PRIMARY KEY CLUSTERED 
(
	[MunicipioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****Carga de datos***/
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (1, N'Aguascalientes', N'AGS')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (2, N'Baja California', N'BC')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (3, N'Baja California Sur', N'BCS')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (4, N'Campeche', N'CAM')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (5, N'Coahuila de Zaragoza', N'COA')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (6, N'Colima', N'COL')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (7, N'Chiapas', N'CHP')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (8, N'Chihuahua', N'CHI')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (9, N'Distrito Federal', N'DF')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (10, N'Durango', N'DUR')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (11, N'Guanajuato', N'GTO')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (12, N'Guerrero', N'GUE')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (13, N'Hidalgo', N'HGO')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (14, N'Jalisco', N'JAL')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (15, N'México', N'MEX')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (16, N'Michoacán de Ocampo', N'MCH')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (17, N'Morelos', N'MOR')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (18, N'Nayarit', N'NAY')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (19, N'Nuevo León', N'NL')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (20, N'Oaxaca', N'OAX')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (21, N'Puebla', N'PUE')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (22, N'Querétaro', N'QRO')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (23, N'Quintana Roo', N'QUR')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (24, N'San Luis Potosí', N'SLP')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (25, N'Sinaloa', N'SIN')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (26, N'Sonora', N'SON')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (27, N'Tabasco', N'TAB')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (28, N'Tamaulipas', N'TAM')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (29, N'Tlaxcala', N'TLX')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (30, N'Veracruz de Ignacio de la Llave', N'VER')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (31, N'Yucatán', N'YUC')
GO
INSERT [dbo].[Estados] ([EstadoId], [Nombre], [Abreviatura]) VALUES (32, N'Zacatecas', N'ZAC')
GO
SET IDENTITY_INSERT [dbo].[Municipios] ON 

GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1, 1, N'Aguascalientes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2, 1, N'Asientos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (3, 1, N'Calvillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (4, 1, N'Cosío')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (5, 1, N'El Llano')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (6, 1, N'Jesús María')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (7, 1, N'Pabellón de Arteaga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (8, 1, N'Rincón de Romos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (9, 1, N'San Francisco de los Romo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (10, 1, N'San José de Gracia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (11, 1, N'Tepezalá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (12, 2, N'Ensenada')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (13, 2, N'Mexicali')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (14, 2, N'Playas de Rosarito')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (15, 2, N'Tecate')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (16, 2, N'Tijuana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (17, 3, N'Comondú')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (18, 3, N'La Paz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (19, 3, N'Loreto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (20, 3, N'Los Cabos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (21, 3, N'Mulegé')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (22, 4, N'Calakmul')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (23, 4, N'Calkiní')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (24, 4, N'Campeche')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (25, 4, N'Candelaria')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (26, 4, N'Carmen')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (27, 4, N'Champotón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (28, 4, N'Escárcega')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (29, 4, N'Hecelchakán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (30, 4, N'Hopelchén')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (31, 4, N'Palizada')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (32, 4, N'Tenabo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (33, 5, N'Abasolo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (34, 5, N'Acuña')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (35, 5, N'Allende')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (36, 5, N'Arteaga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (37, 5, N'Candela')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (38, 5, N'Castaños')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (39, 5, N'Cuatro Ciénegas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (40, 5, N'Escobedo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (41, 5, N'Francisco I. Madero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (42, 5, N'Frontera')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (43, 5, N'General Cepeda')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (44, 5, N'Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (45, 5, N'Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (46, 5, N'Jiménez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (47, 5, N'Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (48, 5, N'Lamadrid')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (49, 5, N'Matamoros')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (50, 5, N'Monclova')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (51, 5, N'Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (52, 5, N'Múzquiz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (53, 5, N'Nadadores')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (54, 5, N'Nava')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (55, 5, N'Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (56, 5, N'Parras')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (57, 5, N'Piedras Negras')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (58, 5, N'Progreso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (59, 5, N'Ramos Arizpe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (60, 5, N'Sabinas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (61, 5, N'Sacramento')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (62, 5, N'Saltillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (63, 5, N'San Buenaventura')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (64, 5, N'San Juan de Sabinas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (65, 5, N'San Pedro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (66, 5, N'Sierra Mojada')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (67, 5, N'Torreón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (68, 5, N'Viesca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (69, 5, N'Villa Unión')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (70, 5, N'Zaragoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (71, 6, N'Armería')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (72, 6, N'Colima')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (73, 6, N'Comala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (74, 6, N'Coquimatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (75, 6, N'Cuauhtémoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (76, 6, N'Ixtlahuacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (77, 6, N'Manzanillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (78, 6, N'Minatitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (79, 6, N'Tecomán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (80, 6, N'Villa de Álvarez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (81, 7, N'Acacoyagua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (82, 7, N'Acala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (83, 7, N'Acapetahua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (84, 7, N'Aldama')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (85, 7, N'Altamirano')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (86, 7, N'Amatán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (87, 7, N'Amatenango de la Frontera')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (88, 7, N'Amatenango del Valle')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (89, 7, N'Angel Albino Corzo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (90, 7, N'Arriaga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (91, 7, N'Bejucal de Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (92, 7, N'Bella Vista')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (93, 7, N'Benemérito de las Américas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (94, 7, N'Berriozábal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (95, 7, N'Bochil')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (96, 7, N'Cacahoatán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (97, 7, N'Catazajá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (98, 7, N'Chalchihuitán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (99, 7, N'Chamula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (100, 7, N'Chanal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (101, 7, N'Chapultenango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (102, 7, N'Chenalhó')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (103, 7, N'Chiapa de Corzo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (104, 7, N'Chiapilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (105, 7, N'Chicoasén')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (106, 7, N'Chicomuselo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (107, 7, N'Chilón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (108, 7, N'Cintalapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (109, 7, N'Coapilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (110, 7, N'Comitán de Domínguez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (111, 7, N'Copainalá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (112, 7, N'El Bosque')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (113, 7, N'El Porvenir')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (114, 7, N'Escuintla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (115, 7, N'Francisco León')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (116, 7, N'Frontera Comalapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (117, 7, N'Frontera Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (118, 7, N'Huehuetán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (119, 7, N'Huitiupán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (120, 7, N'Huixtán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (121, 7, N'Huixtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (122, 7, N'Ixhuatán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (123, 7, N'Ixtacomitán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (124, 7, N'Ixtapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (125, 7, N'Ixtapangajoya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (126, 7, N'Jiquipilas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (127, 7, N'Jitotol')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (128, 7, N'Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (129, 7, N'La Concordia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (130, 7, N'La Grandeza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (131, 7, N'La Independencia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (132, 7, N'La Libertad')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (133, 7, N'La Trinitaria')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (134, 7, N'Larráinzar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (135, 7, N'Las Margaritas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (136, 7, N'Las Rosas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (137, 7, N'Mapastepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (138, 7, N'Maravilla Tenejapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (139, 7, N'Marqués de Comillas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (140, 7, N'Mazapa de Madero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (141, 7, N'Mazatán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (142, 7, N'Metapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (143, 7, N'Mitontic')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (144, 7, N'Montecristo de Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (145, 7, N'Motozintla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (146, 7, N'Nicolás Ruíz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (147, 7, N'Ocosingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (148, 7, N'Ocotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (149, 7, N'Ocozocoautla de Espinosa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (150, 7, N'Ostuacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (151, 7, N'Osumacinta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (152, 7, N'Oxchuc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (153, 7, N'Palenque')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (154, 7, N'Pantelhó')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (155, 7, N'Pantepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (156, 7, N'Pichucalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (157, 7, N'Pijijiapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (158, 7, N'Pueblo Nuevo Solistahuacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (159, 7, N'Rayón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (160, 7, N'Reforma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (161, 7, N'Sabanilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (162, 7, N'Salto de Agua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (163, 7, N'San Andrés Duraznal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (164, 7, N'San Cristóbal de las Casas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (165, 7, N'San Fernando')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (166, 7, N'San Juan Cancuc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (167, 7, N'San Lucas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (168, 7, N'Santiago el Pinar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (169, 7, N'Siltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (170, 7, N'Simojovel')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (171, 7, N'Sitalá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (172, 7, N'Socoltenango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (173, 7, N'Solosuchiapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (174, 7, N'Soyaló')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (175, 7, N'Suchiapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (176, 7, N'Suchiate')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (177, 7, N'Sunuapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (178, 7, N'Tapachula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (179, 7, N'Tapalapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (180, 7, N'Tapilula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (181, 7, N'Tecpatán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (182, 7, N'Tenejapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (183, 7, N'Teopisca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (184, 7, N'Tila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (185, 7, N'Tonalá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (186, 7, N'Totolapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (187, 7, N'Tumbalá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (188, 7, N'Tuxtla Chico')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (189, 7, N'Tuxtla Gutiérrez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (190, 7, N'Tuzantán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (191, 7, N'Tzimol')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (192, 7, N'Unión Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (193, 7, N'Venustiano Carranza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (194, 7, N'Villa Comaltitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (195, 7, N'Villa Corzo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (196, 7, N'Villaflores')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (197, 7, N'Yajalón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (198, 7, N'Zinacantán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (199, 8, N'Ahumada')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (200, 8, N'Aldama')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (201, 8, N'Allende')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (202, 8, N'Aquiles Serdán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (203, 8, N'Ascensión')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (204, 8, N'Bachíniva')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (205, 8, N'Balleza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (206, 8, N'Batopilas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (207, 8, N'Bocoyna')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (208, 8, N'Buenaventura')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (209, 8, N'Camargo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (210, 8, N'Carichí')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (211, 8, N'Casas Grandes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (212, 8, N'Chihuahua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (213, 8, N'Chínipas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (214, 8, N'Coronado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (215, 8, N'Coyame del Sotol')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (216, 8, N'Cuauhtémoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (217, 8, N'Cusihuiriachi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (218, 8, N'Delicias')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (219, 8, N'Dr. Belisario Domínguez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (220, 8, N'El Tule')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (221, 8, N'Galeana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (222, 8, N'Gómez Farías')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (223, 8, N'Gran Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (224, 8, N'Guachochi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (225, 8, N'Guadalupe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (226, 8, N'Guadalupe y Calvo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (227, 8, N'Guazapares')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (228, 8, N'Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (229, 8, N'Hidalgo del Parral')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (230, 8, N'Huejotitán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (231, 8, N'Ignacio Zaragoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (232, 8, N'Janos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (233, 8, N'Jiménez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (234, 8, N'Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (235, 8, N'Julimes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (236, 8, N'La Cruz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (237, 8, N'López')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (238, 8, N'Madera')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (239, 8, N'Maguarichi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (240, 8, N'Manuel Benavides')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (241, 8, N'Matachí')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (242, 8, N'Matamoros')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (243, 8, N'Meoqui')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (244, 8, N'Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (245, 8, N'Moris')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (246, 8, N'Namiquipa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (247, 8, N'Nonoava')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (248, 8, N'Nuevo Casas Grandes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (249, 8, N'Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (250, 8, N'Ojinaga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (251, 8, N'Praxedis G. Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (252, 8, N'Riva Palacio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (253, 8, N'Rosales')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (254, 8, N'Rosario')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (255, 8, N'San Francisco de Borja')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (256, 8, N'San Francisco de Conchos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (257, 8, N'San Francisco del Oro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (258, 8, N'Santa Bárbara')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (259, 8, N'Santa Isabel')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (260, 8, N'Satevó')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (261, 8, N'Saucillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (262, 8, N'Temósachic')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (263, 8, N'Urique')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (264, 8, N'Uruachi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (265, 8, N'Valle de Zaragoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (266, 9, N'Álvaro Obregón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (267, 9, N'Azcapotzalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (268, 9, N'Benito Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (269, 9, N'Coyoacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (270, 9, N'Cuajimalpa de Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (271, 9, N'Cuauhtémoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (272, 9, N'Gustavo A. Madero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (273, 9, N'Iztacalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (274, 9, N'Iztapalapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (275, 9, N'La Magdalena Contreras')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (276, 9, N'Miguel Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (277, 9, N'Milpa Alta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (278, 9, N'Tláhuac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (279, 9, N'Tlalpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (280, 9, N'Venustiano Carranza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (281, 9, N'Xochimilco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (282, 10, N'Canatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (283, 10, N'Canelas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (284, 10, N'Coneto de Comonfort')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (285, 10, N'Cuencamé')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (286, 10, N'Durango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (287, 10, N'El Oro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (288, 10, N'General Simón Bolívar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (289, 10, N'Gómez Palacio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (290, 10, N'Guadalupe Victoria')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (291, 10, N'Guanaceví')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (292, 10, N'Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (293, 10, N'Indé')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (294, 10, N'Lerdo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (295, 10, N'Mapimí')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (296, 10, N'Mezquital')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (297, 10, N'Nazas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (298, 10, N'Nombre de Dios')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (299, 10, N'Nuevo Ideal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (300, 10, N'Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (301, 10, N'Otáez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (302, 10, N'Pánuco de Coronado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (303, 10, N'Peñón Blanco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (304, 10, N'Poanas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (305, 10, N'Pueblo Nuevo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (306, 10, N'Rodeo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (307, 10, N'San Bernardo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (308, 10, N'San Dimas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (309, 10, N'San Juan de Guadalupe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (310, 10, N'San Juan del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (311, 10, N'San Luis del Cordero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (312, 10, N'San Pedro del Gallo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (313, 10, N'Santa Clara')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (314, 10, N'Santiago Papasquiaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (315, 10, N'Súchil')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (316, 10, N'Tamazula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (317, 10, N'Tepehuanes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (318, 10, N'Tlahualilo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (319, 10, N'Topia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (320, 10, N'Vicente Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (321, 11, N'Abasolo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (322, 11, N'Acámbaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (323, 11, N'Apaseo el Alto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (324, 11, N'Apaseo el Grande')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (325, 11, N'Atarjea')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (326, 11, N'Celaya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (327, 11, N'Comonfort')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (328, 11, N'Coroneo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (329, 11, N'Cortazar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (330, 11, N'Cuerámaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (331, 11, N'Doctor Mora')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (332, 11, N'Dolores Hidalgo Cuna de la Independencia Nacional')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (333, 11, N'Guanajuato')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (334, 11, N'Huanímaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (335, 11, N'Irapuato')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (336, 11, N'Jaral del Progreso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (337, 11, N'Jerécuaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (338, 11, N'León')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (339, 11, N'Manuel Doblado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (340, 11, N'Moroleón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (341, 11, N'Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (342, 11, N'Pénjamo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (343, 11, N'Pueblo Nuevo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (344, 11, N'Purísima del Rincón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (345, 11, N'Romita')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (346, 11, N'Salamanca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (347, 11, N'Salvatierra')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (348, 11, N'San Diego de la Unión')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (349, 11, N'San Felipe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (350, 11, N'San Francisco del Rincón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (351, 11, N'San José Iturbide')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (352, 11, N'San Luis de la Paz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (353, 11, N'San Miguel de Allende')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (354, 11, N'Santa Catarina')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (355, 11, N'Santa Cruz de Juventino Rosas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (356, 11, N'Santiago Maravatío')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (357, 11, N'Silao de la Victoria')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (358, 11, N'Tarandacuao')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (359, 11, N'Tarimoro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (360, 11, N'Tierra Blanca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (361, 11, N'Uriangato')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (362, 11, N'Valle de Santiago')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (363, 11, N'Victoria')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (364, 11, N'Villagrán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (365, 11, N'Xichú')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (366, 11, N'Yuriria')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (367, 12, N'Acapulco de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (368, 12, N'Acatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (369, 12, N'Ahuacuotzingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (370, 12, N'Ajuchitlán del Progreso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (371, 12, N'Alcozauca de Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (372, 12, N'Alpoyeca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (373, 12, N'Apaxtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (374, 12, N'Arcelia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (375, 12, N'Atenango del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (376, 12, N'Atlamajalcingo del Monte')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (377, 12, N'Atlixtac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (378, 12, N'Atoyac de Álvarez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (379, 12, N'Ayutla de los Libres')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (380, 12, N'Azoyú')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (381, 12, N'Benito Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (382, 12, N'Buenavista de Cuéllar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (383, 12, N'Chilapa de Álvarez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (384, 12, N'Chilpancingo de los Bravo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (385, 12, N'Coahuayutla de José María Izazaga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (386, 12, N'Cochoapa el Grande')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (387, 12, N'Cocula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (388, 12, N'Copala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (389, 12, N'Copalillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (390, 12, N'Copanatoyac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (391, 12, N'Coyuca de Benítez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (392, 12, N'Coyuca de Catalán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (393, 12, N'Cuajinicuilapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (394, 12, N'Cualác')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (395, 12, N'Cuautepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (396, 12, N'Cuetzala del Progreso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (397, 12, N'Cutzamala de Pinzón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (398, 12, N'Eduardo Neri')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (399, 12, N'Florencio Villarreal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (400, 12, N'General Canuto A. Neri')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (401, 12, N'General Heliodoro Castillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (402, 12, N'Huamuxtitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (403, 12, N'Huitzuco de los Figueroa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (404, 12, N'Iguala de la Independencia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (405, 12, N'Igualapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (406, 12, N'Iliatenco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (407, 12, N'Ixcateopan de Cuauhtémoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (408, 12, N'José Joaquín de Herrera')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (409, 12, N'Juan R. Escudero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (410, 12, N'Juchitán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (411, 12, N'La Unión de Isidoro Montes de Oca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (412, 12, N'Leonardo Bravo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (413, 12, N'Malinaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (414, 12, N'Marquelia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (415, 12, N'Mártir de Cuilapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (416, 12, N'Metlatónoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (417, 12, N'Mochitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (418, 12, N'Olinalá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (419, 12, N'Ometepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (420, 12, N'Pedro Ascencio Alquisiras')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (421, 12, N'Petatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (422, 12, N'Pilcaya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (423, 12, N'Pungarabato')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (424, 12, N'Quechultenango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (425, 12, N'San Luis Acatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (426, 12, N'San Marcos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (427, 12, N'San Miguel Totolapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (428, 12, N'Taxco de Alarcón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (429, 12, N'Tecoanapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (430, 12, N'Técpan de Galeana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (431, 12, N'Teloloapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (432, 12, N'Tepecoacuilco de Trujano')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (433, 12, N'Tetipac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (434, 12, N'Tixtla de Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (435, 12, N'Tlacoachistlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (436, 12, N'Tlacoapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (437, 12, N'Tlalchapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (438, 12, N'Tlalixtaquilla de Maldonado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (439, 12, N'Tlapa de Comonfort')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (440, 12, N'Tlapehuala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (441, 12, N'Xalpatláhuac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (442, 12, N'Xochihuehuetlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (443, 12, N'Xochistlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (444, 12, N'Zapotitlán Tablas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (445, 12, N'Zihuatanejo de Azueta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (446, 12, N'Zirándaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (447, 12, N'Zitlala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (448, 13, N'Acatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (449, 13, N'Acaxochitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (450, 13, N'Actopan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (451, 13, N'Agua Blanca de Iturbide')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (452, 13, N'Ajacuba')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (453, 13, N'Alfajayucan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (454, 13, N'Almoloya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (455, 13, N'Apan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (456, 13, N'Atitalaquia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (457, 13, N'Atlapexco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (458, 13, N'Atotonilco de Tula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (459, 13, N'Atotonilco el Grande')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (460, 13, N'Calnali')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (461, 13, N'Cardonal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (462, 13, N'Chapantongo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (463, 13, N'Chapulhuacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (464, 13, N'Chilcuautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (465, 13, N'Cuautepec de Hinojosa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (466, 13, N'El Arenal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (467, 13, N'Eloxochitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (468, 13, N'Emiliano Zapata')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (469, 13, N'Epazoyucan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (470, 13, N'Francisco I. Madero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (471, 13, N'Huasca de Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (472, 13, N'Huautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (473, 13, N'Huazalingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (474, 13, N'Huehuetla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (475, 13, N'Huejutla de Reyes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (476, 13, N'Huichapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (477, 13, N'Ixmiquilpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (478, 13, N'Jacala de Ledezma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (479, 13, N'Jaltocán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (480, 13, N'Juárez Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (481, 13, N'La Misión')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (482, 13, N'Lolotla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (483, 13, N'Metepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (484, 13, N'Metztitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (485, 13, N'Mineral de la Reforma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (486, 13, N'Mineral del Chico')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (487, 13, N'Mineral del Monte')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (488, 13, N'Mixquiahuala de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (489, 13, N'Molango de Escamilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (490, 13, N'Nicolás Flores')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (491, 13, N'Nopala de Villagrán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (492, 13, N'Omitlán de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (493, 13, N'Pachuca de Soto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (494, 13, N'Pacula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (495, 13, N'Pisaflores')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (496, 13, N'Progreso de Obregón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (497, 13, N'San Agustín Metzquititlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (498, 13, N'San Agustín Tlaxiaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (499, 13, N'San Bartolo Tutotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (500, 13, N'San Felipe Orizatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (501, 13, N'San Salvador')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (502, 13, N'Santiago de Anaya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (503, 13, N'Santiago Tulantepec de Lugo Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (504, 13, N'Singuilucan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (505, 13, N'Tasquillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (506, 13, N'Tecozautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (507, 13, N'Tenango de Doria')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (508, 13, N'Tepeapulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (509, 13, N'Tepehuacán de Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (510, 13, N'Tepeji del Río de Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (511, 13, N'Tepetitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (512, 13, N'Tetepango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (513, 13, N'Tezontepec de Aldama')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (514, 13, N'Tianguistengo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (515, 13, N'Tizayuca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (516, 13, N'Tlahuelilpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (517, 13, N'Tlahuiltepa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (518, 13, N'Tlanalapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (519, 13, N'Tlanchinol')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (520, 13, N'Tlaxcoapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (521, 13, N'Tolcayuca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (522, 13, N'Tula de Allende')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (523, 13, N'Tulancingo de Bravo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (524, 13, N'Villa de Tezontepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (525, 13, N'Xochiatipan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (526, 13, N'Xochicoatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (527, 13, N'Yahualica')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (528, 13, N'Zacualtipán de Ángeles')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (529, 13, N'Zapotlán de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (530, 13, N'Zempoala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (531, 13, N'Zimapán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (532, 14, N'Acatic')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (533, 14, N'Acatlán de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (534, 14, N'Ahualulco de Mercado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (535, 14, N'Amacueca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (536, 14, N'Amatitán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (537, 14, N'Ameca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (538, 14, N'Arandas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (539, 14, N'Atemajac de Brizuela')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (540, 14, N'Atengo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (541, 14, N'Atenguillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (542, 14, N'Atotonilco el Alto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (543, 14, N'Atoyac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (544, 14, N'Autlán de Navarro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (545, 14, N'Ayotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (546, 14, N'Ayutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (547, 14, N'Bolaños')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (548, 14, N'Cabo Corrientes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (549, 14, N'Cañadas de Obregón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (550, 14, N'Casimiro Castillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (551, 14, N'Chapala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (552, 14, N'Chimaltitán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (553, 14, N'Chiquilistlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (554, 14, N'Cihuatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (555, 14, N'Cocula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (556, 14, N'Colotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (557, 14, N'Concepción de Buenos Aires')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (558, 14, N'Cuautitlán de García Barragán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (559, 14, N'Cuautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (560, 14, N'Cuquío')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (561, 14, N'Degollado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (562, 14, N'Ejutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (563, 14, N'El Arenal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (564, 14, N'El Grullo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (565, 14, N'El Limón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (566, 14, N'El Salto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (567, 14, N'Encarnación de Díaz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (568, 14, N'Etzatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (569, 14, N'Gómez Farías')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (570, 14, N'Guachinango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (571, 14, N'Guadalajara')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (572, 14, N'Hostotipaquillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (573, 14, N'Huejúcar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (574, 14, N'Huejuquilla el Alto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (575, 14, N'Ixtlahuacán de los Membrillos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (576, 14, N'Ixtlahuacán del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (577, 14, N'Jalostotitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (578, 14, N'Jamay')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (579, 14, N'Jesús María')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (580, 14, N'Jilotlán de los Dolores')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (581, 14, N'Jocotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (582, 14, N'Juanacatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (583, 14, N'Juchitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (584, 14, N'La Barca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (585, 14, N'La Huerta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (586, 14, N'La Manzanilla de la Paz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (587, 14, N'Lagos de Moreno')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (588, 14, N'Magdalena')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (589, 14, N'Mascota')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (590, 14, N'Mazamitla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (591, 14, N'Mexticacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (592, 14, N'Mezquitic')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (593, 14, N'Mixtlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (594, 14, N'Ocotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (595, 14, N'Ojuelos de Jalisco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (596, 14, N'Pihuamo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (597, 14, N'Poncitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (598, 14, N'Puerto Vallarta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (599, 14, N'Quitupan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (600, 14, N'San Cristóbal de la Barranca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (601, 14, N'San Diego de Alejandría')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (602, 14, N'San Gabriel')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (603, 14, N'San Ignacio Cerro Gordo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (604, 14, N'San Juan de los Lagos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (605, 14, N'San Juanito de Escobedo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (606, 14, N'San Julián')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (607, 14, N'San Marcos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (608, 14, N'San Martín de Bolaños')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (609, 14, N'San Martín Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (610, 14, N'San Miguel el Alto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (611, 14, N'San Pedro Tlaquepaque')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (612, 14, N'San Sebastián del Oeste')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (613, 14, N'Santa María de los Ángeles')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (614, 14, N'Santa María del Oro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (615, 14, N'Sayula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (616, 14, N'Tala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (617, 14, N'Talpa de Allende')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (618, 14, N'Tamazula de Gordiano')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (619, 14, N'Tapalpa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (620, 14, N'Tecalitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (621, 14, N'Techaluta de Montenegro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (622, 14, N'Tecolotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (623, 14, N'Tenamaxtlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (624, 14, N'Teocaltiche')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (625, 14, N'Teocuitatlán de Corona')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (626, 14, N'Tepatitlán de Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (627, 14, N'Tequila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (628, 14, N'Teuchitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (629, 14, N'Tizapán el Alto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (630, 14, N'Tlajomulco de Zúñiga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (631, 14, N'Tolimán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (632, 14, N'Tomatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (633, 14, N'Tonalá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (634, 14, N'Tonaya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (635, 14, N'Tonila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (636, 14, N'Totatiche')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (637, 14, N'Tototlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (638, 14, N'Tuxcacuesco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (639, 14, N'Tuxcueca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (640, 14, N'Tuxpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (641, 14, N'Unión de San Antonio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (642, 14, N'Unión de Tula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (643, 14, N'Valle de Guadalupe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (644, 14, N'Valle de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (645, 14, N'Villa Corona')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (646, 14, N'Villa Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (647, 14, N'Villa Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (648, 14, N'Villa Purificación')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (649, 14, N'Yahualica de González Gallo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (650, 14, N'Zacoalco de Torres')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (651, 14, N'Zapopan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (652, 14, N'Zapotiltic')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (653, 14, N'Zapotitlán de Vadillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (654, 14, N'Zapotlán del Rey')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (655, 14, N'Zapotlán el Grande')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (656, 14, N'Zapotlanejo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (657, 15, N'Acambay de Ruíz Castañeda')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (658, 15, N'Acolman')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (659, 15, N'Aculco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (660, 15, N'Almoloya de Alquisiras')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (661, 15, N'Almoloya de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (662, 15, N'Almoloya del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (663, 15, N'Amanalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (664, 15, N'Amatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (665, 15, N'Amecameca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (666, 15, N'Apaxco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (667, 15, N'Atenco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (668, 15, N'Atizapán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (669, 15, N'Atizapán de Zaragoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (670, 15, N'Atlacomulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (671, 15, N'Atlautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (672, 15, N'Axapusco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (673, 15, N'Ayapango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (674, 15, N'Calimaya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (675, 15, N'Capulhuac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (676, 15, N'Chalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (677, 15, N'Chapa de Mota')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (678, 15, N'Chapultepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (679, 15, N'Chiautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (680, 15, N'Chicoloapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (681, 15, N'Chiconcuac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (682, 15, N'Chimalhuacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (683, 15, N'Coacalco de Berriozábal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (684, 15, N'Coatepec Harinas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (685, 15, N'Cocotitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (686, 15, N'Coyotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (687, 15, N'Cuautitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (688, 15, N'Cuautitlán Izcalli')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (689, 15, N'Donato Guerra')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (690, 15, N'Ecatepec de Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (691, 15, N'Ecatzingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (692, 15, N'El Oro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (693, 15, N'Huehuetoca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (694, 15, N'Hueypoxtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (695, 15, N'Huixquilucan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (696, 15, N'Isidro Fabela')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (697, 15, N'Ixtapaluca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (698, 15, N'Ixtapan de la Sal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (699, 15, N'Ixtapan del Oro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (700, 15, N'Ixtlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (701, 15, N'Jaltenco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (702, 15, N'Jilotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (703, 15, N'Jilotzingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (704, 15, N'Jiquipilco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (705, 15, N'Jocotitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (706, 15, N'Joquicingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (707, 15, N'Juchitepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (708, 15, N'La Paz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (709, 15, N'Lerma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (710, 15, N'Luvianos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (711, 15, N'Malinalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (712, 15, N'Melchor Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (713, 15, N'Metepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (714, 15, N'Mexicaltzingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (715, 15, N'Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (716, 15, N'Naucalpan de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (717, 15, N'Nextlalpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (718, 15, N'Nezahualcóyotl')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (719, 15, N'Nicolás Romero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (720, 15, N'Nopaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (721, 15, N'Ocoyoacac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (722, 15, N'Ocuilan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (723, 15, N'Otumba')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (724, 15, N'Otzoloapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (725, 15, N'Otzolotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (726, 15, N'Ozumba')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (727, 15, N'Papalotla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (728, 15, N'Polotitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (729, 15, N'Rayón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (730, 15, N'San Antonio la Isla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (731, 15, N'San Felipe del Progreso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (732, 15, N'San José del Rincón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (733, 15, N'San Martín de las Pirámides')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (734, 15, N'San Mateo Atenco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (735, 15, N'San Simón de Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (736, 15, N'Santo Tomás')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (737, 15, N'Soyaniquilpan de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (738, 15, N'Sultepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (739, 15, N'Tecámac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (740, 15, N'Tejupilco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (741, 15, N'Temamatla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (742, 15, N'Temascalapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (743, 15, N'Temascalcingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (744, 15, N'Temascaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (745, 15, N'Temoaya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (746, 15, N'Tenancingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (747, 15, N'Tenango del Aire')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (748, 15, N'Tenango del Valle')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (749, 15, N'Teoloyucan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (750, 15, N'Teotihuacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (751, 15, N'Tepetlaoxtoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (752, 15, N'Tepetlixpa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (753, 15, N'Tepotzotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (754, 15, N'Tequixquiac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (755, 15, N'Texcaltitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (756, 15, N'Texcalyacac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (757, 15, N'Texcoco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (758, 15, N'Tezoyuca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (759, 15, N'Tianguistenco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (760, 15, N'Timilpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (761, 15, N'Tlalmanalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (762, 15, N'Tlalnepantla de Baz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (763, 15, N'Tlatlaya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (764, 15, N'Toluca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (765, 15, N'Tonanitla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (766, 15, N'Tonatico')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (767, 15, N'Tultepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (768, 15, N'Tultitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (769, 15, N'Valle de Bravo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (770, 15, N'Valle de Chalco Solidaridad')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (771, 15, N'Villa de Allende')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (772, 15, N'Villa del Carbón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (773, 15, N'Villa Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (774, 15, N'Villa Victoria')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (775, 15, N'Xalatlaco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (776, 15, N'Xonacatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (777, 15, N'Zacazonapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (778, 15, N'Zacualpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (779, 15, N'Zinacantepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (780, 15, N'Zumpahuacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (781, 15, N'Zumpango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (782, 16, N'Acuitzio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (783, 16, N'Aguililla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (784, 16, N'Álvaro Obregón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (785, 16, N'Angamacutiro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (786, 16, N'Angangueo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (787, 16, N'Apatzingán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (788, 16, N'Aporo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (789, 16, N'Aquila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (790, 16, N'Ario')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (791, 16, N'Arteaga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (792, 16, N'Briseñas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (793, 16, N'Buenavista')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (794, 16, N'Carácuaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (795, 16, N'Charapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (796, 16, N'Charo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (797, 16, N'Chavinda')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (798, 16, N'Cherán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (799, 16, N'Chilchota')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (800, 16, N'Chinicuila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (801, 16, N'Chucándiro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (802, 16, N'Churintzio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (803, 16, N'Churumuco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (804, 16, N'Coahuayana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (805, 16, N'Coalcomán de Vázquez Pallares')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (806, 16, N'Coeneo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (807, 16, N'Cojumatlán de Régules')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (808, 16, N'Contepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (809, 16, N'Copándaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (810, 16, N'Cotija')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (811, 16, N'Cuitzeo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (812, 16, N'Ecuandureo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (813, 16, N'Epitacio Huerta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (814, 16, N'Erongarícuaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (815, 16, N'Gabriel Zamora')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (816, 16, N'Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (817, 16, N'Huandacareo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (818, 16, N'Huaniqueo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (819, 16, N'Huetamo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (820, 16, N'Huiramba')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (821, 16, N'Indaparapeo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (822, 16, N'Irimbo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (823, 16, N'Ixtlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (824, 16, N'Jacona')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (825, 16, N'Jiménez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (826, 16, N'Jiquilpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (827, 16, N'José Sixto Verduzco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (828, 16, N'Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (829, 16, N'Jungapeo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (830, 16, N'La Huacana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (831, 16, N'La Piedad')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (832, 16, N'Lagunillas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (833, 16, N'Lázaro Cárdenas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (834, 16, N'Los Reyes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (835, 16, N'Madero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (836, 16, N'Maravatío')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (837, 16, N'Marcos Castellanos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (838, 16, N'Morelia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (839, 16, N'Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (840, 16, N'Múgica')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (841, 16, N'Nahuatzen')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (842, 16, N'Nocupétaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (843, 16, N'Nuevo Parangaricutiro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (844, 16, N'Nuevo Urecho')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (845, 16, N'Numarán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (846, 16, N'Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (847, 16, N'Pajacuarán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (848, 16, N'Panindícuaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (849, 16, N'Paracho')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (850, 16, N'Parácuaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (851, 16, N'Pátzcuaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (852, 16, N'Penjamillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (853, 16, N'Peribán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (854, 16, N'Purépero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (855, 16, N'Puruándiro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (856, 16, N'Queréndaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (857, 16, N'Quiroga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (858, 16, N'Sahuayo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (859, 16, N'Salvador Escalante')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (860, 16, N'San Lucas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (861, 16, N'Santa Ana Maya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (862, 16, N'Senguio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (863, 16, N'Susupuato')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (864, 16, N'Tacámbaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (865, 16, N'Tancítaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (866, 16, N'Tangamandapio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (867, 16, N'Tangancícuaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (868, 16, N'Tanhuato')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (869, 16, N'Taretan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (870, 16, N'Tarímbaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (871, 16, N'Tepalcatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (872, 16, N'Tingambato')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (873, 16, N'Tingüindín')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (874, 16, N'Tiquicheo de Nicolás Romero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (875, 16, N'Tlalpujahua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (876, 16, N'Tlazazalca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (877, 16, N'Tocumbo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (878, 16, N'Tumbiscatío')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (879, 16, N'Turicato')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (880, 16, N'Tuxpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (881, 16, N'Tuzantla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (882, 16, N'Tzintzuntzan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (883, 16, N'Tzitzio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (884, 16, N'Uruapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (885, 16, N'Venustiano Carranza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (886, 16, N'Villamar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (887, 16, N'Vista Hermosa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (888, 16, N'Yurécuaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (889, 16, N'Zacapu')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (890, 16, N'Zamora')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (891, 16, N'Zináparo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (892, 16, N'Zinapécuaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (893, 16, N'Ziracuaretiro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (894, 16, N'Zitácuaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (895, 17, N'Amacuzac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (896, 17, N'Atlatlahucan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (897, 17, N'Axochiapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (898, 17, N'Ayala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (899, 17, N'Coatlán del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (900, 17, N'Cuautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (901, 17, N'Cuernavaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (902, 17, N'Emiliano Zapata')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (903, 17, N'Huitzilac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (904, 17, N'Jantetelco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (905, 17, N'Jiutepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (906, 17, N'Jojutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (907, 17, N'Jonacatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (908, 17, N'Mazatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (909, 17, N'Miacatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (910, 17, N'Ocuituco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (911, 17, N'Puente de Ixtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (912, 17, N'Temixco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (913, 17, N'Temoac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (914, 17, N'Tepalcingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (915, 17, N'Tepoztlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (916, 17, N'Tetecala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (917, 17, N'Tetela del Volcán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (918, 17, N'Tlalnepantla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (919, 17, N'Tlaltizapán de Zapata')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (920, 17, N'Tlaquiltenango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (921, 17, N'Tlayacapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (922, 17, N'Totolapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (923, 17, N'Xochitepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (924, 17, N'Yautepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (925, 17, N'Yecapixtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (926, 17, N'Zacatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (927, 17, N'Zacualpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (928, 18, N'Acaponeta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (929, 18, N'Ahuacatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (930, 18, N'Amatlán de Cañas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (931, 18, N'Bahía de Banderas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (932, 18, N'Compostela')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (933, 18, N'Del Nayar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (934, 18, N'Huajicori')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (935, 18, N'Ixtlán del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (936, 18, N'Jala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (937, 18, N'La Yesca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (938, 18, N'Rosamorada')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (939, 18, N'Ruíz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (940, 18, N'San Blas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (941, 18, N'San Pedro Lagunillas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (942, 18, N'Santa María del Oro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (943, 18, N'Santiago Ixcuintla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (944, 18, N'Tecuala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (945, 18, N'Tepic')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (946, 18, N'Tuxpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (947, 18, N'Xalisco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (948, 19, N'Abasolo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (949, 19, N'Agualeguas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (950, 19, N'Allende')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (951, 19, N'Anáhuac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (952, 19, N'Apodaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (953, 19, N'Aramberri')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (954, 19, N'Bustamante')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (955, 19, N'Cadereyta Jiménez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (956, 19, N'Cerralvo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (957, 19, N'China')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (958, 19, N'Ciénega de Flores')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (959, 19, N'Doctor Arroyo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (960, 19, N'Doctor Coss')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (961, 19, N'Doctor González')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (962, 19, N'El Carmen')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (963, 19, N'Galeana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (964, 19, N'García')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (965, 19, N'General Bravo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (966, 19, N'General Escobedo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (967, 19, N'General Terán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (968, 19, N'General Treviño')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (969, 19, N'General Zaragoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (970, 19, N'General Zuazua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (971, 19, N'Guadalupe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (972, 19, N'Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (973, 19, N'Higueras')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (974, 19, N'Hualahuises')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (975, 19, N'Iturbide')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (976, 19, N'Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (977, 19, N'Lampazos de Naranjo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (978, 19, N'Linares')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (979, 19, N'Los Aldamas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (980, 19, N'Los Herreras')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (981, 19, N'Los Ramones')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (982, 19, N'Marín')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (983, 19, N'Melchor Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (984, 19, N'Mier y Noriega')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (985, 19, N'Mina')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (986, 19, N'Montemorelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (987, 19, N'Monterrey')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (988, 19, N'Parás')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (989, 19, N'Pesquería')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (990, 19, N'Rayones')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (991, 19, N'Sabinas Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (992, 19, N'Salinas Victoria')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (993, 19, N'San Nicolás de los Garza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (994, 19, N'San Pedro Garza García')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (995, 19, N'Santa Catarina')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (996, 19, N'Santiago')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (997, 19, N'Vallecillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (998, 19, N'Villaldama')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (999, 20, N'Abejones')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1000, 20, N'Acatlán de Pérez Figueroa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1001, 20, N'Ánimas Trujano')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1002, 20, N'Asunción Cacalotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1003, 20, N'Asunción Cuyotepeji')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1004, 20, N'Asunción Ixtaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1005, 20, N'Asunción Nochixtlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1006, 20, N'Asunción Ocotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1007, 20, N'Asunción Tlacolulita')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1008, 20, N'Ayoquezco de Aldama')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1009, 20, N'Ayotzintepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1010, 20, N'Calihualá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1011, 20, N'Candelaria Loxicha')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1012, 20, N'Capulálpam de Méndez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1013, 20, N'Chahuites')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1014, 20, N'Chalcatongo de Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1015, 20, N'Chiquihuitlán de Benito Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1016, 20, N'Ciénega de Zimatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1017, 20, N'Ciudad Ixtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1018, 20, N'Coatecas Altas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1019, 20, N'Coicoyán de las Flores')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1020, 20, N'Concepción Buenavista')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1021, 20, N'Concepción Pápalo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1022, 20, N'Constancia del Rosario')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1023, 20, N'Cosolapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1024, 20, N'Cosoltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1025, 20, N'Cuilápam de Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1026, 20, N'Cuyamecalco Villa de Zaragoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1027, 20, N'El Barrio de la Soledad')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1028, 20, N'El Espinal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1029, 20, N'Eloxochitlán de Flores Magón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1030, 20, N'Fresnillo de Trujano')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1031, 20, N'Guadalupe de Ramírez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1032, 20, N'Guadalupe Etla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1033, 20, N'Guelatao de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1034, 20, N'Guevea de Humboldt')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1035, 20, N'Heroica Ciudad de Ejutla de Crespo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1036, 20, N'Heroica Ciudad de Huajuapan de León')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1037, 20, N'Heroica Ciudad de Juchitán de Zaragoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1038, 20, N'Heroica Ciudad de Tlaxiaco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1039, 20, N'Huautepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1040, 20, N'Huautla de Jiménez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1041, 20, N'Ixpantepec Nieves')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1042, 20, N'Ixtlán de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1043, 20, N'La Compañía')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1044, 20, N'La Pe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1045, 20, N'La Reforma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1046, 20, N'La Trinidad Vista Hermosa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1047, 20, N'Loma Bonita')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1048, 20, N'Magdalena Apasco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1049, 20, N'Magdalena Jaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1050, 20, N'Magdalena Mixtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1051, 20, N'Magdalena Ocotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1052, 20, N'Magdalena Peñasco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1053, 20, N'Magdalena Teitipac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1054, 20, N'Magdalena Tequisistlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1055, 20, N'Magdalena Tlacotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1056, 20, N'Magdalena Yodocono de Porfirio Díaz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1057, 20, N'Magdalena Zahuatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1058, 20, N'Mariscala de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1059, 20, N'Mártires de Tacubaya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1060, 20, N'Matías Romero Avendaño')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1061, 20, N'Mazatlán Villa de Flores')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1062, 20, N'Mesones Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1063, 20, N'Miahuatlán de Porfirio Díaz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1064, 20, N'Mixistlán de la Reforma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1065, 20, N'Monjas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1066, 20, N'Natividad')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1067, 20, N'Nazareno Etla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1068, 20, N'Nejapa de Madero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1069, 20, N'Nuevo Zoquiápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1070, 20, N'Oaxaca de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1071, 20, N'Ocotlán de Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1072, 20, N'Pinotepa de Don Luis')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1073, 20, N'Pluma Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1074, 20, N'Putla Villa de Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1075, 20, N'Reforma de Pineda')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1076, 20, N'Reyes Etla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1077, 20, N'Rojas de Cuauhtémoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1078, 20, N'Salina Cruz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1079, 20, N'San Agustín Amatengo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1080, 20, N'San Agustín Atenango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1081, 20, N'San Agustín Chayuco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1082, 20, N'San Agustín de las Juntas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1083, 20, N'San Agustín Etla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1084, 20, N'San Agustín Loxicha')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1085, 20, N'San Agustín Tlacotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1086, 20, N'San Agustín Yatareni')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1087, 20, N'San Andrés Cabecera Nueva')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1088, 20, N'San Andrés Dinicuiti')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1089, 20, N'San Andrés Huaxpaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1090, 20, N'San Andrés Huayápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1091, 20, N'San Andrés Ixtlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1092, 20, N'San Andrés Lagunas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1093, 20, N'San Andrés Nuxiño')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1094, 20, N'San Andrés Paxtlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1095, 20, N'San Andrés Sinaxtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1096, 20, N'San Andrés Solaga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1097, 20, N'San Andrés Teotilálpam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1098, 20, N'San Andrés Tepetlapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1099, 20, N'San Andrés Yaá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1100, 20, N'San Andrés Zabache')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1101, 20, N'San Andrés Zautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1102, 20, N'San Antonino Castillo Velasco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1103, 20, N'San Antonino el Alto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1104, 20, N'San Antonino Monte Verde')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1105, 20, N'San Antonio Acutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1106, 20, N'San Antonio de la Cal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1107, 20, N'San Antonio Huitepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1108, 20, N'San Antonio Nanahuatípam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1109, 20, N'San Antonio Sinicahua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1110, 20, N'San Antonio Tepetlapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1111, 20, N'San Baltazar Chichicápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1112, 20, N'San Baltazar Loxicha')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1113, 20, N'San Baltazar Yatzachi el Bajo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1114, 20, N'San Bartolo Coyotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1115, 20, N'San Bartolo Soyaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1116, 20, N'San Bartolo Yautepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1117, 20, N'San Bartolomé Ayautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1118, 20, N'San Bartolomé Loxicha')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1119, 20, N'San Bartolomé Quialana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1120, 20, N'San Bartolomé Yucuañe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1121, 20, N'San Bartolomé Zoogocho')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1122, 20, N'San Bernardo Mixtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1123, 20, N'San Blas Atempa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1124, 20, N'San Carlos Yautepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1125, 20, N'San Cristóbal Amatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1126, 20, N'San Cristóbal Amoltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1127, 20, N'San Cristóbal Lachirioag')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1128, 20, N'San Cristóbal Suchixtlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1129, 20, N'San Dionisio del Mar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1130, 20, N'San Dionisio Ocotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1131, 20, N'San Dionisio Ocotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1132, 20, N'San Esteban Atatlahuca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1133, 20, N'San Felipe Jalapa de Díaz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1134, 20, N'San Felipe Tejalápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1135, 20, N'San Felipe Usila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1136, 20, N'San Francisco Cahuacuá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1137, 20, N'San Francisco Cajonos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1138, 20, N'San Francisco Chapulapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1139, 20, N'San Francisco Chindúa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1140, 20, N'San Francisco del Mar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1141, 20, N'San Francisco Huehuetlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1142, 20, N'San Francisco Ixhuatán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1143, 20, N'San Francisco Jaltepetongo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1144, 20, N'San Francisco Lachigoló')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1145, 20, N'San Francisco Logueche')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1146, 20, N'San Francisco Nuxaño')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1147, 20, N'San Francisco Ozolotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1148, 20, N'San Francisco Sola')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1149, 20, N'San Francisco Telixtlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1150, 20, N'San Francisco Teopan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1151, 20, N'San Francisco Tlapancingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1152, 20, N'San Gabriel Mixtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1153, 20, N'San Ildefonso Amatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1154, 20, N'San Ildefonso Sola')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1155, 20, N'San Ildefonso Villa Alta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1156, 20, N'San Jacinto Amilpas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1157, 20, N'San Jacinto Tlacotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1158, 20, N'San Jerónimo Coatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1159, 20, N'San Jerónimo Silacayoapilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1160, 20, N'San Jerónimo Sosola')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1161, 20, N'San Jerónimo Taviche')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1162, 20, N'San Jerónimo Tecóatl')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1163, 20, N'San Jerónimo Tlacochahuaya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1164, 20, N'San Jorge Nuchita')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1165, 20, N'San José Ayuquila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1166, 20, N'San José Chiltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1167, 20, N'San José del Peñasco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1168, 20, N'San José del Progreso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1169, 20, N'San José Estancia Grande')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1170, 20, N'San José Independencia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1171, 20, N'San José Lachiguiri')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1172, 20, N'San José Tenango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1173, 20, N'San Juan Achiutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1174, 20, N'San Juan Atepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1175, 20, N'San Juan Bautista Atatlahuca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1176, 20, N'San Juan Bautista Coixtlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1177, 20, N'San Juan Bautista Cuicatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1178, 20, N'San Juan Bautista Guelache')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1179, 20, N'San Juan Bautista Jayacatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1180, 20, N'San Juan Bautista Lo de Soto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1181, 20, N'San Juan Bautista Suchitepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1182, 20, N'San Juan Bautista Tlachichilco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1183, 20, N'San Juan Bautista Tlacoatzintepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1184, 20, N'San Juan Bautista Tuxtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1185, 20, N'San Juan Bautista Valle Nacional')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1186, 20, N'San Juan Cacahuatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1187, 20, N'San Juan Chicomezúchil')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1188, 20, N'San Juan Chilateca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1189, 20, N'San Juan Cieneguilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1190, 20, N'San Juan Coatzóspam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1191, 20, N'San Juan Colorado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1192, 20, N'San Juan Comaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1193, 20, N'San Juan Cotzocón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1194, 20, N'San Juan de los Cués')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1195, 20, N'San Juan del Estado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1196, 20, N'San Juan del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1197, 20, N'San Juan Diuxi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1198, 20, N'San Juan Evangelista Analco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1199, 20, N'San Juan Guelavía')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1200, 20, N'San Juan Guichicovi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1201, 20, N'San Juan Ihualtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1202, 20, N'San Juan Juquila Mixes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1203, 20, N'San Juan Juquila Vijanos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1204, 20, N'San Juan Lachao')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1205, 20, N'San Juan Lachigalla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1206, 20, N'San Juan Lajarcia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1207, 20, N'San Juan Lalana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1208, 20, N'San Juan Mazatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1209, 20, N'San Juan Mixtepec -Dto. 08 -')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1210, 20, N'San Juan Mixtepec -Dto. 26 -')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1211, 20, N'San Juan Ñumí')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1212, 20, N'San Juan Ozolotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1213, 20, N'San Juan Petlapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1214, 20, N'San Juan Quiahije')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1215, 20, N'San Juan Quiotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1216, 20, N'San Juan Sayultepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1217, 20, N'San Juan Tabaá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1218, 20, N'San Juan Tamazola')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1219, 20, N'San Juan Teita')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1220, 20, N'San Juan Teitipac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1221, 20, N'San Juan Tepeuxila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1222, 20, N'San Juan Teposcolula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1223, 20, N'San Juan Yaeé')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1224, 20, N'San Juan Yatzona')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1225, 20, N'San Juan Yucuita')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1226, 20, N'San Lorenzo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1227, 20, N'San Lorenzo Albarradas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1228, 20, N'San Lorenzo Cacaotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1229, 20, N'San Lorenzo Cuaunecuiltitla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1230, 20, N'San Lorenzo Texmelúcan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1231, 20, N'San Lorenzo Victoria')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1232, 20, N'San Lucas Camotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1233, 20, N'San Lucas Ojitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1234, 20, N'San Lucas Quiaviní')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1235, 20, N'San Lucas Zoquiápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1236, 20, N'San Luis Amatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1237, 20, N'San Marcial Ozolotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1238, 20, N'San Marcos Arteaga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1239, 20, N'San Martín de los Cansecos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1240, 20, N'San Martín Huamelúlpam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1241, 20, N'San Martín Itunyoso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1242, 20, N'San Martín Lachilá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1243, 20, N'San Martín Peras')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1244, 20, N'San Martín Tilcajete')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1245, 20, N'San Martín Toxpalan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1246, 20, N'San Martín Zacatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1247, 20, N'San Mateo Cajonos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1248, 20, N'San Mateo del Mar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1249, 20, N'San Mateo Etlatongo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1250, 20, N'San Mateo Nejápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1251, 20, N'San Mateo Peñasco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1252, 20, N'San Mateo Piñas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1253, 20, N'San Mateo Río Hondo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1254, 20, N'San Mateo Sindihui')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1255, 20, N'San Mateo Tlapiltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1256, 20, N'San Mateo Yoloxochitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1257, 20, N'San Mateo Yucutindoo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1258, 20, N'San Melchor Betaza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1259, 20, N'San Miguel Achiutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1260, 20, N'San Miguel Ahuehuetitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1261, 20, N'San Miguel Aloápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1262, 20, N'San Miguel Amatitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1263, 20, N'San Miguel Amatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1264, 20, N'San Miguel Chicahua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1265, 20, N'San Miguel Chimalapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1266, 20, N'San Miguel Coatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1267, 20, N'San Miguel del Puerto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1268, 20, N'San Miguel del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1269, 20, N'San Miguel Ejutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1270, 20, N'San Miguel el Grande')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1271, 20, N'San Miguel Huautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1272, 20, N'San Miguel Mixtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1273, 20, N'San Miguel Panixtlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1274, 20, N'San Miguel Peras')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1275, 20, N'San Miguel Piedras')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1276, 20, N'San Miguel Quetzaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1277, 20, N'San Miguel Santa Flor')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1278, 20, N'San Miguel Soyaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1279, 20, N'San Miguel Suchixtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1280, 20, N'San Miguel Tecomatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1281, 20, N'San Miguel Tenango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1282, 20, N'San Miguel Tequixtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1283, 20, N'San Miguel Tilquiápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1284, 20, N'San Miguel Tlacamama')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1285, 20, N'San Miguel Tlacotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1286, 20, N'San Miguel Tulancingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1287, 20, N'San Miguel Yotao')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1288, 20, N'San Nicolás')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1289, 20, N'San Nicolás Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1290, 20, N'San Pablo Coatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1291, 20, N'San Pablo Cuatro Venados')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1292, 20, N'San Pablo Etla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1293, 20, N'San Pablo Huitzo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1294, 20, N'San Pablo Huixtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1295, 20, N'San Pablo Macuiltianguis')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1296, 20, N'San Pablo Tijaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1297, 20, N'San Pablo Villa de Mitla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1298, 20, N'San Pablo Yaganiza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1299, 20, N'San Pedro Amuzgos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1300, 20, N'San Pedro Apóstol')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1301, 20, N'San Pedro Atoyac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1302, 20, N'San Pedro Cajonos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1303, 20, N'San Pedro Comitancillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1304, 20, N'San Pedro Coxcaltepec Cántaros')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1305, 20, N'San Pedro el Alto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1306, 20, N'San Pedro Huamelula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1307, 20, N'San Pedro Huilotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1308, 20, N'San Pedro Ixcatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1309, 20, N'San Pedro Ixtlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1310, 20, N'San Pedro Jaltepetongo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1311, 20, N'San Pedro Jicayán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1312, 20, N'San Pedro Jocotipac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1313, 20, N'San Pedro Juchatengo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1314, 20, N'San Pedro Mártir')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1315, 20, N'San Pedro Mártir Quiechapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1316, 20, N'San Pedro Mártir Yucuxaco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1317, 20, N'San Pedro Mixtepec -Dto. 22 -')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1318, 20, N'San Pedro Mixtepec -Dto. 26 -')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1319, 20, N'San Pedro Molinos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1320, 20, N'San Pedro Nopala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1321, 20, N'San Pedro Ocopetatillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1322, 20, N'San Pedro Ocotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1323, 20, N'San Pedro Pochutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1324, 20, N'San Pedro Quiatoni')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1325, 20, N'San Pedro Sochiápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1326, 20, N'San Pedro Tapanatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1327, 20, N'San Pedro Taviche')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1328, 20, N'San Pedro Teozacoalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1329, 20, N'San Pedro Teutila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1330, 20, N'San Pedro Tidaá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1331, 20, N'San Pedro Topiltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1332, 20, N'San Pedro Totolápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1333, 20, N'San Pedro y San Pablo Ayutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1334, 20, N'San Pedro y San Pablo Teposcolula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1335, 20, N'San Pedro y San Pablo Tequixtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1336, 20, N'San Pedro Yaneri')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1337, 20, N'San Pedro Yólox')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1338, 20, N'San Pedro Yucunama')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1339, 20, N'San Raymundo Jalpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1340, 20, N'San Sebastián Abasolo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1341, 20, N'San Sebastián Coatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1342, 20, N'San Sebastián Ixcapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1343, 20, N'San Sebastián Nicananduta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1344, 20, N'San Sebastián Río Hondo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1345, 20, N'San Sebastián Tecomaxtlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1346, 20, N'San Sebastián Teitipac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1347, 20, N'San Sebastián Tutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1348, 20, N'San Simón Almolongas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1349, 20, N'San Simón Zahuatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1350, 20, N'San Vicente Coatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1351, 20, N'San Vicente Lachixío')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1352, 20, N'San Vicente Nuñú')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1353, 20, N'Santa Ana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1354, 20, N'Santa Ana Ateixtlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1355, 20, N'Santa Ana Cuauhtémoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1356, 20, N'Santa Ana del Valle')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1357, 20, N'Santa Ana Tavela')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1358, 20, N'Santa Ana Tlapacoyan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1359, 20, N'Santa Ana Yareni')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1360, 20, N'Santa Ana Zegache')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1361, 20, N'Santa Catalina Quierí')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1362, 20, N'Santa Catarina Cuixtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1363, 20, N'Santa Catarina Ixtepeji')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1364, 20, N'Santa Catarina Juquila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1365, 20, N'Santa Catarina Lachatao')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1366, 20, N'Santa Catarina Loxicha')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1367, 20, N'Santa Catarina Mechoacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1368, 20, N'Santa Catarina Minas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1369, 20, N'Santa Catarina Quiané')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1370, 20, N'Santa Catarina Quioquitani')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1371, 20, N'Santa Catarina Tayata')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1372, 20, N'Santa Catarina Ticuá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1373, 20, N'Santa Catarina Yosonotú')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1374, 20, N'Santa Catarina Zapoquila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1375, 20, N'Santa Cruz Acatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1376, 20, N'Santa Cruz Amilpas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1377, 20, N'Santa Cruz de Bravo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1378, 20, N'Santa Cruz Itundujia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1379, 20, N'Santa Cruz Mixtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1380, 20, N'Santa Cruz Nundaco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1381, 20, N'Santa Cruz Papalutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1382, 20, N'Santa Cruz Tacache de Mina')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1383, 20, N'Santa Cruz Tacahua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1384, 20, N'Santa Cruz Tayata')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1385, 20, N'Santa Cruz Xitla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1386, 20, N'Santa Cruz Xoxocotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1387, 20, N'Santa Cruz Zenzontepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1388, 20, N'Santa Gertrudis')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1389, 20, N'Santa Inés de Zaragoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1390, 20, N'Santa Inés del Monte')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1391, 20, N'Santa Inés Yatzeche')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1392, 20, N'Santa Lucía del Camino')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1393, 20, N'Santa Lucía Miahuatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1394, 20, N'Santa Lucía Monteverde')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1395, 20, N'Santa Lucía Ocotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1396, 20, N'Santa Magdalena Jicotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1397, 20, N'Santa María Alotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1398, 20, N'Santa María Apazco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1399, 20, N'Santa María Atzompa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1400, 20, N'Santa María Camotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1401, 20, N'Santa María Chachoápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1402, 20, N'Santa María Chilchotla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1403, 20, N'Santa María Chimalapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1404, 20, N'Santa María Colotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1405, 20, N'Santa María Cortijo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1406, 20, N'Santa María Coyotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1407, 20, N'Santa María del Rosario')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1408, 20, N'Santa María del Tule')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1409, 20, N'Santa María Ecatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1410, 20, N'Santa María Guelacé')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1411, 20, N'Santa María Guienagati')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1412, 20, N'Santa María Huatulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1413, 20, N'Santa María Huazolotitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1414, 20, N'Santa María Ipalapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1415, 20, N'Santa María Ixcatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1416, 20, N'Santa María Jacatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1417, 20, N'Santa María Jalapa del Marqués')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1418, 20, N'Santa María Jaltianguis')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1419, 20, N'Santa María la Asunción')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1420, 20, N'Santa María Lachixío')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1421, 20, N'Santa María Mixtequilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1422, 20, N'Santa María Nativitas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1423, 20, N'Santa María Nduayaco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1424, 20, N'Santa María Ozolotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1425, 20, N'Santa María Pápalo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1426, 20, N'Santa María Peñoles')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1427, 20, N'Santa María Petapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1428, 20, N'Santa María Quiegolani')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1429, 20, N'Santa María Sola')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1430, 20, N'Santa María Tataltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1431, 20, N'Santa María Tecomavaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1432, 20, N'Santa María Temaxcalapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1433, 20, N'Santa María Temaxcaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1434, 20, N'Santa María Teopoxco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1435, 20, N'Santa María Tepantlali')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1436, 20, N'Santa María Texcatitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1437, 20, N'Santa María Tlahuitoltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1438, 20, N'Santa María Tlalixtac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1439, 20, N'Santa María Tonameca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1440, 20, N'Santa María Totolapilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1441, 20, N'Santa María Xadani')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1442, 20, N'Santa María Yalina')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1443, 20, N'Santa María Yavesía')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1444, 20, N'Santa María Yolotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1445, 20, N'Santa María Yosoyúa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1446, 20, N'Santa María Yucuhiti')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1447, 20, N'Santa María Zacatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1448, 20, N'Santa María Zaniza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1449, 20, N'Santa María Zoquitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1450, 20, N'Santiago Amoltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1451, 20, N'Santiago Apoala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1452, 20, N'Santiago Apóstol')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1453, 20, N'Santiago Astata')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1454, 20, N'Santiago Atitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1455, 20, N'Santiago Ayuquililla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1456, 20, N'Santiago Cacaloxtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1457, 20, N'Santiago Camotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1458, 20, N'Santiago Chazumba')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1459, 20, N'Santiago Choápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1460, 20, N'Santiago Comaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1461, 20, N'Santiago del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1462, 20, N'Santiago Huajolotitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1463, 20, N'Santiago Huauclilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1464, 20, N'Santiago Ihuitlán Plumas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1465, 20, N'Santiago Ixcuintepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1466, 20, N'Santiago Ixtayutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1467, 20, N'Santiago Jamiltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1468, 20, N'Santiago Jocotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1469, 20, N'Santiago Juxtlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1470, 20, N'Santiago Lachiguiri')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1471, 20, N'Santiago Lalopa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1472, 20, N'Santiago Laollaga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1473, 20, N'Santiago Laxopa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1474, 20, N'Santiago Llano Grande')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1475, 20, N'Santiago Matatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1476, 20, N'Santiago Miltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1477, 20, N'Santiago Minas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1478, 20, N'Santiago Nacaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1479, 20, N'Santiago Nejapilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1480, 20, N'Santiago Niltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1481, 20, N'Santiago Nundiche')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1482, 20, N'Santiago Nuyoó')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1483, 20, N'Santiago Pinotepa Nacional')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1484, 20, N'Santiago Suchilquitongo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1485, 20, N'Santiago Tamazola')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1486, 20, N'Santiago Tapextla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1487, 20, N'Santiago Tenango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1488, 20, N'Santiago Tepetlapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1489, 20, N'Santiago Tetepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1490, 20, N'Santiago Texcalcingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1491, 20, N'Santiago Textitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1492, 20, N'Santiago Tilantongo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1493, 20, N'Santiago Tillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1494, 20, N'Santiago Tlazoyaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1495, 20, N'Santiago Xanica')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1496, 20, N'Santiago Xiacuí')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1497, 20, N'Santiago Yaitepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1498, 20, N'Santiago Yaveo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1499, 20, N'Santiago Yolomécatl')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1500, 20, N'Santiago Yosondúa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1501, 20, N'Santiago Yucuyachi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1502, 20, N'Santiago Zacatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1503, 20, N'Santiago Zoochila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1504, 20, N'Santo Domingo Albarradas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1505, 20, N'Santo Domingo Armenta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1506, 20, N'Santo Domingo Chihuitán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1507, 20, N'Santo Domingo de Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1508, 20, N'Santo Domingo Ingenio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1509, 20, N'Santo Domingo Ixcatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1510, 20, N'Santo Domingo Nuxaá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1511, 20, N'Santo Domingo Ozolotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1512, 20, N'Santo Domingo Petapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1513, 20, N'Santo Domingo Roayaga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1514, 20, N'Santo Domingo Tehuantepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1515, 20, N'Santo Domingo Teojomulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1516, 20, N'Santo Domingo Tepuxtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1517, 20, N'Santo Domingo Tlatayápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1518, 20, N'Santo Domingo Tomaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1519, 20, N'Santo Domingo Tonalá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1520, 20, N'Santo Domingo Tonaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1521, 20, N'Santo Domingo Xagacía')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1522, 20, N'Santo Domingo Yanhuitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1523, 20, N'Santo Domingo Yodohino')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1524, 20, N'Santo Domingo Zanatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1525, 20, N'Santo Tomás Jalieza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1526, 20, N'Santo Tomás Mazaltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1527, 20, N'Santo Tomás Ocotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1528, 20, N'Santo Tomás Tamazulapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1529, 20, N'Santos Reyes Nopala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1530, 20, N'Santos Reyes Pápalo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1531, 20, N'Santos Reyes Tepejillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1532, 20, N'Santos Reyes Yucuná')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1533, 20, N'Silacayoápam')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1534, 20, N'Sitio de Xitlapehua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1535, 20, N'Soledad Etla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1536, 20, N'Tamazulápam del Espíritu Santo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1537, 20, N'Tanetze de Zaragoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1538, 20, N'Taniche')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1539, 20, N'Tataltepec de Valdés')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1540, 20, N'Teococuilco de Marcos Pérez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1541, 20, N'Teotitlán de Flores Magón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1542, 20, N'Teotitlán del Valle')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1543, 20, N'Teotongo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1544, 20, N'Tepelmeme Villa de Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1545, 20, N'Tezoatlán de Segura y Luna')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1546, 20, N'Tlacolula de Matamoros')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1547, 20, N'Tlacotepec Plumas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1548, 20, N'Tlalixtac de Cabrera')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1549, 20, N'Totontepec Villa de Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1550, 20, N'Trinidad Zaachila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1551, 20, N'Unión Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1552, 20, N'Valerio Trujano')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1553, 20, N'Villa de Chilapa de Díaz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1554, 20, N'Villa de Etla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1555, 20, N'Villa de Tamazulápam del Progreso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1556, 20, N'Villa de Tututepec de Melchor Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1557, 20, N'Villa de Zaachila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1558, 20, N'Villa Díaz Ordaz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1559, 20, N'Villa Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1560, 20, N'Villa Sola de Vega')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1561, 20, N'Villa Talea de Castro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1562, 20, N'Villa Tejúpam de la Unión')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1563, 20, N'Yaxe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1564, 20, N'Yogana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1565, 20, N'Yutanduchi de Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1566, 20, N'Zapotitlán Lagunas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1567, 20, N'Zapotitlán Palmas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1568, 20, N'Zimatlán de Álvarez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1569, 21, N'Acajete')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1570, 21, N'Acateno')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1571, 21, N'Acatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1572, 21, N'Acatzingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1573, 21, N'Acteopan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1574, 21, N'Ahuacatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1575, 21, N'Ahuatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1576, 21, N'Ahuazotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1577, 21, N'Ahuehuetitla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1578, 21, N'Ajalpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1579, 21, N'Albino Zertuche')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1580, 21, N'Aljojuca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1581, 21, N'Altepexi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1582, 21, N'Amixtlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1583, 21, N'Amozoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1584, 21, N'Aquixtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1585, 21, N'Atempan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1586, 21, N'Atexcal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1587, 21, N'Atlequizayan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1588, 21, N'Atlixco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1589, 21, N'Atoyatempan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1590, 21, N'Atzala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1591, 21, N'Atzitzihuacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1592, 21, N'Atzitzintla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1593, 21, N'Axutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1594, 21, N'Ayotoxco de Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1595, 21, N'Calpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1596, 21, N'Caltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1597, 21, N'Camocuautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1598, 21, N'Cañada Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1599, 21, N'Caxhuacan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1600, 21, N'Chalchicomula de Sesma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1601, 21, N'Chapulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1602, 21, N'Chiautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1603, 21, N'Chiautzingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1604, 21, N'Chichiquila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1605, 21, N'Chiconcuautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1606, 21, N'Chietla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1607, 21, N'Chigmecatitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1608, 21, N'Chignahuapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1609, 21, N'Chignautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1610, 21, N'Chila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1611, 21, N'Chila de la Sal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1612, 21, N'Chilchotla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1613, 21, N'Chinantla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1614, 21, N'Coatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1615, 21, N'Coatzingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1616, 21, N'Cohetzala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1617, 21, N'Cohuecan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1618, 21, N'Coronango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1619, 21, N'Coxcatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1620, 21, N'Coyomeapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1621, 21, N'Coyotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1622, 21, N'Cuapiaxtla de Madero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1623, 21, N'Cuautempan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1624, 21, N'Cuautinchán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1625, 21, N'Cuautlancingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1626, 21, N'Cuayuca de Andrade')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1627, 21, N'Cuetzalan del Progreso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1628, 21, N'Cuyoaco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1629, 21, N'Domingo Arenas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1630, 21, N'Eloxochitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1631, 21, N'Epatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1632, 21, N'Esperanza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1633, 21, N'Francisco Z. Mena')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1634, 21, N'General Felipe Ángeles')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1635, 21, N'Guadalupe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1636, 21, N'Guadalupe Victoria')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1637, 21, N'Hermenegildo Galeana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1638, 21, N'Honey')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1639, 21, N'Huaquechula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1640, 21, N'Huatlatlauca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1641, 21, N'Huauchinango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1642, 21, N'Huehuetla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1643, 21, N'Huehuetlán el Chico')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1644, 21, N'Huehuetlán el Grande')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1645, 21, N'Huejotzingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1646, 21, N'Hueyapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1647, 21, N'Hueytamalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1648, 21, N'Hueytlalpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1649, 21, N'Huitzilan de Serdán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1650, 21, N'Huitziltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1651, 21, N'Ixcamilpa de Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1652, 21, N'Ixcaquixtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1653, 21, N'Ixtacamaxtitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1654, 21, N'Ixtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1655, 21, N'Izúcar de Matamoros')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1656, 21, N'Jalpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1657, 21, N'Jolalpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1658, 21, N'Jonotla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1659, 21, N'Jopala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1660, 21, N'Juan C. Bonilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1661, 21, N'Juan Galindo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1662, 21, N'Juan N. Méndez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1663, 21, N'La Magdalena Tlatlauquitepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1664, 21, N'Lafragua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1665, 21, N'Libres')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1666, 21, N'Los Reyes de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1667, 21, N'Mazapiltepec de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1668, 21, N'Mixtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1669, 21, N'Molcaxac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1670, 21, N'Naupan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1671, 21, N'Nauzontla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1672, 21, N'Nealtican')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1673, 21, N'Nicolás Bravo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1674, 21, N'Nopalucan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1675, 21, N'Ocotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1676, 21, N'Ocoyucan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1677, 21, N'Olintla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1678, 21, N'Oriental')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1679, 21, N'Pahuatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1680, 21, N'Palmar de Bravo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1681, 21, N'Pantepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1682, 21, N'Petlalcingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1683, 21, N'Piaxtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1684, 21, N'Puebla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1685, 21, N'Quecholac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1686, 21, N'Quimixtlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1687, 21, N'Rafael Lara Grajales')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1688, 21, N'San Andrés Cholula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1689, 21, N'San Antonio Cañada')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1690, 21, N'San Diego la Mesa Tochimiltzingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1691, 21, N'San Felipe Teotlalcingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1692, 21, N'San Felipe Tepatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1693, 21, N'San Gabriel Chilac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1694, 21, N'San Gregorio Atzompa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1695, 21, N'San Jerónimo Tecuanipan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1696, 21, N'San Jerónimo Xayacatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1697, 21, N'San José Chiapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1698, 21, N'San José Miahuatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1699, 21, N'San Juan Atenco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1700, 21, N'San Juan Atzompa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1701, 21, N'San Martín Texmelucan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1702, 21, N'San Martín Totoltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1703, 21, N'San Matías Tlalancaleca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1704, 21, N'San Miguel Ixitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1705, 21, N'San Miguel Xoxtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1706, 21, N'San Nicolás Buenos Aires')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1707, 21, N'San Nicolás de los Ranchos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1708, 21, N'San Pablo Anicano')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1709, 21, N'San Pedro Cholula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1710, 21, N'San Pedro Yeloixtlahuaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1711, 21, N'San Salvador el Seco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1712, 21, N'San Salvador el Verde')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1713, 21, N'San Salvador Huixcolotla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1714, 21, N'San Sebastián Tlacotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1715, 21, N'Santa Catarina Tlaltempan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1716, 21, N'Santa Inés Ahuatempan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1717, 21, N'Santa Isabel Cholula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1718, 21, N'Santiago Miahuatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1719, 21, N'Santo Tomás Hueyotlipan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1720, 21, N'Soltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1721, 21, N'Tecali de Herrera')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1722, 21, N'Tecamachalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1723, 21, N'Tecomatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1724, 21, N'Tehuacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1725, 21, N'Tehuitzingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1726, 21, N'Tenampulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1727, 21, N'Teopantlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1728, 21, N'Teotlalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1729, 21, N'Tepanco de López')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1730, 21, N'Tepango de Rodríguez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1731, 21, N'Tepatlaxco de Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1732, 21, N'Tepeaca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1733, 21, N'Tepemaxalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1734, 21, N'Tepeojuma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1735, 21, N'Tepetzintla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1736, 21, N'Tepexco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1737, 21, N'Tepexi de Rodríguez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1738, 21, N'Tepeyahualco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1739, 21, N'Tepeyahualco de Cuauhtémoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1740, 21, N'Tetela de Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1741, 21, N'Teteles de Avila Castillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1742, 21, N'Teziutlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1743, 21, N'Tianguismanalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1744, 21, N'Tilapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1745, 21, N'Tlachichuca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1746, 21, N'Tlacotepec de Benito Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1747, 21, N'Tlacuilotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1748, 21, N'Tlahuapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1749, 21, N'Tlaltenango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1750, 21, N'Tlanepantla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1751, 21, N'Tlaola')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1752, 21, N'Tlapacoya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1753, 21, N'Tlapanalá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1754, 21, N'Tlatlauquitepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1755, 21, N'Tlaxco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1756, 21, N'Tochimilco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1757, 21, N'Tochtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1758, 21, N'Totoltepec de Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1759, 21, N'Tulcingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1760, 21, N'Tuzamapan de Galeana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1761, 21, N'Tzicatlacoyan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1762, 21, N'Venustiano Carranza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1763, 21, N'Vicente Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1764, 21, N'Xayacatlán de Bravo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1765, 21, N'Xicotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1766, 21, N'Xicotlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1767, 21, N'Xiutetelco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1768, 21, N'Xochiapulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1769, 21, N'Xochiltepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1770, 21, N'Xochitlán de Vicente Suárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1771, 21, N'Xochitlán Todos Santos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1772, 21, N'Yaonáhuac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1773, 21, N'Yehualtepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1774, 21, N'Zacapala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1775, 21, N'Zacapoaxtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1776, 21, N'Zacatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1777, 21, N'Zapotitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1778, 21, N'Zapotitlán de Méndez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1779, 21, N'Zaragoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1780, 21, N'Zautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1781, 21, N'Zihuateutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1782, 21, N'Zinacatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1783, 21, N'Zongozotla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1784, 21, N'Zoquiapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1785, 21, N'Zoquitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1786, 22, N'Amealco de Bonfil')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1787, 22, N'Arroyo Seco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1788, 22, N'Cadereyta de Montes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1789, 22, N'Colón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1790, 22, N'Corregidora')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1791, 22, N'El Marqués')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1792, 22, N'Ezequiel Montes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1793, 22, N'Huimilpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1794, 22, N'Jalpan de Serra')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1795, 22, N'Landa de Matamoros')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1796, 22, N'Pedro Escobedo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1797, 22, N'Peñamiller')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1798, 22, N'Pinal de Amoles')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1799, 22, N'Querétaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1800, 22, N'San Joaquín')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1801, 22, N'San Juan del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1802, 22, N'Tequisquiapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1803, 22, N'Tolimán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1804, 23, N'Bacalar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1805, 23, N'Benito Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1806, 23, N'Cozumel')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1807, 23, N'Felipe Carrillo Puerto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1808, 23, N'Isla Mujeres')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1809, 23, N'José María Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1810, 23, N'Lázaro Cárdenas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1811, 23, N'Othón P. Blanco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1812, 23, N'Solidaridad')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1813, 23, N'Tulum')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1814, 24, N'Ahualulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1815, 24, N'Alaquines')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1816, 24, N'Aquismón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1817, 24, N'Armadillo de los Infante')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1818, 24, N'Axtla de Terrazas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1819, 24, N'Cárdenas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1820, 24, N'Catorce')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1821, 24, N'Cedral')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1822, 24, N'Cerritos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1823, 24, N'Cerro de San Pedro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1824, 24, N'Charcas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1825, 24, N'Ciudad del Maíz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1826, 24, N'Ciudad Fernández')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1827, 24, N'Ciudad Valles')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1828, 24, N'Coxcatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1829, 24, N'Ebano')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1830, 24, N'El Naranjo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1831, 24, N'Guadalcázar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1832, 24, N'Huehuetlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1833, 24, N'Lagunillas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1834, 24, N'Matehuala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1835, 24, N'Matlapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1836, 24, N'Mexquitic de Carmona')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1837, 24, N'Moctezuma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1838, 24, N'Rayón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1839, 24, N'Rioverde')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1840, 24, N'Salinas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1841, 24, N'San Antonio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1842, 24, N'San Ciro de Acosta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1843, 24, N'San Luis Potosí')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1844, 24, N'San Martín Chalchicuautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1845, 24, N'San Nicolás Tolentino')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1846, 24, N'San Vicente Tancuayalab')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1847, 24, N'Santa Catarina')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1848, 24, N'Santa María del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1849, 24, N'Santo Domingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1850, 24, N'Soledad de Graciano Sánchez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1851, 24, N'Tamasopo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1852, 24, N'Tamazunchale')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1853, 24, N'Tampacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1854, 24, N'Tampamolón Corona')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1855, 24, N'Tamuín')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1856, 24, N'Tancanhuitz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1857, 24, N'Tanlajás')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1858, 24, N'Tanquián de Escobedo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1859, 24, N'Tierra Nueva')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1860, 24, N'Vanegas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1861, 24, N'Venado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1862, 24, N'Villa de Arista')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1863, 24, N'Villa de Arriaga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1864, 24, N'Villa de Guadalupe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1865, 24, N'Villa de la Paz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1866, 24, N'Villa de Ramos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1867, 24, N'Villa de Reyes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1868, 24, N'Villa Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1869, 24, N'Villa Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1870, 24, N'Xilitla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1871, 24, N'Zaragoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1872, 25, N'Ahome')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1873, 25, N'Angostura')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1874, 25, N'Badiraguato')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1875, 25, N'Choix')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1876, 25, N'Concordia')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1877, 25, N'Cosalá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1878, 25, N'Culiacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1879, 25, N'El Fuerte')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1880, 25, N'Elota')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1881, 25, N'Escuinapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1882, 25, N'Guasave')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1883, 25, N'Mazatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1884, 25, N'Mocorito')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1885, 25, N'Navolato')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1886, 25, N'Rosario')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1887, 25, N'Salvador Alvarado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1888, 25, N'San Ignacio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1889, 25, N'Sinaloa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1890, 26, N'Aconchi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1891, 26, N'Agua Prieta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1892, 26, N'Alamos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1893, 26, N'Altar')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1894, 26, N'Arivechi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1895, 26, N'Arizpe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1896, 26, N'Atil')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1897, 26, N'Bacadéhuachi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1898, 26, N'Bacanora')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1899, 26, N'Bacerac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1900, 26, N'Bacoachi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1901, 26, N'Bácum')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1902, 26, N'Banámichi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1903, 26, N'Baviácora')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1904, 26, N'Bavispe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1905, 26, N'Benito Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1906, 26, N'Benjamín Hill')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1907, 26, N'Caborca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1908, 26, N'Cajeme')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1909, 26, N'Cananea')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1910, 26, N'Carbó')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1911, 26, N'Cucurpe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1912, 26, N'Cumpas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1913, 26, N'Divisaderos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1914, 26, N'Empalme')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1915, 26, N'Etchojoa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1916, 26, N'Fronteras')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1917, 26, N'General Plutarco Elías Calles')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1918, 26, N'Granados')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1919, 26, N'Guaymas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1920, 26, N'Hermosillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1921, 26, N'Huachinera')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1922, 26, N'Huásabas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1923, 26, N'Huatabampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1924, 26, N'Huépac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1925, 26, N'Imuris')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1926, 26, N'La Colorada')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1927, 26, N'Magdalena')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1928, 26, N'Mazatán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1929, 26, N'Moctezuma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1930, 26, N'Naco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1931, 26, N'Nácori Chico')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1932, 26, N'Nacozari de García')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1933, 26, N'Navojoa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1934, 26, N'Nogales')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1935, 26, N'Onavas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1936, 26, N'Opodepe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1937, 26, N'Oquitoa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1938, 26, N'Pitiquito')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1939, 26, N'Puerto Peñasco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1940, 26, N'Quiriego')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1941, 26, N'Rayón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1942, 26, N'Rosario')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1943, 26, N'Sahuaripa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1944, 26, N'San Felipe de Jesús')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1945, 26, N'San Ignacio Río Muerto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1946, 26, N'San Javier')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1947, 26, N'San Luis Río Colorado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1948, 26, N'San Miguel de Horcasitas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1949, 26, N'San Pedro de la Cueva')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1950, 26, N'Santa Ana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1951, 26, N'Santa Cruz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1952, 26, N'Sáric')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1953, 26, N'Soyopa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1954, 26, N'Suaqui Grande')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1955, 26, N'Tepache')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1956, 26, N'Trincheras')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1957, 26, N'Tubutama')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1958, 26, N'Ures')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1959, 26, N'Villa Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1960, 26, N'Villa Pesqueira')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1961, 26, N'Yécora')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1962, 27, N'Balancán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1963, 27, N'Cárdenas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1964, 27, N'Centla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1965, 27, N'Centro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1966, 27, N'Comalcalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1967, 27, N'Cunduacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1968, 27, N'Emiliano Zapata')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1969, 27, N'Huimanguillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1970, 27, N'Jalapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1971, 27, N'Jalpa de Méndez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1972, 27, N'Jonuta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1973, 27, N'Macuspana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1974, 27, N'Nacajuca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1975, 27, N'Paraíso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1976, 27, N'Tacotalpa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1977, 27, N'Teapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1978, 27, N'Tenosique')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1979, 28, N'Abasolo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1980, 28, N'Aldama')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1981, 28, N'Altamira')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1982, 28, N'Antiguo Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1983, 28, N'Burgos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1984, 28, N'Bustamante')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1985, 28, N'Camargo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1986, 28, N'Casas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1987, 28, N'Ciudad Madero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1988, 28, N'Cruillas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1989, 28, N'El Mante')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1990, 28, N'Gómez Farías')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1991, 28, N'González')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1992, 28, N'Güémez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1993, 28, N'Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1994, 28, N'Gustavo Díaz Ordaz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1995, 28, N'Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1996, 28, N'Jaumave')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1997, 28, N'Jiménez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1998, 28, N'Llera')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (1999, 28, N'Mainero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2000, 28, N'Matamoros')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2001, 28, N'Méndez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2002, 28, N'Mier')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2003, 28, N'Miguel Alemán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2004, 28, N'Miquihuana')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2005, 28, N'Nuevo Laredo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2006, 28, N'Nuevo Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2007, 28, N'Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2008, 28, N'Padilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2009, 28, N'Palmillas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2010, 28, N'Reynosa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2011, 28, N'Río Bravo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2012, 28, N'San Carlos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2013, 28, N'San Fernando')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2014, 28, N'San Nicolás')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2015, 28, N'Soto la Marina')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2016, 28, N'Tampico')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2017, 28, N'Tula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2018, 28, N'Valle Hermoso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2019, 28, N'Victoria')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2020, 28, N'Villagrán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2021, 28, N'Xicoténcatl')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2022, 29, N'Acuamanala de Miguel Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2023, 29, N'Amaxac de Guerrero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2024, 29, N'Apetatitlán de Antonio Carvajal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2025, 29, N'Apizaco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2026, 29, N'Atlangatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2027, 29, N'Atltzayanca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2028, 29, N'Benito Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2029, 29, N'Calpulalpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2030, 29, N'Chiautempan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2031, 29, N'Contla de Juan Cuamatzi')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2032, 29, N'Cuapiaxtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2033, 29, N'Cuaxomulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2034, 29, N'El Carmen Tequexquitla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2035, 29, N'Emiliano Zapata')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2036, 29, N'Españita')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2037, 29, N'Huamantla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2038, 29, N'Hueyotlipan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2039, 29, N'Ixtacuixtla de Mariano Matamoros')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2040, 29, N'Ixtenco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2041, 29, N'La Magdalena Tlaltelulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2042, 29, N'Lázaro Cárdenas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2043, 29, N'Mazatecochco de José María Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2044, 29, N'Muñoz de Domingo Arenas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2045, 29, N'Nanacamilpa de Mariano Arista')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2046, 29, N'Natívitas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2047, 29, N'Panotla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2048, 29, N'Papalotla de Xicohténcatl')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2049, 29, N'San Damián Texóloc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2050, 29, N'San Francisco Tetlanohcan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2051, 29, N'San Jerónimo Zacualpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2052, 29, N'San José Teacalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2053, 29, N'San Juan Huactzinco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2054, 29, N'San Lorenzo Axocomanitla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2055, 29, N'San Lucas Tecopilco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2056, 29, N'San Pablo del Monte')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2057, 29, N'Sanctórum de Lázaro Cárdenas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2058, 29, N'Santa Ana Nopalucan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2059, 29, N'Santa Apolonia Teacalco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2060, 29, N'Santa Catarina Ayometla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2061, 29, N'Santa Cruz Quilehtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2062, 29, N'Santa Cruz Tlaxcala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2063, 29, N'Santa Isabel Xiloxoxtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2064, 29, N'Tenancingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2065, 29, N'Teolocholco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2066, 29, N'Tepetitla de Lardizábal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2067, 29, N'Tepeyanco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2068, 29, N'Terrenate')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2069, 29, N'Tetla de la Solidaridad')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2070, 29, N'Tetlatlahuca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2071, 29, N'Tlaxcala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2072, 29, N'Tlaxco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2073, 29, N'Tocatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2074, 29, N'Totolac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2075, 29, N'Tzompantepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2076, 29, N'Xaloztoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2077, 29, N'Xaltocan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2078, 29, N'Xicohtzinco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2079, 29, N'Yauhquemehcan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2080, 29, N'Zacatelco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2081, 29, N'Ziltlaltépec de Trinidad Sánchez Santos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2082, 30, N'Acajete')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2083, 30, N'Acatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2084, 30, N'Acayucan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2085, 30, N'Actopan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2086, 30, N'Acula')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2087, 30, N'Acultzingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2088, 30, N'Agua Dulce')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2089, 30, N'Álamo Temapache')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2090, 30, N'Alpatláhuac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2091, 30, N'Alto Lucero de Gutiérrez Barrios')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2092, 30, N'Altotonga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2093, 30, N'Alvarado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2094, 30, N'Amatitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2095, 30, N'Amatlán de los Reyes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2096, 30, N'Angel R. Cabada')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2097, 30, N'Apazapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2098, 30, N'Aquila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2099, 30, N'Astacinga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2100, 30, N'Atlahuilco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2101, 30, N'Atoyac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2102, 30, N'Atzacan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2103, 30, N'Atzalan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2104, 30, N'Ayahualulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2105, 30, N'Banderilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2106, 30, N'Benito Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2107, 30, N'Boca del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2108, 30, N'Calcahualco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2109, 30, N'Camarón de Tejeda')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2110, 30, N'Camerino Z. Mendoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2111, 30, N'Carlos A. Carrillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2112, 30, N'Carrillo Puerto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2113, 30, N'Castillo de Teayo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2114, 30, N'Catemaco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2115, 30, N'Cazones de Herrera')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2116, 30, N'Cerro Azul')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2117, 30, N'Chacaltianguis')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2118, 30, N'Chalma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2119, 30, N'Chiconamel')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2120, 30, N'Chiconquiaco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2121, 30, N'Chicontepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2122, 30, N'Chinameca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2123, 30, N'Chinampa de Gorostiza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2124, 30, N'Chocamán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2125, 30, N'Chontla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2126, 30, N'Chumatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2127, 30, N'Citlaltépetl')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2128, 30, N'Coacoatzintla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2129, 30, N'Coahuitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2130, 30, N'Coatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2131, 30, N'Coatzacoalcos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2132, 30, N'Coatzintla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2133, 30, N'Coetzala')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2134, 30, N'Colipa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2135, 30, N'Comapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2136, 30, N'Córdoba')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2137, 30, N'Cosamaloapan de Carpio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2138, 30, N'Cosautlán de Carvajal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2139, 30, N'Coscomatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2140, 30, N'Cosoleacaque')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2141, 30, N'Cotaxtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2142, 30, N'Coxquihui')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2143, 30, N'Coyutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2144, 30, N'Cuichapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2145, 30, N'Cuitláhuac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2146, 30, N'El Higo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2147, 30, N'Emiliano Zapata')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2148, 30, N'Espinal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2149, 30, N'Filomeno Mata')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2150, 30, N'Fortín')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2151, 30, N'Gutiérrez Zamora')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2152, 30, N'Hidalgotitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2153, 30, N'Huatusco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2154, 30, N'Huayacocotla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2155, 30, N'Hueyapan de Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2156, 30, N'Huiloapan de Cuauhtémoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2157, 30, N'Ignacio de la Llave')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2158, 30, N'Ilamatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2159, 30, N'Isla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2160, 30, N'Ixcatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2161, 30, N'Ixhuacán de los Reyes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2162, 30, N'Ixhuatlán de Madero')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2163, 30, N'Ixhuatlán del Café')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2164, 30, N'Ixhuatlán del Sureste')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2165, 30, N'Ixhuatlancillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2166, 30, N'Ixmatlahuacan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2167, 30, N'Ixtaczoquitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2168, 30, N'Jalacingo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2169, 30, N'Jalcomulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2170, 30, N'Jáltipan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2171, 30, N'Jamapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2172, 30, N'Jesús Carranza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2173, 30, N'Jilotepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2174, 30, N'José Azueta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2175, 30, N'Juan Rodríguez Clara')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2176, 30, N'Juchique de Ferrer')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2177, 30, N'La Antigua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2178, 30, N'La Perla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2179, 30, N'Landero y Coss')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2180, 30, N'Las Choapas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2181, 30, N'Las Minas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2182, 30, N'Las Vigas de Ramírez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2183, 30, N'Lerdo de Tejada')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2184, 30, N'Los Reyes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2185, 30, N'Magdalena')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2186, 30, N'Maltrata')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2187, 30, N'Manlio Fabio Altamirano')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2188, 30, N'Mariano Escobedo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2189, 30, N'Martínez de la Torre')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2190, 30, N'Mecatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2191, 30, N'Mecayapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2192, 30, N'Medellín')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2193, 30, N'Miahuatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2194, 30, N'Minatitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2195, 30, N'Misantla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2196, 30, N'Mixtla de Altamirano')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2197, 30, N'Moloacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2198, 30, N'Nanchital de Lázaro Cárdenas del Río')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2199, 30, N'Naolinco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2200, 30, N'Naranjal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2201, 30, N'Naranjos Amatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2202, 30, N'Nautla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2203, 30, N'Nogales')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2204, 30, N'Oluta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2205, 30, N'Omealca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2206, 30, N'Orizaba')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2207, 30, N'Otatitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2208, 30, N'Oteapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2209, 30, N'Ozuluama de Mascareñas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2210, 30, N'Pajapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2211, 30, N'Pánuco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2212, 30, N'Papantla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2213, 30, N'Paso de Ovejas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2214, 30, N'Paso del Macho')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2215, 30, N'Perote')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2216, 30, N'Platón Sánchez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2217, 30, N'Playa Vicente')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2218, 30, N'Poza Rica de Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2219, 30, N'Pueblo Viejo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2220, 30, N'Puente Nacional')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2221, 30, N'Rafael Delgado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2222, 30, N'Rafael Lucio')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2223, 30, N'Río Blanco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2224, 30, N'Saltabarranca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2225, 30, N'San Andrés Tenejapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2226, 30, N'San Andrés Tuxtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2227, 30, N'San Juan Evangelista')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2228, 30, N'San Rafael')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2229, 30, N'Santiago Sochiapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2230, 30, N'Santiago Tuxtla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2231, 30, N'Sayula de Alemán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2232, 30, N'Sochiapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2233, 30, N'Soconusco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2234, 30, N'Soledad Atzompa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2235, 30, N'Soledad de Doblado')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2236, 30, N'Soteapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2237, 30, N'Tamalín')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2238, 30, N'Tamiahua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2239, 30, N'Tampico Alto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2240, 30, N'Tancoco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2241, 30, N'Tantima')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2242, 30, N'Tantoyuca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2243, 30, N'Tatahuicapan de Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2244, 30, N'Tatatila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2245, 30, N'Tecolutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2246, 30, N'Tehuipango')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2247, 30, N'Tempoal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2248, 30, N'Tenampa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2249, 30, N'Tenochtitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2250, 30, N'Teocelo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2251, 30, N'Tepatlaxco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2252, 30, N'Tepetlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2253, 30, N'Tepetzintla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2254, 30, N'Tequila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2255, 30, N'Texcatepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2256, 30, N'Texhuacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2257, 30, N'Texistepec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2258, 30, N'Tezonapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2259, 30, N'Tierra Blanca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2260, 30, N'Tihuatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2261, 30, N'Tlachichilco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2262, 30, N'Tlacojalpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2263, 30, N'Tlacolulan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2264, 30, N'Tlacotalpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2265, 30, N'Tlacotepec de Mejía')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2266, 30, N'Tlalixcoyan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2267, 30, N'Tlalnelhuayocan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2268, 30, N'Tlaltetela')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2269, 30, N'Tlapacoyan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2270, 30, N'Tlaquilpa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2271, 30, N'Tlilapan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2272, 30, N'Tomatlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2273, 30, N'Tonayán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2274, 30, N'Totutla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2275, 30, N'Tres Valles')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2276, 30, N'Tuxpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2277, 30, N'Tuxtilla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2278, 30, N'Ursulo Galván')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2279, 30, N'Uxpanapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2280, 30, N'Vega de Alatorre')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2281, 30, N'Veracruz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2282, 30, N'Villa Aldama')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2283, 30, N'Xalapa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2284, 30, N'Xico')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2285, 30, N'Xoxocotla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2286, 30, N'Yanga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2287, 30, N'Yecuatla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2288, 30, N'Zacualpan')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2289, 30, N'Zaragoza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2290, 30, N'Zentla')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2291, 30, N'Zongolica')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2292, 30, N'Zontecomatlán de López y Fuentes')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2293, 30, N'Zozocolco de Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2294, 31, N'Abalá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2295, 31, N'Acanceh')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2296, 31, N'Akil')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2297, 31, N'Baca')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2298, 31, N'Bokobá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2299, 31, N'Buctzotz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2300, 31, N'Cacalchén')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2301, 31, N'Calotmul')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2302, 31, N'Cansahcab')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2303, 31, N'Cantamayec')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2304, 31, N'Celestún')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2305, 31, N'Cenotillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2306, 31, N'Chacsinkín')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2307, 31, N'Chankom')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2308, 31, N'Chapab')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2309, 31, N'Chemax')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2310, 31, N'Chichimilá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2311, 31, N'Chicxulub Pueblo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2312, 31, N'Chikindzonot')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2313, 31, N'Chocholá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2314, 31, N'Chumayel')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2315, 31, N'Conkal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2316, 31, N'Cuncunul')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2317, 31, N'Cuzamá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2318, 31, N'Dzán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2319, 31, N'Dzemul')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2320, 31, N'Dzidzantún')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2321, 31, N'Dzilam de Bravo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2322, 31, N'Dzilam González')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2323, 31, N'Dzitás')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2324, 31, N'Dzoncauich')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2325, 31, N'Espita')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2326, 31, N'Halachó')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2327, 31, N'Hocabá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2328, 31, N'Hoctún')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2329, 31, N'Homún')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2330, 31, N'Huhí')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2331, 31, N'Hunucmá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2332, 31, N'Ixil')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2333, 31, N'Izamal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2334, 31, N'Kanasín')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2335, 31, N'Kantunil')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2336, 31, N'Kaua')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2337, 31, N'Kinchil')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2338, 31, N'Kopomá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2339, 31, N'Mama')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2340, 31, N'Maní')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2341, 31, N'Maxcanú')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2342, 31, N'Mayapán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2343, 31, N'Mérida')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2344, 31, N'Mocochá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2345, 31, N'Motul')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2346, 31, N'Muna')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2347, 31, N'Muxupip')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2348, 31, N'Opichén')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2349, 31, N'Oxkutzcab')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2350, 31, N'Panabá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2351, 31, N'Peto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2352, 31, N'Progreso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2353, 31, N'Quintana Roo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2354, 31, N'Río Lagartos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2355, 31, N'Sacalum')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2356, 31, N'Samahil')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2357, 31, N'San Felipe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2358, 31, N'Sanahcat')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2359, 31, N'Santa Elena')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2360, 31, N'Seyé')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2361, 31, N'Sinanché')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2362, 31, N'Sotuta')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2363, 31, N'Sucilá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2364, 31, N'Sudzal')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2365, 31, N'Suma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2366, 31, N'Tahdziú')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2367, 31, N'Tahmek')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2368, 31, N'Teabo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2369, 31, N'Tecoh')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2370, 31, N'Tekal de Venegas')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2371, 31, N'Tekantó')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2372, 31, N'Tekax')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2373, 31, N'Tekit')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2374, 31, N'Tekom')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2375, 31, N'Telchac Pueblo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2376, 31, N'Telchac Puerto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2377, 31, N'Temax')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2378, 31, N'Temozón')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2379, 31, N'Tepakán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2380, 31, N'Tetiz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2381, 31, N'Teya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2382, 31, N'Ticul')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2383, 31, N'Timucuy')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2384, 31, N'Tinum')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2385, 31, N'Tixcacalcupul')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2386, 31, N'Tixkokob')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2387, 31, N'Tixmehuac')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2388, 31, N'Tixpéhual')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2389, 31, N'Tizimín')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2390, 31, N'Tunkás')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2391, 31, N'Tzucacab')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2392, 31, N'Uayma')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2393, 31, N'Ucú')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2394, 31, N'Umán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2395, 31, N'Valladolid')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2396, 31, N'Xocchel')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2397, 31, N'Yaxcabá')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2398, 31, N'Yaxkukul')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2399, 31, N'Yobaín')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2400, 32, N'Apozol')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2401, 32, N'Apulco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2402, 32, N'Atolinga')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2403, 32, N'Benito Juárez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2404, 32, N'Calera')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2405, 32, N'Cañitas de Felipe Pescador')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2406, 32, N'Chalchihuites')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2407, 32, N'Concepción del Oro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2408, 32, N'Cuauhtémoc')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2409, 32, N'El Plateado de Joaquín Amaro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2410, 32, N'El Salvador')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2411, 32, N'Fresnillo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2412, 32, N'Genaro Codina')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2413, 32, N'General Enrique Estrada')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2414, 32, N'General Francisco R. Murguía')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2415, 32, N'General Pánfilo Natera')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2416, 32, N'Guadalupe')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2417, 32, N'Huanusco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2418, 32, N'Jalpa')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2419, 32, N'Jerez')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2420, 32, N'Jiménez del Teul')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2421, 32, N'Juan Aldama')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2422, 32, N'Juchipila')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2423, 32, N'Loreto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2424, 32, N'Luis Moya')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2425, 32, N'Mazapil')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2426, 32, N'Melchor Ocampo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2427, 32, N'Mezquital del Oro')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2428, 32, N'Miguel Auza')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2429, 32, N'Momax')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2430, 32, N'Monte Escobedo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2431, 32, N'Morelos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2432, 32, N'Moyahua de Estrada')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2433, 32, N'Nochistlán de Mejía')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2434, 32, N'Noria de Ángeles')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2435, 32, N'Ojocaliente')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2436, 32, N'Pánuco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2437, 32, N'Pinos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2438, 32, N'Río Grande')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2439, 32, N'Sain Alto')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2440, 32, N'Santa María de la Paz')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2441, 32, N'Sombrerete')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2442, 32, N'Susticacán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2443, 32, N'Tabasco')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2444, 32, N'Tepechitlán')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2445, 32, N'Tepetongo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2446, 32, N'Teúl de González Ortega')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2447, 32, N'Tlaltenango de Sánchez Román')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2448, 32, N'Trancoso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2449, 32, N'Trinidad García de la Cadena')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2450, 32, N'Valparaíso')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2451, 32, N'Vetagrande')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2452, 32, N'Villa de Cos')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2453, 32, N'Villa García')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2454, 32, N'Villa González Ortega')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2455, 32, N'Villa Hidalgo')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2456, 32, N'Villanueva')
GO
INSERT [dbo].[Municipios] ([MunicipioId], [EstadoId], [Nombre]) VALUES (2457, 32, N'Zacatecas')
GO
SET IDENTITY_INSERT [dbo].[Municipios] OFF
GO
ALTER TABLE [dbo].[Municipios]  WITH CHECK ADD  CONSTRAINT [FK_Municipios_Estados] FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([EstadoId])
GO
ALTER TABLE [dbo].[Municipios] CHECK CONSTRAINT [FK_Municipios_Estados]
GO
