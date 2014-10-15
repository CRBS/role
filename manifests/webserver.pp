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

    ## open up the proper web ports
    firewall { '101 allow http and https access':
        port   => [80, 443],
        proto  => tcp,
        action => accept,
    }

}

class role::webserver::tomcat
{
    include role::webserver
    include tomcat

    ## open up the proper web ports
    firewall { '102 allow tomcat 8080 access':
        port   => 8080,
        proto  => tcp,
        action => accept,
    }
}


