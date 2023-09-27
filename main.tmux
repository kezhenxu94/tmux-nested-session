#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  if [ -z ${SSH_CLIENT+x} ]; then
    tmux source-file ${CURRENT_DIR}/local/tmux.conf
  else
    tmux source-file ${CURRENT_DIR}/remote/tmux.conf
  fi
}

main
