#!/bin/sh

curl "wttr.in/?format=2" -s | sed "s/$(echo -ne '\ufe0f')//g"
