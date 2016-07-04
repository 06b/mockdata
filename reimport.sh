
. ./local_db.sh

sh soft_reset.sh

sh import_schema.sh

sh import_data.sh

psql -e -U $USER -h $HOST -d $DB -f foreign_keys.sql
