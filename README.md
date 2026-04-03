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

## Getting Started

1. Install [Homebrew](https://brew.sh/)
2. Clone this repo
3. Install all tools from Brewfile
4. Link all config files

```bash
# 1. Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Clone
git clone https://github.com/<your-username>/dotfiles.git <your-path>
cd <your-path>

# 3. Install tools (includes stow, neovim, wezterm, starship, etc.)
make brew-install

# 4. Link config files
make stow
```

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

## Useful Commands

```bash
# Update Brewfile with currently installed tools
make brew-dump

# Link a single package
stow -t ~ <package>

# Remove a link
stow -t ~ -D <package>
```
