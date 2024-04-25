db_username             = "admin"
db_name                 = "mouni_db"
db_password             = "Shiva@1192"
cluster_name            = "sandbox"
aws_ecs_task_definition = "wordpress"

name        = "wordpress"
environment = "dev"

region = "us-east-1"

container_port = 8080

cidr = "10.0.0.0/16"

service_desired_count = 1
container_cpu         = 256
container_memory      = 512

container_image = "nginx"

private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

availability_zones = ["us-east-1a", "us-east-1b"]
#health_check_path =""
#
#alb_tls_cert_arn = "arn:aws:acm:us-east-1:201720399659:certificate/53e5e2e7-ad4e-4f04-9882-3b042f3caf91"