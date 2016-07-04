CREATE TABLE product_availability
(
  product_id uuid NOT NULL,
  available boolean,
  always_available boolean,
  stocks double precision DEFAULT 1,
  available_from timestamp with time zone,
  available_until timestamp with time zone,
  available_day json, -- {"Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"}
  open_time time with time zone,
  close_time time with time zone,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  CONSTRAINT product_availability_pkey PRIMARY KEY (product_id)
);

COMMENT ON COLUMN product_availability.available_day IS '{"Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"}';


