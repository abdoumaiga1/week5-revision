terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_iam_group" "group1" {
  name = "security"
}
resource "aws_iam_user" "lb" {
  name = "cadette"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}
# Create a new GitLab Lightsail Instance
resource "aws_lightsail_instance" "gitlab_test" {
  name              = "lighshail"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  tags = {
    env = "qa"
  }
}