
module "mesos_master" {
    source = "mesos_master"
    security_group_http = "${aws_security_group.mesos_http.id}"
    security_group_https = "${aws_security_group.mesos_https.id}"
    security_group_ssh = "${aws_security_group.mesos_ssh.id}"
    security_group_internal = "${aws_security_group.mesos_internal.id}"
    discovery_instance_profile = "${var.discovery_instance_profile}"
    count = "${var.masters}"
    instance_type = "${var.master_instance_type}"
    subnet_id = "${var.subnet_id}"
    admin_key_name = "${var.admin_key_name}"
    domain = "${var.domain}"
}

