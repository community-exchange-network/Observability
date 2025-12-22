# Observability
For deployment of monitoring and notification system based on Grafana Cloud

Development with Docker

Requirements
Before starting, be sure you have on the local server docker and eventually docker-compose (for older OS versions).
Get Grafana Cloud account at https://grafana.com/ and generate API key, Prometheus and Loki username, password and URL.

git clone https://github.com/cesbg1/Observability/Observability.git

This will create a sub-directory named Observability.

Configuration

cd Observability

Copy the .env.template to .env.

In order to have everything working  you need to additionally:

Set all the required Grafana Gloud API keys, Prometheus username, password and URL, Loki username, password and URL in the .env file.
Check the .env file and configure all the necessary env variables.

docker compose up -d

Check the Alloy Agent container by "docker ps".

In case of problems execute "docker logs alloy"


