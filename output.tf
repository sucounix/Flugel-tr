output "instance_url" {
  value = "http://${aws_elb.web.dns_name}"
}
