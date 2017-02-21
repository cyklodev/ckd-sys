#SYSTEM
alias ll='ls -lrt'
alias dfg='df -h'
alias mkdir='mkdir -pv'
alias h='history'
alias j='jobs -l'


#NETWORK
alias nets='netstat -tnlpv'


#IPTABLES
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
