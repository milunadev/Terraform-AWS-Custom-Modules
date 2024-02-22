output "ecr_repository_name" {
  value = aws_ecr_repository.simple_ecr_repository.name
}

output "ecr_repository_arn" {
  value = aws_ecr_repository.simple_ecr_repository.arn
}

output "ecr_repository_url" {
  value = aws_ecr_repository.simple_ecr_repository.repository_url
}