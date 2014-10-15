class role::iptables
{

####### This section is for the firewall module ###############################
## Set up a metatype to purge unmanaged firewall resources. This will
## clear any existing rules and make sure that only rules defined in
## Puppet exist on the machine.
###############################################################################
resources { "firewall":
  purge => true
}
Firewall {
  before  => Class['core_firewall::post'],
  require => Class['core_firewall::pre'],
}
class { ['core_firewall::pre', 'core_firewall::post']: }
class { 'firewall': }
###############################################################################








}



