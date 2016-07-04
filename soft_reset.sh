#!/bin/bash

. ./local_db.sh

psql -U $USER -h $HOST -d $DB -c "DROP SCHEMA public CASCADE;"
psql -U $USER -h $HOST -d $DB -c "CREATE SCHEMA public;"

