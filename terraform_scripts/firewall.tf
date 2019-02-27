resource "google_compute_firewall" "ubuntuflaskapp_firewall" {
  name = "ubuntuflaskapp-firewall"
  network = "${google_compute_network.development_network.name}"

  allow {
      protocol = "tcp"
      ports = ["22", "80", "5000", "443"]
  }
}
