
CREATE TABLE orders
( organization_id uuid NOT NULL,
  order_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  cart_id uuid, -- The cart from which this order was created from
  customer_name character varying, -- For recognization purposes, this is the name shown to the seller
  total_items integer,
  grand_total_amount double precision,
  charges_amount double precision DEFAULT 0.00,
  processing boolean DEFAULT false,
  is_processed boolean DEFAULT false,
  is_confirmed boolean DEFAULT false, -- determined whether the order has been confirmed by the person who ordered it
  is_tax_included boolean DEFAULT true,
  date_ordered timestamp with time zone DEFAULT now(),
  is_invoiced boolean DEFAULT false,
  date_invoiced timestamp with time zone,
  is_approved boolean DEFAULT false, -- if the order from the buyer is approved by the seller
  date_approved timestamp with time zone,
  amount_tendered double precision,
  amount_refunded double precision,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT order_pkey PRIMARY KEY (order_id)
);

COMMENT ON COLUMN orders.customer_name IS 'For recognization purposes, this is the name shown to the seller';
COMMENT ON COLUMN orders.is_confirmed IS 'determined whether the order has been confirmed by the person who ordered it';
COMMENT ON COLUMN orders.is_approved IS 'if the order from the buyer is approved by the seller';
COMMENT ON COLUMN orders.cart_id IS 'The cart from which this order was created from';


