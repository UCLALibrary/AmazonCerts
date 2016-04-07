USE [Library_Web]
GO

/****** Object:  Table [drickard1967].[certificates]    Script Date: 11/21/2011 10:30:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [drickard1967].[certificates](
	[certificate] [varchar](50) NOT NULL,
	[uid] [char](9) NULL,
	[issued] [smalldatetime] NULL,
 CONSTRAINT [PK_certificates] PRIMARY KEY CLUSTERED 
(
	[certificate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

