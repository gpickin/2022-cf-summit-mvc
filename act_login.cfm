<cfset user = queryExecute( 
    "SELECT * FROM `users` WHERE `username` = ?", 
    [ form.username ], 
    {  } 
)>
<cfset session.loggedInUser = user.id>
<cflocation url="/" addtoken="false">