log_level  = "INFO"
node_name = "consul-node1"
# server = true/false -> server/client
# bootstrap_expect = 1 -> nie stworze clustra poki nie bedzie 1 node / tylko na <node1>
ui = true

enable_syslog = true

datacenter = "consul-cluster"
data_dir = "/opt/consul/data"

client_addr    = "0.0.0.0"
bind_addr      = "<node1>"  # internal communication
advertise_addr = "<node1>"  # external communication

# jezeli 3node cluster
# retry_join = ["<node1>","<node2>","<node3>"]

leave_on_terminate = true
