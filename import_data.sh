
. ./local_db.sh


psql -e -U $USER -h $HOST -d $DB -c "COPY address(organization_id,address_id,address,latitude,longitude,created,created_by,updated,updated_by,active) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/address.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY api_key(organization_id,api_key_id,api_key,user_id,valid_starting,valid_until,created,created_by,updated,updated_by,active) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/api_key.csv


psql -e -U $USER -h $HOST -d $DB -c "COPY cart(cart_id,organization_id,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/cart.csv


psql -e -U $USER -h $HOST -d $DB -c "COPY cart_line(organization_id,cart_id,cart_line_id,product_id,qty,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/cart_line.csv


psql -e -U $USER -h $HOST -d $DB -c "COPY category(organization_id,category_id,name,description,info,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/category.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY client(client_id, name, description, created, created_by, updated, updated_by, active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/client.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY country(organization_id,country_id,name,code,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/country.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY currency(organization_id,currency_id,symbol,unicode,name,description,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/currency.csv


psql -e -U $USER -h $HOST -d $DB -c "COPY exchange_rate(organization_id,exchange_rate_id,exchange_rate,from_currency,to_currency,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/exchange_rate.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY invoice(organization_id,invoice_id,order_id,is_paid,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/invoice.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY order_line(organization_id,order_line_id,order_id,product_id,price_momentary,freight_amt,discount,qty_ordered,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/order_line.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY orders(organization_id,order_id,cart_id,customer_name,total_items,grand_total_amount,charges_amount,processing,is_processed,is_confirmed,is_tax_included,date_ordered,amount_tendered,amount_refunded,created,created_by,updated,updated_by,active
)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/orders.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY organization(organization_id,parent_organization_id,name,address_id,description,landmark,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/organization.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY photo(organization_id,photo_id,url,data,name,description,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/photo.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY photo_sizes(photo_size_id,photo_id,width,height,url,data,name,description,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/photo_sizes.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY product(product_id,parent_product_id,name,description,is_service,price,use_parent_price,unit,tags,info,seq_no,upfront_fee,barcode,owner_id,currency_id,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/product.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY product_availability(product_id,available,always_available,stocks,available_from,available_until,available_day,open_time,close_time,created,created_by,updated,updated_by
)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/product_availability.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY product_category(product_id,category_id,created,created_by,updated,updated_by)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/product_category.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY product_photo(organization_id,product_id,photo_id,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/product_photo.csv


psql -e -U $USER -h $HOST -d $DB -c "COPY product_review(organization_id,product_id,review_id,seq_no,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/product_review.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY review(organization_id,review_id,rating,comment,user_id,approved,approved_by,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/review.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY users(user_id,username,password,email,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/users.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY user_review(organization_id,user_id,review_id,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/user_review.csv

psql -e -U $USER -h $HOST -d $DB -c "COPY user_info(organization_id,user_id,address_id,current_location,displayname,photo_id,created,created_by,updated,updated_by,active)
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/user_info.csv



