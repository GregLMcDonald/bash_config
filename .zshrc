fpath+=("$(brew --prefix)/share/zsh/site-functions")

source /Users/greg/.docker/init-zsh.sh || true # Added by Docker Desktop
. /opt/homebrew/opt/asdf/libexec/asdf.sh


alias gs='git status'
alias dcd='docker compose down'
alias dcu='docker compose up'
alias dcrc='docker compose exec app rails c'
alias dcb='docker compose exec app bash'
alias la="ls -lah"
alias git-cleanup='git branch --merged staging | egrep -v "master|staging" | xargs git branch -d'
alias git-cleanup-drisk='git branch --merged master | egrep -v "master|production" | xargs git branch -d'
git-cleanup-remote() {
  git branch -r --merged staging | sed 's/origin\///' | egrep -v "master|staging" | xargs git push --delete origin
}


alias ssh-staging='ssh -i ~/.ssh/rumandcode-canada ubuntu@staging.rumandcode.io'
alias ssh-staging1='ssh -i ~/.ssh/rumandcode-canada ubuntu@staging-1.rumandcode.io'
alias ssh-cc-prod='ssh -i ~/.ssh/rumandcode-canada ec2-user@35.183.10.26'
alias ssh-cu-prod='ssh -i ~/.ssh/rumandcode ubuntu@ec2-34-230-86-62.compute-1.amazonaws.com'
alias ssh-bc-staging='ssh -i ~/.ssh/braincaz ubuntu@99.79.59.130'
alias ssh-bc-pilot='ssh -i ~/.ssh/braincaz ubuntu@pilot.braincaz.ca'
alias ssh-att-staging='ssh -i ~/.ssh/attractif ec2-user@52.60.207.154'
alias ssh-rc-projects='ssh -i ~/.ssh/rumandcode-canada ubuntu@projects.rumandcode.io'
alias xcsim='/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/Contents/MacOS/Simulator'
alias ssh-spbois-prod='ssh -i ~/.ssh/rumandcode-canada ubuntu@spboisprod.rumandcode.io'
alias ssh-gsl-prod='ssh -i ~/.ssh/rumandcode-canada ubuntu@apexgolf.rumandcode.io'
alias ssh-mab-prod='ssh -i ~/.ssh/rumandcode-canada ubuntu@jemaborne.rumandcode.io'
alias ssh-jbc-prod='ssh -i ~/.ssh/rumandcode-canada ubuntu@campanipol.rumandcode.io'
alias ssh-csq-fse-prod='ssh -i ~/.ssh/rumandcode-canada ubuntu@csq-timesheet-prod.rumandcode.io'
alias ssh-poc-ssm='ssh -i ~/.ssh/rumandcode-canada ubuntu@ec2-15-222-245-29.ca-central-1.compute.amazonaws.com'
alias ssh-tools='ssh -i ~/.ssh/rumandcode-canada ubuntu@tools.rumandcode.io'

alias cdrc='cd ~/Stuff/rum-and-code'

alias spbstart="doppler run --preserve-env --command './start.local.sh'"
alias custart="doppler run --preserve-env --command './start.local.sh'"
alias spbc="doppler run --preserve-env --command 'bin/rails c'"

eval "$(direnv hook zsh)"
export PATH="$(pyenv root)/shims:${PATH}"
export PATH="${HOME}/bash_config/bin:${PATH}"
# export KERL_CONFIGURE_OPTIONS="--disable-debug --disable-silent-rules --enable-dynamic-ssl-lib --enable-hipe --enable-shared-zlib --enable-smp-support --enable-threads --enable-wx --with-ssl=/opt/homebrew/opt/openssl@1.1 --without-javac --enable-darwin-64bit --enable-kernel-poll --with-dynamic-trace=dtrace"

function run_yanky() {
  pushd "$HOME/Stuff/rum-and-code/yanky" >/dev/null
  ./yanky
  popd >/dev/null
}
