CREATE TABLE review
(
  organization_id uuid,
  review_id uuid NOT NULL,
  rating integer, -- rating 1 to 5, 5 is the highest
  comment character varying, -- The statement of the review
  user_id uuid,
  approved boolean,
  approved_by uuid, -- the user id who approves the review
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone DEFAULT now(),
  updated_by uuid,
  active boolean NOT NULL DEFAULT true,
  CONSTRAINT review_pkey PRIMARY KEY (review_id)
);

COMMENT ON TABLE review
  IS 'Reviews of buyers from the sellers and the sellers'' products';
COMMENT ON COLUMN review.rating IS 'rating 1 to 5, 5 is the highest';
COMMENT ON COLUMN review.comment IS 'The statement of the review';
COMMENT ON COLUMN review.approved_by IS 'the user id who approves the review';


