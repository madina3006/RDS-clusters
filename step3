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
      zone_id = "${aws_route53_zone.primary.zone_id}"
      name = "database.example.com"
      type = "CNAME"
      ttl = "300"
      records = ["${aws_db_instance.default.endpoint}"]
   }

excluded_members = [
    aws_rds_cluster_instance.reader1.id,
    aws_rds_cluster_instance.reader2.id,
    aws_rds_cluster_instance.reader3.id,
    aws_rds_cluster_instance.writer.id,
  ]
