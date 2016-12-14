## Navigation shortcuts ##
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias root='sudo -i'
alias mkdir='mkdir -pv' 							# create parent directories
alias edit='emacs'
alias fhere='find . -name'
alias wget='wget -c'

## System information ##
alias diskinfo='pydf -H'
alias df='pydf'
alias meminfo='free -ltm'
alias mempr='ps auxf | sort nr -k 4 | head -10' 	# process with most RAM usage
alias cpupr='ps auxf | sort -nr -k 3 | head -10'	# process with most CPU usage
alias now='date +"%T"'
alias ps='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'

## Software installation ##
alias apt='sudo apt-get'

## Command colorization ##
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## Network commands ##
alias weather='curl http://wttr.in/Edmonton'
alias moon='curl http://wttr.in/Moon'
alias ping='ping -c 5'								# restrict echo requests
alias myip='curl http://ipecho.net/plain; echo'		# show public IP