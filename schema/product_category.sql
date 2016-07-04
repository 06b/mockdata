CREATE TABLE product_category
(
  product_id uuid NOT NULL,
  category_id uuid NOT NULL,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  CONSTRAINT product_category_pkey PRIMARY KEY (product_id, category_id)
);

