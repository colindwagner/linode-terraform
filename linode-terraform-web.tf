terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.16.0"
    }
  }
}

provider "linode" {
  token = "8775c0c0fc540b2eb795d88b8182d72f4d2e9ce126221acadc11f43587d8c24f"
}

resource "linode_instance" "terraform-web" {
	image = "linode/ubuntu18.04"
	label = "Terraform-Web-Example"
	group = "Terraform"
	region = "us-east"
	type = "g6-standard-1"
	authorized_keys = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDfCTgLytFOu89uEG/jzQU7ZkG3eW75X+w8bIJLrlDDdpsrnj9y5EhY7fBr3fNEC9TQwCPgUZrmOtsknXH7CPlk7G8V3I+PqY7KZWq8qZM99YRBeUbFeC5AwXogvH4Nz47RmY2rF5LA7/x/jkkU1d1SnHES7rLyrB8u7jhwUQpp/URh+Beq7MetKRnd3LSJ5a5UJUPM/U67FTEPgwNWd/XwgnzCv7Pg8FQNGKUdxVLD5B/QHtXy1BNiX5v07BCiv1KvPhIREv7VnwjOkslhnLD16xIBbE9e2wCtTGKW3gpL3/8ln13uxlbhvWq/bEYGywhCxCDOVI92TySe8YtWE9WN8XAaZNrC66QqtRztX14KLdSHLLjTPXhmaGm8/13RlDFStNilERxqVaI0HkQ0Q/wEj1nJyjL6KQqMMZjuIe5r2Pcco6MVo0ks5oNRfIYcTKWRZritJh0gedg6oQH1K3BU6Gc/cxV1diWxzoOgGpypmN0AjKHLXW8Wj5f83bmhaDE= root@kali"]
	root_pass = "root-kali"
}
