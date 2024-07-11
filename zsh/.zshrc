# JDKs
# https://sap.github.io/SapMachine/
export JDK_21=sapmachine-jdk-21.0.3
export JDK_22=sapmachine-jdk-22.0.1

# Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/$JDK_22/Contents/Home
export PATH=$PATH:$JAVA_HOME

# Android
# https://developer.android.com/tools
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Gradle
alias gradlec="rm -rf $HOME/.gradle/caches"
alias gradlek="gradle --stop"
alias gradles="gradle --status"
alias gwk="./gradlew --stop"
alias gws="./gradle --status"
alias gw="./gradlew"

# Git
alias gl="git log --oneline --graph --all"
alias gs="git status -s"
alias gp="git push"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -a -m"

# Terraform
alias tf="terraform"
alias tfi="terraform init"
alias tfa="terraform apply -auto-approve"
alias tfd="terraform destroy"

# Misc
alias ..="cd .."
alias ...="cd ../.."
alias l="ls -l -G"
alias la="ls -la -G"
alias path="echo -e ${PATH//:/\\n}"
