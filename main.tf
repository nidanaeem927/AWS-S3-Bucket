terraform {
  required_providers {
    random = { source = "hashicorp/random", version = "3.5.1" }
  }
}

resource "random_string" "demo" {
  length  = 8
  special = false
}

output "result" {
  value = random_string.demo.result
}