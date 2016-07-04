CREATE TABLE cart_line
(
  organization_id uuid NOT NULL,
  cart_id uuid NOT NULL,
  cart_line_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  product_id uuid NOT NULL,
  qty double precision,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT cart_line_pkey PRIMARY KEY (cart_line_id)
);

