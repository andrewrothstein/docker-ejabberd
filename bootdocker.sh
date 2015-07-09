#!/bin/bash

docker run -d \
       --name "ejabberd" \
       -p 5222:5222 \
       -p 5269:5269 \
       -p 5280:5280 \
       -h 'localhost' \
       -e "XMPP_DOMAIN=localhost" \
       -e "ERLANG_NODE=ejabberd" \
       -e "EJABBERD_ADMIN=arothste@localhost" \
       rroemhild/ejabberd

docker exec -ti ejabberd ejabberdctl register arothste localhost password1234
docker exec -ti ejabberd ejabberdctl register billybob localhost password1234
