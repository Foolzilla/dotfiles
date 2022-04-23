case $- in
  *i*) ;;
    *) return;;
esac

alias cpugetavail='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_available_governors'
alias cpushowcurrent='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias cpusethigh='echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias killpicom='killall picom'
alias code='codium'
alias ls='ls --color=auto'

set +o noclobber

# export PS1="\[\e[31m\]\w ⇨ \[\e[m\] "
export PS1="\[\e[1;31m\]\w\[\e[m\]\[\e[1;32m\] ⇨ \[\e[m\] "
export ANDROID_HOME=/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

sh $HOME/scripts/ufetch
alias config='/usr/bin/git --git-dir=/home/mohit/.cfg/ --work-tree=/home/mohit'
