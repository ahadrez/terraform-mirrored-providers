# terraform-mirrored-providers

[![Terraform](https://img.shields.io/badge/Terraform-v1.6+-623CE4?logo=terraform&logoColor=white)](https://www.terraform.io/)
[![Air-Gapped](https://img.shields.io/badge/Air--Gapped-Ready-2ea44f)](#)
[![License](https://img.shields.io/github/license/ahadrez/terraform-mirrored-providers)](./LICENSE)

Mirror Terraform providers locally for use in **air-gapped environments** such as **OpenShift Dev Spaces**. This repo helps you pre-download all required Terraform providers into a local mirror that can be used offline by Terraform CLI.

---

## 📦 Project Structure

```bash
.
├── main.tf                  # Terraform configuration with required providers
├── .terraformrc             # Configuration to tell Terraform to use the local mirror
└── registry.terraform.io/   # Created after running terraform mirror; contains mirrored providers
```

---

## 🔧 Usage

### ✅ 1. Clone the repository

```bash
git clone git@github.com:ahadrez/terraform-mirrored-providers.git
cd terraform-mirrored-providers
```

### 🌍 2. Mirror the providers (on a machine with internet access)

Use the following command to download and mirror the required providers into the local directory:

```bash
terraform providers mirror -platform=linux_amd64 .
```

This will create a `registry.terraform.io` directory with all the required provider binaries for `linux_amd64`.

---

