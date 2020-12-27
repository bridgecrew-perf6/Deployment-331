CREATE OR REPLACE FUNCTION public.update_modified_timestamp() 
RETURNS TRIGGER AS $$
BEGIN
    NEW.modified_timestamp = now();
    RETURN NEW; 
END;
$$ language 'plpgsql';
