# Meant for testing registrator versions. You can start v6 or v7
# here. and then do things like:

# make test-v6
# nc localhost 8080
# docker-compose stop simple-rack

# and watch the order of events in the docker-compose logs. v6 will do
# "the right thing" and deregister on the stop command, while v7 will
# wait until the container dies.

test-v6:
	VERSION=6 docker-compose up

test-v7:
	VERSION=8 docker-compose up
