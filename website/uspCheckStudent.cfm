<cfset dsn = "Amazon_certs">
<cftry>
	<cfstoredproc procedure="uspCheckStudent" datasource="#dsn#">
		<cfprocparam type = "In" CFSQLType = "CF_SQL_CHAR" dbvarname="@uid" value="#uid#" null="no">
		<cfprocparam type = "In" CFSQLType = "CF_SQL_VARCHAR" dbvarname="@lastName" value="#lastName#" null="no">
		<cfprocresult name="Student">
	</cfstoredproc>
	<cfcatch type="Database">
		<cfset up2snuff = 0>
		<cfset em = "#cfcatch.Message#" & "#cfcatch.Detail#">
	</cfcatch>
</cftry>
