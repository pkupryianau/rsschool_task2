# Task:2 Basic Infrastructure Configuration

## Objective

In this task 2 was created basic infrastructure. T create infrastructure was used some configuration  faile which  build EC2 ( 1 bastion  host and 2 EC2 in  different VPC), 2 VPS for public network, 2 VPC for private network. Additional create different Security group  - 1 SG for Bastion  host, and 2 SG for EC2. For orginize communication  between EC2 a nd Ineternet was created Routing Group and IGW.

## Steps

1. **Create configure files**

   - All file are presents [Task2](git@github.com:pkupryianau/rsschool_task2.git).
   - example :
     - example

2. **Organaize Code**

   - Create additional variable file in Terraform code to manage some AWS resources.

3. **Verify configuration**

   - Run special terraform  command for format, check and pre-deploy configuration.
     - output terraform cmd [tf cmd ](images/1.png)
   - After deploy was created infrastructure resource< insluded VPC:
     - result configure [VPC](images/2.png)

4. **Submit code**

   - All configuration  files presents-[Task2](git@github.com:pkupryianau/rsschool_task2.git) .
   - (Optional) The infrastructure was configured to install Github Action - [GA-Task2](git@github.com:pkupryianau/rsschool_task2.git).
     - screen [Github Action ](images/3.png)

5. **Additional tasks**

   - For this infrastructure was create 2 Security Group:
     - for bastion  host for access to EC2 host in  private VPC  only use ssh,
     - for EC2 - for access only 80/443 ports from Internet and use only ssh for mgmt.
   - Created bastion host and based on SG use only ssh/22 for access EC2
   - Create config NAT Gateway (nat_gw.7zip)
