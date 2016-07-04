CREATE TABLE product
(
  product_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  parent_product_id uuid,
  name character varying, -- This is @Required it has @DisplayLength(50) - 50 character in display length a @MinLength(1) and @MaxLength(100) - Do not go over 100 characters or else the system will throw a ValueTooLong exception...
  description character varying, -- @DisplayLength(100) When building a UI for this field...
  is_service boolean DEFAULT false,
  price double precision,
  use_parent_price boolean DEFAULT false,
  unit character varying,
  tags text,
  info text, -- {color:"red",...
  seq_no integer, -- @Sequence can be used to do alternate ordering of the values, when alphetical or time can not be used
  upfront_fee double precision DEFAULT 0.00, -- Applicable to services, usually services has an upfront fee
  barcode character varying, -- barcode if scanning the product, conflict can happen, expect to return matching list of products using the barcode
  owner_id uuid, -- Whom this product belongs, since created_by can be someone else create the product list in behalf of the owner of the product
  currency_id uuid,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid, -- @Value(users.user_id)
  updated timestamp with time zone NOT NULL DEFAULT now(),
  updated_by uuid, -- @Value(users.user_id)
  active boolean NOT NULL DEFAULT true, -- @Active
  CONSTRAINT product_pkey PRIMARY KEY (product_id)
);

COMMENT ON TABLE product
  IS 'This will be exposed as an @Api, including @Table(users, category, product_availability, photo)';
COMMENT ON COLUMN product.created_by IS '@Value(users.user_id)';
COMMENT ON COLUMN product.updated_by IS '@Value(users.user_id)';
COMMENT ON COLUMN product.name IS 'This is @Required it has @DisplayLength(50) - 50 character in display length a @MinLength(1) and @MaxLength(100) - Do not go over 100 characters or else the system will throw a ValueTooLong exception
can also be express with @Length(1-100)';
COMMENT ON COLUMN product.description IS '@DisplayLength(100) When building a UI for this field
@MaxLength(200) Do not go over 200 character on this one';
COMMENT ON COLUMN product.active IS '@Active';
COMMENT ON COLUMN product.info IS '{color:"red",
dimension:"10x20x30",
dimensionUnit:"mm",
weight:"4",
weightUnit:"kg"
}';
COMMENT ON COLUMN product.seq_no IS '@Sequence can be used to do alternate ordering of the values, when alphetical or time can not be used';
COMMENT ON COLUMN product.upfront_fee IS 'Applicable to services, usually services has an upfront fee';
COMMENT ON COLUMN product.barcode IS 'barcode if scanning the product, conflict can happen, expect to return matching list of products using the barcode';
COMMENT ON COLUMN product.owner_id IS 'Whom this product belongs, since created_by can be someone else create the product list in behalf of the owner of the product';


