CREATE TABLE invoice
(
  organization_id uuid,
  invoice_id uuid DEFAULT uuid_generate_v4(),
  order_id uuid,
  is_paid boolean,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT invoice_pkey PRIMARY KEY (invoice_id)
);
