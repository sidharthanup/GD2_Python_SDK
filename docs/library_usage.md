# Library Usage
This guide demonstrates how to use the generated python library to make api calls to GlusterD2.

## Setup 
Please follow the GD2 [user-guide](https://github.com/gluster/glusterd2/blob/master/doc/quick-start-user-guide.md) to set up GlusterD-2.0 on the nodes.
This guide takes the following as an example of IPs for the two nodes:
 * **Node 1**: `192.168.56.101`
 * **Node 2**: `192.168.56.102`
 
 Assuming GD2 is set up and running on both the nodes, go to the generated directory and edit the configuration.py file. Set  self.host =  "target_node_ip:24007/v1" . 
 
 For example: 
 `self.host = "http://192.168.56.101:24007/v1"`
 
 ## Usage
 ```
 import GD2_Python
 from GD2_Python.api.client import Client
 client = Client()
 #The method names and parameters depend on the yaml/json api definition
 client.get_peer("192.168.56.102")
 ```
 
 
