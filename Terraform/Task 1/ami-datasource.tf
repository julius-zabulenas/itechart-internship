# Get latest AMI ID for Amazon Linux2 OS

#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami

data "aws_ami" "ubuntu" {
  most_recent = true       #most recent AMI if there are multiple ami available
  owners      = ["amazon"] #amazon owners
  filter {
    name   = "name"
    #Not sure why, but it seems I need to explicitly state the version I want to use. I thought
    #it should pull the most recent one based on line 6
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}