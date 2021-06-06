docker build --tag=quarkus-hello .

docker run -it -p 8080:80 quarkus-hello

# Try to run for quarkus example
# docker run -it -p8000:8000 --rm quarkus-hello "./mvnw quarkus:dev:"