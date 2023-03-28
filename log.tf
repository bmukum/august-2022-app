resource "aws_cloudwatch_log_group" "log-1" {
  name = var.log-group

  tags = {
    Environment = "production"
    Application = "practice"
  }
}

output "log-group-id" {
  value = aws_cloudwatch_log_group.log-1.id
}