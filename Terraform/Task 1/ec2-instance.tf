# EC2 Instance
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "task-1" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  user_data              = file("${path.module}/httpd-install.sh") #file function allows to read content from respective file
  key_name               = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "Task 1"
  }
}