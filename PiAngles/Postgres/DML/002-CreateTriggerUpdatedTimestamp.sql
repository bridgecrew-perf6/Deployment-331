CREATE OR REPLACE FUNCTION public.update_updated_timestamp() 
RETURNS TRIGGER AS $$
BEGIN
    NEW.updatedTS = now();
    RETURN NEW; 
END;
$$ language 'plpgsql';
