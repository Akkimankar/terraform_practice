resource "aws_instance" "instance1" {
  ami = var.ami
  instance_type = var.instance_type
  security_groups = var.security_groups
  key_name = var.key_name
  user_data = <<EOF
    #!/bin/bash
    amazon-linux-extras install epel -y
  EOF
  
  connection {
      type = "ssh"
      user = "ec2-user"
      private_key = file("/home/ec2-user/terraform.pem")
      host = self.public_ip
  }

  provisioner "file" {
    source      = "/home/ec2-user/id_rsa"
    destination = "/home/ec2-user/.ssh/id_rsa"
  }

  provisioner "remote-exec" {
      inline = [
        "sudo amazon-linux-extras install epel -y",
        "sudo yum install ansible -y",
        "sudo yum install git -y",
        "chmod 600 /home/ec2-user/.ssh/id_rsa",
        "echo -e 'Host * \n\t StrictHostKeyChecking no' > ~/.ssh/config",
        "chmod 600 ~/.ssh/config",
        "ansible-pull -U git@github.com:Hiteshmankar123/ansible_practice.git roles/env-deployment.yml"
      ]
  }
}
