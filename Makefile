# base docker-compose makefile

include .env

.PHONY: up

validate :
	docker-compose config

build : validate
	docker-compose build

