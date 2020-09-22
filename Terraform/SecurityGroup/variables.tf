variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22, 80, 443]
}

variable "open-internet" {
  description = "CIDR block for the open internet"
  default     = "0.0.0.0/0"
}

variable "outbound-port" {
  description = "Outbound ports for communication"
  default     = 0
}

variable "name" {
  description = "Name of the security group"
  default     = "Allow_SSH"
}

variable "vpc_id" {
  description = "VPC ID"
  default     = "Pull from main.tf"
}

variable "vpc_security_group_ids" {
  description = "IDs of the security groups"
  default     = "Pull from main.tf"
}