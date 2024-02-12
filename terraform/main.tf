provider "aws" {
	region = "eu-north-1"
}

resource "aws_instance" "flaskwebapp"{

	ami = "ami-0014ce3e52359afbd"
	instance_type = "t3.micro"

	user_data = <<-EOF
		    #!bin/bash
		    docker run -p 8000:8000 flaskapp
		    EOF

	tags = {
		Name = "FlaskwebappInstance"
	}
}

output "instance_ip" {
	value = aws_instance.flaskwebapp.public_ip
}

