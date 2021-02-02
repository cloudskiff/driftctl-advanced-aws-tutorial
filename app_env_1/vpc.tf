# A Driftctl Demo VPC
resource "aws_vpc" "demo_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = false

  tags = {
    Name = "${random_string.prefix.result} Demo VPC"
    Environment = "app_env_1"
  }

}

output "vpc_id" {
  value = aws_vpc.demo_vpc.id
}