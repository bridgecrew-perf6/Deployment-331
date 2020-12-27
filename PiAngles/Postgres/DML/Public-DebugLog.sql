--http://stackoverflow.com/questions/273437/how-do-you-debug-mysql-stored-procedures
DROP PROCEDURE IF EXISTS public.DebugLog;

CREATE PROCEDURE public.DebugLog(msg VARCHAR(255))
AS $$
BEGIN
	select concat("** ", msg) AS '** DEBUG:';
END
$$ LANGUAGE plpgsql;