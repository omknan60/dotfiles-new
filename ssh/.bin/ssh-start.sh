#! /bin/bash

eval "$(ssh-agent -s)"
exec ssh-add ~/.ssh/omkar
