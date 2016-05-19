#!/bin/bash

[ -f ~/.synclientrc ] && synclient $(cat ~/.synclientrc) || true
