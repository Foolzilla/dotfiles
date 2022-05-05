case $- in
  *i*) ;;
    *) return;;
esac

alias cpugetavail='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_available_governors'
alias cpushowcurrent='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias cpusethigh='echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias kp='killall picom'
alias code='codium'
alias ls='ls --color=auto'
alias sup='sh $HOME/scripts/speedup'
alias config='/usr/bin/git --git-dir=/home/mohit/.cfg/ --work-tree=/home/mohit'
alias vim='nvim'

set +o noclobber

# export PS1="\[\e[1;31m\]\w\[\e[m\]\[\e[1;32m\] ⇨ \[\e[m\] "
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
. "$HOME/.cargo/env"

# shopt -s autocd
# sh $HOME/scripts/ufetch
eval "$(starship init bash)"
