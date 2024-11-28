FROM harbor.gbyj.com/ops/gbyj-java:java8
WORKDIR /data/code/backend/
COPY target/gbkj-official-mobile.jar /data/code/backend/
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$JAVA_HOME/bin
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=test","gbkj-official-mobile.jar"]
