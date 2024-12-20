variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "us-east-2"
}

variable "aws_profile" {
    description = "The AWS profile to use"
    default     = "tyler.simeone"
}

variable "ecs_service_name" {
    default = "projectb"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = 2
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "myEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default = "myEcsAutoScaleRole"
}

variable "prod_task_count" {
  description = "Number of ECS tasks to run in production"
  default     = 1
}

variable "staging_task_count" {
  description = "Number of ECS tasks to run in staging"
  default     = 1
}

variable "manage_auth_port" {
  description = "Port exposed by the manage-auth docker image"
  default     = 5058
}

variable "manage_users_port" {
  description = "Port exposed by the manage-users docker image"
  default     = 5222
}

variable "manage_boards_port" {
  description = "Port exposed by the manage-boards docker image"
  default     = 5032
}

variable "manage_columns_port" {
  description = "Port exposed by the manage-columns docker image"
  default     = 5156
}

variable "manage_tasks_port" {
  description = "Port exposed by the manage-tasks docker image"
  default     = 5273
}

variable "manage_auth_fargate_cpu" {
  description = "Fargate instance CPU units to provision for back-end application (1 vCPU = 1024 CPU units)"
  default     = 256
}

variable "manage_users_fargate_cpu" {
  description = "Fargate instance CPU units to provision for back-end application (1 vCPU = 1024 CPU units)"
  default     = 256
}

variable "manage_boards_fargate_cpu" {
  description = "Fargate instance CPU units to provision for back-end application (1 vCPU = 1024 CPU units)"
  default     = 256
}

variable "manage_columns_fargate_cpu" {
  description = "Fargate instance CPU units to provision for back-end application (1 vCPU = 1024 CPU units)"
  default     = 256
}

variable "manage_tasks_fargate_cpu" {
  description = "Fargate instance CPU units to provision for back-end application (1 vCPU = 1024 CPU units)"
  default     = 256
}

variable "manage_auth_fargate_memory" {
  description = "Fargate instance memory to provision for back-end application (in MiB)"
  default     = 512
}

variable "manage_users_fargate_memory" {
  description = "Fargate instance memory to provision for back-end application (in MiB)"
  default     = 512
}

variable "manage_boards_fargate_memory" {
  description = "Fargate instance memory to provision for back-end application (in MiB)"
  default     = 512
}

variable "manage_columns_fargate_memory" {
  description = "Fargate instance memory to provision for back-end application (in MiB)"
  default     = 512
}

variable "manage_tasks_fargate_memory" {
  description = "Fargate instance memory to provision for back-end application (in MiB)"
  default     = 512
}