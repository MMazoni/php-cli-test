BASEDIR=$(CURDIR)
APPDIR=$(BASEDIR)/app
ARG=


help:
	@echo 'Makefile for ASPTest                                                      '
	@echo '                                                                          '
	@echo 'Usage:                                                                    '
	@echo '   make permissions          give permissions on files create by docker   '
	@echo '   make docker-exec     send ARG to make docker exec with php-fm container'
	@echo '   make docker-up                         up the docker-compose containers'
	@echo '   make docker-down                     down the docker-compose containers'
	@echo '                                                                          '

permissions:
	sudo chown -R ${USER}:${USER} $(APPDIR)

docker-exec:
	cd $(APPDIR)
	docker exec php-cli-test_php-fpm_1 $(ARG)

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

.PHONY: permissions docker-exec docker-up docker-down