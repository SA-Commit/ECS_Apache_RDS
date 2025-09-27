resource "aws_db_instance" "main" {
  engine               = "mysql"
  instance_class       = "db.t3.micro"
  allocated_storage    = 20
  name                 = "appdb"
  username             = var.db_user
  password             = var.db_password
  publicly_accessible  = true
  skip_final_snapshot  = true
}
