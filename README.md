# mruse

# DNS
grep 202.106.0.20    /etc/resolv.conf >/dev/null 2>&1||echo 'nameserver 202.106.0.20' >> /etc/resolv.conf    
grep 219.141.136.10  /etc/resolv.conf >/dev/null 2>&1||echo 'nameserver 114.114.114.114' >> /etc/resolv.conf    
grep 114.114.114.114 /etc/resolv.conf >/dev/null 2>&1||echo 'nameserver 219.141.136.10' >> /etc/resolv.conf    
grep 8.8.8.8         /etc/resolv.conf >/dev/null 2>&1||echo 'nameserver 8.8.8.8' >> /etc/resolv.conf    
grep 4.4.4.4         /etc/resolv.conf >/dev/null 2>&1||echo 'nameserver 4.4.4.4' >> /etc/resolv.conf    

## Distribution & Release
distribution=$(cat /etc/redhat-release|awk '{print $1}')    
release=$(cat /etc/issue|grep release|awk '{print int($3)}')     
[ "$release" -eq 5 ] && release=5.11    
[ "$release" -eq 6 ] && release=6.6    

## YUM init
cd /etc/yum.repos.d/    
curl http://mirrors.163.com/.help/CentOS${release}-Base-163.repo > CentOS${release}-Base-163.repo    
yum -y update bash    
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
* bash
