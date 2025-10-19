#data "aws_ami" "joindevops" {
 #   owners           = ["599076352840"]
  #  most_recent      = true
    
   # filter {
    #    name   = "name"
     #   values = ["RHEL-9-DevOps-Practice"]
    #}

    #filter {
     #   name   = "root-device-type"
      #  values = ["ebs"]
    #}

    #filter {
     #   name   = "virtualization-type"
      #  values = ["hvm"]
#    }
#}

#output "ami_id" {
#   value = data.aws_ami.joindevops.id
#}


data "aws_instance" "mongodb" {
    instance_id = "i-09440ac57ba79ae36"
}

output "mongodb_info" {
    value = data.aws_instance.mongodb.public_ip
}