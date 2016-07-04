
CREATE TABLE cart
(
organization_id uuid NOT NULL,
cart_id uuid NOT NULL DEFAULT uuid_generate_v4(),
created timestamp with time zone NOT NULL DEFAULT now(),
created_by uuid,
updated timestamp with time zone DEFAULT now(),
updated_by uuid,
active boolean NOT NULL DEFAULT true,
CONSTRAINT cart_pkey PRIMARY KEY (cart_id)
);

