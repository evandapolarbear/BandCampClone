#Artist Table#
column name     |   type   |   constraints
--------------- | -------- | --------------
id              | integer  | not null, p key
name            | string   | not null, indexed, uniq
email           | string   | not null, indexed, uniq
password_digest | string   | not null
session_token   | string   | not null
image_url       | string   | not null
banner_url      | string   | not null

#Song Table#
column name     |   type   |   constraints
--------------- | -------- | --------------
id              | integer  | not null, p key
name            | string   | not null, indexed, uniq
artist_id       | integer  | not null, indexed, uniq
song_url        | string   | not null
image_url       | string   | not null

#Album Table#
column name     |   type   |   constraints
--------------- | -------- | --------------
id              | integer  | not null, p key
name            | string   | not null, indexed, uniq
artist_id       | integer  | not null, indexed, uniq
image_url       | string   | not null
