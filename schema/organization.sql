
CREATE TABLE organization
(
  organization_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  parent_organization_id uuid,
  name character varying,
  description character varying,
  address_id uuid,
  landmark character varying,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone NOT NULL DEFAULT now(),
  updated_by uuid,
  priority double precision,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT organization_pkey PRIMARY KEY (organization_id)
)

