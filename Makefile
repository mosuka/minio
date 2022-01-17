TAG ?= RELEASE.2022-01-08T03-11-54Z

.PHONY: docker-build
docker-build:
	@echo ">> building docker container image"
	docker build -t mosuka/minio:latest --build-arg TAG=$(TAG) .
	docker tag mosuka/minio:latest mosuka/minio:$(TAG)

.PHONY: docker-push
docker-push:
	@echo ">> pushing docker container image"
	docker push mosuka/minio:latest
	docker push mosuka/minio:$(TAG)
