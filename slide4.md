layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: terraform_config

##  Terraform Configuration

Terraform `main.tf` file to deploy the Custome image created by Packer.

<pre>
# Configure the AWS provider
provider "aws" {
  access_key = "AWS_ACCESS_KEY"
  secret_key = "AWS_SECRET_KEY"
  region = "us-east-1"  # Update with your desired region
}

resource "aws_instance" "example_instance" {
  ami           = "ami-07b45ee276340ebd6"
  instance_type = "t2.micro"
  subnet_id     = "subnet-04d8e41f067078bb5"  # Replace with the actual subnet ID
  key_name      = "test"
  
  # Additional configuration options for the instance
  # ...
  
  tags = {
    Name = "example-instance"
  }
}
</pre>

???

Talk about the main.tf and other ways to input aws keys


