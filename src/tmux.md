# Tmux

Tmux is a terminal multiplexer. It can split your terminal in panes (windows)
and tabs. And you can detach (send to background) the session and re-attach
to it later, so that it can run on a server even if you somehow loose the
connection. By using a common configuration on your machine and server you
will have exactly the same working environment both locally and remote.

This config also makes these things work:

* Shares clipboard with vim and system
* Moving between panes and vim-windows as if they are the same
* Use nested local and server tmux (<key>S-Up</key>)

## Configuring

Set up to use the suggested configuration:

```
cd dotfiles
stow tmux
```

Start tmux:

```
tmux
```

Install or update plugins:

```
C-a U
```

## Basic usage

The prefix is changed to `C-a` (as it used to be for `screen`).

In Tmux the splits are called panes, contratry to in vim where they are
called windows. In tmux windows are the tabs of vim.

### Moving around

Use `A-h/j/k/l`. Create new windows with `C-n`, move to next/previous window with: `A-n/A-p`.

Use `C-a-z` to zoom a window. `C-a` + `S-hjkl` to resize windows. `C-a Space` to cycle window layout.

### Copying / searching

To get to copy-mode: `C-a-ESC`. You can now search backwards with `/`, select visually with `V`, move around with `hjkl`. Use `Enter` to finish copying.

Pasting happens with `C-a-p`. The clipboard is shared between vim and tmux, so in vim you should be able to do: `"+p`.

To copy the text on the current line do: `C-a-y`, to copy the current directory `C-a-Y`.

### Refreshing environment

If you are working on a server and detach from the session there (closing laptop, disconnected from VPN) the ssh-agent and X forwarding will no longer work when you re-attach. This can be fixed by updating the environment in tmux:

```
C-a E
```

This will update all panes where there is a shell running (if you have vim or
a program open, you need to close it first to have the environment updated in
that pane).

## Bonus

### Sharing a session with someone else on the same server (insecure)

Note that this is insecure: anyone that can log into the same machine will have access to your account.

```sh
tmux -S /tmp/shrd new
chmod og+rwx /tmp/shrd
```

To attach to the shared screen do:

```sh
tmux -S /tmp/shrd a shared
```

