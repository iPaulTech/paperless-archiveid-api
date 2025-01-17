# A API for getting the latest Archive Number for my Scanner
# Moved to https://codeberg.org/berzdev/paperless-archiveid-api

This tool grabs the latest Archive Number from Paperless-ng using the Postgresql Server Backend.
And Displays it via a URL, for my DIY Raspi Scanner. So can I always get the next Archive ID for new scans.

I created this because the official API doesn't support this function until yet.

## Installation

This tool is dockerized!

Download:
```sh
git clone https://github.com/iPaulTech/paperless-archiveid-api.git
```

Modify for your setup with vi:
And set your Database parameters!
```sh
vi docker-compose.yml
```

Starting
```sh
docker compose up -d
```

Now should your Archive Number API instance be available at port 80 (if you haven't changed it).
The URL should be: `HOSTNAME/lastarchivenumber.php`
