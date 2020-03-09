#!/bin/sh
USER_NAME=`ls -lah / | grep app | awk '{print $3}'`

FILE="/app/app.py"
YAML_PATH="/app/yaml"
UWGS="/app/uwsgi.ini"

/bin/cat <<EOM >$FILE
from mapproxy.multiapp import make_wsgi_app
application = make_wsgi_app('$YAML_PATH', allow_listing=False)
EOM

echo "Mapproxy starting in multi mode"

su $USER_NAME -c "uwsgi $UWGS"