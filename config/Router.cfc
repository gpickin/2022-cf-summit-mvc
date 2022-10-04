component {

	function configure() {
		// Set Full Rewrites
		setFullRewrites( true );

		/**
		 * --------------------------------------------------------------------------
		 * App Routes
		 * --------------------------------------------------------------------------
		 *
		 */
        route( "new_rant" )
			.withHandler( "Rants" )
			.toAction( {
				GET  : "new_rant",
				POST : "save_new_rant"
			} );
			
		 // Conventions based routing
		route( ":handler/:action?" ).end();
	}

}