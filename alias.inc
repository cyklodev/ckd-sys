#SYSTEM
alias ll='ls -lrt'
alias lla='ls -alrt'
alias dfg='df -h'
alias dus='du -ms ' 
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

#SYMFONY3
alias symfmep='php bin/console cache:clear --env=prod --no-debug'
alias symfmepasset='php bin/console cache:clear --env=prod --no-debug ; php bin/console assetic:dump --env=prod --no-debug'
alias symfclean='php bin/console assets:install ; php bin/console cache:clear'
alias symfroute='php bin/console debug:route'
alias symfdocclean='php bin/console doctrine:cache:clear-collection-region  ; php bin/console   doctrine:cache:clear-entity-region ; php bin/console  doctrine:cache:clear-metadata      ;   php bin/console doctrine:cache:clear-query     ;         php bin/console doctrine:cache:clear-query-region   ;   '

