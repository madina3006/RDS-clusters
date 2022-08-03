resource "aws_route53_record" "project" {
  zone_id =  "Z08986893U1AWC562QW2Q"
  name    =  "blog.kudratillo.org"
  type    = "A"
  ttl     = "300"
  records = ["127.0.0.1"]
}