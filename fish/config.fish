alias nv="nvim"
alias ctr="cd ~/react/talking24 && code . && gatsby develop"
alias tr="cd ~/react/talking24 && gatsby develop"
alias tn="cd  /home/avi/node/node-express-mongoose-passport-jwt-rest-api-auth && node app.js"
alias td="docker start mongodb"
alias ctn="cd  /home/avi/node/node-express-mongoose-passport-jwt-rest-api-auth && code . &&  node app.js"
alias bb="python3 /home/avi/black-bear-flask-api/black_bear_api/app/app.py"
alias rp="cd /home/avi/react-panda-frontend-2019-jan && code . && npm start"

alias fconf="nvim ~/.config/fish/config.fish"
alias nconf="nvim ~/.config/nvim/init.vim"
alias g='git'
#compdef g=git
alias gst='git status'
#compdef _git gst=git-status
alias gd='git diff'
#compdef _git gd=git-diff
alias gdc='git diff --cached'
#compdef _git gdc=git-diff
alias gl='git pull'
#compdef _git gl=git-pull
alias gup='git pull --rebase'
#compdef _git gup=git-fetch
alias gp='git push'
#compdef _git gp=git-push
alias gd='git diff'
alias gpu='git push -u origin HEAD'
alias fes="cd ~/FEServer/ && make run"
function gdv
  git diff -w $argv | view -
end

#compdef _git gdv=git-diff
alias gc='git commit -v'
#compdef _git gc=git-commit
alias gc!='git commit -v --amend'
#compdef _git gc!=git-commit
alias gca='git commit -v -a'
#compdef _git gc=git-commit
alias gca!='git commit -v -a --amend'
#compdef _git gca!=git-commit
alias gcmsg='git commit -m'
#compdef _git gcmsg=git-commit
alias gco='git checkout'
#compdef _git gco=git-checkout
alias gcm='git checkout master'
alias gr='git remote'
#compdef _git gr=git-remote
alias grv='git remote -v'
#compdef _git grv=git-remote
alias grmv='git remote rename'
#compdef _git grmv=git-remote
alias grrm='git remote remove'
#compdef _git grrm=git-remote
alias grset='git remote set-url'
#compdef _git grset=git-remote
alias grup='git remote update'
#compdef _git grset=git-remote
alias grbi='git rebase -i'
#compdef _git grbi=git-rebase
alias grbc='git rebase --continue'
#compdef _git grbc=git-rebase
alias grba='git rebase --abort'
#compdef _git grba=git-rebase
alias gb='git branch'
#compdef _git gb=git-branch
alias gba='git branch -a'
#compdef _git gba=git-branch
alias gcount='git shortlog -sn'
#compdef gcount=git
alias gcl='git config --list'
alias gcp='git cherry-pick'
#compdef _git gcp=git-cherry-pick
alias glg='git log --stat --max-count=10'
#compdef _git glg=git-log
alias glgg='git log --graph --max-count=10'
#compdef _git glgg=git-log
alias glgga='git log --graph --decorate --all'
#compdef _git glgga=git-log
alias glo='git log --oneline'
#compdef _git glo=git-log
alias gss='git status -s'
#compdef _git gss=git-status
alias ga='git add'
#compdef _git ga=git-add
alias gm='git merge'
#compdef _git gm=git-merge
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gclean='git reset --hard; and git clean -dfx'
alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

#remove the gf alias
#alias gf='git ls-files | grep'

alias gpoat='git push origin --all; and git push origin --tags'
alias gmt='git mergetool --no-prompt'
#compdef _git gm=git-mergetool

alias gg='git gui citool'
alias gga='git gui citool --amend'
alias gk='gitk --all --branches'

alias gsts='git stash show --text'
alias gsta='git stash'
alias gstp='git stash pop'
alias gstd='git stash drop'

# Will cd into the top of the current repository
# or submodule.
alias grt='cd (git rev-parse --show-toplevel; or echo ".")'

# Git and svn mix
alias git-svn-dcommit-push='git svn dcommit; and git push github master:svntrunk'
#compdef git-svn-dcommit-push=git

alias gsr='git svn rebase'
alias gsd='git svn dcommit'
#
# Will return the current branch name
# Usage example: git pull origin $(current_branch)
#
function current_branch
  set ref (git symbolic-ref HEAD 2> /dev/null); or \
  set ref (git rev-parse --short HEAD 2> /dev/null); or return
  echo ref | sed s-refs/heads--
end

function current_repository
  set ref (git symbolic-ref HEAD 2> /dev/null); or \
  set ref (git rev-parse --short HEAD 2> /dev/null); or return
  echo (git remote -v | cut -d':' -f 2)
end

# these aliases take advantage of the previous function
alias ggpull='git pull origin (current_branch)'
#compdef ggpull=git
alias ggpur='git pull --rebase origin (current_branch)'
#compdef ggpur=git
alias ggpush='git push origin (current_branch)'
#compdef ggpush=git
alias ggpnp='git pull origin (current_branch); and git push origin (current_branch)'
#compdef ggpnp=git

# Pretty log messages
function _git_log_prettily
  if ! [ -z $1 ]; then
    git log --pretty=$1
  end
end

alias glp="_git_log_prettily"
#compdef _git glp=git-log

# Work In Progress (wip)
# These features allow to pause a branch development and switch to another one (wip)
# When you want to go back to work, just unwip it
#
# This function return a warning if the current branch is a wip
function work_in_progress
  if git log -n 1 | grep -q -c wip; then
    echo "WIP!!"
  end
