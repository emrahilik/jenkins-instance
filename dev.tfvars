environment = "dev"
s3_bucket = "jenkins-class-ec"
s3_folder_project = "jenkins"
s3_folder_region = "us-east-1"
s3_folder_type = "class"
s3_tfstate_file = "infrastructure.tfstate"


provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "jenkins" {
  ami           = "ami-03d0faf9012d36090"
  instance_type = "t2.micro"
  tags = {
    Name = "Jenkins"
  }
}