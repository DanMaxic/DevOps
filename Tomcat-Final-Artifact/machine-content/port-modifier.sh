#!/bin/bash
#this script will change tomcat port by editing server.xml file
#written by Gaby Tal

read -p "please choose a desired port: "  PORT

sed -i "s|.*\<Connector port=\"8080\" protocol=\"HTTP\/1.1\"*|\<Connector port=\"${PORT}\" protocol=\"HTTP/1.1\"|g" /etc/tomcat/server.xml &&
echo "the port successfully changed to $PORT!"
sudo service tomcat restart
sudo service tomcat7 restart
echo done!