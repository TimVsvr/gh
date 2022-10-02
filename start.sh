#/bin/sh

/app/gh -L=ss+mws://$METHOD:$PASSWORD@localhost:3580 >/dev/null 2>&1 &
nginx -g 'daemon off;'
