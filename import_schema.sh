#!/bin/bash

. ./local_db.sh

psql -e -U $USER -h $HOST -d $DB -c 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp"'
psql -e -U $USER -h $HOST -d $DB -f schema/address.sql
psql -e -U $USER -h $HOST -d $DB -f schema/api_key.sql
psql -e -U $USER -h $HOST -d $DB -f schema/cart.sql
psql -e -U $USER -h $HOST -d $DB -f schema/cart_line.sql
psql -e -U $USER -h $HOST -d $DB -f schema/category.sql
psql -e -U $USER -h $HOST -d $DB -f schema/client.sql
psql -e -U $USER -h $HOST -d $DB -f schema/country.sql
psql -e -U $USER -h $HOST -d $DB -f schema/currency.sql
psql -e -U $USER -h $HOST -d $DB -f schema/exchange_rate.sql
psql -e -U $USER -h $HOST -d $DB -f schema/invoice.sql
psql -e -U $USER -h $HOST -d $DB -f schema/order_line.sql
psql -e -U $USER -h $HOST -d $DB -f schema/orders.sql
psql -e -U $USER -h $HOST -d $DB -f schema/organization.sql
psql -e -U $USER -h $HOST -d $DB -f schema/photo.sql
psql -e -U $USER -h $HOST -d $DB -f schema/photo_sizes.sql
psql -e -U $USER -h $HOST -d $DB -f schema/product.sql
psql -e -U $USER -h $HOST -d $DB -f schema/product_availability.sql
psql -e -U $USER -h $HOST -d $DB -f schema/product_category.sql
psql -e -U $USER -h $HOST -d $DB -f schema/product_photo.sql
psql -e -U $USER -h $HOST -d $DB -f schema/product_review.sql
psql -e -U $USER -h $HOST -d $DB -f schema/review.sql
psql -e -U $USER -h $HOST -d $DB -f schema/settings.sql
psql -e -U $USER -h $HOST -d $DB -f schema/user_info.sql
psql -e -U $USER -h $HOST -d $DB -f schema/user_location.sql
psql -e -U $USER -h $HOST -d $DB -f schema/user_review.sql
psql -e -U $USER -h $HOST -d $DB -f schema/users.sql
psql -e -U $USER -h $HOST -d $DB -f schema/wishlist.sql
psql -e -U $USER -h $HOST -d $DB -f schema/wishlist_line.sql

