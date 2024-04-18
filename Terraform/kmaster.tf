resource "openstack_compute_instance_v2" "kmaster" {
    name = "kmaster"
    image_name = "Ubuntu-22.04-LTS"
    flavor_name = "css.4c8r.20g"
    key_pair = "ysi"
    security_groups = ["internal"]

    network {
        name = "acit"
    }
}

output "kmaster_ip" {
  value = openstack_compute_instance_v2.kmaster.access_ip_v4
}
