# aws-billing-alert-terraform
# Overview

This Terraform project sets up an AWS billing alert using Amazon CloudWatch, SNS, and email notifications. The alert helps monitor AWS costs by sending notifications when the estimated billing exceeds a specified threshold.

# Features

CloudWatch Alarm: Monitors AWS estimated charges and triggers an alert when the threshold is exceeded.

SNS Topic: Publishes notifications to subscribed email addresses.

Email Notification: Sends an email alert when the billing threshold is reached.

# Prerequisites

An AWS account

Terraform installed (Download Terraform)

An AWS IAM user with permissions to manage CloudWatch, SNS, and Billing (e.g., Billing read permissions and SNS publish permissions)

# Usage

** Clone the repository: **

git clone https://github.com/Pepuhove/aws-billing-alert-terraform.git
cd aws-billing-alert

Initialize Terraform:

terraform init

Modify Variables (Optional):

Update variables.tf to change the billing threshold and email address.

Apply Configuration:

terraform apply -auto-approve

Confirm Subscription:

Check your email and confirm the SNS subscription.

Variables

Variable

Description

Default Value

billing_threshold

The cost threshold (in USD) for the alert

100

alert_email

Email address to receive notifications

your-email@example.com

region

AWS region for deployment

us-east-1

# Outputs

CloudWatch Alarm ARN: The ARN of the created billing alarm.

SNS Topic ARN: The ARN of the created SNS topic.

# Cleanup

To remove all resources created by Terraform:

terraform destroy -auto-approve

# Notes

AWS billing data is updated periodically, so alerts may not be real-time.

Ensure your AWS account has billing alerts enabled under Billing Preferences.

# Author

Created by Pepu

