module "zones" {
  source  = "../../modules/route53_zone"

  zones = {
    "syneriq.io" = {
      domain_name = "syneriq.io"
      comment     = "syneriq.io"
      private_zone = true 
      vpc = {
        vpc_id     = "vpc-010265f99c2023e15"
        vpc_region = "ap-south-1"
      }
    }
    "public-syneriq.io" = {
      domain_name = "syneriq.io"
      comment     = "syneriq.io"
      private_zone = false
     
    }
  
   
 "psaux.ai" = {
      domain_name = "psaux.ai"
      comment     = "psaux.ai"
      private_zone = true
      vpc = {
        vpc_id     = "vpc-010265f99c2023e15"  
        vpc_region = "ap-south-1"
      }
    }
    "public-psaux.ai" = {
      domain_name = "psaux.ai"
      comment     = "psaux.ai"
      private_zone = false
    }
  

  "test.ai" = {
      domain_name = "test.ai"
      comment     = "test.ai"
      private_zone = true
      vpc = {
        vpc_id     = "vpc-010265f99c2023e15"  
        vpc_region = "ap-south-1"
      }
    }
    "public-test.ai" = {
      domain_name = "test.ai"
      comment     = "test.ai"
      private_zone = false
    }
  
  }
  environment = "prod"
  account     = "iopshub"
  tags = {
    ManagedBy = "Terraform"
  }
}