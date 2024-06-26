terraform {
  backend "remote" {
    organization = "mounisatyaorg"
    workspaces {
      name = "mouniaws"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "customprofile"
}