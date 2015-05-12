# mruse

## YUM
release=$(cat /etc/issue|grep release|awk '{print int($3)}')
[ "$release" -eq 5 ] && release=5.10
[ "$release" -eq 5 ] && release=6.6
wget http://mirrors.163.com/.help/CentOS${release}-Base-163.repo -P /etc/yum.repos.d/

## init
yum -y install parted dmidecode    
yum -y install man ntp ntpdate screen chkconfig     
yum -y install vixie-cron crontabs ftp vsftpd httpd memcached subversoin createrepo    
yum -y install wget lrzsz zip unzip tree vim mlocate dos2unix patch rsync sed    
yum -y install gcc gcc-c++ autoconf automake make cmake    
yum -y install tcpdump telnet sysstat lsof strace iptraf iotop ifstat sar    
yum -y install rkhunter chkrootkit tripwire    

## Tools
* iftop
* nmon
* GoAccess
