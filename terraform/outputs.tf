output "instance_public_ip" {
  value       = aws_instance.builder.public_ip
  description = "The public IP of the EC2 instance"
}

output "ssh_key_path" {
  value       = local_file.private_key.filename
  description = "The path to the SSH private key"
}

output "security_group_id" {
  value       = aws_security_group.builder_sg.id
  description = "The ID of the security group"
}

output "ssh_connection_command" {
  value       = "ssh -i ${local_file.private_key.filename} ec2-user@${aws_instance.builder.public_ip}"
  description = "Command to SSH into the EC2 instance"
}