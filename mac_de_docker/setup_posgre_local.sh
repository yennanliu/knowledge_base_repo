#!/bin/sh
# download psql, posgre, sample data locally on OSX 
# http://postgresguide.com/setup/example.html
# 1) Download posgre, psql
# https://wiki.postgresql.org/wiki/Homebrew
# https://postgresapp.com/
# http://postgresguide.com/setup/install.html
echo '>>> STEP 1 Download posgre, psql'
brew install postgresql

# 2) Run Posgre server local 
echo '>>> STEP 2 Run Posgre server local '
#https://stackoverflow.com/questions/7975556/how-to-start-postgresql-server-on-mac-os-x
pg_ctl -D /usr/local/var/postgres start

# 3) Download demo DB 
# http://postgresguide.com/setup/example.html
echo '>>> STEP 3 Download demo DB '
curl -L -O http://cl.ly/173L141n3402/download/example.dump
psql -c "DROP DATABASE  IF EXISTS pgguide "
createdb pgguide
pg_restore --no-owner --dbname pgguide example.dump
psql  --dbname pgguide  -c "\d"
psql  --dbname pgguide  -c "\q"
# work with posgre via CLI 
# psql  --dbname pgguide 

# 4) run the demo query 
echo '>>> STEP 4 Run the demo query'
echo 'TABLE LIST :'
psql  --dbname pgguide  -c "\d"
echo 'DEMO QUERY :'
psql  --dbname pgguide  -c "select * from products;"

# 5) work with posgre via CLI 
echo '>>> STEP 5 work with posgre via CLI'
# psql  --dbname pgguide 
