#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  tmux set -g @TMUX_NESTED_SESSION_PLUGIN_DIR "$CURRENT_DIR"

  if [ -z ${SSH_CLIENT+x} ]; then
    tmux source-file "${CURRENT_DIR}"/local/tmux.conf
  else
    tmux source-file "${CURRENT_DIR}"/remote/tmux.conf
  fi
}

main
