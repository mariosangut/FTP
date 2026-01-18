# Proyecto FTP con Vagrant y Ansible

Este proyecto consiste en el diseño, despliegue y configuración automatizada de un servicio FTP utilizando máquinas virtuales creadas con Vagrant y configuradas mediante Ansible. El sistema implementa dos servidores diferenciados: un servidor FTP anónimo y un servidor FTP seguro (FTPS), aplicando criterios de seguridad, control de acceso y buenas prácticas de administración de sistemas.

El proyecto se ha desarrollado en un entorno académico con el objetivo de aplicar conceptos de virtualización, automatización y servicios de red.

## Objetivos del proyecto

- Desplegar un servidor FTP anónimo con acceso de solo lectura.
- Desplegar un servidor FTP seguro (FTPS) con autenticación de usuarios locales.
- Implementar cifrado SSL/TLS para proteger las comunicaciones.
- Aplicar enjaulado (chroot) de usuarios en el servidor FTP seguro.
- Automatizar el despliegue y configuración mediante Ansible.
- Utilizar Vagrant como herramienta de provisión de la infraestructura.
- Organizar el proyecto siguiendo buenas prácticas de estructura y documentación.

## Tecnologías utilizadas

- **Vagrant**: creación y gestión de máquinas virtuales.
- **VirtualBox**: proveedor de virtualización.
- **Ansible**: automatización de la configuración de los servidores.
- **vsftpd**: servidor FTP y FTPS.
- **OpenSSL**: generación de certificados SSL/TLS.
- **Git / GitHub**: control de versiones y gestión del proyecto.

## Estructura del repositorio

```text
.
├── ansible.cfg
├── docs
│   ├── arquitectura
│   ├── evidences
│   │   ├── 6.2.1.png
│   │   ├── 6.2.3-luis.png
│   │   ├── 6.2.3-maria.png
│   │   ├── ansible-lint-after.png
│   │   ├── ansible-lint-before.png
│   │   ├── filezilla-descarga.png
│   │   └── filezilla-luis.png
│   ├── ftp-anonimo.html
│   ├── ftp-seguro.html
│   ├── Guia_despliegue_y_uso_servidor_FTP.pdf
│   ├── guia.odt
│   └── proyecto-vagrant-ansible.html
├── files
│   ├── anonymous
│   │   ├── comprobaciones.txt
│   │   └── vsftpd.conf
│   ├── resolv.conf
│   └── secure
│       ├── vsftpd.chroot_list
│       └── vsftpd.conf
├── hosts.ini
├── playbook-setup.yaml
├── README.md
└── Vagrantfile

```
## Arquitectura general

La infraestructura del proyecto está formada por dos máquinas virtuales Linux:

- **Servidor FTP anónimo**: permite el acceso sin autenticación, con permisos de solo lectura, límites de ancho de banda y control del número de conexiones simultáneas.
- **Servidor FTP seguro (FTPS)**: permite el acceso a usuarios locales, forzando el uso de conexiones cifradas mediante SSL/TLS y aplicando enjaulado de usuarios, con excepción de un usuario específico.

Ambos servidores son desplegados y configurados automáticamente mediante Ansible a partir de un único playbook común, diferenciando la configuración en función del grupo de hosts definido en el inventario.



## Automatización con Ansible

El proyecto utiliza un único playbook que agrupa todas las tareas necesarias para la provisión de los servidores FTP. Las configuraciones específicas de cada servidor se gestionan mediante archivos independientes y grupos de hosts, evitando la duplicación de código y facilitando el mantenimiento.

La automatización incluye la instalación del servicio, la aplicación de configuraciones, la gestión de usuarios y la activación de medidas de seguridad.


## Despliegue del proyecto

Para desplegar el proyecto es necesario disponer de Vagrant, VirtualBox y Ansible instalados en el sistema anfitrión.

De forma general, el despliegue se realiza levantando las máquinas virtuales con Vagrant y ejecutando posteriormente el playbook de Ansible sobre los hosts definidos en el inventario.

## Estado del proyecto

- Proyecto finalizado.
- Infraestructura funcional y probada.
- Automatización completa mediante Ansible.
- Configuración alineada con los requisitos del enunciado.
