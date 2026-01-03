[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://docs.paperless-ngx.com/assets/logo_full_white.svg">
    <img alt="Logo" src="https://docs.paperless-ngx.com/assets/logo_full_white.svg" height="60">
  </picture>

  <h3 align="center">paperless-ngx</h3>

  <p align="center">
    Docker setup for paperless-ngx
    <br />
    <br />
    ·
    <a href="https://github.com/Beuterei/paperless-ngx/issues">Report Bug</a>
    ·
    <a href="https://github.com/Beuterei/paperless-ngx/issues">Request Feature</a>
  </p>
</p>

<!-- ABOUT THE PROJECT -->

## About The Project

Small docker setup for paperless-ngx.

<!-- GETTING STARTED -->

## Getting Started Develop

To get a local copy up and running follow these simple steps.

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Installation

1. Clone the repo

```sh
git clone https://github.com/Beuterei/paperless-ngx.git
```

2. Start docker-compose

```sh
docker-compose up --build
```

3. Navigate to `localhost:3500`

### Customization

1. Create a `.env` file

```sh
touch .env
```

2. Overwrite variables as you like (format: `{variable name}={variable value}`)

| Variable            | Description                          | Default value | Required |
| ------------------- | ------------------------------------ | ------------- | -------- |
| `POSTGRES_PASSWORD` | Password for the PostgreSQL database | none          | true     |

## Getting Started Production

To get a copy up and running follow these simple steps.

### Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

### Installation

1. Clone the repo

```sh
git clone https://github.com/Beuterei/paperless-ngx.git
```

2. Create a `.env.production` file

```sh
touch .env.production
```

3. Overwrite all variables marked under Customization as required
4. Start docker-compose

```sh
docker-compose --env-file ./.env.production -f docker-compose.yml -f docker-compose.production.yml up -d
```

### Customization

1. Create a `.env.production` file

```sh
touch .env.production
```

2. Overwrite variables as you like (format: `{variable name}={variable value}`)

| Variable                     | Description                                                                     | Default value     | Required |
| ---------------------------- | ------------------------------------------------------------------------------- | ----------------- | -------- |
| `POSTGRES_PASSWORD`          | Password for the PostgreSQL database                                            | none              | true     |
| `PAPERLESS_HOST`             | Hostname/domain for your paperless-ngx instance (used for VIRTUAL_HOST and URL) | none              | true     |
| `PAPERLESS_LETSENCRYPT_HOST` | Hostname/domain for Let's Encrypt                                               | ${PAPERLESS_HOST} | false    |
| `PAPERLESS_FTP_USER`         | Username for the FTP user 'paperless'                                           | none              | true     |
| `PAPERLESS_FTP_PASSWORD`     | Password for the FTP user 'paperless'                                           | none              | true     |
| `PAPERLESS_SECRET_KEY`       | Secret key for the paperless-ngx instance                                       | none              | true     |

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/Beuterei/paperless-ngx.svg?style=flat-square
[contributors-url]: https://github.com/Beuterei/paperless-ngx/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Beuterei/paperless-ngx.svg?style=flat-square
[forks-url]: https://github.com/Beuterei/paperless-ngx/network/members
[stars-shield]: https://img.shields.io/github/stars/Beuterei/paperless-ngx.svg?style=flat-square
[stars-url]: https://github.com/Beuterei/paperless-ngx/stargazers
[issues-shield]: https://img.shields.io/github/issues/Beuterei/paperless-ngx.svg?style=flat-square
[issues-url]: https://github.com/Beuterei/paperless-ngx/issues
[license-shield]: https://img.shields.io/github/license/Beuterei/paperless-ngx.svg?style=flat-square
