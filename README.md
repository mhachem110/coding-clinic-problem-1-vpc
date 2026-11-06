# Problem 1: Multi-AZ AWS VPC

## What it does

This Terraform module describes a small network with public and private subnets in two or three Availability Zones. Each Availability Zone gets a NAT gateway for private outbound traffic. Gateway and interface endpoints provide private access to S3 and ECR.

The repository is a safe infrastructure example. `terraform plan` shows the proposed resources; this project does not run `terraform apply`.

## Files

- `main.tf`: VPC, subnets, routes, NAT gateways, security group, and endpoints.
- `variables.tf`: region, environment, CIDR, and Availability Zone inputs.
- `outputs.tf`: IDs a later application module would use.
- `versions.tf`: Terraform and AWS provider versions.
- `examples/dev.tfvars.example`: sample inputs.
- `.gitignore`: excludes state, plans, and downloaded providers.

## Demo

```bash
terraform init -backend=false
terraform fmt -check
terraform validate
terraform plan -var-file=examples/dev.tfvars.example
```

Explain that the plan shows a VPC, public/private subnets, one NAT gateway per zone, and endpoints. No resources exist until someone explicitly runs `terraform apply`.

