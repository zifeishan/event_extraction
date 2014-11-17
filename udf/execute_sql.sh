for var in "$@"
do
    psql $DBNAME < $var
done
