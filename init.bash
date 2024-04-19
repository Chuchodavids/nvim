#install brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# download nerd-fonts
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hermit.zip -O ~/Downloads/Hermit.zip

# brew tools
brew install git-delta lazygit npm dog bat k9s kubectl terraform starship iterm2

# git-delta
# TODO check if this has been added first
cat <<EOF >>~/.gitconfig
[alias]
  tags = tag -n99
  logs = log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'
  logz = log --pretty='%(describe:tags=true,abbrev=0)' | uniq | head -n 10
	co = checkout
	cm = commit -m
	pulll = pull --autostash
	blamee = blame -w -C -C -C

[core]
  editor = nvim
  pager = delta

[user]
	name = jesus

[rebase]
	autoStash = true

[rerere]
	enabled = true
	autoUpdate = true

[branch]
  sort = -committerdate

[core]
pager = delta

[interactive]
diffFilter = delta --color-only --diff-so-fancy

[delta]
navigate = true # use n and N to move between diff sections

[merge]
conflictstyle = diff3

[diff]
colorMoved = default
EOF

cat ~/Library/Application Support/lazygit/config.yml

# lazygit config
echo <<EOF >>~/Library/Application
gui:
  nerdFontsVersion: "3"
  git:
    paging:
      colorArg: always
      pager: delta --dark --paging=never --diff-so-fancy
EOF
