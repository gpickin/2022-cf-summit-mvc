component {

	// Application properties
	this.name              = "soapbox_#hash( getCurrentTemplatePath() )#";
	this.sessionManagement = true;
	this.sessionTimeout    = createTimespan( 0, 0, 30, 0 );
	this.setClientCookies  = true;

    this.datasource = "soapbox";
    
}