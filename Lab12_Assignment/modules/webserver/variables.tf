variable "env_prefix" {
  type        = string
  description = "Environment prefix, e.g., dev, prod"
}
variable "instance_name" {
  type        = string
  description = "Base name of the EC2 instance"
}
variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "EC2 instance type"
}
variable "availability_zone" {
  type        = string
  description = "Availability zone for the instance"
}
variable "vpc_id" {
  type        = string
  description = "VPC ID where instance will reside"
}
variable "subnet_id" {
  type        = string
  description = "Subnet ID for the instance"
}
variable "security_group_id" {
  type        = string
  description = "Security Group ID for the instance"
}
variable "public_key" {
  type        = string
  description = "Public key for the key pair"
}
variable "script_path" {
  type        = string
  description = "Path to the user data script file"
}
variable "instance_suffix" {
  type        = string
  description = "Suffix to make instance unique"
}
variable "common_tags" {
  type        = map(string)
  description = "Common tags for resources"
}

