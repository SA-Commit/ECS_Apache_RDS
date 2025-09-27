resource "datadog_monitor" "ecs_cpu" {
  name    = "ECS CPU Usage"
  type    = "metric alert"
  query   = "avg(last_5m):avg:aws.ecs.cpuutilization{cluster:apache-cluster} > 80"
  message = "High CPU usage on ECS cluster"
}

resource "aws_cloudwatch_log_group" "ecs_logs" {
  name              = "/ecs/apache-app"
  retention_in_days = 7
}
