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

## <a name="help"></a>Getting Help

If you have any questions about, feedback for or problems with `scope-volume-count`:

- Invite yourself to the <a href="https://weaveworks.github.io/community-slack/" target="_blank"> #weave-community </a> slack channel.
- Ask a question on the <a href="https://weave-community.slack.com/messages/general/"> #weave-community</a> slack channel.
- Send an email to <a href="mailto:weave-users@weave.works">weave-users@weave.works</a>
- <a href="https://github.com/weaveworks-plugins/scope-volume-count/issues/new">File an issue.</a>

Your feedback is always welcome!
