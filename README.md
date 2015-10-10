# puppet-agent-step


The Puppet Agent Step Plugin executes the 
[puppet agent](https://docs.puppetlabs.com/references/3.6.2/man/agent.html) 
command on each node matching the Job node filter.
The manifest file specified by the plugin is assumed to be present on the remote node.

The plugin can be configured to invoke the puppet command using sudo.
Also, the plugin allows you to pass any standard options to the puppet agent command.


## Plugin Parameters

* Arguments: Optional arguments to pass to puppet apply command.
* Sudo: Use sudo to run puppet (default: false)

## Verbose output

If the job invokes the plugin with loglevel==DEBUG, the plugin will configure
puppet apply using the --verbose flag.

## Build


    make

produces:

    puppet-agent-step.zip

...then,

    make install

Copies it to $RDECK_BASE/libext    
