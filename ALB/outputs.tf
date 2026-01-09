output "alb_dns_name" {
  description = "Public DNS name of the ALB"
  value       = aws_lb.app.dns_name
}

output "web_instance_id" {
  description = "ID of the web EC2 instance"
  value       = aws_instance.web.id
}
