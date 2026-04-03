# Brewfileを最新の状態に更新する
brew-dump:
	brew bundle dump --describe --force --file=Brewfile

# Brewfileからツールをインストールする
brew-install:
	brew bundle --file=Brewfile

# 全パッケージのシンボリックリンクを作成する
stow:
	stow -t ~ wezterm shell starship nvim

# 全パッケージのシンボリックリンクを解除する
unstow:
	stow -t ~ -D wezterm shell starship nvim
