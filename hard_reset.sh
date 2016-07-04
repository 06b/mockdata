#!/bin/bash

. ./local_db.sh

psql -U $USER -h $HOST -d $POSTGRES -c "DROP DATABASE $DB;"
psql -U $USER -h $HOST -d $POSTGRES -c "CREATE DATABASE $DB WITH ENCODING 'utf8';"

