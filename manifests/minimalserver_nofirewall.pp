###############################################################################
## role::server::minimal
## This class creates an imaging workstation which includes all the required
## workstation rpms etc.
###############################################################################
class role::minimalserver_nofirewall inherits role
{
  ## include the puppet_master profile
  include profile::minimal_nofirewall
}
