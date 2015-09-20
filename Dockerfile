FROM      consol/tomcat-7.0

MAINTAINER Steven Weng <wosteven@gmail.com>

COPY	target/MVCExample.war /maven/MVCExample.war

EXPOSE 	8080

CMD		["/opt/tomcat/bin/deploy-and-run.sh","/opt/tomcat/bin/catalina.sh run"]