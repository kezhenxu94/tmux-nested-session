#!/usr/bin/env bash

tmux set -g -u prefix
tmux set -g -u key-table
tmux set -g -u status
tmux refresh-client -S
