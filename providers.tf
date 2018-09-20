provider "aws" {
  access_key = "AKIAJ7PKEASG2A4IIYAA"
  secret_key = "Iu/2CF+1BbLkMu52UhGPYs23c2DqsNKsZ8brkJmR"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
        ami = "ami-04681a1dbd79675a5"
        instance_type = "t2.micro"
        key_name = "chef"
        security_groups= ["default"]
        tags {
         Name = "terraform-instance"
        }

}
