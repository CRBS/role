###############################################################################
## role::imagingworkstation
## This class creates an imaging workstation which includes all the required
## workstation rpms etc.
###############################################################################
class role::imagingworkstation inherits role
{
  ## include the puppet_master profile
  include profile::workstation::imaging
  include profile::openldap_client
}



