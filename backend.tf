terraform {
    backend "s3" {

        bucket = "wy-a4f84a230c77"
        region = "us-west-2"
        encrypt = "true"
        key = "projeto-infra/terraform.tfstate"
    }
}