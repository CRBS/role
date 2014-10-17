###############################################################################
## role::puppetmaster
## This class creates the puppetmaster role to generate a new puppet master
###############################################################################
class role::puppetmaster inherits role
{
  ## include the puppet_master profile
  include profile::puppet_master
}



