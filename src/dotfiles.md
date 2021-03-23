# Dotfiles

Dotfiles can be managed with git and stow. Stow creates links into the target directory, so that under each package you `stow` you create files with the hierarchy they should have below `$HOME`:

```
dotfiles/
  bash/.bashrc
```

and running: `stow -t ~ bash` from within `dotfiles` will link `.bashrc` to `~/.bashrc` (unless it already exists, like it usually does).

