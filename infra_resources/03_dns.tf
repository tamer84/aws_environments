resource "aws_route53_zone" "zone_workspace" {
  name     = "${terraform.workspace}.${var.solution}.${var.domain}."
  tags = {
    Terraform   = "true"
    nuke_ignore = "true"
  }
}

resource "aws_route53_record" "test_entry" {
  zone_id  = aws_route53_zone.zone_workspace.id
  name     = "test-dns.${terraform.workspace}.${var.solution}.${var.domain}."
  type     = "TXT"
  ttl      = 60
  records  = ["Environment: ${terraform.workspace}, OU: ${var.solution}"]
}

data "aws_route53_zone" "zone_apex" {
  provider = aws.workload
  name = var.domain
}

resource "aws_route53_record" "ns_entries" {
  provider = aws.workload
  zone_id = data.aws_route53_zone.zone_apex.id
  name    = "${terraform.workspace}.${var.solution}.${var.domain}."
  type    = "NS"
  ttl     = 60
  records = aws_route53_zone.zone_workspace.name_servers
}
