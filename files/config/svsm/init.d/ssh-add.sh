#!/bin/bash

if ! ssh-add -l > /dev/null ; then
  ssh-add &
fi
