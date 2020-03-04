export ZSH="/Users/kurnakov/.oh-my-zsh"
export PATH=/Users/kurnakov/Library/Android/sdk/platform-tools:$PATH


ZSH_THEME="wezm"

plugins=(
  git
  npm
  zsh-autosuggestions
)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# oh my zsh
source $ZSH/oh-my-zsh.sh
## z-plugin
. /Users/kurnakov/.oh-my-zsh/plugins/z/z.sh

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# aliases [common]
alias snapp='TARGET=dev4 LOCAL=true ENV=app-dev3 npm start'

# aliases [git]
diff-commits () {
  git rev-list --count $1 ^origin/$2
}
alias git-unstage='git reset HEAD -- .'
alias gcd='git checkout develop'
alias gpf='git push -f'
alias grflg='git reflog'
alias gcrb='git branch | grep \* | cut -d ' ' -f2'
alias gfgrb='git fetch origin develop; git rebase -m origin/develop'

# aliases [js]
jest-pattern () {
  yarn run jest --testPathPattern="$1" --watch
}
alias yn='yarn'
alias yjs='yarn jsfiller'
alias ysn='~/scripts/startSnfiller'

alias yt='yarn test'
alias yl='yarn lint'

# aliases [python]
alias python='python3'
alias pip='pip3'


# aliases [perfomance]
alias dock-on='sudo defaults write com.apple.dashboard mcx-disabled -boolean NO && sudo killall Dock'
alias dock-off='sudo defaults write com.apple.dashboard mcx-disabled -boolean YES && sudo killall Dock'

alias notificationc-on='sudo launchctl load -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist && sudo reboot'
alias notificationc-off='sudo launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist && sudo reboot'

# aliases [chrome]
alias open-debug-chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222'
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
