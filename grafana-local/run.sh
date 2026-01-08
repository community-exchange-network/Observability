# Load .env file.
set -a
. .env
set +a

docker compose up -d
# for some reason alloy connects to komunitin_default network only
# specified by (PROJECT_NAME)  in .env file
# docker network connect ces2demo.community-exchange.org alloy
