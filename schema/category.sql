CREATE TABLE category
(
  organization_id uuid NOT NULL,
  category_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  name character varying,
  description character varying,
  info text,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT category_pkey PRIMARY KEY (category_id),
  CONSTRAINT category_name_key UNIQUE (name)
);
