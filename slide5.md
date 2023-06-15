layout: true
class: compact
background-image: url(../../assets/images/backgrounds/HashiCorp-Content-bkg.png)
background-size: cover
name: terraform_apply

##  Apply Terraform file

<pre>
$ terraform init

Terraform has been successfully initialized!

$ packer build packer_test.json

==> Builds finished. The artifacts of successful builds are:
--> amazon-ebs: AMIs were created:
us-east-1: ami-06f81eda8d923e3e9

$ terraform plan

Plan: 1 to add, 0 to change, 0 to destroy.

$ terraform apply

aws_instance.example_instance: Creating...
aws_instance.example_instance: Still creating... [10s elapsed]
aws_instance.example_instance: Still creating... [20s elapsed]
aws_instance.example_instance: Still creating... [30s elapsed]
aws_instance.example_instance: Creation complete after 32s [id=i-01febb10d7a448c61]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

</pre>

???

Explain what happens after each step.

---
