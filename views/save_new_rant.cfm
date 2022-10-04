<cfif !structKeyExists( session, "loggedInUser" ) || !len( session.loggedInUser )>
    <cflocation url="/login.cfm" addtoken="false">
</cfif>

<cfquery>
    INSERT INTO `rants` (`body`, `createdDate`, `modifiedDate`, `userId`)
    VALUES ( 
        <cfqueryparam value="#form.body#">,
        <cfqueryparam value="#now()#" cfsqltype="TIMESTAMP">,
        <cfqueryparam value="#now()#" cfsqltype="TIMESTAMP">,
        <cfqueryparam value="#session.loggedInUser#">
    )
</cfquery> 
<cflocation url="/" addtoken="false">