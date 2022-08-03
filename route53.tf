resource "aws_route53_record" "project" {
  zone_id =  "Z091514632HVU9KDF1KM"
  name    =  "madinaaws.com"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}