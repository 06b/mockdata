CREATE TABLE user_review
(
  user_id uuid NOT NULL, -- The user id of the seller being reviewed
  review_id uuid NOT NULL,
  organization_id uuid,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  priority double precision,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT user_review_pkey PRIMARY KEY (user_id, review_id)
);


COMMENT ON TABLE user_review
  IS 'Reviews of the seller by the user';
COMMENT ON COLUMN user_review.user_id IS 'The user id of the seller being reviewed';


