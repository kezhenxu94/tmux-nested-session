#!/usr/bin/env bash

if tmux list-clients > /dev/null 2>&1; then
  tmux set -g -u prefix
  tmux set -g -u key-table
  tmux set -g -u status
  tmux refresh-client -S
fi
