# hw09-module3-terraform2

# Basic

### 1. Create terraform module which creates vpc, public subnets, private subnets, nat gateway, internet gateway, routes. Module should take next input variables:
- name
- vpc cidr
- private subnets cidrs
- public subnets cidrs
Module should always create at least one public subnet and do not allow create zero public subnets.
Private subnets are not obligatory.
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 14-55-12.png>)
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 14-55-32.png>)
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 14-56-30.png>)
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 14-56-51.png>)
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 14-57-11.png>)
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 14-57-53.png>)
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 14-58-02.png>)
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 15-00-44.png>)
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 15-01-22.png>)
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 14-58-21.png>)
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 14-59-15.png>)
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 14-59-34.png>)
![alt text](<screenshots/Basic1/Знімок екрана з 2024-05-20 14-59-48.png>)

### 2. With this module create vpc and one ec2 in private subnet and one in public
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-31-52.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-32-16.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-33-13.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-36-32.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-38-40.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-39-10.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-39-49.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-39-59.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-40-16.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-40-51.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-41-05.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-41-43.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-41-49.png>)
![alt text](<screenshots/Basic2/Знімок екрана з 2024-05-20 23-43-10.png>)


### 3. Destroy infrastructure
![alt text](<screenshots/Basic3/Знімок екрана з 2024-05-20 23-48-54.png>)
![alt text](<screenshots/Basic3/Знімок екрана з 2024-05-20 23-49-08.png>)
![alt text](<screenshots/Basic3/Знімок екрана з 2024-05-20 23-56-30.png>)


# Additional (optional)

### 1. Create 2 or more ec2 instances in private subnets only using autoscaling group, generate ssh key and import it to aws for use in EC2 instances

### 2. Configure default nginx in ec2 instances using user data

### 3. Create ALB in public subnets with HTTP lister and a target group linked to autoscalling group instances

### 4. Output ALB DNS name and confirm that you can see nginx default page

### 5. Destroy infrastructure


# Advanced (optional)

### 1. Create custom simple default HTML file and upload it to EC2 instead of default one, make sure that you can see this custom file via ALB DNS endpoint

### 2. Write values from output to a YAML file for further use

### 3. Write ssh key to a file, configure permissions and use local exec to connect to VMs via ssh and run the uptime command there.

### 4. Use aws module for ec2 instead of aws_instance resource

### 5. Use separate resources from security group ingress/egress instead of dynamic