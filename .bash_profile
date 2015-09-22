# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

# tmux
/usr/bin/which tmux > /dev/null
if [ $? == 0 ]; then
  if [ "$TERM" != 'screen-256color' ]; then
    tmux attach-session -t "$USER" || tmux new-session -s "$USER"
  fi
fi
