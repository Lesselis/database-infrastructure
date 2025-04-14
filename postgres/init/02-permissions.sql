-- Permissões mínimas para o schema
GRANT USAGE ON SCHEMA usuarios TO usuarios_admin;
GRANT CREATE ON SCHEMA usuarios TO usuarios_admin;

-- Permissões para futuras tabelas
ALTER DEFAULT PRIVILEGES 
IN SCHEMA usuarios
GRANT ALL ON TABLES TO usuarios_admin;