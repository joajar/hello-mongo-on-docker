# Use OpenJDK image as the base image
FROM openjdk:11

# Create a new app dir (inside container - not on my host machine) for my application files
# The RUN command executes commands for the docker image
RUN mkdir /app

# Copy the app files from host machine to image filesystem
# First agrument applies to the host machine, the second - to the image
COPY out/production/hello-mongo-on-docker /app

# Set the dir for executing future commands
WORKDIR /app

# Dockerfile must contain one CMD / ENTRYPOINT instruction specifying the fefault instruction for container
# Here - run Runner class when container starts:
# CMD + the command I would run if I was running my Runner class from the terminal,
# i.e. java Runner
CMD java Runner