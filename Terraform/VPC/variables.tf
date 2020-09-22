variable "vpc-cidr-block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public-subnet-cidr-block-1" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "public-subnet-cidr-block-2" {
  description = "CIDR block for the public subnet"
  default     = "10.0.2.0/24"
}

variable "public-subnet-cidr-block-3" {
  description = "CIDR block for the public subnet"
  default     = "10.0.3.0/24"
}

variable "private-subnet-cidr-block" {
  description = "CIDR block for the private subnet"
  default     = "10.0.4.0/24"
}
