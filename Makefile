.PHONY: setup

setup:
	cp .bash_profile ~/.bash_profile
	cp .czrc ~/.czrc
	cp .cz-config.js ~/.cz-config.js
	cp .git-completion.bash ~/.git-completion.bash
	cp .git-prompt.sh ~/.git-prompt.sh
	cp .vimrc ~/.vimrc
	cp .gvimrc ~/.gvimrc
	git config --global ghq.root ~/go/src
	cd && git clone git@github.com:b4b4r07/enhancd.git
	source ~/.bash_profile
	nvm install --lts
	curl https://sh.rustup.rs -sSf | sh
	apm install sync-settings
	code --install-extension shan.code-settings-sync #事前に Shift + Command + p の shellのパス通す
	npm install -g commitizen cz-conventional-changelog cz-customizable @fabiospampinato/bump
