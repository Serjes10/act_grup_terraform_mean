output "public_ip"  { value = aws_instance.nodejs.public_ip }
output "private_ip" { value = aws_instance.nodejs.private_ip }