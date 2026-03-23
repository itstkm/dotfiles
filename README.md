# dotfiles

My personal config files for macOS, managed with [GNU Stow](https://www.gnu.org/software/stow/).

> **Heads up**: These are my personal settings. Don't blindly copy them — read through and cherry-pick what works for you.

## What's Included

| Package | Description |
|---------|-------------|
| **wezterm** | Terminal (WezTerm) config & keybindings |
| **shell** | zsh setup (aliases, PATH, etc.) |
| **starship** | Prompt theme (Starship) |

## Prerequisites

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
```

## Managing Packages

```bash
# Symlink a package
stow -t ~ <package>

# Unlink a package
stow -t ~ -D <package>
```
