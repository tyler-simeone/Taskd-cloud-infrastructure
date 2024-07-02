##############
##   PROD   ##
##############

resource "aws_ecs_cluster" "main" {
  name = "${var.ecs_service_name}-cluster"
}

resource "aws_ecs_task_definition" "nginx" {
  family                   = "${var.ecs_service_name}-nginx-task"
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = 1024
  memory                   = 2048
  container_definitions    = jsonencode(
        [
            {
                name = "nginx"
                image = data.aws_ecr_repository.nginx.repository_url
                cpu = var.nginx_fargate_cpu
                memory = var.nginx_fargate_memory
                networkMode = "awsvpc"
                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        awslogs-group = "/ecs/${var.ecs_service_name}-nginx"
                        awslogs-region = var.aws_region
                        awslogs-stream-prefix = "ecs"
                    }
                }
                portMappings = [
                {
                    containerPort = var.nginx_port
                    hostPort = var.nginx_port
                }
                ]
            },
            {
                name = "manage-auth"
                image = data.aws_ecr_repository.manage-auth.repository_url
                cpu = var.manage_auth_fargate_cpu
                memory = var.manage_auth_fargate_memory
                networkMode = "awsvpc"
                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        awslogs-group = "/ecs/${var.ecs_service_name}-manage-auth"
                        awslogs-region = var.aws_region
                        awslogs-stream-prefix = "ecs"
                    }
                }
                portMappings = [
                {
                    containerPort = var.manage_auth_port
                    hostPort = var.manage_auth_port
                }
                ]
            },
            {
                name = "manage-users"
                image = data.aws_ecr_repository.manage-users.repository_url
                cpu = var.manage_users_fargate_cpu
                memory = var.manage_users_fargate_memory
                networkMode = "awsvpc"
                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        awslogs-group = "/ecs/${var.ecs_service_name}-manage-users"
                        awslogs-region = var.aws_region
                        awslogs-stream-prefix = "ecs"
                    }
                }
                portMappings = [
                {
                    containerPort = var.manage_users_port
                    hostPort = var.manage_users_port
                }
                ]
            },
            {
                name = "manage-boards"
                image = data.aws_ecr_repository.manage-boards.repository_url
                cpu = var.manage_boards_fargate_cpu
                memory = var.manage_boards_fargate_memory
                networkMode = "awsvpc"
                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        awslogs-group = "/ecs/${var.ecs_service_name}-manage-boards"
                        awslogs-region = var.aws_region
                        awslogs-stream-prefix = "ecs"
                    }
                }
                portMappings = [
                {
                    containerPort = var.manage_boards_port
                    hostPort = var.manage_boards_port
                }
                ]
            },
            {
                name = "manage-columns"
                image = data.aws_ecr_repository.manage-columns.repository_url
                cpu = var.manage_columns_fargate_cpu
                memory = var.manage_columns_fargate_memory
                networkMode = "awsvpc"
                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        awslogs-group = "/ecs/${var.ecs_service_name}-manage-columns"
                        awslogs-region = var.aws_region
                        awslogs-stream-prefix = "ecs"
                    }
                }
                portMappings = [
                {
                    containerPort = var.manage_columns_port
                    hostPort = var.manage_columns_port
                }
                ]
            },
            {
                name = "manage-tasks"
                image = data.aws_ecr_repository.manage-tasks.repository_url
                cpu = var.manage_tasks_fargate_cpu
                memory = var.manage_tasks_fargate_memory
                networkMode = "awsvpc"
                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        awslogs-group = "/ecs/${var.ecs_service_name}-manage-tasks"
                        awslogs-region = var.aws_region
                        awslogs-stream-prefix = "ecs"
                    }
                }
                portMappings = [
                {
                    containerPort = var.manage_tasks_port
                    hostPort = var.manage_tasks_port
                }
                ]
            }
        ]
  )
}

resource "aws_ecs_service" "nginx" {
  name            = "${var.ecs_service_name}-service"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.nginx.arn
  desired_count   = var.prod_task_count
  launch_type     = "FARGATE"

  network_configuration {
    security_groups  = [aws_security_group.nginx_task.id]
    subnets          = aws_subnet.private.*.id
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = aws_alb_target_group.nginx.id
    container_name   = "nginx"
    container_port   = var.nginx_port
  }

  depends_on = [ 
    aws_ecs_cluster.main, 
    aws_alb_listener.front_end, 
    aws_iam_role_policy_attachment.ecs_task_execution_role, 
    aws_security_group.nginx_task 
  ]
}


#################
##   STAGING   ##
#################

