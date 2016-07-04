CREATE TABLE client
(
  name character varying,
  description character varying,
  client_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone NOT NULL DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT client_pkey PRIMARY KEY (client_id)
);
