component {
        
    function index(){

        prc.rants = queryExecute( 
            "SELECT * FROM `rants` 
            ORDER BY `createdDate` DESC" 
        );

    }

}
    