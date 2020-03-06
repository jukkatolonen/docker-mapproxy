#!/bin/sh
USER_NAME=`ls -lah / | grep app | awk '{print $3}'`

FILE="/app/app.py"
YAML_PATH="/app/yaml/mapproxy.yaml"
UWGS="/app/uwsgi.ini"

/bin/cat <<EOM >$FILE
from mapproxy.wsgiapp import make_wsgi_app
application = make_wsgi_app('$YAML_PATH', reloader=True)
EOM

if [ ! -f /app/yaml/mapproxy.yaml ] ;then
    mapproxy-util create -t base-config /app/yaml
  fi

echo "Mapproxy starting in single mode"

su $USER_NAME -c "uwsgi $UWGS"
