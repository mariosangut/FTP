apt update
apt install vsftpd

configuracion fichero vsftpd.conf (/etc)


comprobar sintaxis: sudo vsftpd /etc/vsftpd.conf

para el mensaje de los usuarios anonimos es necesario configurar el .message 
en el directorio establecido para el direcotorio root: /srv/ftp 

        /srv/ftp:
.  ..  .message