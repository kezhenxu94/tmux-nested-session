#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  if [ -z ${SSH_CLIENT+x} ]; then
    echo "SSH_CLIENT is not set" >> /tmp/ssh.log
  else
    echo "SSH_CLIENT is set" >> /tmp/ssh.log
    tmux source-file ${CURRENT_DIR}/remote/tmux.conf
  fi
}

main
