data "aws_route53_zone" "MariaDB" {
  name    = "rabbit-mq.xyz"
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.MariaDB.zone_id
  name    = "db.rabbit-mq.xyz"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.MariaDB.public_ip]
}