# Tmux Nested Sessions

This is a plugin inspired by [@samoshkin](https://github.com/samoshkin)'s
[Tmux config](https://github.com/samoshkin/tmux-config), with some enhancements.

## Install

Add the plugin to your Tmux plugin list:

```conf
# ... other configurations

set -g @plugin 'kezhenxu94/tmux-nested-session'

# ... other configurations

run '~/.tmux/plugins/tpm/tpm'
```

and use `<prefix>I` to install the plugin.

> NOTE: make sure to install the plugin in both local and remote machines.

## Usage

- Open `tmux` in your local machine.
- Inside the local `tmux` pane, `ssh` to a remote machine.
- The keymaps and status bar of the remote `tmux` session are disabled by
  default now.
- Press `<F2>` to disable the keymaps and status bar of the local session, and
  enable the same of the remote session.
- Press `<F2>` again to enable the keymaps and status bar of the local session,
  and disable the same of the remote session.

