resource "aws_secretsmanager_secret" "db" {
  name = "apache-db-credentials"
}

resource "aws_secretsmanager_secret_version" "db_version" {
  secret_id     = aws_secretsmanager_secret.db.id
  secret_string = jsonencode({
    DB_HOST     = aws_db_instance.main.endpoint,
    DB_USER     = var.db_user,
    DB_PASSWORD = var.db_password
  })
}
