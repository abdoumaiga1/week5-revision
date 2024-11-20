terraform {
  backend "s3" {
    bucket = "aicha-app"
    key    = "dev/terrafom.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt = true
  }
}