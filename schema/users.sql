CREATE TABLE users
(
  user_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  username character varying, -- @Username...
  password character varying, -- The users' @Password will be check against the value, while you can also specify hashing alogrithm used of the value @Hash(SHA256), or just @SHA256....
  email character varying, -- @Email
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone NOT NULL DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true, 
  CONSTRAINT users_pkey PRIMARY KEY (user_id)
);

COMMENT ON TABLE users
  IS 'This are @Users, will be used for @Login';
COMMENT ON COLUMN users.active IS '@Active';
COMMENT ON COLUMN users.username IS '@Username
@DisplayLength(20)
@Length(2-100)';
COMMENT ON COLUMN users.password IS 'The users'' @Password will be check against the value, while you can also specify hashing alogrithm used of the value @Hash(SHA256), or just @SHA256.

SHA512, CLEAR_TEXT, MD5 can also be used.
@Length(8-50)
@DisplayLength(20)';
COMMENT ON COLUMN users.email IS '@Email';


