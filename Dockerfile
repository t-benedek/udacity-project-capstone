# FROM maven

# COPY . /project
# WORKDIR /project

# CMD ["./mvnw", "compile"]

FROM nginx
COPY index.html /usr/share/nginx/html/index.html