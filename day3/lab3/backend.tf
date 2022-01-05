terraform {
 backend "s3" {
 bucket = "backend-bucket-with-random-unique-name"
 key = "terraform.tfstate"
 region = "eu-west-1"
 }
}

