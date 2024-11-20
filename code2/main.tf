resource "aws_lightsail_instance" "l1" {
  name              = "my-server"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
 # key_pair_name     =
 # key_pair_name     =
  user_data         = "sudo yum install httpd -y && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Welcome to Terraform</h1>' > /var/www/html/index.html"
  bundle_id         = "nano_3_0"
  tags = {
    env  = "dev"
    team = "devops"
  }
}