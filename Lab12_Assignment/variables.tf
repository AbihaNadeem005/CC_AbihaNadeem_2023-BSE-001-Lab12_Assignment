variable"vpc_cidr_block"{
  type=string
  description="CIDR block for the VPC"
  validation{
    condition=can(regex("^([0-9]{1,3}\\.){3}[0-9]{1,3}/[0-9]+$", var.vpc_cidr_block))
    error_message="The vpc_cidr_block must be a valid CIDR notation string, e.g., 10.0.0.0/16."
  }
}
variable"subnet_cidr_block"{
  type=string
  description="CIDR block to assign to the application subnet"
  validation{
    condition=can(regex("^([0-9]{1,3}\\.){3}[0-9]{1,3}/[0-9]+$", var.subnet_cidr_block))
    error_message="The subnet_cidr_block must be a valid CIDR notation string, e.g., 10.0.10.0/24."
  }
}
variable"availability_zone"{
  type=string
  description="The AWS availability zone where resources will be deployed"
}
variable"env_prefix"{
  type=string
  description="Environment prefix for naming resources"
  default="dev"
}
variable"instance_type"{
  type=string
  description="EC2 instance type"
  default="t3.micro"
}
variable "public_key" {
  type        = string
  description = "Content of the SSH public key for EC2 Key Pair"
}
variable"private_key"{
  type=string
  description="Path to the SSH private key"
  sensitive=true
}
variable"backend_servers"{
  type=list(object({
    name=string
    script_path=string
  }))
  description="List of backend servers with their setup script paths"
}

