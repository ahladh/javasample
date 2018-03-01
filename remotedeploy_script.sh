#!/bin/bash


ssh ahladh@54.244.209.186 '
var=$(ps -ef | grep -v grep | grep tomcat8 | wc -l )

if [ $var -lt 1 ]
   then
  	sudo service tomcat8 start
fi

'
cd ./SpringMVCSecurityXML/target
mv SpringMVCSecurityXML.war 1213_by_script.war
scp 1213_by_script.war ahladh@54.244.209.186:/var/lib/tomcat8/webapps
