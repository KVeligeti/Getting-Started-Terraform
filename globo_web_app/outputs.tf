output "aws_instance_public_dns" {
  value       = aws_instance.nginx1.public_dns
  description = "public dns address for nginx"
}


output "aws_instance_names" {
  value       = aws_instance.nginx1.tags_all
  description = "all tags"
}