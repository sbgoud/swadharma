-- Create a function to generate random 9-digit user_id
CREATE OR REPLACE FUNCTION generate_random_user_id()
RETURNS NUMERIC AS $$
BEGIN
    RETURN floor(random() * (999999999 - 100000000 + 1) + 100000000);
END;
$$ language 'plpgsql';

-- Update existing users to have user_id if they don't already have one
UPDATE public.users 
SET user_id = generate_random_user_id()
WHERE user_id IS NULL;

-- Create a trigger to automatically generate user_id when a new user is inserted
CREATE OR REPLACE FUNCTION set_user_id_on_insert()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.user_id IS NULL THEN
        NEW.user_id = generate_random_user_id();
    END IF;
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE OR REPLACE TRIGGER set_user_id_before_insert
    BEFORE INSERT ON public.users
    FOR EACH ROW
    EXECUTE FUNCTION set_user_id_on_insert();

-- Update handle_new_user function to include user_id
CREATE OR REPLACE FUNCTION handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO public.users (id, user_id, full_name, email, phone_number, address, date_of_birth)
    VALUES (
        NEW.id,
        generate_random_user_id(),
        NEW.raw_user_meta_data->>'full_name',
        NEW.email,
        NEW.raw_user_meta_data->>'phone_number',
        NEW.raw_user_meta_data->>'address',
        (NEW.raw_user_meta_data->>'date_of_birth')::DATE
    );
    RETURN NEW;
END;
$$ language 'plpgsql';
