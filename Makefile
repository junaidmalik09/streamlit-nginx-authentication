.PHONY: build
build:
	docker build -t streamlit .

.PHONY: start
start:
	docker compose up -d

.PHONY: stop
stop:
	docker compose down -v

.PHONY: create-password
create-password:
	sudo htpasswd -c .htpasswd $(username)