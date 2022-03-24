#!/bin/sh

curl "wttr.in/?format=2" -s | sed 's/️//g'
