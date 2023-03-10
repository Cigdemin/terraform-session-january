#Create Launch template
#give a template name,description
#Choose Ami: Amazon linux 2 ,Instance type,keypair,network (vpc and subnet), security group
#Create ASG, give a name and choose launch template
# choose the version
#select VPC and AZ zones (4 for me)
#Load balancer:no, health check: default
# give desired capacity, min and max capacity
#create


resource "aws_launch_template" "asg_template" {
  name = "aws-${var.team}-${var.env}-${var.app}-asg-launch-template-${var.index}"
  image_id      = data.aws_ami.amazon_linux_2.id
  instance_type = "t2.micro"
  tags = merge ( local.common_tags, local.asg_tags )
}

resource "aws_autoscaling_group" "task_asg" {
  name = "aws-${var.team}-${var.env}-${var.app}-asg-${var.index}"
  max_size                  = 2
  min_size                  = 1
  desired_capacity          = 1
  availability_zones = ["us-west-2a", "us-west-2b","us-west-2c"]
  launch_template {
    name = aws_launch_template.asg_template.name
} 
}