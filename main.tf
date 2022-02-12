provider "aws" {
  region = var.region
  access_key = var.acces_key
  secret_key = var.secret_key
}
variable "acces_key" {}
variable "secret_key" {}
variable "region" {}
variable "myvpc_cidr" {}

resource "aws_vpc" "myvpc" {
  cidr_block = var.myvpc_cidr
  tags = {
    Name = "my_vpc"
  }
}