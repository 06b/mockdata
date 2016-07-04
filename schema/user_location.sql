CREATE TABLE user_location
(
  organization_id uuid,
  user_id uuid NOT NULL,
  true_latitude double precision,
  true_longitude double precision,
  set_latitude double precision,
  set_longitude double precision,
  accuracy double precision,
  set_accuracy double precision, -- user can anonymize their location by setting loose accuracy
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT user_location_pkey PRIMARY KEY (user_id)
);

COMMENT ON COLUMN user_location.set_accuracy IS 'user can anonymize their location by setting loose accuracy';


