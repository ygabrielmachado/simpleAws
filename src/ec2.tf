 data "aws_ami" "ubuntu" {
   most_recent = true

   filter {
     name   = "name"
     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
   }

   owners = ["099720109477"] # Ubuntu
 }

 resource "aws_instance" "ec2_web_public" {
   ami           = data.aws_ami.ubuntu.id
   instance_type = "t2.micro"
   subnet_id = aws_subnet.public_subnet.id

   tags = {
     Name = "A_public_instance"
     JT_Name = "Gabriel Machado"
   }
 }

  resource "aws_instance" "ec2_web_private" {
   ami           = data.aws_ami.ubuntu.id
   instance_type = "t2.micro"
   subnet_id = aws_subnet.private_subnet.id

   tags = {
     Name = "A_private_instance"
     JT_Name = "Gabriel Machado"
   }
 }