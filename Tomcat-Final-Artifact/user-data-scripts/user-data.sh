#!/bin/bash
#written by Gaby Tal
sudo apt-get update -y && apt-get install tomcat7 -y &&
sudo chmod +x ./machine-content/port-modifier.sh 
ln -s /etc/tomcat7 /etc/tomcat
sed -i "s|.*\<Connector port=\"8080\" protocol=\"HTTP\/1.1\"*|\<Connector port=\"8088\" protocol=\"HTTP/1.1\"|g" /etc/tomcat/server.xml 
