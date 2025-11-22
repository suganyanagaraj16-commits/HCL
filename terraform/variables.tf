variable "gcp_project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "gcp_region" {
  description = "The GCP region to deploy resources in."
  type        = string
}

variable "environment" {
  description = "The environment (e.g., dev, prod)."
  type        = string
}

variable "subnet_cidr_range" {
  description = "The CIDR range for the subnetwork."
  type        = string
}
