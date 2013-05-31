# Recipe: nginx::iptables
# Author: Bryan Taylor <btaylor@rackspace.com>

# Wraps the default recipe with an iptables rule to open port 80

case node['platform']
when 'redhat','centos'
  include_recipe 'iptables'
  iptables_rule "iptables_open_80"
end

include_recipe 'nginx'


