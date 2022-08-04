resource "aws_route53_record" "project" {
  zone_id = "Z08986893U1AWC562QW2Q"
  name    = "writer.kudratillo.org"
  type    = "CNAME"
  ttl     = "300"
  records = ["127.10.0.1"]
}