# Scope Volume Count Plugin

The Scope Volume Count plugin is a Python application that asks docker for the the number of mounted volumes for each container, providing **container-level** count in the [Weave Scope](https://github.com/weaveworks/scope) UI.

## How to Run Scope Volume Count Plugin

* Using a pre-built Docker image

If you want to make sure of running the latest available version of the plugin, you pull the image from docker hub.

```
docker pull weaveworksplugins/scope-volume-count:latest
```

To run the Scope Volume Count plugin you just need to run the following command.

```
docker run --rm -ti \
	--net=host \
	-v /var/run/scope/plugins:/var/run/scope/plugins \
	--name weaveworksplugins-scope-volume-count weaveworksplugins/scope-volume-count:latest
```

* Recompiling an image

```
git clone git@github.com:weaveworks-plugins/scope-volume-count.git
cd scope-volume-count; make;
```

**Note** If Scope Volume Count plugin has been registered by Scope, you will see it in the list of `PLUGINS` in the bottom right of the UI (see the rectangle in the above figure).
The measured value is showed in the *STATUS* section (see the circle in the above figure).

## Getting Help

We love hearing from you and encourage you to join our community. For more
information on how to get help or get in touch, see [Scope's help
section](https://github.com/weaveworks/scope/#help).
