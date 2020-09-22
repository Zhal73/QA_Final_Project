resource "aws_security_group" "main-sec-group" {
  name        = var.name
  description = "Allow SSH, HTTP, and HTTPS connections"
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    iterator = port
    for_each = var.ingress_ports
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = [var.open-internet]
    }
  }
  egress {
    from_port   = var.outbound-port
    protocol    = "-1"
    to_port     = var.outbound-port
    cidr_blocks = [var.open-internet]
  }
}