resource "aws_ecs_cluster" "staging" {
  name = "${var.ecs_service_name}-cluster-staging"
}

resource "aws_ecs_task_definition" "staging" {
  family                   = "${var.ecs_service_name}-staging-task"
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = 1024
  memory                   = 2048
  container_definitions    = jsonencode(
        [
            {
                name = "nginx"
                image = data.aws_ecr_repository.nginx-staging.repository_url
                cpu = var.nginx_fargate_cpu
                memory = var.nginx_fargate_memory
                networkMode = "awsvpc"
                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        awslogs-group = "/ecs/${var.ecs_service_name}-nginx-staging"
                        awslogs-region = var.aws_region
                        awslogs-stream-prefix = "ecs"
                    }
                }
                portMappings = [
                {
                    containerPort = var.nginx_port
                    hostPort = var.nginx_port
                }
                ]
            },
            {
                name = "manage-auth"
                image = data.aws_ecr_repository.manage-auth-staging.repository_url
                cpu = var.manage_auth_fargate_cpu
                memory = var.manage_auth_fargate_memory
                networkMode = "awsvpc"
                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        awslogs-group = "/ecs/${var.ecs_service_name}-manage-auth-staging"
                        awslogs-region = var.aws_region
                        awslogs-stream-prefix = "ecs"
                    }
                }
                portMappings = [
                {
                    containerPort = var.manage_auth_port
                    hostPort = var.manage_auth_port
                }
                ]
            },
            {
                name = "manage-users"
                image = data.aws_ecr_repository.manage-users-staging.repository_url
                cpu = var.manage_users_fargate_cpu
                memory = var.manage_users_fargate_memory
                networkMode = "awsvpc"
                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        awslogs-group = "/ecs/${var.ecs_service_name}-manage-users-staging"
                        awslogs-region = var.aws_region
                        awslogs-stream-prefix = "ecs"
                    }
                }
                portMappings = [
                {
                    containerPort = var.manage_users_port
                    hostPort = var.manage_users_port
                }
                ]
            },
            {
                name = "manage-boards"
                image = data.aws_ecr_repository.manage-boards-staging.repository_url
                cpu = var.manage_boards_fargate_cpu
                memory = var.manage_boards_fargate_memory
                networkMode = "awsvpc"
                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        awslogs-group = "/ecs/${var.ecs_service_name}-manage-boards-staging"
                        awslogs-region = var.aws_region
                        awslogs-stream-prefix = "ecs"
                    }
                }
                portMappings = [
                {
                    containerPort = var.manage_boards_port
                    hostPort = var.manage_boards_port
                }
                ]
            },
            {
                name = "manage-columns"
                image = data.aws_ecr_repository.manage-columns-staging.repository_url
                cpu = var.manage_columns_fargate_cpu
                memory = var.manage_columns_fargate_memory
                networkMode = "awsvpc"
                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        awslogs-group = "/ecs/${var.ecs_service_name}-manage-columns-staging"
                        awslogs-region = var.aws_region
                        awslogs-stream-prefix = "ecs"
                    }
                }
                portMappings = [
                {
                    containerPort = var.manage_columns_port
                    hostPort = var.manage_columns_port
                }
                ]
            },
            {
                name = "manage-tasks"
                image = data.aws_ecr_repository.manage-tasks-staging.repository_url
                cpu = var.manage_tasks_fargate_cpu
                memory = var.manage_tasks_fargate_memory
                networkMode = "awsvpc"
                logConfiguration = {
                    logDriver = "awslogs"
                    options = {
                        awslogs-group = "/ecs/${var.ecs_service_name}-manage-tasks-staging"
                        awslogs-region = var.aws_region
                        awslogs-stream-prefix = "ecs"
                    }
                }
                portMappings = [
                {
                    containerPort = var.manage_tasks_port
                    hostPort = var.manage_tasks_port
                }
                ]
            }
        ]
  )
}

resource "aws_ecs_service" "staging" {
  name            = "${var.ecs_service_name}-service-staging"
  cluster         = aws_ecs_cluster.staging.id
  task_definition = aws_ecs_task_definition.staging.arn
  desired_count   = var.staging_task_count
  launch_type     = "FARGATE"

  network_configuration {
    security_groups  = [aws_security_group.nginx_task.id]
    subnets          = aws_subnet.private.*.id
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = aws_alb_target_group.staging.id
    container_name   = "nginx"
    container_port   = var.nginx_port
  }

  depends_on = [ 
    aws_ecs_cluster.staging, 
    aws_alb_listener.staging, 
    aws_iam_role_policy_attachment.ecs_task_execution_role, 
    aws_security_group.nginx_task 
  ]
}
