<cfif !structKeyExists( session, "loggedInUser" ) || !len( session.loggedInUser )>
    <cflocation url="/login.cfm" addtoken="false">
</cfif>
<cfinclude template="/inc_header.cfm">
<cfoutput>
    <div class="card">
        <h4 class="card-header">Start a Rant</h4>
        <form class="form panel card-body" method="POST" action="/save_new_rant.cfm">
            <div class="form-group">
                <textarea name="body" class="form-control" placeholder="What's on your mind?" rows="10"></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Rant About It!</button>
            </div>
        </form>
    </div>
</cfoutput>
<cfinclude template="/inc_footer.cfm">