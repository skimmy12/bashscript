kill -9 `ps -ef | grep Xerox | grep -v puby | awk '{print $2}'`
