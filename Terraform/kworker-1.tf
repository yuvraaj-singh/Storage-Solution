resource "openstack_compute_instance_v2" "kworker1" {
    name = "kworker1"
    image_name = "Ubuntu-22.04-LTS"
    flavor_name = "css.2c6r.20g"
    key_pair = "ysi"
    security_groups = ["internal"]

    network {
        name = "acit"
    }
}

output "kworker1_ip" {
  value = openstack_compute_instance_v2.kworker1.access_ip_v4
}
