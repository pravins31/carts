FROM schoolofdevops/carts-maven:3.9 as build
WORKDIR /opt/carts
COPY . .
RUN  mvn package -D skipTests

FROM schoolofdevops/carts-maven:3.9 as build
WORKDIR /run
COPY --from=build /opt/carts/target/carts.jar .
EXPOSE 80
CMD ["java", "-jar", "/run/carts.jar", "--port=8080"]
