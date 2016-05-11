## The `stack` script

### Synopsis

    stack [options] --list
    stack [options] (--set-default|--show) <stackname>
    stack [options] <stackname> <command> [args [...]]

### Description

The `stack` script is for managing credentials for a number of
openstack instances.  Places files in `$HOME/.stack` with OpenStack
credentials, and then you can run `stack <filename> <command> ...` to
execute commands with those environment variables set.

For example, if you placed the following in `$HOME/.stack/corp`:

    export OS_TENANT_NAME=lars
    export OS_USERNAME=lars
    export OS_PASSWORD=secret
    export OS_AUTH_URL="http://openstack.example.com:5000/v2.0"
    export OS_AUTH_STRATEGY=keystone

You could run commands with those environment variables set like this:

    stack corp nova list


