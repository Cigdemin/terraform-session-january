resource "aws_instance" "first_ec2" {
  ami           = "ami-06e85d4c3149db26a"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.main_sg.id ] # alist of strings #dynamic referances
}

#List?
#Fruit = [ apple, orange, banana] # a list of fruits
#Car = [Lexus, BMW, Mercedes ]

# list of strings = ["ert", "zxc" , "que"]
# list of numbers = [5, 6 ,9]

#Data type
#1.intiger
#2. float
#3. Number: 8,6,4,7
#4.String = "Characters,hwhatever you see on your keyboard"
#5. Boolean = true,false

#reference to resource : to dynamicly referance security group id without creating it. IT will be created by the same thime or terraform go and find for me
# first_label.second_label.attribute
#attribute that you can know after creation only for example id of security group it means you can know after you create it

# "aws_security_group.main_sg.id" = static or hard coded value(string)
# aws_security_group.main_sg.id = reference to resource >> (string,number,boolean)