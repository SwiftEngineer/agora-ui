resource "aws_route53_zone" "main" {
  name = var.domain_name
}

resource "aws_route53_record" "main" {
  zone_id = aws_route53_zone.main.zone_id
  name = aws_route53_zone.main.name
  type = "A"
  alias {
    evaluate_target_health = false
    name = "s3-website-${var.aws_region}.amazonaws.com"
    zone_id = aws_s3_bucket.domain.hosted_zone_id
  }
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.main.zone_id
  name = "www.${var.domain_name}"
  type = "A"
  alias {
    evaluate_target_health = false
    name = "s3-website-${var.aws_region}.amazonaws.com"
    zone_id = aws_s3_bucket.domain.hosted_zone_id
  }
}