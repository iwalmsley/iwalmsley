SHELL := /bin/bash

.PHONY: tools shell-tools dev-tools k8s-tools

tools: shell-tools dev-tools k8s-tools

shell-tools:
	@echo "Installing shell and terminal tools..."
	sudo apt-get update
	sudo apt-get install -y zsh tmux fzf direnv htop
	cp .zshrc ~/
	@echo "Installing zoxide..."
	curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

dev-tools:
	@echo "Installing general developer tools..."
	sudo apt-get update
	sudo apt-get install -y vim jq
	@echo "Installing nvm..."
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
	@echo "nvm installed. Add the following to your shell config if needed:"
	@echo 'export NVM_DIR="$$([ -z "$${XDG_CONFIG_HOME-}" ] && printf %s "$${HOME}/.nvm" || printf %s "$${XDG_CONFIG_HOME}/nvm")"'
	@echo '[ -s "$$NVM_DIR/nvm.sh" ] && \. "$$NVM_DIR/nvm.sh" # This loads nvm'

	@echo "Installing uv..."
	curl -LsSf https://astral.sh/uv/install.sh | sh
	@echo "Ensure ~/.cargo/bin is in your PATH to use uv"

	@echo "Installing vim-plug..."
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	@echo "Installing vim plugins..."
	cp .vimrc ~/
	vim +PlugInstall +qall

	@echo "Installing Oh My Zsh..."
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true

k8s-tools:
	@echo "Installing Kubernetes tools..."
	curl -LO "https://dl.k8s.io/release/$$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
	chmod +x kubectl
	sudo mv kubectl /usr/local/bin/

	@echo "Installing k9s..."
	curl -Lo k9s.tar.gz https://github.com/derailed/k9s/releases/latest/download/k9s_Linux_amd64.tar.gz
	tar -xzf k9s.tar.gz k9s
	sudo mv k9s /usr/local/bin/
	rm k9s.tar.gz

