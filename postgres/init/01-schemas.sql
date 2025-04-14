-- Cria o schema principal com owner específico
CREATE SCHEMA IF NOT EXISTS usuarios AUTHORIZATION usuarios_admin;

-- Revoga permissões do schema público (segurança)
REVOKE ALL ON SCHEMA public FROM public;

-- Configura o search_path padrão
ALTER ROLE usuarios_admin SET search_path TO usuarios, public;

-- Extensões obrigatórias (para UUID e criptografia)
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pgcrypto";