
# ec2-Terraform-aws💻



## Componentes incluidos 

* Una maquina virtual ubuntu.
* Terraform 
* Github.
* ec2.

### Ejecutar script y aprovisionar recursos.

Desde un shell de comandos en el directorio donde creó la configuración:

* Escriba `terraform init`  para inicializar la configuración. Terraform descarga e instala automáticamente el proveedor aws 
 Terraform, y muestra cualquier error en la configuración.
* Escriba `terraform plan`  para verificar que la configuración es lo que pretende generar.
* Escriba `terraform apply`  para ejecutar la configuración y crear el entorno que especificó.

Una vez ejecutado el script podemos ver los recursos aprovisionados en aws.


### Nota.
En variables.tf hay variables por default se puede cambiar segun la necesidad.
