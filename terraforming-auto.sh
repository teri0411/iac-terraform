#!/bin/bash
printf "Terraforming start\n"

terraforming alb > alb.tf            # ALB
printf "ALB\n"
terraforming asg > asg.tf            # AutoScaling Group
printf "AutoScaling Group\n"
terraforming dbpg > dbpg.tf           # Database Parameter Group
printf "Database Parameter Group\n"
terraforming dbsg > dbsg.tf           # Database Security Group
printf "Database Security Group\n"
terraforming dbsn > dbsn.tf           # Database Subnet Group
printf "atabase Subnet Group\n"
# terraforming ec2 > ec2.tf            # EC2
# printf "EC2\n"
# terraforming efs > efs.tf            # EFS File System
# printf "EFS File System\n"
terraforming eip > eip.tf            # EIP
printf "EIP\n"
# terraforming iamip > iamip.tf          # IAM Instance Profile
# printf "IAM Instance Profile\n"
# terraforming iamp > iamp.tf           # IAM Policy
# printf "IAM Policy\n"
# terraforming iampa > iampa.tf          # IAM Policy Attachment
# printf "IAM Policy Attachment\n"
# terraforming iamr > iamr.tf           # IAM Role
# printf "IAM Role\n"
# terraforming iamrp > iamrp.tf          # IAM Role Policy
# printf "IAM Role Policy\n"
terraforming igw > igw.tf            # Internet Gateway
printf "Internet Gateway\n"
terraforming nat > nat.tf            # NAT Gateway
printf "NAT Gateway\n"
terraforming nif > nif.tf            # Network Interface
printf "Network Interface\n"
terraforming rds > rds.tf            # RDS
printf "RDS\n"
terraforming rt > rt.tf             # Route Table
printf "Route Table\n"
terraforming rta > rta.tf            # Route Table Association
printf "Route Table Association\n"
# terraforming s3 > s3.tf             # S3
# printf "S3\n"
terraforming sg > sg.tf             # Security Group
printf "Security Group\n"
terraforming sn > sn.tf             # Subnet
printf "Subnet\n"
terraforming vpc > vpc.tf             # VPC
printf "VPC\n"



# terraforming alb > alb.tf            # ALB
# terraforming asg > asg.tf            # AutoScaling Group
# terraforming cwa > cwa.tf            # CloudWatch Alarm
# terraforming dbpg > dbpg.tf           # Database Parameter Group
# terraforming dbsg > dbsg.tf           # Database Security Group
# terraforming dbsn > dbsn.tf           # Database Subnet Group
# terraforming ddb > ddb.tf            # DynamoDB
# terraforming ec2 > ec2.tf            # EC2
# terraforming ecc > ecc.tf            # ElastiCache Cluster
# terraforming ecsn > ecsn.tf           # ElastiCache Subnet Group
# terraforming efs > efs.tf            # EFS File System
# terraforming eip > eip.tf            # EIP
# terraforming elb > elb.tf            # ELB
# terraforming iamg > iamg.tf           # IAM Group
# terraforming iamgm > iamgm.tf          # IAM Group Membership
# terraforming iamgp > iamgp.tf          # IAM Group Policy
# terraforming iamip > iamip.tf          # IAM Instance Profile
# terraforming iamp > iamp.tf           # IAM Policy
# terraforming iampa > iampa.tf          # IAM Policy Attachment
# terraforming iamr > iamr.tf           # IAM Role
# terraforming iamrp > iamrp.tf          # IAM Role Policy
# terraforming iamu > iamu.tf           # IAM User
# terraforming iamup > iamup.tf          # IAM User Policy
# terraforming igw > igw.tf            # Internet Gateway
# terraforming kmsa > kmsa.tf           # KMS Key Alias
# terraforming kmsk > kmsk.tf           # KMS Key
# terraforming lc > lc.tf             # Launch Configuration
# terraforming nacl > nacl.tf           # Network ACL
# terraforming nat > nat.tf            # NAT Gateway
# terraforming nif > nif.tf            # Network Interface
# terraforming r53r > r53r.tf           # Route53 Record
# terraforming r53z > r53z.tf           # Route53 Hosted Zone
# terraforming rds > rds.tf            # RDS
# terraforming rs > rs.tf             # Redshift
# terraforming rt > rt.tf             # Route Table
# terraforming rta > rta.tf            # Route Table Association
# terraforming s3 > s3.tf             # S3
# terraforming sg > sg.tf             # Security Group
# terraforming sn > sn.tf             # Subnet
# terraforming snst > snst.tf           # SNS Topic
# terraforming snss > snss.tf           # SNS Subscription
# terraforming sqs > sqs.tf            # SQS
# terraforming vgw > vgw.tf            # VPN Gateway
# terraforming vpc > vpc.tf             # VPC

printf "Terraforming - tfstate\n"

terraforming alb --tfstate > alb.tfstate            # ALB
printf "ALB\n"
terraforming asg --tfstate > asg.tfstate            # AutoScaling Group
printf "AutoScaling Group\n"
terraforming dbpg --tfstate > dbpg.tfstate           # Database Parameter Group
printf "Database Parameter Group\n"
terraforming dbsg --tfstate > dbsg.tfstate           # Database Security Group
printf "Database Security Group\n"
terraforming dbsn --tfstate > dbsn.tfstate           # Database Subnet Group
printf "atabase Subnet Group\n"
# terraforming ec2 --tfstate > ec2.tfstate            # EC2
# printf "EC2\n"
# terraforming efs --tfstate > efs.tfstate            # EFS File System
# printf "EFS File System\n"
terraforming eip --tfstate > eip.tfstate            # EIP
printf "EIP\n"
# terraforming iamip --tfstate > iamip.tfstate          # IAM Instance Profile
# printf "IAM Instance Profile\n"
# terraforming iamp --tfstate > iamp.tfstate           # IAM Policy
# printf "IAM Policy\n"
# terraforming iampa --tfstate > iampa.tfstate          # IAM Policy Attachment
# printf "IAM Policy Attachment\n"
# terraforming iamr --tfstate > iamr.tfstate           # IAM Role
# printf "IAM Role\n"
# terraforming iamrp --tfstate > iamrp.tfstate          # IAM Role Policy
# printf "IAM Role Policy\n"
terraforming igw --tfstate > igw.tfstate            # Internet Gateway
printf "Internet Gateway\n"
terraforming nat --tfstate > nat.tfstate            # NAT Gateway
printf "NAT Gateway\n"
terraforming nif --tfstate > nif.tfstate            # Network Interface
printf "Network Interface\n"
terraforming rds --tfstate > rds.tfstate            # RDS
printf "RDS\n"
terraforming rt --tfstate > rt.tfstate             # Route Table
printf "Route Table\n"
terraforming rta --tfstate > rta.tfstate            # Route Table Association
printf "Route Table Association\n"
# terraforming s3 --tfstate > s3.tfstate             # S3
# printf "S3\n"
terraforming sg --tfstate > sg.tfstate             # Security Group
printf "Security Group\n"
terraforming sn --tfstate > sn.tfstate             # Subnet
printf "Subnet\n"
terraforming vpc --tfstate > vpc.tfstate             # VPC
printf "VPC\n"