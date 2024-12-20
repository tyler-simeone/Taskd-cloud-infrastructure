
##############
##   PROD   ##
##############

data "aws_ecr_repository" "manage-auth" {
    name = "manage-auth"
}
data "aws_ecr_repository" "manage-users" {
    name = "manage-users"
}
data "aws_ecr_repository" "manage-boards" {
    name = "manage-boards"
}
data "aws_ecr_repository" "manage-columns" {
    name = "manage-columns"
}
data "aws_ecr_repository" "manage-tasks" {
    name = "manage-tasks"
}


#################
##   STAGING   ##
#################

data "aws_ecr_repository" "manage-auth-staging" {
    name = "manage-auth-staging"
}
data "aws_ecr_repository" "manage-users-staging" {
    name = "manage-users-staging"
}
data "aws_ecr_repository" "manage-boards-staging" {
    name = "manage-boards-staging"
}
data "aws_ecr_repository" "manage-columns-staging" {
    name = "manage-columns-staging"
}
data "aws_ecr_repository" "manage-tasks-staging" {
    name = "manage-tasks-staging"
}