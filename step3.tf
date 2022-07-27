resource "aws_db_instance" "mydb" {
     allocated_storage    = 10
     engine               = "mysql"
     engine_version       = "5.6.17"
     instance_class       = "db.t2.micro"
     name                 = "mydb"
     username             = "admin"
     password             = "rdspassword"
   }

   resource "aws_route53_record" "database" {
      zone_id = "${aws_route53_zone.primary.us-east-1}"
      name = "database.example.com"
      type = "CNAME"
      ttl = "300"
      records = ["${aws_db_instance.default.endpoint}"]
   }


resource "aws_rds_cluster_endpoint" "endpoint_type" {
  cluster_identifier          = aws_rds_cluster.default.id
  cluster_endpoint_identifier = "reader"
  custom_endpoint_type        = "READER"

  excluded_members = [
    aws_rds_cluster_instance.reader1.id,
    aws_rds_cluster_instance.reader2.id,
    aws_rds_cluster_instance.reader3.id,
  ]
}

resource "aws_rds_cluster_endpoint" "static" {
  cluster_identifier          = aws_rds_cluster.default.id
  cluster_endpoint_identifier = "writer"
  custom_endpoint_type        = "WRITER"

  static_members = [
    aws_rds_cluster_instance.writer.id,
  ]
}
