--Setup the timestamp for the database to be UTC
set timezone TO 'UTC';

--Add Extentions
--UUID related extenstions
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
