IMAGE = mherwig/alpine-java-mongo
all:

image:
	docker build -t $(IMAGE) --no-cache .

publish:
	docker push $(IMAGE)
