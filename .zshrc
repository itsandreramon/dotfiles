# java
export JAVA_HOME="$HOME/.sdkman/candidates/java/current"
export PATH="$JAVA_HOME/bin:$PATH"

# android
# https://developer.android.com/tools
# https://developer.android.com/studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

alias sdku="sdkmanager --update"
alias sdkl="sdkmanager --list_installed"

# homebrew
alias update="brew update; brew upgrade; brew cleanup"

# gradle
alias gradlec="rm -rf $HOME/.gradle/caches"
alias gradlek="gradle --stop"
alias gradles="gradle --status"
alias gradlev="gradle --version"
alias gwk="./gradlew --stop"
alias gws="./gradlew --status"
alias gwv="./gradlew --version"
alias gw="./gradlew"

# git
alias gl="git log --oneline --graph --all"
alias gs="git status -s"
alias gp="git push"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -a -m"

# claude
alias cc="curl -fsSL https://claude.ai/install.sh | bash; claude --dangerously-skip-permissions"

# opencode
alias oc="curl -fsSL https://opencode.ai/install | bash; opencode"

# docker
alias dps="docker container ps"
alias dls="docker image ls"

# misc
alias ..="cd .."
alias ...="cd ../.."
alias l="ls -lF -G"
alias la="ls -laF -G"
alias path="echo $PATH | tr ':' '\n'"
alias dev="cd ~/Developer"
