#AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIAYMLONH22QJ3ZNM6O"
  secret_key = "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"
}

#Ansible Master
resource "aws_instance" "ansible_master" { 
  ami           = "ami-02358d9f5245918a3"
  instance_type = "t2.micro"
  key_name = "vskk"
  user_data = file("install_ansible.sh")
  tags = {
    Name = "Ansible Master"
  }
}

#Ansible Node1
resource "aws_instance" "ansible_node1" {
  ami           = "ami-02358d9f5245918a3"
  instance_type = "t2.micro"
  key_name = "vskk"
  tags = {
    Name = "Ansible Node1"
  }
}

#Ansible Node2
resource "aws_instance" "ansible_node2" {
  ami           = "ami-02358d9f5245918a3"
  instance_type = "t2.micro"
  key_name = "vskk"
  tags = {
    Name = "Ansible Node2"
  }
}

