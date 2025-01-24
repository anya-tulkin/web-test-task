DIRNAME=$(dirname "$0")
docker build -t web "$DIRNAME"
docker run --name web -d -p 80:80 web