USE [Parfumer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 05.11.2022 11:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id_category] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](70) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id_category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Good]    Script Date: 05.11.2022 11:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Good](
	[Id_good] [int] IDENTITY(1,1) NOT NULL,
	[Id_category] [int] NOT NULL,
	[sale] [int] NULL,
	[count] [int] NULL,
	[description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Good] PRIMARY KEY CLUSTERED 
(
	[Id_good] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05.11.2022 11:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id_order] [int] IDENTITY(1,1) NOT NULL,
	[Id_user] [int] NULL,
	[Id_point] [int] NOT NULL,
	[Id_status] [int] NOT NULL,
	[code] [int] NOT NULL,
	[date] [date] NOT NULL,
	[delivery] [date] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_elem]    Script Date: 05.11.2022 11:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_elem](
	[Id_order_elemId] [int] IDENTITY(1,1) NOT NULL,
	[Id_good] [int] NOT NULL,
	[Id_order] [int] NOT NULL,
 CONSTRAINT [PK_Order_elem] PRIMARY KEY CLUSTERED 
(
	[Id_order_elemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Poin_of_issie]    Script Date: 05.11.2022 11:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poin_of_issie](
	[Id_point] [int] NOT NULL,
	[index] [int] NOT NULL,
	[addres] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Poin_of_issie] PRIMARY KEY CLUSTERED 
(
	[Id_point] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 05.11.2022 11:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id_status] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05.11.2022 11:50:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id_user] [int] IDENTITY(1,1) NOT NULL,
	[role] [nvarchar](30) NOT NULL,
	[FIO] [nvarchar](70) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id_category], [name]) VALUES (1, N'Мужской парфюм')
INSERT [dbo].[Category] ([Id_category], [name]) VALUES (2, N'Женский парфюм')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Good] ON 

INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (56, 1, 5, 6, N'Одеколон Dragon Parfums Dragon Noir, 100 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (60, 2, 3, 18, N'Туалетная вода Today Parfum G-Club Egoist, 100 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (61, 2, 2, 4, N'Туалетная вода Paris Line Parfums Dollar, 100 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (64, 2, 5, 2, N'Туалетная вода Dilis Parfum Mila, 100 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (65, 2, 3, 16, N'Духи Dilis Parfum Classic Collection №18, 30 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (68, 2, 2, 11, N'Духи Dilis Parfum Ночная Фиалка, 9.5 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (69, 1, 4, 12, N'Туалетная вода Dilis Parfum Steelman Zone, 100 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (72, 1, 4, 6, N'Туалетная вода Dilis Parfum Cool&Grey, 100 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (74, 2, 5, 13, N'Духи Dilis Parfum Classic Collection №34, 30 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (76, 2, 2, 9, N'Туалетная вода Today Parfum Cola Cherry, 50 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (77, 1, 4, 15, N'Туалетная вода HUGO BOSS Boss Bottled, 50 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (81, 1, 4, 7, N'Парфюмерная вода LACOSTE Lacoste pour Femme, 30 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (82, 1, 4, 12, N'Туалетная вода Dilis Parfum Aqua Cool, 100 мл')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (83, 1, 2, 5, N'Dilis Parfum Мужской Walker Breeze')
INSERT [dbo].[Good] ([Id_good], [Id_category], [sale], [count], [description]) VALUES (84, 1, 5, 3, N'Туалетная вода HUGO BOSS Boss Bottled, 100 мл')
SET IDENTITY_INSERT [dbo].[Good] OFF
GO
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (24, 344288, N'г. Ангарск, ул. Чехова, 1')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (25, 614164, N'г.Ангарск,  ул. Степная, 30')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (26, 394242, N'г. Ангарск, ул. Коммунистическая, 43')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (27, 660540, N'г. Ангарск, ул. Солнечная, 25')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (28, 125837, N'г. Ангарск, ул. Шоссейная, 40')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (29, 125703, N'г. Ангарск, ул. Партизанская, 49')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (30, 625283, N'г. Ангарск, ул. Победы, 46')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (31, 614611, N'г. Ангарск, ул. Молодежная, 50')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (32, 454311, N'г.Ангарск, ул. Новая, 19')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (33, 660007, N'г.Ангарск, ул. Октябрьская, 19')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (34, 603036, N'г. Ангарск, ул. Садовая, 4')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (35, 450983, N'г.Ангарск, ул. Комсомольская, 26')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (36, 394782, N'г. Ангарск, ул. Чехова, 3')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (37, 603002, N'г. Ангарск, ул. Дзержинского, 28')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (38, 450558, N'г. Ангарск, ул. Набережная, 30')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (39, 394060, N'г.Ангарск, ул. Фрунзе, 43')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (40, 410661, N'г. Ангарск, ул. Школьная, 50')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (41, 625590, N'г. Ангарск, ул. Коммунистическая, 20')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (42, 625683, N'г. Ангарск, ул. 8 Марта')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (43, 400562, N'г. Ангарск, ул. Зеленая, 32')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (44, 614510, N'г. Ангарск, ул. Маяковского, 47')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (45, 410542, N'г. Ангарск, ул. Светлая, 46')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (46, 620839, N'г. Ангарск, ул. Цветочная, 8')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (47, 443890, N'г. Ангарск, ул. Коммунистическая, 1')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (48, 603379, N'г. Ангарск, ул. Спортивная, 46')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (49, 603721, N'г. Ангарск, ул. Гоголя, 41')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (50, 410172, N'г. Ангарск, ул. Северная, 13')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (51, 420151, N'г. Ангарск, ул. Вишневая, 32')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (52, 125061, N'г. Ангарск, ул. Подгорная, 8')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (53, 630370, N'г. Ангарск, ул. Шоссейная, 24')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (54, 614753, N'г. Ангарск, ул. Полевая, 35')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (55, 426030, N'г. Ангарск, ул. Маяковского, 44')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (56, 450375, N'г. Ангарск ул. Клубная, 44')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (57, 625560, N'г. Ангарск, ул. Некрасова, 12')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (58, 630201, N'г. Ангарск, ул. Комсомольская, 17')
INSERT [dbo].[Poin_of_issie] ([Id_point], [index], [addres]) VALUES (59, 190949, N'г. Ангарск, ул. Мичурина, 26')
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id_status], [name]) VALUES (1, N'Новый')
INSERT [dbo].[Status] ([Id_status], [name]) VALUES (2, N'Завершен')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id_user], [role], [FIO], [login], [password]) VALUES (1, N'Администратор', N'Федоров Глеб Михайлович', N'o@outlook.com', N'2L6KZG')
INSERT [dbo].[User] ([Id_user], [role], [FIO], [login], [password]) VALUES (2, N'Администратор', N'Семенова Софья Дмитриевна', N'hr6zdl@yandex.ru', N'uzWC67')
INSERT [dbo].[User] ([Id_user], [role], [FIO], [login], [password]) VALUES (3, N'Администратор', N'Васильев Егор Германович', N'kaft93x@outlook.com', N'8ntwUp')
INSERT [dbo].[User] ([Id_user], [role], [FIO], [login], [password]) VALUES (4, N'Менеджер', N'Смирнова Ирина Александровна', N'dcu@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([Id_user], [role], [FIO], [login], [password]) VALUES (5, N'Менеджер', N'Петров Андрей Владимирович', N'19dn@outlook.com', N'RSbvHv')
INSERT [dbo].[User] ([Id_user], [role], [FIO], [login], [password]) VALUES (6, N'Менеджер', N'Егоров Максим Андреевич', N'pa5h@mail.ru', N'rwVDh9')
INSERT [dbo].[User] ([Id_user], [role], [FIO], [login], [password]) VALUES (7, N'Клиент', N'Никитин Артур Алексеевич', N'281av0@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([Id_user], [role], [FIO], [login], [password]) VALUES (8, N'Клиент', N'Киселев Максим Сергеевич', N'8edmfh@outlook.com', N'gynQMT')
INSERT [dbo].[User] ([Id_user], [role], [FIO], [login], [password]) VALUES (9, N'Клиент', N'Борисов Тимур Егорович', N'sfn13i@mail.ru', N'AtnDjr')
INSERT [dbo].[User] ([Id_user], [role], [FIO], [login], [password]) VALUES (10, N'Клиент', N'Климов Арсений Тимурович', N'g0orc3x1@outlook.com', N'JlFRCZ')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Good]  WITH CHECK ADD  CONSTRAINT [FK_Good_Category] FOREIGN KEY([Id_category])
REFERENCES [dbo].[Category] ([Id_category])
GO
ALTER TABLE [dbo].[Good] CHECK CONSTRAINT [FK_Good_Category]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Poin_of_issie] FOREIGN KEY([Id_point])
REFERENCES [dbo].[Poin_of_issie] ([Id_point])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Poin_of_issie]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([Id_status])
REFERENCES [dbo].[Status] ([Id_status])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([Id_status])
REFERENCES [dbo].[User] ([Id_user])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order_elem]  WITH CHECK ADD  CONSTRAINT [FK_Order_elem_Good] FOREIGN KEY([Id_good])
REFERENCES [dbo].[Good] ([Id_good])
GO
ALTER TABLE [dbo].[Order_elem] CHECK CONSTRAINT [FK_Order_elem_Good]
GO
ALTER TABLE [dbo].[Order_elem]  WITH CHECK ADD  CONSTRAINT [FK_Order_elem_Order] FOREIGN KEY([Id_order])
REFERENCES [dbo].[Order] ([Id_order])
GO
ALTER TABLE [dbo].[Order_elem] CHECK CONSTRAINT [FK_Order_elem_Order]
GO
