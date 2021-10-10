output "tags_instance" {
  description = "List of tags"
  value       = aws_instance.Instance-01.tags   
}


output "tags_s3b" {
  description = "List of tags"
  value       = aws_s3_bucket.Flugel.tags   
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.Instance-01.id
}