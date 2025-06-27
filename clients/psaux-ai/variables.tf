variable "AWS_REGION" {
  type        = string
  default     = "ap-south-1"
  description = "Provide region in which to deploy TF code"
}


variable "credentials_profile_name" {
  type        = string
  default     = "personal"
  description = "Name of the AWS credentials profile name to use."
}
 
variable "route_53_credential_profile" {
   default     = "personal"
  description = "Name of the AWS credentials profile name to use."
}
variable "account" {
  type = string
}

variable "environment" {
  type = string
  # default = "stg"
}
# variable "zone_id" {
#   description = "ID of DNS zone"
#   type        = string
#   default     = ""
# }

variable "zone_name" {
  description = "Name of DNS zone"
  type        = string
  default     = "syneriq.io"
}

data "aws_caller_identity" "current" {}