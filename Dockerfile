# FROM maven

# COPY . /project
# WORKDIR /project

# CMD ["./mvnw", "compile"]

ABC THIS WILL NOT WORK
FROM nginx
COPY index.html /usr/share/nginx/html/index.html