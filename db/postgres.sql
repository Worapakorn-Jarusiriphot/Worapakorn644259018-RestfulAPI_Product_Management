-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION pg_database_owner;

COMMENT ON SCHEMA public IS 'standard public schema';

-- DROP SEQUENCE public.restaurants_id_seq;

CREATE SEQUENCE public.restaurants_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.restaurants_id_seq OWNER TO "default";
GRANT ALL ON SEQUENCE public.restaurants_id_seq TO "default";

-- DROP SEQUENCE public.users_id_seq;

CREATE SEQUENCE public.users_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.users_id_seq OWNER TO "default";
GRANT ALL ON SEQUENCE public.users_id_seq TO "default";
-- public.restaurants definition

-- Drop table

-- DROP TABLE public.restaurants;

CREATE TABLE public.restaurants (
	id serial4 NOT NULL,
	"name" varchar(255) NOT NULL,
	"type" varchar(255) NOT NULL,
	"imageURL" varchar(255) NOT NULL,
	"createdAt" timestamptz NULL,
	"updatedAt" timestamptz NULL,
	CONSTRAINT restaurants_pkey PRIMARY KEY (id)
);


-- public.roles definition

-- Drop table

-- DROP TABLE public.roles;

CREATE TABLE public.roles (
	id int4 NOT NULL,
	"name" varchar(255) NULL,
	"createdAt" timestamptz NOT NULL,
	"updatedAt" timestamptz NOT NULL,
	CONSTRAINT roles_pkey PRIMARY KEY (id)
);


-- public.users definition

-- Drop table

-- DROP TABLE public.users;

CREATE TABLE public.users (
	id serial4 NOT NULL,
	username varchar(255) NULL,
	email varchar(255) NULL,
	"password" varchar(255) NULL,
	"createdAt" timestamptz NOT NULL,
	"updatedAt" timestamptz NOT NULL,
	CONSTRAINT users_pkey PRIMARY KEY (id)
);


-- public.users_roles definition

-- Drop table

-- DROP TABLE public.users_roles;

CREATE TABLE public.users_roles (
	"createdAt" timestamptz NOT NULL,
	"updatedAt" timestamptz NOT NULL,
	"roleId" int4 NOT NULL,
	"userId" int4 NOT NULL,
	CONSTRAINT users_roles_pkey PRIMARY KEY ("roleId", "userId")
);


-- public.restaurants foreign keys

-- public.roles foreign keys

-- public.users foreign keys

-- public.users_roles foreign keys



-- Permissions;