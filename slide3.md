layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: Packer_config

##  Packer Configuration

Packer JSON file to create customer machine image.

<pre>
{
  "builders": [
    {
      "type": "amazon-ebs",
      "access_key": "AWS_ACCESS_KEY",
      "secret_key": "AWS_SECRET_KEY",
      "region": "us-east-1",
      "source_ami_filter": {
        "filters": {
          "virtualization-type": "hvm",
          "name": "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*",
          "root-device-type": "ebs"
        },
        "most_recent": true,
        "owners": ["099720109477"]
      },
      "instance_type": "t2.micro",
      "ssh_username": "ubuntu",
      "ami_name": "example-ami-{{timestamp}}",
      "tags": {
        "Name": "example-ami"
      }
    }
  ]
}
</pre>

???

Explain about the code block

---
