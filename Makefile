# change this to the name of your app if you'd like
app_name = elixir-docker-dev-minimal

build:
	docker build -t $(app_name) .

shell:
	docker run \
		--interactive \
		--tty \
		--volume ${PWD}:/opt/app \
		$(app_name) /bin/bash
