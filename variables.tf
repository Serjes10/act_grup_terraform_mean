variable "aws_region"{
    type = string
    default = "us-east-1"
}

variable "key_name"{
    type = string
    description = "Nombre del key par existente en AWS"
}

variable "nodejs_ami"{
    type = string
    description = "AMI de Node.js+NGIX generada con Packer en la actividad 1"
}

variable "mongodb_ami"{
    type = string
    description = "AMI base de Ubuntu 20.04 para la instalacion de MongoDB"
}