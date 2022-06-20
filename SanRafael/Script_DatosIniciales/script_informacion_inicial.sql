USE [SanRafael]
GO
SET IDENTITY_INSERT [dbo].[AreaProduccion] ON 

INSERT [dbo].[AreaProduccion] ([Id], [Nombre]) VALUES (1, N'Cocina Caliente')
INSERT [dbo].[AreaProduccion] ([Id], [Nombre]) VALUES (2, N'Pasteleria')
INSERT [dbo].[AreaProduccion] ([Id], [Nombre]) VALUES (3, N'Panadería')
INSERT [dbo].[AreaProduccion] ([Id], [Nombre]) VALUES (4, N'Cocina Fría')
INSERT [dbo].[AreaProduccion] ([Id], [Nombre]) VALUES (5, N'Almacén')
SET IDENTITY_INSERT [dbo].[AreaProduccion] OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (2, N'Verdura')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (3, N'Pan')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (4, N'Fruta')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (5, N'Frutos Secos')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (6, N'Lácteos')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (7, N'Pasta')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (8, N'Cereales')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (9, N'Pescado')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (10, N'Aceites')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (11, N'Mantequillas')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (12, N'Hortalizas')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (13, N'Legumbres')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (14, N'Carnes blancas')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (15, N'Carnes rojas')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO

GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'32a3512c-326b-416f-a9d2-891e1466903e', 0, N'd6e37e7e-0b86-4f80-a491-f2e99a2522c7', N'gastrocafe@gmail.com', 0, 1, NULL, N'GASTROCAFE@GMAIL.COM', N'GASTROCAFE@GMAIL.COM', N'AQAAAAEAACcQAAAAEBxDewOeYCswbhLzN7n6LKq3smgxlw1RXNqqpoZrJNPim0mRjuQzWRsp8FM1u0AEEQ==', NULL, 0, N'2a1e721d-8556-4afa-a47a-898e3e396e7b', 0, N'gastrocafe@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'5', 0, N'0', N'isra@gmail.com', 0, 1, NULL, N'ISRA@GMAIL.COM', N'ISRA@GMAIL.COM', N'AQAAAAEAACcQAAAAEBxDewOeYCswbhLzN7n6LKq3smgxlw1RXNqqpoZrJNPim0mRjuQzWRsp8FM1u0AEEQ==', NULL, 0, N'0', 0, N'isra@gmail.com')
GO
