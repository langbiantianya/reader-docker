download:
	wget https://github.com/hectorqin/reader/releases/download/v3.2.10/reader-pro-3.2.10.jar -O reader.jar

build:
	docker build -t langbiantianya/reader:openj9-21-latest .

# docker run -d --restart=always --name=reader -e "SPRING_PROFILES_ACTIVE=prod" -v $(pwd)/logs:/logs -v $(pwd)/storage:/storage -p 8080:8080 reader:openj9-21-latest
run:
	docker run -d --restart=always --name=reader -e "SPRING_PROFILES_ACTIVE=prod" -p 8080:8080 langbiantianya/reader:openj9-21-latest