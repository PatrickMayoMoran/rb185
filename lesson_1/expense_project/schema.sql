DROP TABLE expenses;

CREATE TABLE expenses (
  id serial PRIMARY KEY,
  amount numeric(6,2) NOT NULL,
  memo text NOT NULL,
  created_on date NOT NULL
);

ALTER TABLE expenses
ADD CONSTRAINT positive_amounts_only CHECK(amount > 0);

INSERT INTO expenses (amount, memo, created_on)
VALUES
(5.05, 'espresso', NOW()),
(120.43, 'cleats', NOW()),
(61, 'house shoes', NOW())
;
