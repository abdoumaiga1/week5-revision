output "private-ip" {
  value = aws_lightsail_instance.l1.private_ip_address 
}
output "public-ip" {
  value = aws_lightsail_instance.l1.public_ip_address
}