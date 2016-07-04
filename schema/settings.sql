CREATE TABLE settings
(
  organization_id uuid,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  name character varying,
  description character varying,
  help text,
  active boolean NOT NULL DEFAULT true,
  user_id uuid,
  value json,
  settings_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  use_metric boolean DEFAULT true, -- Use metric system as unit, if false, use english system
  CONSTRAINT settings_pkey PRIMARY KEY (settings_id)
);

COMMENT ON COLUMN settings.use_metric IS 'Use metric system as unit, if false, use english system';


