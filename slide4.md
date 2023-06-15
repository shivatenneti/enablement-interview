layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: terraform_config

##  <span style="color: blue;">Terraform Configuration</span>

Terraform `main.tf` file to deploy the Custome image created by Packer.

<pre style="width: 80%; height: 500px; overflow: auto;">
   <code class="terraform">
# Configure the AWS provider
provider "aws" {
  access_key = "AWS_ACCESS_KEY"
  secret_key = "AWS_SECRET_KEY"
  region = "us-east-1"  
}

resource "aws_instance" "example_instance" {
  ami           = "ami-07b45ee276340ebd6"
  instance_type = "t2.micro"
  subnet_id     = "subnet-04d8e41f067078bb5" 
  key_name      = "test"
  
  # Additional configuration options for the instance
  # ...
  
  tags = {
    Name = "example-instance"
  }
}
</code>
</pre>
???

Explain about main.tf and other aws input keys

---
