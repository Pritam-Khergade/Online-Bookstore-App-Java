FROM maven as builder
COPY . /mnt/Online-Bookstore-App-Java/.
WORKDIR /mnt/Online-Bookstore-App-Java
RUN mvn package

FROM tomcat 
COPY --from=builder /mnt/Online-Bookstore-App-Java/target/*.war webapps/.
