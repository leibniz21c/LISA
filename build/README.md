# Build
---
### 1. How to build?
If you want to use it, you have to create environment.
Following are sequence of creating environment.<br><br>

1. Each nodes must have fixed IP address.
    - You have to turn off DHCP service in wireless AP environment or fix IP address.
2. If the head node exists in subnet of router assigned by public IP, configure port forwarding table.
    - In ssh protocol, use 22 port.<br>
    - It can be useful to assign domain by DDNS service.
3. Execute <strong>"lisa_constructor.sh"</strong> in head node and select the "Head Node" channel.
    - You have to remember token.
4. Execute <strong>"lisa_constructor.sh"</strong> in each worker nodes and select the "Worker Node" channel.
    - You have to input token that gathered in 3. You can check the token at <strong>"token_info.txt"</strong>
5. In last, You have to set up <strong>Alpine MPICH</strong>.
    - [Go Alpine MPICH github](https://github.com/NLKNguyen/alpine-mpich)
6. Execute parallel program coded by MPI library.
