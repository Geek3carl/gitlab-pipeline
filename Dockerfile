FROM reg.qschou.com/base/alpine:java-1.8.0_172 
WORKDIR /
COPY target/health-abs.jar /
#ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0
#ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$JAVA_HOME/bin
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=prod","health-abs.jar"]
