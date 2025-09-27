resource "aws_ecs_cluster" "main" {
  name = "apache-cluster"
}

resource "aws_ecs_task_definition" "apache" {
  family                   = "apache-task"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"
  network_mode             = "awsvpc"
  execution_role_arn       = aws_iam_role.ecs_execution.arn
  task_role_arn            = aws_iam_role.ecs_task.arn

  container_definitions = jsonencode([
    {
      name      = "apache"
      image     = var.image_url
      essential = true,
      portMappings = [
        {
          containerPort = 5000,
          protocol      = "tcp"
        }
      ],
      logConfiguration = {
        logDriver = "awslogs",
        options = {
          awslogs-group         = "/ecs/apache-app",
          awslogs-region        = var.aws_region,
          awslogs-stream-prefix = "ecs"
        }
      },
      secrets = [
        {
          name      = "DB_HOST",
          valueFrom = aws_secretsmanager_secret.db.arn
        }
      ]
    }
  ])
}
