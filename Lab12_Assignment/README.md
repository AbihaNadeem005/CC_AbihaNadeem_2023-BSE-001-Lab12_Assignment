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
### 1.2 Variable Cnfiguration
All variables are defined in variables.tf with descriptions and types.
CIDR blocks are validated using regex.
terraform.tfvars provides the values for deployment.
Private key path is marked sensitive and the actual key contents are not included.

### 1.3 Networking Module
The networking module provisions a VPC, public subnet,Internet Gateway,route table,and associates the subnet with the route table.
All resources are tagged using env_prefix.
