# access base tfstate
data "terraform_remote_state" "app_env_1" {
  backend = "local"

  config = {
    path = "${path.module}/../app_env_1/terraform.tfstate"
  }
}