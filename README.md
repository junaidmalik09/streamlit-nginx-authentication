# streamlit-nginx-authentication

This repo contains a simple proof-of-concept of running Streamlit behind an NGINX proxy with basic authentication.

## Requirements
1. Docker
2. Docker compose
3. apache2-utils (Debian, Ubuntu)

## Usage
1. Create the htpasswd file for the desired user by running
´´´
make create-password username=<your-username>
´´´
You will be prompted to enter (and re-enter) the desired password.

1. Build the streamlit image:
```
make build
```

2. Start the services:
```
make start
```

3. Open a browser and navigate to *localhost/streamlit*. A prompt will appear asking for the username and password. Enter the username/password combo created earlier to access the streamlit instance.

## Troubleshooting
NGINX and Streamlit logs can be access by running the following two commands, respectively:

```
docker compose logs nginx
docker compose logs streamlit
```

Most of the problems can be easily diagnosed through the logs. Feel free to create an issue in case the solution is not clear.


## Important Links
- https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-http-basic-authentication/
- https://docs.streamlit.io/library/advanced-features/configuration