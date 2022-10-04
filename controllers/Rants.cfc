component {

    property name="RantService" inject="RantService";

    function preHandler( event, rc, prc ){
        if( !structKeyExists( session, "loggedInUser" ) || !len( session.loggedInUser ) ){
            relocate( "login" );
        }
    }

    function new_rant( event, rc, prc ){
        event.setView( "new_rant" );
    }

    function save_new_rant( event, rc, prc ){
        rantService.create( rc.body, session.loggedInUser );
        relocate( "/" );
    }

}