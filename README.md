<img src="https://github.com/ndo04343/LISA/blob/main/res/LISA_logo.jpeg" width="800" height="500"><br>

### 1. What is LISA?
LISA is a virtual server system made up of a large-scale heterogeneous distributed computing cluster. It can have all devices based on the Linux OS as a cluster, and each node can participate as a worker cluster  through the WAN to the head node. If there are no clusters server system in one physical space, and there are more than 100,000 clusters worldwide using high-speed Internet communication, performance can close to the computing power of a supercomputer as long as the network speed supports it and well made parallel programs.

> All super computers are organized into clusters.

Of course in local area.

### 2. How to make environment of LISA?
If you want to use LISA, you have to create environment for LISA.<br>
Following are sequence of creating environment.<br><br>

1. Each nodes must have fixed IP address.
    - You have to turn off DHCP service in wireless AP environment of fix IP address.
2. If the head node exists in subnet of router assigned by public IP, configure port forwarding table.
    - In ssh protocol, use 22 port.<br>
    - It can be useful to assign domain by DDNS service.
3. Execute lisa_header.sh in head node.
    - You have to remember token.
4. Execute lisa_worker.sh in each worker nodes.
    - You have to input token that gathered in 3.

### 3. How to gathering resource?
It is recommended that each node use a low-power CPU-based Linux system. When a resource provider participates in the LISA system, the resource provider has a stake in the monetary benefits of the user of the LISA system. Under these business models, the user can gather resource providers. 

### 4. Future of LISA
1. If quantum communication(a communication method using quantum entanglement) is commercialized, there is almost no restriction on the network speed, so performance is greatly improved. At this time, even if you do not configure it as a computational server, you can build a file system with an extra-large capacity, and you can build an extra-large server by adding a load balancing function.
2. You can put the working node as a new sub-lisa head node. If you do this, LISA have the ability to load balance computation.
