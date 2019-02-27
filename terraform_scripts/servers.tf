resource "google_compute_instance" "ubuntuflaskapp" {
  name         = "theubuntuflaskapp"
  machine_type = "n1-standard-1"
  zone         = "europe-west2-a"
  tags         = ["ubuntuflaskapp-instance"]

  boot_disk {
    initialize_params {
      image = "bionic-beaver-flask-hello"
    }
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.dev-subnet.name}"

    access_config {}
  }

  metadata {
    foo = "bar"
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}
