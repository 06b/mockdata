CREATE TABLE order_line
(
  organization_id uuid,
  order_line_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  order_id uuid NOT NULL,
  product_id uuid NOT NULL,
  price_momentary double precision NOT NULL,
  freight_amt double precision,
  discount double precision,
  qty_ordered double precision NOT NULL,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT order_line_pkey PRIMARY KEY (order_line_id)
)

