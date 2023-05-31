terraform {
  required_version = ">= 1.0.0"
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

output "hello_world" {
  value = random_string.mystring.result
}

resource "null_resource" "myhello" {
  provisioner "local-exec" {
      command = "echo hello"
  }
}

resource "random_string" "mystring" {
  length  = 16
  special = true
}