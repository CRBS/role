###############################################################################
## Class: role::ssh
## This role contains all the ssh client and server configs based on the
## saz/ssh module from forge.puppetlabs.com.
###############################################################################
class role::ssh
{
    ## default role::ssh stub. including this base class will install
    ## the default ssh client.
    ## all common ssh characteristics go here.
    include ssh

    ## open up the default ssh ports in the firewall
    firewall { '100 allow ssh access':
        port   => 22,
        proto  => tcp,
        action => accept,
    }

}


