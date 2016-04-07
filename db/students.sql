USE [Library_Web]
GO

/****** Object:  Table [drickard1967].[students]    Script Date: 11/21/2011 10:30:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [drickard1967].[students](
	[uid] [char](9) NOT NULL,
	[lastName] [varchar](50) NULL,
	[firstName] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[cert_id] [varchar](50) NULL,
 CONSTRAINT [PK_students] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

