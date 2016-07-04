CREATE TABLE user_info
(
  organization_id uuid,
  user_id uuid NOT NULL,
  address_id uuid,
  current_location character varying,
  displayname character varying,
  photo_id uuid,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT user_info_pkey PRIMARY KEY (user_id)
);

