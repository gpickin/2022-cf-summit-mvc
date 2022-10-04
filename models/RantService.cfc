component singleton {

    function list(){
        return queryExecute( 
            "SELECT * FROM `rants` 
            ORDER BY `createdDate` DESC" 
        );
    }

    function create( body, userID ){
        return queryExecute( 
            "INSERT INTO `rants` (`body`, `createdDate`, `modifiedDate`, `userId`)
            VALUES ( 
                :body,
                :now,
                :now,
                :userID
            )",
            {
                body: arguments.body,
                now: { value=now(), cfsqltype="TIMESTAMP"},
                userID: arguments.userID
            }
        );
    }
}