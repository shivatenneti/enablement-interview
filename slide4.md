layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: terraform_config

##  Terraform Configuration

Terraform `main.tf` file to deploy the Custome image created by Packer.

<pre>
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example_instance" {
  ami           = "<ami-id>"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.example_subnet.id
  vpc_security_group_ids = [aws_security_group.example_security_group.id]

  tags = {
    Name = "example-instance"
  }
}
<pre>

???

<!-- Presenter notes go here -->
Anything under the ??? are presenter notes


