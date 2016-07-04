
CREATE TABLE api_key
( organization_id uuid NOT NULL,
  api_key_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  api_key character varying NOT NULL,
  user_id uuid NOT NULL,
  valid_starting timestamp with time zone,
  valid_until timestamp with time zone,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid NOT NULL,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT api_key_pkey PRIMARY KEY (api_key_id)
);

