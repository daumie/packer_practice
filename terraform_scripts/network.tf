resource "google_compute_network" "assessment-network" {
  name = "assessment-network"
}

resource "google_compute_subnetwork" "assessment-private-subnetwork" {
  name          = "assessment-private-subnetwork"
  region        = "${var.application_region}"
  network       = "${google_compute_network.assessment-network.self_link}"
  ip_cidr_range = "${var.application_ip_cidr_range}"
}