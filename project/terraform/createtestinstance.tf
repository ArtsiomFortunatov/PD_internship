resource "aws_instance" "testInstance" {
 
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  #subnet_id = "${aws_subnet.subnet_public.id}"
  #vpc_security_group_ids = ["${aws_security_group.sg_22.id}"]
  key_name = "${aws_key_pair.ec2key.key_name}"
  tags = {
  Environment = "${var.environment_tag}"
  Name = "gitops_test"
 }
}