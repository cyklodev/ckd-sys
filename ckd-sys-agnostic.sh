#SYSTEM
alias ll='ls -lrt'
alias lla='ls -alrt'
alias dfg='df -h'
alias dus='du -ms '
alias dusx='du -xms '
alias mkdir='mkdir -pv'
alias h='history'
alias j='jobs -l'
alias sbin='cd /usr/local/sbin'
alias vcron='vi /etc/crontab'
alias swd='watch -n1 df -m'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

#NETWORK
alias nets='netstat -tnlpv'
alias swn='watch -n1 netstat -tnlpv'
alias pingg='ping -c 1 8.8.8.8'
alias pingf='ping -c 1 free.fr'
alias swn='watch -n1 netstat -tnlpv'

#history
function hg(){
	history | grep $1
}
#Hash
function hsum() {
	if [[ ! -f $1 ]]
	then
		echo "missing file path"
	else
		echo "MD5" ; md5sum $1;
		echo "SHA-1" ; sha1sum $1 ;
	fi
}

#GIT
alias gc='git commit -m'
alias g.='git add . -A'
alias g.c='git add . -A && gc'
alias gph='git push origin'
alias gs='git status'
alias gba='git branch -a'
alias gcout='git checkout'
alias glog='git log --stat --pretty=short --graph'
alias gdu='git diff @{upstream}'
alias glr='git remote -v'
alias glt='git tag'
alias gfd='git fetch --dry-run'


#IPTABLES
alias iptlist='iptables -L -n -v --line-numbers'
alias iptlistin='iptables -L INPUT -n -v --line-numbers'
alias iptlistout='iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='iptables -L FORWARD -n -v --line-numbers'
alias iptrestore='iptables-restore < /etc/sysconfig/iptables'

#SSH
function ssh-pwdless(){
	USNAME=`id -un`
	TARGET_SERVER=""
	TARGET_PORT=""
	TARGET_USNAME=""

	usage(){
		echo "SSH connexion passwordless"
		echo "$0 SERVER [PORT] [REMOTE_USER]"
	}

	if [[ -f ~/.ssh/id_rsa.pub ]]
	then
		echo "Public key for [${USNAME}] available ... continue"
	else
		echo "ERROR : Public key for [${USNAME}] not available ... "
		echo "Generate your identity with the following command "
		echo "ssh-keygen -t rsa"
		return
	fi

	if [[ ! -z $1 ]]
	then
		TARGET_SERVER=$1
		echo "Target server is : ${TARGET_SERVER}"
	else
		echo "No target server ... exiting"
		return
	fi

	if [[ ! -z $2 ]]
	then
		TARGET_PORT=$2
		echo "Target port is : ${TARGET_PORT}"
	else
		echo "Default target port is 22"
		TARGET_PORT="22"
	fi

	if [[ ! -z $3 ]]
	then
		TARGET_USNAME=$3
		echo "Target user is : ${TARGET_USNAME}"
	else
		echo "Default user is ${USNAME}"
		TARGET_USNAME=${USNAME}
	fi

	ssh-copy-id -i ~/.ssh/id_rsa.pub "-p ${TARGET_PORT} ${TARGET_USNAME}@${TARGET_SERVER}";
	ssh -p ${TARGET_PORT} ${TARGET_USNAME}@${TARGET_SERVER} "echo $(cat ~/.ssh/id_rsa.pub) >> .ssh/authorized_keys";

}
