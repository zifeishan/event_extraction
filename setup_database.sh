. env.sh

dropdb $DBNAME 
createdb $DBNAME 

psql $DBNAME < schema.sql

psql $DBNAME -c "COPY sentences FROM STDIN" < data/kbp_sentence_70k.tsv
