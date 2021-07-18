resource "aws_route53_record" "mariadb-record" {
  zone_id = data.aws_route53_zone.rabbit-zone.zone_id
  name = "mariadb.epam.one"
  type = "A"
  ttl  = "300"
  records = [aws_instance.MariaDB.public_ip]
}