# Despliegue MEAN Stack con Terraform — Ejercicio 1
 
Plantilla modularizada de Terraform para desplegar un stack MEAN (Node.js + Nginx y MongoDB) en AWS.
 
---
 
## Requisitos previos
 
- **Terraform** >= 1.9.x → https://developer.hashicorp.com/terraform/install
- **AWS CLI** >= 2.x → https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
- Cuenta de AWS configurada con `aws configure`
---
 
## Variables requeridas
 
Al ejecutar, Terraform pedirá estos valores interactivamente:
 
| Variable | Descripción |
|---|---|
| `key_name` | Nombre de tu key pair en AWS |
| `nodejs_ami` | AMI con Node.js + Nginx (de Packer o Ubuntu base) |
| `mongodb_ami` | AMI base de Ubuntu 20.04 |
 
> Para obtener el AMI base de Ubuntu 20.04: https://cloud-images.ubuntu.com/locator/ec2/
 
---
 
## Ejecución
 
```bash
# 1. Descargar el provider de AWS
terraform init
 
# 2. Previsualizar los recursos a crear 
terraform plan
 
# 3. Desplegar la infraestructura
terraform apply
 
# 4. Al terminar la práctica, destruir los recursos
terraform destroy
```
 
---
 
## Recursos que se crean
 
- VPC, subnets pública y privada, internet gateway
- Security group para Node.js (puertos 80, 443, 22)
- Security group para MongoDB (puerto 27017 solo desde Node.js, y 22)
- Instancia EC2 con Node.js + Nginx
- Instancia EC2 con MongoDB
---