CREATE TABLE address
(
  organization_id uuid NOT NULL,
  address_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  address character varying,
  latitude double precision,
  longitude double precision,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT address_pkey PRIMARY KEY (address_id)
);

COMMENT ON TABLE address
  IS 'Address of persons';

