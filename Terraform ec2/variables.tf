variable "access_key" {
  description = "access_key"
}
variable "secret_key" {
  description = "secret_key"
 
}
variable "region" {
  description = "region"
  default = "us-east-2"
}
variable "ami" {
  description = "ami ec2"
  default = "ami-0dd9f0e7df0f0a138"
}
variable "instance_type" {
  description = "instance_type ec2"
  default = "t2.micro"
}



