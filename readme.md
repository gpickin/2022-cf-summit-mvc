# Step by step guide to upgrading procedural code to MVC & Why you should do it

Presented October 2nd, 2022 at Adode ColdFusion CF Summit

Link: https://cfsummit.adobeevents.com/

Recording: Will be updated when released.

Slides: FIXME: Will be updated after the presentation

## Setup

### Install CommandBox

To make things easier to get up and running with this app, we're using CommandBox to spinup our Adobe ColdFusion 2021 server.

Download: https://www.ortussolutions.com/products/commandbox

Installation Documentation: https://commandbox.ortusbooks.com/setup/installation

### Database

Create a database called Soapbox on your MySQL server, and load the data from /\_\_sql/20201014_soapbox.sql file.

### Configure Datasource

To save you logging into the CF Admin and setting up the datasource and other settings, we're going to use CFConfig which allows CommandBox to take a JSON file and configure Adobe ColdFusion when the server starts up.

#### Install CFConfig with CommandBox

The box.json file is the CFML's equivalent to Node/NPM's package.json.

We have a little information about our app, and our dependencies, which in this case, is just the CFConfig module to help us easily and programmatically load settings into our CF Server.

To install all of the dependencies for this app:

- Start CommandBox in a terminal
- From the commandbox command line, navigate to this folder, `cd \www\mvc`
- From this folder, type `install` to install the cfconfig system module.

#### Update .cfconfig.json file

Update the .config.json file to match your database connectivity

Change your host, port, database name, username, password etc.

Note: We recommend using the DotEnv module for this usually, but we're trying to keep the example as simple as can be.

### Start Adobe ColdFusion with CommandBox

Next, type `start` to start the commandbox server

CommandBox will download Adobe ColdFusion 2021's WAR file if you do not have the latest version and then start the server with your CFConfig settings.

Your browser should pop up in about 60-90 seconds (especially if you're downloading the new version) and you will be able to see this site up and running on http://127.0.0.1:59636

The port is configured in the server.json file, with rewrites enabled, and the version of CFEngine we want to use, in this case, Adobe ColdFusion 2021.
