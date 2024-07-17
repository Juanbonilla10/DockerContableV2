docker build --pull --rm -f "api.dockerfile" -t api:latest "."
docker build --pull --rm -f "web.dockerfile" -t www:latest "."