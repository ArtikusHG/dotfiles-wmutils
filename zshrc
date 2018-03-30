# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# Notifications
preexec () {
    # Note the date when the command started, in unix time.
    CMD_START_DATE=$(date +%s)
    # Store the command that we're running.
    CMD_NAME=$1
}
precmd () {
    # Proceed only if we've ran a command in the current shell.
    if ! [[ -z $CMD_START_DATE ]]; then
        # Note current date in unix time
        CMD_END_DATE=$(date +%s)
        # Store the difference between the last command start date vs. current date.
        CMD_ELAPSED_TIME=$(($CMD_END_DATE - $CMD_START_DATE))
        # Store an arbitrary threshold, in seconds.
        CMD_NOTIFY_THRESHOLD=29

        if [[ $CMD_ELAPSED_TIME -gt $CMD_NOTIFY_THRESHOLD ]]; then
            # Beep or visual bell if the elapsed time (in seconds) is greater than threshold
            print -n '\a'
            # Send a notification
            notify-send 'Job finished' "The job \"$CMD_NAME\" has finished."
        fi
    fi
}
# My stuff
PS1="[%d] "
alias lock=/home/artikus/i3lock-fancy/lock
alias b="cd .."
alias ls="ls --color"
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
PATH="$PATH:/home/artikus/.gem/ruby/2.5.0/bin"
