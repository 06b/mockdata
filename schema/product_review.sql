CREATE TABLE product_review
(
  organization_id uuid,
  product_id uuid NOT NULL,
  review_id uuid NOT NULL,
  seq_no int,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT product_review_pkey PRIMARY KEY (product_id, review_id)

);

