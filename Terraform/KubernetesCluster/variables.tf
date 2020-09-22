variable "cluster-name" {
  default = "basic-cluster"
}

variable "public_subnet_id_1" {
  default = "This should be replaced in the primary main.tf"
}

variable "public_subnet_id_2" {
  default = "This should be replaced in the primary main.tf"
}

variable "public_subnet_id_3" {
  default = "This should be replaced in the primary main.tf"
}

variable "vpc_security_group_ids" {
  default = "This should be overridden in the primary main.tf"
}