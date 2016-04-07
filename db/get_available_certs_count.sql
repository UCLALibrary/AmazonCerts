USE [Library_Web]
GO

/****** Object:  UserDefinedFunction [dbo].[get_available_certs_count]    Script Date: 11/21/2011 10:31:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[get_available_certs_count] 
(
)
RETURNS int
AS
BEGIN
	DECLARE @cert_count int

	DECLARE certs_cursor CURSOR FOR
		SELECT	Count(certificate)
		FROM 	drickard1967.certificates
		WHERE	uid IS NULL
	
	OPEN certs_cursor

	FETCH NEXT FROM certs_cursor
	INTO @cert_count

	CLOSE certs_cursor
	DEALLOCATE certs_cursor

	RETURN @cert_count

END


GO

