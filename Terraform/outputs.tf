output "rds_endpoint" {
  value = module.rds.db_endpoint
}

output "ecs_service_url" {
  value = module.ecs.service_url
}
