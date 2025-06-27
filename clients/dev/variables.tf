variable "AWS_REGION" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1"
}


variable "AWS_PROFILE" {
  type = string
  default = "personal"
}
// Define client-specific variables here if needed in the future. 