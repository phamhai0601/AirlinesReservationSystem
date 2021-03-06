USE [AirlinesReservationSystem]
GO
/****** Object:  Table [dbo].[AirPort]    Script Date: 5/3/2022 6:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirPort](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[code] [nvarchar](255) NOT NULL,
	[address] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_AirPort] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightSchedules]    Script Date: 5/3/2022 6:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightSchedules](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[plane_id] [int] NOT NULL,
	[from_airport] [int] NOT NULL,
	[to_airport] [int] NOT NULL,
	[departures_at] [datetime] NOT NULL,
	[arrivals_at] [datetime] NOT NULL,
	[cost] [int] NOT NULL,
 CONSTRAINT [PK_FlightSchedules] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plane]    Script Date: 5/3/2022 6:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plane](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[code] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Plane] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketManager]    Script Date: 5/3/2022 6:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketManager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[flight_schedules_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_TicketManager] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/3/2022 6:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[cccd] [nvarchar](255) NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[phone_number] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[user_type] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AirPort] ON 

INSERT [dbo].[AirPort] ([id], [name], [code], [address]) VALUES (1, N'CẢNG HÀNG KHÔNG QUỐC TẾ NỘI BÀI', N'NOI_BAI', N'Cảng hàng không quốc tế Nội Bài ​xã Phú Minh - huyện Sóc Sơn - Thành phố Hà Nội')
INSERT [dbo].[AirPort] ([id], [name], [code], [address]) VALUES (2, N'CẢNG HÀNG KHÔNG QUỐC TẾ TÂN SƠN NHẤT', N'TAN_SON_NHAT', N'Tòa Nhà Cảng Hàng Không Quốc Tế Tân Sơn Nhất - Phường 2, Q. Tân Bình, Tp.Hồ Chí Minh')
INSERT [dbo].[AirPort] ([id], [name], [code], [address]) VALUES (3, N'CẢNG HÀNG KHÔNG QUỐC TẾ ĐÀ NẴNG', N'DA_NANG', N'Phường Hòa Thuận Tây, Quận Hải Châu, Thành phố Đà Nẵng')
INSERT [dbo].[AirPort] ([id], [name], [code], [address]) VALUES (4, N'CẢNG HÀNG KHÔNG QUỐC TẾ PHÚ QUỐC', N'PHU_QUOC', N'Tổ 2, Ấp Dương Tơ, Xã Dương Tơ, H. Phú Quốc, T. Kiên Giang')
SET IDENTITY_INSERT [dbo].[AirPort] OFF
GO
SET IDENTITY_INSERT [dbo].[FlightSchedules] ON 

INSERT [dbo].[FlightSchedules] ([id], [plane_id], [from_airport], [to_airport], [departures_at], [arrivals_at], [cost]) VALUES (1, 1, 1, 0, CAST(N'2022-05-03T00:51:00.000' AS DateTime), CAST(N'2022-05-03T01:51:00.000' AS DateTime), 2000000)
INSERT [dbo].[FlightSchedules] ([id], [plane_id], [from_airport], [to_airport], [departures_at], [arrivals_at], [cost]) VALUES (2, 1, 1, 2, CAST(N'2022-05-03T00:58:00.000' AS DateTime), CAST(N'2022-05-03T01:58:00.000' AS DateTime), 300000)
INSERT [dbo].[FlightSchedules] ([id], [plane_id], [from_airport], [to_airport], [departures_at], [arrivals_at], [cost]) VALUES (3, 2, 1, 3, CAST(N'2022-05-03T00:59:00.000' AS DateTime), CAST(N'2022-05-03T00:59:00.000' AS DateTime), 300000)
SET IDENTITY_INSERT [dbo].[FlightSchedules] OFF
GO
SET IDENTITY_INSERT [dbo].[Plane] ON 

INSERT [dbo].[Plane] ([id], [name], [code]) VALUES (1, N'Airbus A321-200', N'AIR-200')
INSERT [dbo].[Plane] ([id], [name], [code]) VALUES (2, N'Boeing 787-9 Dreamliner', N'BOE-787')
SET IDENTITY_INSERT [dbo].[Plane] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [name], [email], [cccd], [address], [phone_number], [password], [user_type]) VALUES (1, N'PHAM VAN HAI', N'mitto.hai@gmail.com', N'123456789', N'HUNG YEN', N'1234565768', N'123456', 1)
INSERT [dbo].[User] ([id], [name], [email], [cccd], [address], [phone_number], [password], [user_type]) VALUES (2, N'PHAM HAi', N'mitto.hai.735@gmail.com', N'123456789', N'ưe', N'+844999999999', N'123456', 1)
INSERT [dbo].[User] ([id], [name], [email], [cccd], [address], [phone_number], [password], [user_type]) VALUES (12, N'PHAM HAi', N'mitto.hai.7385@gmail.com', N'1234567', N'ưe', N'+844999999999', N'123456', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[FlightSchedules]  WITH CHECK ADD  CONSTRAINT [FK_FlightSchedules_AirPort] FOREIGN KEY([from_airport])
REFERENCES [dbo].[AirPort] ([id])
GO
ALTER TABLE [dbo].[FlightSchedules] CHECK CONSTRAINT [FK_FlightSchedules_AirPort]
GO
ALTER TABLE [dbo].[FlightSchedules]  WITH CHECK ADD  CONSTRAINT [FK_FlightSchedules_AirPort1] FOREIGN KEY([from_airport])
REFERENCES [dbo].[AirPort] ([id])
GO
ALTER TABLE [dbo].[FlightSchedules] CHECK CONSTRAINT [FK_FlightSchedules_AirPort1]
GO
ALTER TABLE [dbo].[FlightSchedules]  WITH CHECK ADD  CONSTRAINT [FK_FlightSchedules_Plane] FOREIGN KEY([plane_id])
REFERENCES [dbo].[Plane] ([id])
GO
ALTER TABLE [dbo].[FlightSchedules] CHECK CONSTRAINT [FK_FlightSchedules_Plane]
GO
ALTER TABLE [dbo].[TicketManager]  WITH CHECK ADD  CONSTRAINT [FK_TicketManager_FlightSchedules] FOREIGN KEY([flight_schedules_id])
REFERENCES [dbo].[FlightSchedules] ([id])
GO
ALTER TABLE [dbo].[TicketManager] CHECK CONSTRAINT [FK_TicketManager_FlightSchedules]
GO
ALTER TABLE [dbo].[TicketManager]  WITH CHECK ADD  CONSTRAINT [FK_TicketManager_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[TicketManager] CHECK CONSTRAINT [FK_TicketManager_User]
GO
