component {
        
    property name="RantService" inject="RantService";

    function index(){

        prc.rants = RantService.list();

    }

}
    