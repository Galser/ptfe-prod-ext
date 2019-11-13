# TF Requirements 
- PostgreSQL version >= 9.4 and < 10.0
    PostgreSQL Database (RDS Multi-AZ)
    Type	CPU	Memory	Storage	AWS Instance Types
    Minimum	2 core	8 GB RAM	50GB	db.m4.large

- Object Storage - An S3 Standard bucket must be specified during the Terraform Enterprise installation for application data to be stored securely and redundantly away from the EC2 servers running the Terraform Enterprise application. This S3 bucket must be in the same region as the EC2 and RDS instances. It is recommended the VPC containing the Terraform Enterprise servers be configured with a VPC endpoint for S3. Within the Terraform Enterprise application, Vault is used to encrypt all application data stored in the S3 bucket. This allows for further server-side encryption by S3 if required by your security policy.
