#!/bin/bash
apt-get -y update

# install tsung
apt-get -y install emacs24-nox git tsung unzip

#
cat << EOF >>  /etc/sysctl.conf
# here http://tsung.erlang-projects.org/user_manual/faq.html#why-do-i-have-error-connect-emfile-errors

net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_tw_recycle = 1
net.ipv4.ip_local_port_range = 1024 65000
fs.file-max = 100000

EOF

sysctl -p

# add limits for user
cat <<EOF >> /etc/security/limits.conf

*        soft    nofile  100000
*        hard    nofile  100000

EOF
