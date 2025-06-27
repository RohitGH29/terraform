# Terraform Infrastructure Repository

This repository manages AWS infrastructure using Terraform, following a modular and client-based structure for scalability and reusability.

## Structure

- `modules/` — Reusable Terraform modules (e.g., VPC, Route53, etc.)
  - Each module is self-contained and can be used by multiple clients.
- `clients/` — Environment or account-specific configurations (e.g., dev, psaux-ai)
  - Each client uses modules and manages its own state and provider configuration.

## Getting Started

1. **Clone the repository**
2. **Install [Terraform](https://www.terraform.io/downloads.html)**
3. **Configure your AWS credentials** (e.g., using `aws configure --profile personal`)
4. **Navigate to a client directory** (e.g., `clients/dev`)
5. **Initialize Terraform**
   ```sh
   terraform init
   ```
6. **Plan and apply infrastructure**
   ```sh
   terraform plan
   terraform apply
   ```

## Best Practices
- **Do not commit `.terraform/` directories or `terraform.tfstate` files.**
- Use remote state (e.g., S3 backend) for team environments.
- Use modules for reusable infrastructure components.
- Keep secrets and credentials out of version control.

## Current Modules
- `vpc` — Creates a VPC, public/private subnets, and an internet gateway.
- `route53_zone` — Manages Route53 hosted zones.

## Current Clients
- `dev` — Example development environment using the VPC module.
- `psaux-ai` — Example client with its own backend and provider configuration.

## Future Targets
- Add modules for:
  - EC2, RDS, S3, IAM, Lambda, etc.
  - Security groups, NAT gateways, and more advanced networking
- Add CI/CD integration for automated Terraform plans/applies
- Implement environment promotion (dev → staging → prod)
- Add documentation for each module and client
- Enforce code review and automated checks for infrastructure changes

---

**Contributions and suggestions are welcome!**
