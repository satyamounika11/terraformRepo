
variable "name" {
  description = "the name of your stack, e.g. \"demo\""
  default     = "demovm"
}

variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
  default     = "dev"
}

variable "region" {
  description = "the AWS region in which resources are created"
  default     = "us-east-1"
}
