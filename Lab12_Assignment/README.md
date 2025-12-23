#Project Architecture
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
#Variable Cnfiguration
All variables are defined in variables.tf with descriptions and types.
CIDR blocks are validated using regex.
terraform.tfvars provides the values for deployment.
Private key path is marked sensitive and the actual key contents are not included.
