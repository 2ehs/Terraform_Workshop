terraform {
    backend "local" {
        path = "state/terraform.tfstate"
    }
}

resource "local_file" "abc" {
  content  = "123456!"
  filename = "${path.module}/abc.txt"
}
