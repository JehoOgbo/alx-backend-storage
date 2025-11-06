-- create an index on tablenames and the first letter of name
CREATE INDEX idx_name_first ON names (name(1));
