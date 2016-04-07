USE [Library_Web]
GO

/****** Object:  StoredProcedure [dbo].[uspCheckStudent]    Script Date: 11/21/2011 10:32:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		drickard
-- Create date: 20110615
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[uspCheckStudent]
	@uid char(9),
	@lastName varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @resultCode VARCHAR(50), @certID VARCHAR(50), @idCount INT	
	
	SET @certID = null

	DECLARE student_cursor CURSOR FOR
		SELECT	count(uid)
		FROM 	drickard1967.students
		WHERE	uid = @uid
				AND upper(lastName) = upper(@lastName)

	OPEN student_cursor

	FETCH NEXT FROM student_cursor
	INTO @idCount

	CLOSE student_cursor
	DEALLOCATE student_cursor
	
	IF @idCount = 0 
		BEGIN
			SET @resultCode = 'no-such-student'
			SET @certID = ''
		END
	ELSE
		BEGIN
			DECLARE student_cursor CURSOR FOR
				SELECT	cert_id
				FROM 	drickard1967.students
				WHERE	uid = @uid
						AND upper(lastName) = upper(@lastName)

			OPEN student_cursor

			FETCH NEXT FROM student_cursor
			INTO @certID

			CLOSE student_cursor
			DEALLOCATE student_cursor
			
			IF @certID IS NOT NULL
				BEGIN
					SET @resultCode = 'repeat_customer'
					SET @certID = ''
				END
			ELSE
				BEGIN
					SET @resultCode = 'valid-student'

					DECLARE student_cursor CURSOR FOR
						SELECT TOP 1 certificate
						FROM 	drickard1967.certificates
						WHERE	uid IS NULL
						ORDER BY certificate

					OPEN student_cursor

					FETCH NEXT FROM student_cursor
					INTO @certID

					CLOSE student_cursor
					DEALLOCATE student_cursor
					
					IF @certID IS NULL
						BEGIN
							SET @resultCode = 'all_out'
							SET @certID = ''
						END
					ELSE
						BEGIN
							UPDATE drickard1967.students 
							SET cert_id = @certID
							WHERE uid = @uid
		    					  AND upper(lastName) = upper(@lastName)
								  
							UPDATE drickard1967.certificates
							SET uid = @uid, issued = GETDATE()
							WHERE certificate = @certID
						END
				END
		END
	
	SELECT @resultCode AS resultCode, @certID AS certID

	SET NOCOUNT OFF
	
END



GO

