DROP TABLE expenses;

CREATE TABLE expenses (
  id serial PRIMARY KEY,
  amount numeric(6,2) NOT NULL,
  memo text NOT NULL,
  created_on date NOT NULL
);

ALTER TABLE expenses
ADD CONSTRAINT positive_amounts_only CHECK(amount > 0);

