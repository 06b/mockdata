CREATE TABLE photo
(organization_id uuid,
  photo_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  url character varying, -- The online version of the photo, could be hosted in cdn somewhere else, to avoid payloads in the system. The online photo can be cached by creating a base64 encoding, then storing it in the local db
  data character varying, -- The base64 encoding of the image, which can be stored in the database
  name character varying,
  description character varying,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT photo_pkey PRIMARY KEY (photo_id)
);

COMMENT ON COLUMN photo.url IS 'The online version of the photo, could be hosted in cdn somewhere else, to avoid payloads in the system. The online photo can be cached by creating a base64 encoding, then storing it in the local db';
COMMENT ON COLUMN photo.data IS 'The base64 encoding of the image, which can be stored in the database';


