output "vpc_network_self_link" {
  description = "The self_link of the VPC network."
  value       = google_compute_network.vpc_network.self_link
}

output "vpc_subnet_self_link" {
  description = "The self_link of the VPC subnetwork."
  value       = google_compute_subnetwork.vpc_subnet.self_link
}
