variable "db_availability_zone" {
  type        = string
  default     = ""
  description = "DB availability zone"
}

variable "db_name" {
  type        = string
  default     = ""
  description = "DB name"
}

variable "db_username" {
  description = "Database administrator username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Database administrator password"
  type        = string
  sensitive   = true
}

variable "cluster_name" {
  type        = string
  default     = ""
  description = "ECS cluster name"
}

variable "aws_ecs_task_definition" {
  type        = string
  default     = ""
  description = "ECS Task name"
}

variable "name" {
  description = "the name of your stack, e.g. \"demo\""
}

variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
}

variable "cidr" {
  description = "the range for cidr"
}

variable "region" {
  description = "the AWS region in which resources are created"
}

variable "public_subnets" {
  description = "List of subnet IDs"
}

variable "private_subnets" {
  description = "List of subnet IDs"
}

variable "availability_zones" {
  description = "List of subnet IDs"
}

#variable "ecs_service_security_groups" {
#  description = "Comma separated list of security groups"
#}

variable "container_port" {
  description = "Port of container"
}

variable "container_cpu" {
  description = "The number of cpu units used by the task"
}

variable "container_memory" {
  description = "The amount (in MiB) of memory used by the task"
}

variable "container_image" {
  description = "Docker image to be launched"
}

#variable "aws_alb_target_group_arn" {
#  description = "ARN of the alb target group"
#}

variable "service_desired_count" {
  description = "Number of services running in parallel"
}


#variable "container_secrets" {
#  description = "The container secret environmnent variables"
#  type        = list(any)
#}

#variable "container_secrets_arns" {
#  description = "ARN for secrets"
#}

 variable "alb_tls_cert_arn"{
    type        = string
    description = "Certificate ARN value"

 }