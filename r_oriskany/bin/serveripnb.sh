#!/bin/bash
SSH_AUTH_SOCK=0 ssh -L 8765:localhost:8765 stats-experimental
# howto: http://stats-experimental:port
