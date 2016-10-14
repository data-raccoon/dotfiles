#!/bin/bash
#SSH_AUTH_SOCK=0 ssh -R 4790:localhost:22 ext@unibiz.dyndns.biz "sleep 1740"
sleep 10
SSH_AUTH_SOCK=0 ssh -R 4790:localhost:22 ext@stev.lostpackets.de "sleep 1740"

# howto: tunnel nach "oben"
# ssh -p 4790 benutzer@localhost

