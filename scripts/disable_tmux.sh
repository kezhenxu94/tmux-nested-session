#!/usr/bin/env bash

if tmux list-clients > /dev/null 2>&1; then
  tmux set -g prefix None
  tmux set -g key-table off
  tmux set -g status off
  tmux refresh-client -S
fi
