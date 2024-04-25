resource "aws_db_instance" "wordpress_rds" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  #name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

# resource "aws_secretsmanager_secret" "wordpress_db" {
#   name = "wp_dbcreds"
# }

# resource "aws_secretsmanager_secret_version" "wp_db_secret" {
#   secret_id     = aws_secretsmanager_secret.wordpress_db.id
#   secret_string = var.db_password
# }

# resource "aws_efs_file_system" "wordpress_efs" {
#   tags = {
#     Name = "Wordpress_FS"
#   }
#   encrypted = true
# }
