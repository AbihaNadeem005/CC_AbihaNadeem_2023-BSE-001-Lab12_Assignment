### 1.1 Project Architecture
```
.
├── README.md
├── locals.tf
├── main.tf
├── modules
│   ├── networking
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── security
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── webserver
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── outputs.tf
├── scripts
│   ├── apache-setup.sh
│   └── nginx-setup.sh
├── terraform.tfvars
└── variables.tf
```
### 1.2 Variable Configuration
All variables are defined in variables.tf with descriptions and types.
CIDR blocks are validated using regex.
terraform.tfvars provides the values for deployment.
Private key path is marked sensitive and the actual key contents are not included.

### 1.3 Networking Module
The networking module provisions a VPC, public subnet,Internet Gateway,route table,and associates the subnet with the route table.
All resources are tagged using env_prefix.

### 1.4 Security Module
The security module creates two security groups: Nginx(allowing SSH from the IP, HTTP/HTTPS from anywhere) and Backend(SSH from the IP, HTTP from Nginx SG). Variables vpc_id, env_prefix, and my_ip are define and outputs nginx_sg_id and backend_sg_id provide the security group IDs. All resources are tagged with env_prefix.
