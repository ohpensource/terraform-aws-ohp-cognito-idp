terraform {
  required_version = "~>0.14"

}

provider "aws" {
  region              = "eu-west-1"
  allowed_account_ids = [var.account_id]
  assume_role {
    role_arn     = "arn:aws:iam::${var.account_id}:role/${var.tfm_x_acc_role_name}-${var.env}"
    session_name = "terraform"
  }
}

provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
  assume_role {
    role_arn     = "arn:aws:iam::${var.account_id}:role/${var.tfm_x_acc_role_name}-${var.env}"
    session_name = "terraform"
  }
}

variable "env" { default = "dev" }
variable "tfm_x_acc_role_name" { default = "xops-tfm-adm-x-acc-role" }

variable "account_id" { default = "012345678900" } #dev-infra 

variable "account_id_core_shared" { default = "012345678901" }

