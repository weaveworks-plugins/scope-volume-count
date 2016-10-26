.PHONY: run clean

SUDO=$(shell docker info >/dev/null 2>&1 || echo "sudo -E")
EXE=volume-count.py
ORGANIZATION=weaveworksplugins
IMAGE=$(ORGANIZATION)/scope-volume-count
NAME=$(ORGANIZATION)-scope-volume-count
UPTODATE=.volume-count.uptodate

run: $(UPTODATE)
	$(SUDO) docker run --rm -it \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v /var/run/scope/plugins:/var/run/scope/plugins \
		--name $(NAME) $(IMAGE)

$(UPTODATE): $(EXE) Dockerfile
	$(SUDO) docker build -t $(IMAGE) .
	touch $@

clean:
	- rm -rf $(UPTODATE)
	- $(SUDO) docker rmi $(IMAGE)
