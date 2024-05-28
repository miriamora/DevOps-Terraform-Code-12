terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {

  region = "us-east-1"
}

/*
resource "aws_iam_group" "dev-group" {
  name = "developers24"
  lifecycle {
    prevent_destroy = false
  }
}


resource "aws_iam_user" "dev-user" {
  name = "Amanda2024"
  depends_on = [ aws_iam_group.dev-group ]
}
*/

resource "aws_instance" "server1" {
  ami= "ami-033a1ebf088e56e81"
  instance_type = "t3.small"
  key_name = "wordpress"

}

  #meta-arguments [lifestyle,count, depends_on,for_each]