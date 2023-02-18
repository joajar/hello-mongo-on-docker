# Hello(ł) Mongo(ł) on Docker

![GitHub last commit](https://img.shields.io/github/last-commit/joajar/hello-mongo-on-docker)

Below I put some notes from my learning Mongo DB process.
Subsequent stages of work are documented in <strong>reverse chronological order</strong> below
and by means of branches with appropriate numbers in its names.

(1) https://www.youtube.com/watch?v=FzwIs2jMESM

At first, build possibly the simplest Java app without installing Java but by means of Docker.

To build a docker image defined in Dockerfile, you need to run in your terminal the command as below.
The dot means the location of Dockerfile (its path):
`docker build -t hello-docker:1.0 .`

To see the list of local Docker images, run:
`docker images`

To instantiate created Docker image, i.e. create a Docker container, and run it, run:
`docker run hello-docker:1.0`

To see all running and stopped containers (our container hello-docker:1.0 is stopped immediately after its creation), run:
`docker ps -a`

Attention: to avoid java.lang.UnsupportedClassVersionError, carefully choose appropriate
Java version (e.g. by sdk) and SDK at Project Settings -> Project in Intellij IDEA.