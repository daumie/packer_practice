resource "google_compute_network" "our_development" {
  name = "devnetwork"
  auto_create_subnetworks = true
  
}
