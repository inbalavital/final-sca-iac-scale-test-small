
terraform {
  required_version = ">= 1.4"
}

resource "terraform_data" "res_1" {
  input = {
    id = 1
  }
  depends_on = [terraform_data.res_5]
}

resource "terraform_data" "res_2" {
  input = {
    id = 2
  }
  
}

resource "terraform_data" "res_3" {
  input = {
    id = 3
  }
  depends_on = [terraform_data.res_2]
}

resource "terraform_data" "res_4" {
  input = {
    id = 4
  }
  depends_on = [terraform_data.res_1]
}

resource "terraform_data" "res_5" {
  input = {
    id = 5
  }
  
}
