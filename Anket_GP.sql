use [master]
go
CREATE DATABASE [anket];
go 
use [anket]
go
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sorular](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[soru] [nvarchar](150) NULL,
 CONSTRAINT [PK_problem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO



SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[secenekler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[soruId] [int] NOT NULL,
	[cevap] [nvarchar](150) NOT NULL,
	[cevapFormat] [nvarchar](150) NULL,
 CONSTRAINT [PK_secenekler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[secenekler]  WITH CHECK ADD  CONSTRAINT [FK_secenekler_sorular] FOREIGN KEY([soruId])
REFERENCES [dbo].[sorular] ([id])
GO

ALTER TABLE [dbo].[secenekler] CHECK CONSTRAINT [FK_secenekler_sorular]
GO


CREATE TABLE [dbo].[kayitlar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[soru] [nvarchar](150) NULL,
	[cevap] [nvarchar](150) NULL,
	[nick] [nvarchar](150) NULL,
 CONSTRAINT [PK_kayitlar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO