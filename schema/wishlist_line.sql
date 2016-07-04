CREATE TABLE wishlist_line
(
  organization_id uuid,
  wishlist_id uuid,
  wishlist_line_id uuid NOT NULL,
  price_momentary double precision,
  product_id uuid,
  added_to_cart boolean DEFAULT false,
  priority double precision,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT wishlist_line_pkey PRIMARY KEY (wishlist_line_id)
);

