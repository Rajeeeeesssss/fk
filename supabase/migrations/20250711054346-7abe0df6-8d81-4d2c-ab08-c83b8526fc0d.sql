-- Assign admin role to the user with email rajesh9933123@gmail.com
INSERT INTO public.user_roles (user_id, role)
SELECT id, 'admin'::app_role
FROM auth.users 
WHERE email = 'rajesh9933123@gmail.com'
ON CONFLICT (user_id, role) DO NOTHING;