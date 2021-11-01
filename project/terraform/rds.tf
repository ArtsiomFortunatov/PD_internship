resource "aws_db_instance" "myrds" {
  identifier             = "myrds"
  instance_class         = "db.t2.micro"
  allocated_storage      = 5
  engine                 = "mysql"
  engine_version         = "8.0.23"
  username               =  var.userdb
  password               =  var.passworddb
  publicly_accessible    = true
  skip_final_snapshot    = true
}