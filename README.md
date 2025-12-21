# Observability
For deployment of monitoring and notification systems

Development with Docker
Requirements
Before starting, be sure you have

docker
and eventually docker-compose (for older OS versions)

git clone https://github.com/cesbg1/Observability/Observability.git
git clone https://git.drupalcode.org/project/ices.git
Configuration
Copy the .env.dev.template to .env. That should be enough for quickly starting a dev environment.

In order to have everything working (mailing, push notifications, backups, analytics...) you need to additionally:

set all the required API keys in the .env file.
copy your firebase credentials service account file to notifications/komunitin-project-firebase-adminsdk.json and accounting/komunitin-project-backup-credentials.json.
Start
Then you can run the start script with the options --up to start the containers, --ices to install the IntegralCES site, --dev to start the debuggers and other development utils and --demo to seed the system with demo data.

./start.sh --up --ices --dev --demo
After installing for the first time, if you want just to start the containers in dev mode without re-installing you can run:

docker compose -f compose.yml -f compose.dev.yml up -d
