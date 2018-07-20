CACHE_FOLDER="${HOME}/Library/Caches"
PROJECT=${HOME}/Documents/dev/github/hoaproject/Math

hoa:
	docker run -it -v ${CACHE_FOLDER}:/srv/cache -v ${PROJECT}:/root/project hoa sh

build:
	docker build -t hoa .
