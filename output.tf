output "reader_endpoint1" {
  value = aws_rds_cluster.default.reader_endpoint
}

output "writer_endpoint1" {
  value = aws_rds_cluster.default.endpoint
}
# output "region" {
#   value = module.vpc.region
# }
output "aws_db_subnet_group" {
  value = aws_db_subnet_group.db_subnet
}
output "aws_rds_cluster" {
  value = aws_rds_cluster.default
}
output "aws_rds_cluster_instance-reader1" {
  value = aws_rds_cluster_instance.cluster_instances-reader1
}
output "aws_rds_cluster_instance-reader2" {
  value = aws_rds_cluster_instance.cluster_instances-reader2
}
output "aws_rds_cluster_instance-reader3" {
  value = aws_rds_cluster_instance.cluster_instances-reader3
}
output "aws_rds_cluster_instance-writer" {
  value = aws_rds_cluster_instance.cluster_instances-writer
}
output "db_subnet" {
  value = aws_security_group.db_security
}

# output "vpc" {
#   value = module.vpc.vpc
# }
# output "private_subnet1" {
#   value = module.vpc.private_subnets[0]
# }

# output "private_subnet2" {
#   value = module.vpc.private_subnets[1]
# }

# output "private_subnet3" {
#   value = module.vpc.private_subnets[2]
# }

# output "public_subnet1" {
#   value = module.vpc.public_subnets[0]
# }

# output "public_subnet2" {
#   value = module.vpc.public_subnets[1]
# }

# output "public_subnet3" {
#   value = module.vpc.public_subnets[2]
# }