# Observability using Grafana Cloud

For deployment of monitoring and notification system based on Grafana
Cloud deployed with Docker

**Requirements** Before starting, be sure you have on the local server
git, docker and eventually docker-compose (for older OS versions). Get
Grafana Cloud account
at [*https://grafana.com/*](https://grafana.com/) and generate API key
or use an existing one, Prometheus and Loki username, password and URL.

This **setup** uses Git\'s sparse checkout feature. Here are detailed
instructions:

    mkdir grafana-cloud
    cd grafana-cloud/
    git init
    git remote add -f origin
    https://github.com/community-exchange-network/Observability
    git config core.sparseCheckout true
    echo \"grafana-cloud/\" \>\> .git/info/sparse-checkout
    git pull origin main

Configuration

Copy the .env.template to .env.

In order to have everything working you need to additionally:

Set all the required Grafana Gloud API keys, Prometheus username,
password and URL, Loki username, password and URL in the .env file.
Check the .env file and configure the rest of the .env variables.

Run

    docker compose up -d

Check the Alloy Agent container by \"docker ps\".

In case of problems execute \"docker logs alloy\" and check the log for
problems.


