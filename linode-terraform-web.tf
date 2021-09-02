terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.16.0"
    }
  }
}

provider "linode" {
  token = "token_here"
}

resource "linode_instance" "terraform-web" {
	image = "linode/ubuntu18.04"
	label = "Terraform-Web-Example"
	group = "Terraform"
	region = "us-east"
	type = "g6-standard-1"
	authorized_keys = ["sshkeyhere"]
	root_pass = "root-kali"
}
