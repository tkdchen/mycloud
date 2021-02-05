.PHONY: image
image:
	podman build -t quay.io/tkdchen/simplewebapp:latest -f Containerfile .
