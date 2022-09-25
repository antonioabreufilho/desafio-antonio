terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

}

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA4HRT6UEKHNZCWUDQ"
  secret_key = "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"
}