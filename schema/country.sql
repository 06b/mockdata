CREATE TABLE country
(
  organization_id uuid,
  country_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  name character varying,
  code character varying,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT country_pkey PRIMARY KEY (country_id)
);

