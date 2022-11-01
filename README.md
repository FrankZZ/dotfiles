# dotfiles

The name says it all... ;-)

## Loading .dotfiles

1. Clone this repository into your home directory under the folder `.dotfiles`

    Via HTTPS
    ```bash
    git clone https://github.com/FrankZZ/dotfiles.git ~/.dotfiles
    ```

    Via SSH
    ```bash
    git clone git@github.com:FrankZZ/dotfiles.git ~/.dotfiles
    ```

2. Change the contents of `~/.zshrc` to:

    ```bash
    for file in ~/.dotfiles/.*; do
        source "$file"
    done
    ```
