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
 #The api methods being used below are called from the library obtained from running generate.sh using api.yml in peer_volume_api_yaml directory 
 
 #Add a peer to the TSP
 client.add_peer(add={'addresses':['192.168.56.102']})
 
 #Get peer information
 client.get_peer("192.168.56.102")
 
 #Get information of all peers in the TSP
 client.get_peers()
 
 #Edit peer information
 client.edit_peer("192.168.56.102", edit={'zone':'3203f226-b37f-42da-83fe-0fe8d043d995'})
 
 #Delete Peer
 client.delete_peer("192.168.56.102")
 
 #This is for creating volume via manual provisioning
 client.volume_create(body = {'name':'gv1', 'type':'replicate', 'replica':3, 'bricks': [['peerid':'0c5bc279-397a-4535-be32-301c16dbbc69', 'path':'/exports/bricks/gv1/brick1/brick'], ['peerid':'7aafd270-b9b2-40b2-ba0e-7289f7d025c0', 'path':'/exports/bricks/gv1/brick2/brick'], ['peerid':'57470e13-2f9c-4404-9179-fb2ba38cc1d8', 'path': '/exports/bricks/gv1/brick3/brick']]})
 
 #This is for creating volume via intelligent volume provisioning. Make sure the device is registered first
 client.volume_create(body = {'name':'gv1', 'size':1000, replica:3})
 
 #Get the volume information
 client.volume_info()
 
 #Start the specified volume
 client.volume_start('gv1')
 
 #Stop the specified volume
 client.volume_stop('gv1')
 
 ```
 
 
