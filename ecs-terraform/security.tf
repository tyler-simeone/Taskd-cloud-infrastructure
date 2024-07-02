# ALB Security Group: Edit to restrict access to the application
resource "aws_security_group" "lb" {
  name        = "${var.ecs_service_name}-load-balancer-security-group"
  description = "controls access to the ALB"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "SSL/TLS to VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "nginx_task" {
  name        = "${var.ecs_service_name}-nginx-task-security-group"
  description = "allow inbound access to the NGINX task from the ALB only"
  vpc_id      = aws_vpc.main.id

  ingress {
    protocol        = "tcp"
    from_port       = var.nginx_port
    to_port         = var.nginx_port
    security_groups = [aws_security_group.lb.id]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "manage_auth_task" {
  name        = "${var.ecs_service_name}-manage-auth-task-security-group"
  description = "allow inbound access to the manage-auth task from the ALB only"
  vpc_id      = aws_vpc.main.id

  ingress {
    protocol        = "tcp"
    from_port       = var.manage_auth_port
    to_port         = var.manage_auth_port
    security_groups = [aws_security_group.lb.id]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "manage_users_task" {
  name        = "${var.ecs_service_name}-manage-users-task-security-group"
  description = "allow inbound access to the manage-users task from the ALB only"
  vpc_id      = aws_vpc.main.id

  ingress {
    protocol        = "tcp"
    from_port       = var.manage_users_port
    to_port         = var.manage_users_port
    security_groups = [aws_security_group.lb.id]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "manage_boards_task" {
  name        = "${var.ecs_service_name}-manage-boards-task-security-group"
  description = "allow inbound access to the manage-boards task from the ALB only"
  vpc_id      = aws_vpc.main.id

  ingress {
    protocol        = "tcp"
    from_port       = var.manage_boards_port
    to_port         = var.manage_boards_port
    security_groups = [aws_security_group.lb.id]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "manage_columns_task" {
  name        = "${var.ecs_service_name}-manage-columns-task-security-group"
  description = "allow inbound access to the manage-columns task from the ALB only"
  vpc_id      = aws_vpc.main.id

  ingress {
    protocol        = "tcp"
    from_port       = var.manage_columns_port
    to_port         = var.manage_columns_port
    security_groups = [aws_security_group.lb.id]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "manage_tasks_task" {
  name        = "${var.ecs_service_name}-manage-tasks-task-security-group"
  description = "allow inbound access to the manage-tasks task from the ALB only"
  vpc_id      = aws_vpc.main.id

  ingress {
    protocol        = "tcp"
    from_port       = var.manage_tasks_port
    to_port         = var.manage_tasks_port
    security_groups = [aws_security_group.lb.id]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# RDS Security Group: Edit to restrict access to the production RDS instance
resource "aws_security_group" "ProjectB_RDS_prod" {
  name        = "${var.ecs_service_name}-RDS-Prod-security-group"
  description = "Allow inbound/outbound access to our Production RDS instance."
  vpc_id      = aws_vpc.main.id

  #ingress {
  #  cidr_blocks = ["98.211.55.29/32"]
  #  description      = ""
  #  from_port        = 3306
  #  to_port          = 3306
  #  protocol         = "tcp"
  #}
  ingress {
    description      = "Prod ALB"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = [aws_security_group.lb.id]
  }
  ingress {
    description      = "Prod NGINX task"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = [aws_security_group.nginx_task.id]
  }
  #ingress {
  #  description      = "Prod tasks"
  #  from_port        = 3306
  #  to_port          = 3306
  #  protocol         = "tcp"
  #  security_groups  = [
  #    aws_security_group.manage_auth_task.id, 
  #    aws_security_group.manage_users_task.id, 
  #    aws_security_group.manage_boards_task.id,
  #    aws_security_group.manage_columns_task.id,
  #    aws_security_group.manage_tasks_task.id
  #  ]
  }
  ingress {
    description      = "Prod manage-auth task"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = [aws_security_group.manage_auth_task.id]
  }
  ingress {
    description      = "Prod manage-users task"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = [aws_security_group.manage_users_task.id]
  }
  ingress {
    description      = "Prod manage-boards task"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = [aws_security_group.manage_boards_task.id]
  }
  ingress {
    description      = "Prod manage-columns task"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = [aws_security_group.manage_columns_task.id]
  }
  ingress {
    description      = "Prod manage-tasks task"
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups  = [aws_security_group.manage_tasks_task.id]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}