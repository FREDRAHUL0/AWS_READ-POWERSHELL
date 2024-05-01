terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.47.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"  # Replace with your desired region
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

data "aws_instances" "example" {
  instance_tags = {
    Name = "webserver"  # Replace with the name of your EC2 instance
  }
}

output "instance_details" {
  value = data.aws_instances.example.ids  # Assuming you want to output the instance IDs
}
