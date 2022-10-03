<cfinclude template="/inc_header.cfm">
<cfquery name="rants">
    SELECT * FROM `rants` 
    ORDER BY `createdDate` DESC
</cfquery>
<cfoutput>
	<h2>All Rants</h2>

    <cfif rants.recordcount eq 0>
        <h3>No rants yet</h3>
        <p align="right"><a href="/new_rant.cfm" class="btn btn-primary">Start one now!</a></p>
    <cfelse>
        <p align="right"><a href="/new_rant.cfm" class="btn btn-primary">Start a new rant!</a></p>

		<cfloop query="#rants#">
            <cfset user = queryExecute( 
                "SELECT * FROM `users` WHERE `id` = ?", 
                [ rants.userID ], 
                {  } 
            )>
            <div class="card mb-3">
                <div class="card-header">
                    <strong><a href="/users.cfm?userid=#rants.userID#">#user.username#</a></strong>
                    said at #dateTimeFormat( rants.createdDate, "h:nn:ss tt" )#
                    on #dateFormat( rants.createdDate, "mmm d, yyyy")#
                </div>
                <div class="panel card-body">
                    #rants.body#
                </div>
                <cfprocessingdirective pageEncoding="utf-8">
                <div class="card-footer">
                    <button class="btn btn-outline-dark">
                        1 👊
                    </button>
                    <button class="btn btn-outline-dark">
                        0 💩
                    </button>
                </div>
            </div>
        </cfloop>
	</cfif>
</cfoutput>

<cfinclude template="/inc_footer.cfm">