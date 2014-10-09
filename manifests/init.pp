##
## CRBS
## Puppet 3.7+
## Module: role
## File: init.pp
## Description: This file holds the roles. please note, if the role has more than 1 role
##  create a new role.
##

class role
{
    ## default role stub
}


class role::webserver
{
    include apache
}

class role::minimal
{
    include profile::common
}

class role::puppetmaster
{
    ## >> will include once verified. include profile::common
    include passenger

}
