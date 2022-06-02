#!/bin/sh

# 后台启动
#php-fpm -D
# 关闭后台启动，hold住进程
#nginx -g 'daemon off;'

fpm=php-fpm
nginx=nginx

function start_fpm() {
  num=$(netstat -ntlp | grep $fpm | wc -l)
  if [ $num -gt 0 ]; then
    echo " $fpm is Running" && exit
  else
    $fpm -D
    [ $? -eq 0 ] && echo " $fpm start SUCCESS"
  fi
}

function start_nginx() {
  num=$(netstat -ntlp | grep $nginx | wc -l)
  if [ $num -gt 0 ]; then
    echo " $nginx is Running" && exit
  else
    $nginx -g 'daemon off;'
    [ $? -eq 0 ] && echo " $nginx start SUCCESS"
  fi
}

start_fpm
start_nginx
