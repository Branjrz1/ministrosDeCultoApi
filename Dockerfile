FROM openjdk:21
LABEL authors="bvazq"

ENV DB_URL jdbc:mysql://viaduct.proxy.rlwy.net:29449/railway
ENV DB_USER root
ENV DB_PASS oomfXTBoqrVUihPOiOPQZwralvYPKNzm
ENV DB_NAME railway

COPY target/Control_Asist_Api-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar","/app.jar"]