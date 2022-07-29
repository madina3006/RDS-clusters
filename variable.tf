variable "instance_class" {
  type    = string
  default = "db.r4.large"
}
variable "cluster_identifier" {
  default = "dbname"
}
variable "engine" {
  default = "aurora"
  type    = string
}
variable "engine_version" {
  default = "5.6.10a"
}
variable "database_name" {
  default = "dbname"
}
variable "master_username" {
  default = "team1db"
}
variable "name" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "subnet_ids" {
  type = list(string)
}
variable "allowed_security_groups" {
  type = list(string)
}
variable "allowed_cidr_blocks" {
  type = list(string)
}
variable "region" {
  type = string
}
variable "aws_route53_zone" {
  type = string
}
# Team 1_project
variable "master_password" {}
variable "aws_db_subnet_group_name" {}
variable "aws_db_subnet_group" {}
variable "vpc_security_group_id" {}
variable "aws_cluster_identifier" {}








