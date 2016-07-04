CREATE TABLE currency
(
  organization_id uuid,
  currency_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  country_id uuid, -- which country uses this currency
  symbol character varying,
  unicode character varying,
  priority double precision,
  name character varying,
  description character varying,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT currency_pkey PRIMARY KEY (currency_id),
  CONSTRAINT currency_symbol_key UNIQUE (symbol)
);
COMMENT ON COLUMN currency.country_id IS 'which country uses this currency';


