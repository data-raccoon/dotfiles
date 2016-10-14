#!/bin/bash
autossh -n -f -L 1711:localhost:5432 stats-experimental sleep 99999

