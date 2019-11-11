# ptfe-prod-ext
TFE - Install Prod External Services version with Valid Certificate - AWS

# Purpose

This repo contains all the code and instructions on how to install a TFE (Prod) version with a Valid Certificate in a AWS cloud environment in external services mode. 

# Requirements

This repository assumes general knowledge about Terraform, if not, please get yourself accustomed first by going through [getting started guide for Terraform](https://learn.hashicorp.com/terraform?track=getting-started#getting-started). We also going to use AWS EC2 as our infrastructure provider, DNS service of CloudFlare and SSL Certificates from LetsEncrypt.

To learn more about the mentioned above tools and technologies -  please check section [Technologies near the end of the README](#technologies)

## TF Requirements 
- PostgreSQL version >= 9.4 and < 10.0
    PostgreSQL Database (RDS Multi-AZ)
    Type	CPU	Memory	Storage	AWS Instance Types
    Minimum	2 core	8 GB RAM	50GB	db.m4.large

- Object Storage - An S3 Standard bucket must be specified during the Terraform Enterprise installation for application data to be stored securely and redundantly away from the EC2 servers running the Terraform Enterprise application. This S3 bucket must be in the same region as the EC2 and RDS instances. It is recommended the VPC containing the Terraform Enterprise servers be configured with a VPC endpoint for S3. Within the Terraform Enterprise application, Vault is used to encrypt all application data stored in the S3 bucket. This allows for further server-side encryption by S3 if required by your security policy.

# How-to

## Prepare authentication credentials
- Beforehand, you will need to have SSH RSA key available at the default location :
  - `~/.ssh/id_rsa` and `~/.ssh/id_rsa.pub`
  > This key is going to be used later to connect to the instance where TFE will be running.
  
- Prepare AWS auth credentials (You can create security credentials on [this page](https://console.aws.amazon.com/iam/home?#security_credential).) To export them via env variables, execute in the command line :
    ```
    export AWS_ACCESS_KEY_ID="YOUR ACCESS KEY"
    export AWS_SECRET_ACCESS_KEY="YOUR SECRET KEY"
    ```
- Prepare CloudFlare authentication for your domain DNS management - register and export as env variables API keys and tokens. Follow instructions from CloudFlare here: https://support.cloudflare.com/hc/en-us/articles/200167836-Managing-API-Tokens-and-Keys
    - Export generated token and API keys :
    ```bash
    export CLOUDFLARE_API_KEY=YOUR_API_KEY_HERE
    export CLOUDFLARE_API_TOKEN=YOUR_TOKEN_HERE
    export CLOUDFLARE_ZONE_API_TOKEN=YOUR_TOKEN_HERE
    export CLOUDFLARE_DNS_API_TOKEN=YOUR_TOKEN_HERE
    ```

## Deploy infrastructure
- Clone this repo (*use the tools of your choice*)
- Open the folder with cloned repo
- Define your domain name in [variables.tf](variables.tf), edit on 2-nd line, following block : 
  ```terraform
  variable "site_domain" {
    default = "guselietov.com"
  }
  ```
- From inside folder with cloned repo init Terraform by executing : 
```
terraform init
```
Example output can be found here : [terraform_init.md](terraform_init.md)

- Now let's spin up everything, by executing :
```
terraform apply -auto-approve
```
Example output can be found here : [terraform_apply.md](terraform_apply.md)

Execution will take some time, and at the very end of the output you should see something similar to : 
```bash
```
- Please note that the successful `apply` should create 3 files with SSL certificate information in local folder : 
```bash
# ls -l site*
-rwxr-xr-x  1 andrii  staff  1935 Oct 31 15:17 site_ssl_cert.pem
-rwxr-xr-x  1 andrii  staff  3585 Oct 31 15:17 site_ssl_cert_bundle.pem
-rwxr-xr-x  1 andrii  staff  1679 Oct 31 15:13 site_ssl_private_key.pem
```
We are going to use them later. 

## Terminal-based portion of TFE installation


# TODO
- [ ] create (reuse) code for compute and cert infrastructure
    - [ ] add DB deploy
    - [ ] add object storage deploy
- [ ] install TFE in Prod mode
- [ ] update README

# DONE
- [x] define objectives 


# Run logs

- terraform apply  : [terraform_apply.md](terraform_apply.md)
- TFE destruction (full disaster imitation) : [tfe_destruction.md](tfe_destruction.md)
- terraform destroy of infra : [terraform_destroy.md](terraform_destroy.md)

# Technologies

1. **To download the content of this repository** you will need **git command-line tools**(recommended) or **Git UI Client**. To install official command-line Git tools please [find here instructions](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) for various operating systems. 

2. **For managing infrastructure** we using Terraform - open-source infrastructure as a code software tool created by HashiCorp. It enables users to define and provision a data center infrastructure using a high-level configuration language known as Hashicorp Configuration Language, or optionally JSON. More you encouraged to [learn here](https://www.terraform.io).
    - Specifically, we going to use Terraform for creating infrastructure, and install Terraform Enterprise. TFE Overview: can be found here: https://www.terraform.io/docs/enterprise/index.html
    - Pre-Install checklist: https://www.terraform.io/docs/enterprise/before-installing/index.html

3. **This project for virtualization** uses **AWS EC2** - Amazon Elastic Compute Cloud (Amazon EC2 for short) - a web service that provides secure, resizable compute capacity in the cloud. It is designed to make web-scale cloud computing easier for developers. You can read in details and create a free try-out account if you don't have one here :  [Amazon EC2 main page](https://aws.amazon.com/ec2/) 

4. **Cloudflare**, - is an American web infrastructure and website security company, providing content delivery network services, DDoS mitigation, Internet security, and distributed domain name server services. More information can be found here: https://www.cloudflare.com/ 

5. **Let'sEncrypt** - Let's Encrypt is a non-profit certificate authority run by Internet Security Research Group that provides X.509 certificates for Transport Layer Security encryption at no charge. The certificate is valid for 90 days, during which renewal can take place at any time. You can find out more on their [official page](https://letsencrypt.org/)
