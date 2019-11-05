# Create a kubernetes cluster
resource "digitalocean_kubernetes_cluster" "dev-k8s" {
  name    = "dev-k8s"
  region  = "sgp1"
  version = "1.15.5-do.0"

  node_pool {
    name       = "dev-k8s-nodes"
    size       = "s-1vcpu-2gb"
    node_count = 1
    tags       = ["dev-k8s-nodes"]
  }
}
