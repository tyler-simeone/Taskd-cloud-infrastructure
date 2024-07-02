
##############
##   PROD   ##
##############

resource "aws_cloudwatch_log_group" "nginx_log_group" {
  name              = "/ecs/${var.ecs_service_name}-nginx"
  retention_in_days = 30

  tags = {
    Name = "${var.ecs_service_name}-nginx-log-group"
  }
}
resource "aws_cloudwatch_log_stream" "nginx_log_stream" {
  name           = "${var.ecs_service_name}-nginx-log-stream"
  log_group_name = aws_cloudwatch_log_group.nginx_log_group.name
}

resource "aws_cloudwatch_log_group" "manage_auth_log_group" {
  name              = "/ecs/${var.ecs_service_name}-manage-auth"
  retention_in_days = 30

  tags = {
    Name = "${var.ecs_service_name}-manage-auth-log-group"
  }
}
resource "aws_cloudwatch_log_stream" "manage_auth_log_stream" {
  name           = "${var.ecs_service_name}-manage-auth-log-stream"
  log_group_name = aws_cloudwatch_log_group.manage_auth_log_group.name
}

resource "aws_cloudwatch_log_group" "manage_users_log_group" {
  name              = "/ecs/${var.ecs_service_name}-manage-users"
  retention_in_days = 30

  tags = {
    Name = "${var.ecs_service_name}-manage-users-log-group"
  }
}
resource "aws_cloudwatch_log_stream" "manage_users_log_stream" {
  name           = "${var.ecs_service_name}-manage-users-log-stream"
  log_group_name = aws_cloudwatch_log_group.manage_users_log_group.name
}

resource "aws_cloudwatch_log_group" "manage_boards_log_group" {
  name              = "/ecs/${var.ecs_service_name}-manage-boards"
  retention_in_days = 30

  tags = {
    Name = "${var.ecs_service_name}-manage-boards-log-group"
  }
}
resource "aws_cloudwatch_log_stream" "manage_boards_log_stream" {
  name           = "${var.ecs_service_name}-manage-boards-log-stream"
  log_group_name = aws_cloudwatch_log_group.manage_boards_log_group.name
}

resource "aws_cloudwatch_log_group" "manage_columns_log_group" {
  name              = "/ecs/${var.ecs_service_name}-manage-columns"
  retention_in_days = 30

  tags = {
    Name = "${var.ecs_service_name}-manage-columns-log-group"
  }
}
resource "aws_cloudwatch_log_stream" "manage_columns_log_stream" {
  name           = "${var.ecs_service_name}-manage-columns-log-stream"
  log_group_name = aws_cloudwatch_log_group.manage_columns_log_group.name
}

resource "aws_cloudwatch_log_group" "manage_tasks_log_group" {
  name              = "/ecs/${var.ecs_service_name}-manage-tasks"
  retention_in_days = 30

  tags = {
    Name = "${var.ecs_service_name}-manage-tasks-log-group"
  }
}
resource "aws_cloudwatch_log_stream" "manage_tasks_log_stream" {
  name           = "${var.ecs_service_name}-manage-tasks-log-stream"
  log_group_name = aws_cloudwatch_log_group.manage_tasks_log_group.name
}


#################
##   STAGING   ##
#################

resource "aws_cloudwatch_log_group" "nginx_log_group_staging" {
  name              = "/ecs/${var.ecs_service_name}-nginx-staging"
  retention_in_days = 30

  tags = {
    Name = "${var.ecs_service_name}-nginx-log-group-staging"
  }
}
resource "aws_cloudwatch_log_stream" "nginx_log_stream_staging" {
  name           = "${var.ecs_service_name}-nginx-log-stream-staging"
  log_group_name = aws_cloudwatch_log_group.nginx_log_group_staging.name
}

resource "aws_cloudwatch_log_group" "manage_auth_log_group_staging" {
  name              = "/ecs/${var.ecs_service_name}-manage-auth-staging"
  retention_in_days = 30

  tags = {
    Name = "${var.ecs_service_name}-manage-auth-log-group-staging"
  }
}
resource "aws_cloudwatch_log_stream" "manage_auth_log_stream_staging" {
  name           = "${var.ecs_service_name}-manage-auth-log-stream-staging"
  log_group_name = aws_cloudwatch_log_group.manage_auth_log_group_staging.name
}

resource "aws_cloudwatch_log_group" "manage_users_log_group_staging" {
  name              = "/ecs/${var.ecs_service_name}-manage-users-staging"
  retention_in_days = 30

  tags = {
    Name = "${var.ecs_service_name}-manage-users-log-group-staging"
  }
}
resource "aws_cloudwatch_log_stream" "manage_users_log_stream_staging" {
  name           = "${var.ecs_service_name}-manage-users-log-stream-staging"
  log_group_name = aws_cloudwatch_log_group.manage_users_log_group_staging.name
}

resource "aws_cloudwatch_log_group" "manage_boards_log_group_staging" {
  name              = "/ecs/${var.ecs_service_name}-manage-boards-staging"
  retention_in_days = 30

  tags = {
    Name = "${var.ecs_service_name}-manage-boards-log-group-staging"
  }
}
resource "aws_cloudwatch_log_stream" "manage_boards_log_stream_staging" {
  name           = "${var.ecs_service_name}-manage-boards-log-stream-staging"
  log_group_name = aws_cloudwatch_log_group.manage_boards_log_group_staging.name
}

resource "aws_cloudwatch_log_group" "manage_columns_log_group_staging" {
  name              = "/ecs/${var.ecs_service_name}-manage-columns-staging"
  retention_in_days = 30

  tags = {
    Name = "${var.ecs_service_name}-manage-columns-log-group-staging"
  }
}
resource "aws_cloudwatch_log_stream" "manage_columns_log_stream_staging" {
  name           = "${var.ecs_service_name}-manage-columns-log-stream-staging"
  log_group_name = aws_cloudwatch_log_group.manage_columns_log_group_staging.name
}

resource "aws_cloudwatch_log_group" "manage_tasks_log_group_staging" {
  name              = "/ecs/${var.ecs_service_name}-manage-tasks-staging"
  retention_in_days = 30

  tags = {
    Name = "${var.ecs_service_name}-manage-tasks-log-group-staging"
  }
}
resource "aws_cloudwatch_log_stream" "manage_tasks_log_stream_staging" {
  name           = "${var.ecs_service_name}-manage-tasks-log-stream-staging"
  log_group_name = aws_cloudwatch_log_group.manage_tasks_log_group_staging.name
}

  