airflow_tunnel='autossh -n -f -L 8188:localhost:8188 server13 sleep 99999'
s13_proxy='ssh -f -N -D 6789 localhost'
psql_tunnel='autossh -n -f -L 5432:localhost:5432 server13 sleep 99999'
s13='ssh server13 -R 6790:localhost:6789'
s13d='ssh datamaster@server13 -R 1081:localhost:6789'

