CREATE TABLE product_photo
(
  organization_id uuid,
  product_id uuid NOT NULL,
  photo_id uuid NOT NULL,
  seq_no int,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT product_photo_pkey PRIMARY KEY (product_id, photo_id)
);

