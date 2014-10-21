###############################################################################
## role::server::minimal
## This class creates an imaging workstation which includes all the required
## workstation rpms etc.
###############################################################################
class role::server::minimal inherits role
{
  ## include the puppet_master profile
  include profile::minimal
}
