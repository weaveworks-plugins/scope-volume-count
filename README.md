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

- Read [the Weave Scope docs](https://www.weave.works/docs/scope/latest/introducing/).
- Invite yourself to the <a href="https://weaveworks.github.io/community-slack/" target="_blank">Weave community</a> slack.
- Ask a question on the [#scope](https://weave-community.slack.com/messages/scope/) slack channel.
- Join the [Weave User Group](https://www.meetup.com/pro/Weave/) and get invited to online talks, hands-on training and meetups in your area.
- Send an email to [Scope community group](https://groups.google.com/forum/#!forum/scope-community).
- Join (and read up on) the regular [Scope community meetings](https://docs.google.com/document/d/103_60TuEkfkhz_h2krrPJH8QOx-vRnPpbcCZqrddE1s/edit).
- [File an issue](https://github.com/weaveworks-plugins/scope-volume-count/issues/new).

Your feedback is always welcome!
