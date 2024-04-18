resource "openstack_compute_instance_v2" "kworker2" {
    name = "kworker2"
    image_name = "Ubuntu-22.04-LTS"
    flavor_name = "css.2c6r.20g"
    key_pair = "ysi"
    security_groups = ["internal"]

    network {
        name = "acit"
    }
}

output "kworker2_ip" {
  value = openstack_compute_instance_v2.kworker2.access_ip_v4
}
