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
  }

data "aws_instances" "example" {
  instance_tags = {
    Name = "i-005c929ec9895776f"  # Replace with the name of your EC2 instance
  }
}

output "instance_details" {
  value = data.aws_instances.example.ids  # Assuming you want to output the instance IDs
}
