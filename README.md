# envoy-DDAgent-test-env
A simple test environment to get Envoy setup on Docker

Setup follows documentation here - https://www.envoyproxy.io/docs/envoy/latest/start/start

Autodiscovery Labels for Docker DDAgent is already added as part of Dockerfile

Build the Docker image that runs your configuration using:

$ docker build -t envoy:v1 .

And now you can execute it with:

$ docker run -d --name envoy -p 8001:8001 -p 10000:10000 envoy:v1

And finally, test it using:

$ curl -v localhost:10000

Publishing port 8001:8001 opens access to the administrative server in order to pull metrics.

Publishing port 10000:10000 opens access to the static resources that come with default configuration

