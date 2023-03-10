# Week 0 — Billing and Architecture

## Required Tasks

### 1. Recreate Conceptual Diagram in Lucid Charts or on a Napkin

![Cruddur Conceptual Diagarm](assets/1_Conceptual_Diagarm_Cruddur_.png)

[Lucid Chart Link for Conceptual Diagarm](https://lucid.app/lucidchart/6eae65ac-1af5-4335-9e44-a79f856a8106/edit?viewport_loc=-602%2C-905%2C3158%2C1402%2C0_0&invitationId=inv_3ba14426-5d83-474a-9602-809052162773)

### 2. Recreate Logical Architectual Diagram in Lucid Charts

![Cruddur Logical Diagram](assets/7_Logical_Crudder.png)

[Lucid Chart Link for Logical Diagram](https://lucid.app/lucidchart/6eae65ac-1af5-4335-9e44-a79f856a8106/edit?viewport_loc=-207%2C388%2C2052%2C821%2C~Vhy7DWfR.w1&invitationId=inv_3ba14426-5d83-474a-9602-809052162773)

### 3. Create an Admin User
- Created user called `praj-XXX-XXXX` with admin permission.
- Added MFA to this user. 

### 4. Installed AWS CLI

**On macOS** (I am installing aws cli locally as I want to try out things locally.)

Ran into issue related to `python3` 

Error Msg: `env: python: No such file or directory` 

Fixed it by running 

```
sudo /usr/bin/python3 awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
```
Successfully installed `aws cli` 
![AWS CLI installation on macOS](assets/2_AWS_CLI_install.png)

[Steps followed to install the aws cli](https://docs.aws.amazon.com/cli/v1/userguide/install-macos.html#install-macosos-bundled-sudo)

Configure aws cli to use the IAM user created in previous step

- Created Access key (type CLI) and noted down.
- Ran `aws configure` and followed the prompt. 

Finally aws cli is configured successfully

![AWS CLI Configured and can be used by IAM user](assets/3_AWS_CLI_Configuration.png)


### 5. Create a Billing Alarm

Following screenshot from my AWS Console shows the billing alarm configured. 

![Billing Alert](assets/6_Billing_Alarm.png)

[Followed the steps from the documentation to create a billing alarm/alert](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html#turning_on_billing_metrics)

### 6. Create a Budget
Budget and notification for the budget violation are configured. Below is the command that is ran in aws cli to create budget called `AWS Bootcamp Budget` with budget limit `2 USD`, and budget notification `> 60%`

```
aws budgets create-budget \
    --account-id 731727075972 \
    --budget file://aws/json/budget.json \
    --notifications-with-subscribers file://aws/json/budget-notifications-with-subscribers.json
```
Screenshot of the budget from AWS Console 

![Budget from AWS Console](assets/5_budget_with_notification.png)
