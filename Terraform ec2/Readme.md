
# ec2-Terraform-aws💻



## Componentes incluidos 

* Una maquina virtual ubuntu.
* Terraform 
* Github.
* ec2.
### Prerequisitos.
* Terraform.
* Key pair: generar key en ec2 dashboard o importar key del repositorio llamada x.pem.

### Ejecutar script y aprovisionar recursos.

Desde un shell de comandos en el directorio donde creó la configuración:

* Escriba `terraform init`  para inicializar la configuración. Terraform descarga e instala automáticamente el proveedor aws 
 Terraform, y muestra cualquier error en la configuración.
* Escriba `terraform plan`  para verificar que la configuración es lo que pretende generar.
* Escriba `terraform apply`  para ejecutar la configuración y crear el entorno que especificó.

Una vez ejecutado el script podemos ver los recursos aprovisionados en aws.


### Nota.
* En variables.tf hay variables por default se puede cambiar segun la necesidad.
* Si se genero un key pair cambiar el nombre en archivo mainf.tf en la linea 54 key_name.
