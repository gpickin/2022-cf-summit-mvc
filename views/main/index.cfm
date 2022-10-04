<cfinclude template="/inc_header.cfm">
<cfoutput>
	<h2>All Rants</h2>

    <cfif prc.rants.recordcount eq 0>
        <h3>No rants yet</h3>
        <p align="right"><a href="/new_rant.cfm" class="btn btn-primary">Start one now!</a></p>
    <cfelse>
        <p align="right"><a href="/new_rant.cfm" class="btn btn-primary">Start a new rant!</a></p>

		<cfloop query="#prc.rants#">
            <cfset user = queryExecute( 
                "SELECT * FROM `users` WHERE `id` = ?", 
                [ prc.rants.userID ], 
                {  } 
            )>
            <div class="card mb-3">
                <div class="card-header">
                    <strong><a href="/users.cfm?userid=#prc.rants.userID#">#user.username#</a></strong>
                    said at #dateTimeFormat( prc.rants.createdDate, "h:nn:ss tt" )#
                    on #dateFormat( prc.rants.createdDate, "mmm d, yyyy")#
                </div>
                <div class="panel card-body">
                    #prc.rants.body#
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