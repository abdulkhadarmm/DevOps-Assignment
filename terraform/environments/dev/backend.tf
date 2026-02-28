terraform {
  backend "s3" {
    bucket         = "abdul-terraform-state-12345"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}