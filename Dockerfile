# Stage 1: Build the site
FROM squidfunk/mkdocs-material:9.7.7 AS build

WORKDIR /app
COPY . .
RUN mkdocs build

# Stage 2: Run nginx to serve the content
FROM nginx:1.25-alpine
WORKDIR /usr/share/nginx/html
COPY --from=build /app/site .
EXPOSE 80/tcp
CMD ["nginx", "-g", "daemon off;"]