end
alias kabop="code ~/k-avaana-borrower-portal && code . && npm start"
alias kabp="code ~/k-avaana-blueprints "

alias tor="cd /home/avi/Downloads/tor-browser-linux64-9.0.7_en-US/tor-browser_en-US/ && ./start-tor-browser.desktop"
# these alias commit and uncomit wip branches
alias gwip='git add -A; git ls-files --deleted -z | xargs -0 git rm; git commit -m "wip"'
alias gunwip='git log -n 1 | grep -q -c wip; and git reset HEAD~1'
alias c="clear"
alias cdpc="cd /home/avi/project-c"
alias i3c="vim ~/.config/i3/config"
alias bear="cd ~/bear-front-end-2020/ && code . &&  npm start"
alias bp="code ~/.blueprints"
alias bac="code ~/k-back-office-portal"
alias bacs="cd ~/k-back-office-portal && code . && npm start"
alias jcc="cd /home/avi/projects/jira_clone/client && code . && npm start"
alias jca="cd /home/avi/projects/jira_clone/api && code . && npm start"
alias pf="cd ~/self-learning-helper"
alias pfs="cd ~/self-learning-helper && code .  && yarn run dev"
export ETCDCTL_API=3
export ETCD_VER=v3.4.1
export ETCDCTL_ENDPOINTS=etcd:2379
export ETCDCTL_CERT=$HOME/.certs/cert.pem
export ETCDCTL_CACERT=$HOME/.certs/bundle.pem
export ETCDCTL_KEY=$HOME/.certs/key.pem
export ANDROID_SDK_ROOT="/home/avi/android_sdk"
export ANDROID_HOME="/home/avi/android_sdk"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export AWS_DEFAULT_REGION="us-east-2"
export AWS_ACCESS_KEY_ID="AKIAZ2GQTRBUFJFPPVSW"
export AWS_SECRET_ACCESS_KEY="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"
export PATH="$PATH:$ANDROID_SDK_ROOT"
export PATH="$PATH:/home/$USER/.config/nvim/utils/bin"
export PATH="$PATH:/home/$USER/.cargo/bin"
export PATH="$ANDROID_HOME/emulator:$PATH"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/tools/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="/snap/bin:$PATH"
export PATH="~/.local/bin:$PATH"

alias gmo="cd ~/Desktop/genymotion && sudo ./genymotion"
alias sl-avaana="rm -f ~/.kctl.yaml && ln -s ~/Projects/bitbucket.org/sisforce/k-avaana-blueprints/.kctl.yaml ~/.kctl.yaml"
alias sl-forwardline="rm -f ~/.kctl.yaml && ln -s ~/forwardline/k-forwardline-blueprints/.kctl.yaml ~/.kctl.yaml"
alias sl-dealshare="rm -f ~/.kctl.yaml && ln -s ~/blueprints/.kctl.yaml ~/.kctl.yaml"
alias klp="k logs plugins -s"
alias klt="k logs tark -s"
alias fbo="cd ~/k-forwardline-borrower-portal && code . "
alias fbb="cd ~/forwardline/k-forwardline-backoffice-portal && code . "
alias fbp="cd ~/Projects/bitbucket.org/sisforce/k-forwardline-blueprints/  && code . "
alias kup="cd ~/.k-workspace && docker-compose up rabbitmq -d && docker-compose up -d"
alias ka="kctl apply --context local"
alias cfbo="cd ~/forwardline/k-forwardline-borrower-portal  "
alias cfbb="cd ~/forwardline/k-forwardline-backoffice-portal  "
alias cfbp="cd ~/Projects/bitbucket.org/sisforce/k-forwardline-blueprints/   "

alias dcu="docker-compose up -d"
alias dps="docker-compose ps"

function etcdf
  etcdctl put services/darbaan/domains "{"localhost:8000": "forwardline","172.21.0.88:8000": "forwardline","127.0.0.1:8000": "forwardline","39a55d80b534.ngrok.io": "forwardline"}"
end
function kboot
 k bootstrap
 kup
 cfbp
 ka

end
function start
  eval $argv[1] && npm run $argv[2]
end
function gac
  git add . && git commit -m $argv[1]
end
function pull
  eval $argv[1] && gp
end
function pullall
  cfbo && gl
  cfbp && gl
  cfbb && gl
  cd ~

end
alias gm1="cd /media/avi/51483976-46fd-47b1-baf7-019e2a07feb5/home/avinash/godots/circle_jump/ && godot project.godot"
alias cconf="vim ~/.config/compton.conf"

alias adb="cd /home/avi/android_sdk/platform-tools/ "
alias t="tmuxinator"
alias ts="tmuxinator start"

alias ktl="kubectl"
#alias k="kubectl"

alias kgd="kubectl get deployments"
alias kgn="kubectl get nodes"
alias kgp="kubectl get pods"
alias kgs="kubectl get services"

alias kdd="kubectl describe deployment"
alias kdn="kubectl describe node"
alias kdp="kubectl describe pod"
alias kds="kubectl describe service"


# configs
alias pconf="nvim ~/.config/picom/picom.conf"
alias bconf="nvim ~/.config/bspwm/bspwmrc"
alias sconf="nvim ~/.config/sxhkd/sxhkdrc"

alias nd="npm run dev"
alias ns="npm start"

alias pomo="./go/bin/pomodoro"
alias ps="./go/bin/pomodoro start"
alias pst="./go/bin/pomodoro finish"
alias pc="./go/bin/pomodoro status"
alias pb="./go/bin/pomodoro break"
alias ph="./go/bin/pomodoro history"


function nvm
      bass source ~/.nvm/nvm.sh ';' nvm $argv
end




