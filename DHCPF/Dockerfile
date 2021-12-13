#Indicamos la imagen que vamos a utilizar 
FROM ubuntu:latest 
ENV TERM xterm 
LABEL maintainer=administador@sri.local 
#Instalamos el servidor dhcp, ejecutando los comandos ya vistos anteriormente 
RUN apt-get -o Acquire::Check-Valid-Until=false update 
RUN apt-get update -y && apt-get install -y isc-dhcp-server 
#El archivo de configuración de la interfaz lo copiamos directamente 
COPY isc-dhcp-server /etc/default/isc-dhcp-server 
COPY dhcpd.conf /etc/dhcp/dhcpd.conf
EXPOSE 67/udp 67/tcp 
#Comando para arrancar el servicio 
CMD [service isc-dhcp-server restart,"-g","daemon off;"]