CREATE TABLE exchange_rate
(
  organization_id uuid,
  active boolean NOT NULL DEFAULT true,
  exchange_rate_id uuid NOT NULL DEFAULT uuid_generate_v4(), -- this will be referred when processing payments with different currencies
  from_currency uuid,
  exchange_rate double precision,
  to_currency uuid,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone NOT NULL DEFAULT now(),
  updated_by uuid,
  priority double precision,
  info text,
  CONSTRAINT exchange_rate_id_pkey PRIMARY KEY (exchange_rate_id)
);

COMMENT ON COLUMN exchange_rate.exchange_rate_id IS 'this will be referred when processing payments with different currencies';


