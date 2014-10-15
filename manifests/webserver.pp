###############################################################################
## Class: role::webserver
## In this class contains web server roles based on application types: apache
##  or tomcat, etc.
###############################################################################
class role::webserver
{
    ## default role::webserver stub
    ## all common webserver characteristics go here.
}

class role::webserver::apache
{
    include role::webserver
    include apache
}

class role::webserver::tomcat
{
    include role::webserver
    include tomcat
}


