variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default = "10.1.0.0/16"
}
variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default = "10.1.0.0/24"
}
variable "availability_zone" {
  description = "availability zone to create subnet"
  default = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}
variable "public_key_path" {
  description = "Public key path"
  default = "./key/public.pub"
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-058e6df85cfc7760b"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}
variable "environment_tag" {
  description = "Environment tag"
  default = "Production"
}
