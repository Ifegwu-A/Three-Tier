# SEC GROUP
resource "aws_security_group" "web_ssh" {
    name        = "ssh-access"
    description = "open ssh traffic"
    vpc_id      = var.vpc_id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        "Name" : "Web-SSH"
        "Terraform" : "true"
    }
}