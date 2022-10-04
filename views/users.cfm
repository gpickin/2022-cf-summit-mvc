<cfinclude template="/inc_header.cfm">
<cfoutput>
    <cfquery name="user">
        SELECT * FROM `users` WHERE `id` = <cfqueryparam value="#url.userID#">
    </cfquery>
    <cfquery name="rants">
        SELECT * FROM `rants` 
        where userID = <cfqueryparam value="#url.userID#"> 
        ORDER BY `createdDate` DESC
    </cfquery>
    <h1>#user.username#</h1>
    <h4>Rants</h4>
    <ul>
        <cfloop query="#rants#">
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
    </ul>
</cfoutput>
<cfinclude template="/inc_footer.cfm">