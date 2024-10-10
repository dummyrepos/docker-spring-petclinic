FROM maven:3.9-eclipse-temurin-17 AS builder
# build the java code
COPY . /spc
WORKDIR /spc
RUN mvn package
# this will create a spring petclinic jar file



# FROM eclipse-temurin:17-jre As runner
# COPY --from=builder /spc/target/spring-petclinic dest