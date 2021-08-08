# elixir-docker-dev-minimal

A nice, simple setup for Docker-based dev.

```console
$ make build
docker build -t elixir-docker-dev-minimal .
*Docker stuff*

$ make shell
docker run \
                --interactive \
                --tty \
                --volume /Users/yourusername/repos/elixir-docker-dev-minimal:/opt/app \
                elixir-docker-dev-minimal /bin/bash
running entrypoint.sh
ran entrypoint.sh
root@somehash:/opt/app#
```

## `Makefile` targets

- `build`: Build the Docker image. Will use the `app_name` variable at the top of the Makefile
- `shell`: Run the Docker container in interactive mode, mount the local directory (with read/write) to `/opt/app`, and start a shell session.
