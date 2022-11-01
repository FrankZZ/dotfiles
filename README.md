# dotfiles

The name says it all... ;-)

## Loading .dotfiles

Clone this repository into your home directory under the folder `.dotfiles`

Change the contents of `~/.zshrc` to:
```bash
for file in ~/.dotfiles/.*; do
    source "$file"
done
```
