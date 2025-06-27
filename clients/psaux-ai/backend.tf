terraform {
  backend "s3" {
    bucket = "iopshub-terraform-state-bucket-01"
    key    = "psaux-ai/terraform.tfstate"
    region = "ap-south-1"
  }
}
