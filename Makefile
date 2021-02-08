IMAGE=quay.io/tkdchen/simplewebapp:latest

.PHONY: image
image:
	@podman build -t $(IMAGE) -f Containerfile .

.PHONY: push
push:
	@podman push $(IMAGE)

.PHONY: run
run-app:
	@podman run --rm -p 5000:5000 -it $(IMAGE)
