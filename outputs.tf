# Outputs for easier management and monitoring
output "sns_topic_arn" {
  description = "The ARN of the SNS topic for billing alerts"
  value       = aws_sns_topic.billing_alert.arn
}

output "cloudwatch_alarm_names" {
  description = "List of CloudWatch alarm names"
  value       = [for alarm in aws_cloudwatch_metric_alarm.estimated_charges : alarm.alarm_name]
}

output "sns_dlq_arn" {
  description = "The ARN of the SNS dead-letter queue"
  value       = aws_sqs_queue.sns_dlq.arn
}
