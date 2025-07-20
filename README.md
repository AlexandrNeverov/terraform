#  Docker-node Zero Bootstrap (with Terraform 🚀)

![Admin Terraform Bootstrap EC2 Demo](https://raw.githubusercontent.com/AlexandrNeverov/terraform_docker_setup/main/image.png)

## 🚀 Why This Matters

Setting up Docker on AWS EC2 with Terraform typically involves manual configuration: security setup, remote backend, EC2 provisioning, Docker installation, and SSH access.

This project fully automates that process with clean, modular Terraform code:
• An EC2 instance is provisioned using a user-defined AMI and VPC
• Docker is installed automatically at launch using user data
• A secure IAM Instance Profile provides metadata-based access (no static credentials)
• Remote backend is preconfigured with S3 and DynamoDB for state locking
• Parameters are cleanly separated via variables.tf and terraform.tfvars

This setup is ideal for:
• 🐳 Fast, repeatable provisioning of Docker hosts in AWS
• 📦 Reproducible environments for container-based apps and CI pipelines
• 🔐 Secure EC2 provisioning without hardcoded credentials
• 💻 Learning infrastructure-as-code and Docker bootstrapping in real cloud setups

---

## ✅ Features

    • 🖥️ EC2 provisioning with custom AMI, subnet, and security group
    • 🔐 IAM Instance Profile with secure metadata-based AWS API access
    • 🐳 Automatic Docker installation via cloud-init user data
    • 🪣 Remote backend: S3 (versioned) + DynamoDB (state locking)
    • 📦 Modular Terraform code: separated providers, variables, outputs, and versions
    • 🧩 Reusable for other container images or base configurations
    • 🔧 Customizable via terraform.tfvars without touching core logic
    • 🖼 Image reference: architecture diagram included (image.png)
    • 📝 Versioned deployment structure for easy updates and tracking

All actions are performed via Terraform using official AWS APIs. No manual steps after `terraform apply`. Designed for automation, reusability, and infrastructure consistency.

> All operations are performed through CLI and AWS APIs. No manual interaction after launch. Ideal for repeatable cloud automation workflows.
> All actions are performed via CLI using official AWS APIs and require only existing access credentials with IAM privileges.

## 🚀 Quick Start

1. Launch EC2 with admin IAM role via AWS CLI:
```bash
curl -v https://raw.githubusercontent.com/AlexandrNeverov/ansible-zero-node/refs/heads/main/boot/create_zero_node_aws.sh | bach -
```

2. Launch EC2 with admin IAM role via AWS CLI:
```bash
curl -v https://raw.githubusercontent.com/AlexandrNeverov/ansible-zero-node/refs/heads/main/boot/setup_zero_node_tools.sh | bach -
```

3. Installing HCL-Vault:
```bash
curl -v https://raw.githubusercontent.com/AlexandrNeverov/ansible-zero-node/refs/heads/main/boot/hcl_vault.sh | bach -
```

4. Installing Terraform:
```bash
curl -v https://raw.githubusercontent.com/AlexandrNeverov/Terraform-Admin-Bootstrap-on-EC2-via-IAM-Instance-Profile/refs/heads/main/setup_zero_terraform.sh | bach -
```

Then you can use:

```bash
terraform init
```

```bash
terraform plan
```


```bash
terraform plan
```

---

## 📄 License

MIT – free to use, modify, share.

---

## 👨‍💻 Author

**Alex Neverov**  
Platform Engineer · DevOps Engineer · Cloud & Infrastructure Automation · Industry PhD

- **GitHub:** [AlexandrNeverov](https://github.com/AlexandrNeverov)  
- **LinkedIn:** [linkedin.com/in/alexneverov](https://www.linkedin.com/in/alexneverov)  
- **Upwork:** [upwork.com/freelancers/~01c616035669bbf379](https://www.upwork.com/freelancers/~01c616035669bbf379)  
- **Website:** [neverov-it.com](https://neverov-it.com) · [neverov-science.com](https://neverov-science.com)  
- **Email:** [alex@neverov-it.com](mailto:alex@neverov-it.com) · [nev.al.vic@gmail.com](mailto:nav.al.vic@.com)
- **Phone:** +1 (754) 236‑5715
