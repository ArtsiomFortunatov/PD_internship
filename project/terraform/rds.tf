data "aws_kms_secrets" "creds" {
  secret {
    name    = "db"
    payload = file("${path.module}/dbcred.yml.encrypted")
  }
}

locals {
  db_creds = yamldecode(data.aws_kms_secrets.creds.plaintext["db"])
}
resource "aws_db_instance" "myrds" {
  identifier             = "myrds"
  instance_class         = "db.t2.micro"
  allocated_storage      = 5
  engine                 = "mysql"
  engine_version         = "8.0.23"
  username               =  local.db_creds.username
  password               =  local.db_creds.password
  publicly_accessible    = true
  skip_final_snapshot    = true
}