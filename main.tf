resource "aws_instance" "Deveoplment" {
  count         = var.is_this_dev_env == true ? 1 : 0
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.nano"
  tags = {
    name = "Dev_Instance"
  }
}

resource "aws_instance" "Production" {
  count         = var.is_this_dev_env == false ? 1 : 0
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  tags = {
    name = "Prod_Instance"
  }
}
