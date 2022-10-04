component {

	/**
	 * Configure the ColdBox App For Production
	 */
	function configure() {
		/**
		 * --------------------------------------------------------------------------
		 * ColdBox Directives
		 * --------------------------------------------------------------------------
		 * Here you can configure ColdBox for operation. Remember tha these directives below
		 * are for PRODUCTION. If you want different settings for other environments make sure
		 * you create the appropriate functions and define the environment in your .env or
		 * in the `environments` struct.
		 */
		coldbox = {
			//COLDBOX DEFAULTS
		};

		/**
		 * --------------------------------------------------------------------------
		 * App Conventions
		 * --------------------------------------------------------------------------
		 */
		conventions = {
			handlersLocation : "controllers",
			viewsLocation    : "views",
			layoutsLocation  : "layouts",
			modelsLocation   : "models",
			eventAction      : "index"
		};
	}

	environments = {
		development = "127.*"
	};

	/**
	 * Development environment
	 */
	function development() {
		coldbox.customErrorTemplate = "/coldbox/system/exceptions/Whoops.cfm"; // interactive bug report
		// Development Settings
		coldbox.reinitPassword           = "";
		coldbox.handlersIndexAutoReload  = true;
		
		// Application Aspects
		coldbox.handlerCaching           = false;
		coldbox.eventCaching             = false;
		coldbox.viewCaching              = false;
		// Will automatically do a mapDirectory() on your `models` for you.
		coldbox.autoMapModels            = true;
		// Auto converts a json body payload into the RC
		coldboxjsonPayloadToRC          = true;
	}

}