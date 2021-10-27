function echoperform {
	tput setaf 245
	echo ":=> $@"
	tput sgr0
	$@
}
alias ng='echoperform cd /etc/nginx/sites-available'
alias ngal='echoperform tail -f -n 100 /var/log/nginx/access.log'
alias ngel='echoperform tail -f -n 100 /var/log/nginx/error.log'
alias ngr='echoperform nginx -t && echoperform systemctl restart nginx'

choc_svc_name="specify-service-name-in-base-sh.service"
alias xstart="echoperform systemctl start ${1:-$choc_svc_name}"
alias xstop="echoperform systemctl stop ${1:-$choc_svc_name}"
alias xstatus="echoperform systemctl status ${1:-$choc_svc_name}"
alias xrestart="echoperform systemctl restart ${1:-$choc_svc_name}"
alias xlog="echoperform journalctl -u ${1:-$choc_svc_name} -f"
