CREATE TABLE photo_sizes
(
  photo_size_id uuid NOT NULL,
  photo_id uuid,
  width integer,
  height integer,
  data character varying, -- The base64 encoding of this photo, optimized to this size
  url character varying,
  name character varying,
  description character varying,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone NOT NULL DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT photo_sizes_pkey PRIMARY KEY (photo_size_id)
);

COMMENT ON COLUMN photo_sizes.data IS 'The base64 encoding of this photo, optimized to this size';


