component singleton {

    function list(){
        return queryExecute( 
            "SELECT * FROM `rants` 
            ORDER BY `createdDate` DESC" 
        );
    }
}