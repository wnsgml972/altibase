rm $ALTIBASE_HOME/dbs/*
rm $ALTIBASE_HOME/logs/*

echo 'y' | sm_destroydb -n mydb  
echo 'y' | sm_createdb -M 12 
tsm_init/tsm_init
