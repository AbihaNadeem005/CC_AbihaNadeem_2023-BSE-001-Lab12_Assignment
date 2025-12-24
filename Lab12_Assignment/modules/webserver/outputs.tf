output "nginx_sg_id" {
  description = "Security group ID for Nginx reverse proxy/load balancer"
  value       = aws_security_group.nginx.id
}

output "backend_sg_id" {
  description = "Security group ID for backend web servers"
  value       = aws_security_group.backend.id
}
