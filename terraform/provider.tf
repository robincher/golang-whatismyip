variable "DO_TOKEN" {}

provider "digitalocean" {
  token = "${var.DO_TOKEN}"
  // token = "${var.digital_ocean_access_token}"
}
