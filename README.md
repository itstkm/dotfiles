# dotfiles

My personal config files for macOS, managed with [GNU Stow](https://www.gnu.org/software/stow/).

> **Heads up**: These are my personal settings. Don't just copy everything — look through them and grab what works for you.

## What's Included

| Package | Description |
|---------|-------------|
| **wezterm** | Terminal (WezTerm) config & keybindings |
| **shell** | zsh setup (aliases, PATH, etc.) |
| **starship** | Prompt theme (Starship) |
| **nvim** | Neovim config powered by [LazyVim](https://www.lazyvim.org/) |
| **Brewfile** | Homebrew dependencies (`brew bundle`) |
| **docs** | Cheat sheets for WezTerm, Neovim, etc. |

## What You Need

- macOS
- [Homebrew](https://brew.sh/)
- [GNU Stow](https://www.gnu.org/software/stow/) (`brew install stow`)

## File Structure

```
dotfiles/
├── wezterm/
│   └── .config/
│       └── wezterm/
│           ├── wezterm.lua       # Main config
│           └── keybinds.lua      # Keybindings
├── shell/
│   └── .zshrc                    # zsh config
├── starship/
│   └── .config/
│       └── starship.toml         # Prompt config
├── nvim/
│   └── .config/
│       └── nvim/                 # LazyVim config
├── docs/                         # Operation manuals
├── Brewfile                      # Homebrew dependencies
├── Makefile                      # Common commands
```

## How to Use

```bash
# Link a package to your home directory
stow -t ~ <package>

# Remove the link
stow -t ~ -D <package>

# Update Brewfile with currently installed tools
make brew-dump

# Install everything from Brewfile
make brew-install

# Link all packages at once
make stow
```
