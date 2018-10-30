#NGINX
alias nginxconf='cd /etc/nginx/sites-available/'
alias nginxtest='nginx -c /etc/nginx/nginx.conf -t'
alias nginxrestart='nginx -c /etc/nginx/nginx.conf -t && systemctl restart nginx && systemctl status nginx '
alias nginxreload='nginx -c /etc/nginx/nginx.conf -t && systemctl reload nginx && systemctl status nginx '

#PHP72
alias phpfpm-conf='cd /etc/opt/remi/php72/php-fpm.d/'
alias phpfpm-status='systemctl status php72-php-fpm'
alias phpfpm-restart='systemctl restart php72-php-fpm ; systemctl status php72-php-fpm'
alias phpfpm-gracefull-restart='systemctl stop  php72-php-fpm && systemctl status  php72-php-fpm ; sleep 10 && systemctl start  php72-php-fpm && systemctl status  php72-php-fpm '

#ICINGA
alias i2conf='cd /etc/icinga2/conf.d'
alias i2plugins='cd /usr/lib64/nagios/plugins/'
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'

#DOCKER
alias dcs='docker ps'
alias dcd='docker-compose down'
alias dcu='docker-compose up -d'
#DOCKER
function dwatch() {
        if [ ! $# -eq 1 ]
        then
                echo "missing <DOCKER ID> "
                docker ps
		return
        else
                watch -n2 "docker logs $1 --tail 20"
        fi
}
function dlogs() {
        if [ ! $# -eq 1 ]
        then
                echo "missing <DOCKER ID> "
                docker ps
                return
        else
                docker logs $1
        fi
}

function dexec() {
        if [ $# -lt 2 ]
        then
                echo "missing <DOCKER ID> <COMMAND>"
                docker ps
                return
	else
                docker exec -ti $1 $2
        fi
}
