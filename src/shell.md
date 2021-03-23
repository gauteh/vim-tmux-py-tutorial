# Setting up the shell

miniconda3 should now be present in `.bashrc` as part of the [requirements](requirements.md) section.

## Useful aliases

Add to `.bashrc`:

```sh
alias stow='stow -t ~' # target for stow is home directory
```

## Bonus: Fancy prompt

Install [starship.rs](https://starship.rs/).

## Example .bashrc

```sh
{{#include ../bash/.bashrc }}
```

