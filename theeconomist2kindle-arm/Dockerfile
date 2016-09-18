# alvaroreig/theeconomist2kindle-arm

FROM alvaroreig/calibre4raspbian
MAINTAINER Alvaro Reig "alvaroreig@gmail.com"

COPY the_economist_to_kindle.sh the_economist_to_kindle.sh

# Assuming that the env vars are passed on runtime, this command sends Pocket's content to Kindle.
ENTRYPOINT /bin/bash the_economist_to_kindle.sh
