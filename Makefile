default: docker_build

DOCKER_IMAGE ?= momenton/k8s-helm-push
VERSION ?= latest

docker_build:
	docker build \
	  --build-arg VCS_REF=`git rev-parse --short HEAD` \
	  --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
	  -t $(DOCKER_IMAGE):$(VERSION) .
	  
docker_push:
	docker push $(DOCKER_IMAGE):$(VERSION)

test:
	docker run $(DOCKER_IMAGE):$(VERSION) version --client
