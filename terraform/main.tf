provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}
resource "google_compute_network" "vpc_network" {
  name                    = "${var.environment}-vpc-network"
  auto_create_subnetworks = false # Recommended for fine-grained control
}

resource "google_compute_subnetwork" "vpc_subnet" {
  name          = "${var.environment}-subnet"
  ip_cidr_range = var.subnet_cidr_range
  region        = var.gcp_region
  network       = google_compute_network.vpc_network.name
}
