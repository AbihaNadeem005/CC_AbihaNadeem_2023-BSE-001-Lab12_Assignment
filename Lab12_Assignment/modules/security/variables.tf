variable "vpc_id" {
  description = "VPC ID where security groups will be created"
  type        = string
}

variable "env_prefix" {
  description = "Environment prefix for naming and tags"
  type        = string
}

variable "my_ip" {
  description = "Public IP for SSH access"
  type        = string
}
