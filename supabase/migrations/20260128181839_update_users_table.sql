-- Update users table structure
ALTER TABLE public.users RENAME COLUMN name TO full_name;
ALTER TABLE public.users RENAME COLUMN phone TO phone_number;
ALTER TABLE public.users ADD COLUMN address TEXT;
ALTER TABLE public.users ADD COLUMN date_of_birth DATE;

-- Create function to handle new user creation
CREATE OR REPLACE FUNCTION handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO public.users (id, full_name, email, phone_number, address, date_of_birth)
    VALUES (
        NEW.id,
        NEW.raw_user_meta_data->>'full_name',
        NEW.email,
        NEW.raw_user_meta_data->>'phone_number',
        NEW.raw_user_meta_data->>'address',
        (NEW.raw_user_meta_data->>'date_of_birth')::DATE
    );
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Create trigger to automatically create public user when auth user is created
CREATE TRIGGER on_auth_user_created
    AFTER INSERT ON auth.users
    FOR EACH ROW EXECUTE FUNCTION handle_new_user();
