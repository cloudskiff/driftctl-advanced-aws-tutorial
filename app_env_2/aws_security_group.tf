resource "aws_security_group" "supersecure" {
  name        = "supersecure ${data.terraform_remote_state.app_env_1.outputs.random_string}"
  description = "Super Secure Security Group ${data.terraform_remote_state.app_env_1.outputs.random_string}"
  vpc_id      = data.terraform_remote_state.app_env_1.outputs.vpc_id

  tags = {
    Name = "Super Secure Security Group ${data.terraform_remote_state.app_env_1.outputs.random_string}"
    Environment = "app_env_2"
  }
}

