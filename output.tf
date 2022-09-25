output "EC2_instance_ids" {
  value = [aws_instance.web_instance.id,aws_instance.web_instance1.id]
}

output "lb_url" {
  description = "URL of load balancer"
  value       = aws_lb.test.dns_name
}

output "vpc_id" {
  value = aws_internet_gateway.some_ig.vpc_id
}

output "subnet_id" {

  value = [aws_subnet.public_2a.cidr_block,aws_subnet.public_2b.cidr_block]
}

