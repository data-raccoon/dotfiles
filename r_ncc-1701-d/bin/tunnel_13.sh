#!/bin/bash
autossh -n -f -L 5432:localhost:5432 server13 sleep 99999

