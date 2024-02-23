resource "aws_ecr_repository" "simple_ecr_repository"{
    name = var.ecr_repository_name
}