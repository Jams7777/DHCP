docker run -d --name dhcpserv --network host -h dhcpserv dhcpimg tail -f /dev/null 
docker run -d --name dhcpfailover --network host -h dhcpfailover dhcpfimg tail -f /dev/null