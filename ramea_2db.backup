--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7
-- Dumped by pg_dump version 13.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: administrateurs_administrateurs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.administrateurs_administrateurs (
    id integer NOT NULL,
    telephone character varying(8) NOT NULL,
    organisation_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.administrateurs_administrateurs OWNER TO postgres;

--
-- Name: administrateurs_administrateur_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.administrateurs_administrateur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.administrateurs_administrateur_id_seq OWNER TO postgres;

--
-- Name: administrateurs_administrateur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.administrateurs_administrateur_id_seq OWNED BY public.administrateurs_administrateurs.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: categories_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories_categories (
    id integer NOT NULL,
    nom character varying(55) NOT NULL,
    typecategorie_id integer NOT NULL,
    org_id integer NOT NULL,
    admin_id integer NOT NULL
);


ALTER TABLE public.categories_categories OWNER TO postgres;

--
-- Name: categories_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_categories_id_seq OWNER TO postgres;

--
-- Name: categories_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_categories_id_seq OWNED BY public.categories_categories.id;


--
-- Name: categories_typecategorie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories_typecategorie (
    id integer NOT NULL,
    nom character varying(35) NOT NULL
);


ALTER TABLE public.categories_typecategorie OWNER TO postgres;

--
-- Name: categories_typecategorie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_typecategorie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_typecategorie_id_seq OWNER TO postgres;

--
-- Name: categories_typecategorie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_typecategorie_id_seq OWNED BY public.categories_typecategorie.id;


--
-- Name: clients_clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients_clients (
    id integer NOT NULL,
    nom character varying(35) NOT NULL,
    prenoms character varying(55) NOT NULL,
    telephone_p character varying(8) NOT NULL,
    adr_mail character varying(255) NOT NULL,
    adr_phisique character varying(155) NOT NULL,
    image character varying(100),
    gerant_id integer,
    point_vente_id integer,
    telephone_s character varying(8),
    org_id integer NOT NULL
);


ALTER TABLE public.clients_clients OWNER TO postgres;

--
-- Name: clients_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clients_clients_id_seq OWNER TO postgres;

--
-- Name: clients_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_clients_id_seq OWNED BY public.clients_clients.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: gerants_utilisateurs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gerants_utilisateurs (
    id integer NOT NULL,
    telephone character varying(8) NOT NULL,
    admin_id integer NOT NULL,
    organisation_id integer NOT NULL,
    point_vente_id integer,
    user_id integer NOT NULL
);


ALTER TABLE public.gerants_utilisateurs OWNER TO postgres;

--
-- Name: gerants_utilisateurs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gerants_utilisateurs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gerants_utilisateurs_id_seq OWNER TO postgres;

--
-- Name: gerants_utilisateurs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gerants_utilisateurs_id_seq OWNED BY public.gerants_utilisateurs.id;


--
-- Name: organisations_organisations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organisations_organisations (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    telephone_p character varying(8) NOT NULL,
    mail character varying(255) NOT NULL,
    date_add timestamp with time zone NOT NULL,
    telephone_s character varying(8)
);


ALTER TABLE public.organisations_organisations OWNER TO postgres;

--
-- Name: organisations_organisations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.organisations_organisations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.organisations_organisations_id_seq OWNER TO postgres;

--
-- Name: organisations_organisations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.organisations_organisations_id_seq OWNED BY public.organisations_organisations.id;


--
-- Name: points_affaire_pointsaffaires; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.points_affaire_pointsaffaires (
    id integer NOT NULL,
    nom character varying(100) NOT NULL,
    telephone_point character varying(8),
    date_creation timestamp with time zone NOT NULL,
    admin_id integer NOT NULL,
    org_id integer NOT NULL,
    adresse character varying(255) NOT NULL
);


ALTER TABLE public.points_affaire_pointsaffaires OWNER TO postgres;

--
-- Name: points_affaire_pointsaffaires_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.points_affaire_pointsaffaires_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.points_affaire_pointsaffaires_id_seq OWNER TO postgres;

--
-- Name: points_affaire_pointsaffaires_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.points_affaire_pointsaffaires_id_seq OWNED BY public.points_affaire_pointsaffaires.id;


--
-- Name: prestation_prestations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prestation_prestations (
    id integer NOT NULL,
    date_prestation timestamp with time zone NOT NULL,
    total_prestation double precision NOT NULL,
    client_id integer,
    gerant_id integer NOT NULL,
    point_vente_id integer NOT NULL,
    org_id integer NOT NULL
);


ALTER TABLE public.prestation_prestations OWNER TO postgres;

--
-- Name: prestation_prestations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prestation_prestations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prestation_prestations_id_seq OWNER TO postgres;

--
-- Name: prestation_prestations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prestation_prestations_id_seq OWNED BY public.prestation_prestations.id;


--
-- Name: prestation_serviceprestation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prestation_serviceprestation (
    id integer NOT NULL,
    prestation_id integer NOT NULL,
    service_id integer NOT NULL,
    montant_prestation double precision NOT NULL
);


ALTER TABLE public.prestation_serviceprestation OWNER TO postgres;

--
-- Name: prestation_serviceprestation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prestation_serviceprestation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prestation_serviceprestation_id_seq OWNER TO postgres;

--
-- Name: prestation_serviceprestation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prestation_serviceprestation_id_seq OWNED BY public.prestation_serviceprestation.id;


--
-- Name: produits_histoprod; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produits_histoprod (
    id integer NOT NULL,
    qte integer NOT NULL,
    date_ajout timestamp with time zone NOT NULL,
    admin_id integer NOT NULL,
    point_id integer,
    produit_id integer
);


ALTER TABLE public.produits_histoprod OWNER TO postgres;

--
-- Name: produits_histoprod_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produits_histoprod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produits_histoprod_id_seq OWNER TO postgres;

--
-- Name: produits_histoprod_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produits_histoprod_id_seq OWNED BY public.produits_histoprod.id;


--
-- Name: produits_produits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produits_produits (
    id integer NOT NULL,
    designation character varying(100) NOT NULL,
    prix_unitaire double precision NOT NULL,
    date_add timestamp with time zone NOT NULL,
    admin_id integer NOT NULL,
    categorie_id integer,
    image character varying(100),
    org_id integer NOT NULL
);


ALTER TABLE public.produits_produits OWNER TO postgres;

--
-- Name: produits_produits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produits_produits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produits_produits_id_seq OWNER TO postgres;

--
-- Name: produits_produits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produits_produits_id_seq OWNED BY public.produits_produits.id;


--
-- Name: produits_quantitepoint; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produits_quantitepoint (
    id integer NOT NULL,
    qte_stock integer NOT NULL,
    point_id integer,
    produit_id integer
);


ALTER TABLE public.produits_quantitepoint OWNER TO postgres;

--
-- Name: produits_quantitepoint_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produits_quantitepoint_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.produits_quantitepoint_id_seq OWNER TO postgres;

--
-- Name: produits_quantitepoint_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produits_quantitepoint_id_seq OWNED BY public.produits_quantitepoint.id;


--
-- Name: requestings_requestings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.requestings_requestings (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    telephone_p character varying(8) NOT NULL,
    telephone_s character varying(8),
    mail character varying(255) NOT NULL,
    other text,
    date_add timestamp with time zone NOT NULL
);


ALTER TABLE public.requestings_requestings OWNER TO postgres;

--
-- Name: requestings_requestings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.requestings_requestings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.requestings_requestings_id_seq OWNER TO postgres;

--
-- Name: requestings_requestings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.requestings_requestings_id_seq OWNED BY public.requestings_requestings.id;


--
-- Name: services_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.services_services (
    id integer NOT NULL,
    nom character varying(35) NOT NULL,
    categorie_id integer NOT NULL,
    org_id integer NOT NULL,
    admin_id integer NOT NULL,
    date_add timestamp with time zone NOT NULL
);


ALTER TABLE public.services_services OWNER TO postgres;

--
-- Name: services_services_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.services_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_services_id_seq OWNER TO postgres;

--
-- Name: services_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.services_services_id_seq OWNED BY public.services_services.id;


--
-- Name: services_services_point_vente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.services_services_point_vente (
    id integer NOT NULL,
    services_id integer NOT NULL,
    pointsaffaires_id integer NOT NULL
);


ALTER TABLE public.services_services_point_vente OWNER TO postgres;

--
-- Name: services_services_point_vente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.services_services_point_vente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_services_point_vente_id_seq OWNER TO postgres;

--
-- Name: services_services_point_vente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.services_services_point_vente_id_seq OWNED BY public.services_services_point_vente.id;


--
-- Name: ventess_histoprodvte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventess_histoprodvte (
    id integer NOT NULL,
    qte integer NOT NULL,
    date_ajout timestamp with time zone NOT NULL,
    gerant_id integer NOT NULL,
    point_id integer NOT NULL,
    produit_id integer NOT NULL
);


ALTER TABLE public.ventess_histoprodvte OWNER TO postgres;

--
-- Name: ventess_histoprodvte_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventess_histoprodvte_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ventess_histoprodvte_id_seq OWNER TO postgres;

--
-- Name: ventess_histoprodvte_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventess_histoprodvte_id_seq OWNED BY public.ventess_histoprodvte.id;


--
-- Name: ventess_produitvente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventess_produitvente (
    id integer NOT NULL,
    qte_cmdee integer NOT NULL,
    produit_id integer NOT NULL,
    vente_id integer NOT NULL
);


ALTER TABLE public.ventess_produitvente OWNER TO postgres;

--
-- Name: ventess_produitvente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventess_produitvente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ventess_produitvente_id_seq OWNER TO postgres;

--
-- Name: ventess_produitvente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventess_produitvente_id_seq OWNED BY public.ventess_produitvente.id;


--
-- Name: ventess_ventes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ventess_ventes (
    id integer NOT NULL,
    date_vente timestamp with time zone NOT NULL,
    montant_brut double precision NOT NULL,
    montant_net double precision NOT NULL,
    taxe double precision NOT NULL,
    taux_taxe integer NOT NULL,
    remise double precision,
    taux_remise integer NOT NULL,
    client_id integer,
    gerant_id integer NOT NULL,
    point_vente_id integer NOT NULL,
    net_ccial double precision NOT NULL,
    org_id integer NOT NULL
);


ALTER TABLE public.ventess_ventes OWNER TO postgres;

--
-- Name: ventess_ventes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ventess_ventes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ventess_ventes_id_seq OWNER TO postgres;

--
-- Name: ventess_ventes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ventess_ventes_id_seq OWNED BY public.ventess_ventes.id;


--
-- Name: administrateurs_administrateurs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrateurs_administrateurs ALTER COLUMN id SET DEFAULT nextval('public.administrateurs_administrateur_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: categories_categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_categories ALTER COLUMN id SET DEFAULT nextval('public.categories_categories_id_seq'::regclass);


--
-- Name: categories_typecategorie id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_typecategorie ALTER COLUMN id SET DEFAULT nextval('public.categories_typecategorie_id_seq'::regclass);


--
-- Name: clients_clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_clients ALTER COLUMN id SET DEFAULT nextval('public.clients_clients_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: gerants_utilisateurs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gerants_utilisateurs ALTER COLUMN id SET DEFAULT nextval('public.gerants_utilisateurs_id_seq'::regclass);


--
-- Name: organisations_organisations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organisations_organisations ALTER COLUMN id SET DEFAULT nextval('public.organisations_organisations_id_seq'::regclass);


--
-- Name: points_affaire_pointsaffaires id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.points_affaire_pointsaffaires ALTER COLUMN id SET DEFAULT nextval('public.points_affaire_pointsaffaires_id_seq'::regclass);


--
-- Name: prestation_prestations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestation_prestations ALTER COLUMN id SET DEFAULT nextval('public.prestation_prestations_id_seq'::regclass);


--
-- Name: prestation_serviceprestation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestation_serviceprestation ALTER COLUMN id SET DEFAULT nextval('public.prestation_serviceprestation_id_seq'::regclass);


--
-- Name: produits_histoprod id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_histoprod ALTER COLUMN id SET DEFAULT nextval('public.produits_histoprod_id_seq'::regclass);


--
-- Name: produits_produits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_produits ALTER COLUMN id SET DEFAULT nextval('public.produits_produits_id_seq'::regclass);


--
-- Name: produits_quantitepoint id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_quantitepoint ALTER COLUMN id SET DEFAULT nextval('public.produits_quantitepoint_id_seq'::regclass);


--
-- Name: requestings_requestings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requestings_requestings ALTER COLUMN id SET DEFAULT nextval('public.requestings_requestings_id_seq'::regclass);


--
-- Name: services_services id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services_services ALTER COLUMN id SET DEFAULT nextval('public.services_services_id_seq'::regclass);


--
-- Name: services_services_point_vente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services_services_point_vente ALTER COLUMN id SET DEFAULT nextval('public.services_services_point_vente_id_seq'::regclass);


--
-- Name: ventess_histoprodvte id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_histoprodvte ALTER COLUMN id SET DEFAULT nextval('public.ventess_histoprodvte_id_seq'::regclass);


--
-- Name: ventess_produitvente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_produitvente ALTER COLUMN id SET DEFAULT nextval('public.ventess_produitvente_id_seq'::regclass);


--
-- Name: ventess_ventes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_ventes ALTER COLUMN id SET DEFAULT nextval('public.ventess_ventes_id_seq'::regclass);


--
-- Data for Name: administrateurs_administrateurs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.administrateurs_administrateurs (id, telephone, organisation_id, user_id) FROM stdin;
2	99003644	2	4
1	98023038	1	3
3	12345678	1	7
4	90032501	3	11
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add organisations	7	add_organisations
26	Can change organisations	7	change_organisations
27	Can delete organisations	7	delete_organisations
28	Can view organisations	7	view_organisations
29	Can add administrateur	8	add_administrateur
30	Can change administrateur	8	change_administrateur
31	Can delete administrateur	8	delete_administrateur
32	Can view administrateur	8	view_administrateur
33	Can add administrateurs	8	add_administrateurs
34	Can change administrateurs	8	change_administrateurs
35	Can delete administrateurs	8	delete_administrateurs
36	Can view administrateurs	8	view_administrateurs
37	Can add produits	9	add_produits
38	Can change produits	9	change_produits
39	Can delete produits	9	delete_produits
40	Can view produits	9	view_produits
41	Can add points affaires	10	add_pointsaffaires
42	Can change points affaires	10	change_pointsaffaires
43	Can delete points affaires	10	delete_pointsaffaires
44	Can view points affaires	10	view_pointsaffaires
45	Can add categories	11	add_categories
46	Can change categories	11	change_categories
47	Can delete categories	11	delete_categories
48	Can view categories	11	view_categories
49	Can add type categorie	12	add_typecategorie
50	Can change type categorie	12	change_typecategorie
51	Can delete type categorie	12	delete_typecategorie
52	Can view type categorie	12	view_typecategorie
53	Can add services	13	add_services
54	Can change services	13	change_services
55	Can delete services	13	delete_services
56	Can view services	13	view_services
57	Can add utilisateurs	14	add_utilisateurs
58	Can change utilisateurs	14	change_utilisateurs
59	Can delete utilisateurs	14	delete_utilisateurs
60	Can view utilisateurs	14	view_utilisateurs
61	Can add clients	15	add_clients
62	Can change clients	15	change_clients
63	Can delete clients	15	delete_clients
64	Can view clients	15	view_clients
65	Can add ventes	16	add_ventes
66	Can change ventes	16	change_ventes
67	Can delete ventes	16	delete_ventes
68	Can view ventes	16	view_ventes
69	Can add historique prod	17	add_historiqueprod
70	Can change historique prod	17	change_historiqueprod
71	Can delete historique prod	17	delete_historiqueprod
72	Can view historique prod	17	view_historiqueprod
73	Can add quantite point	18	add_quantitepoint
74	Can change quantite point	18	change_quantitepoint
75	Can delete quantite point	18	delete_quantitepoint
76	Can view quantite point	18	view_quantitepoint
77	Can add histo prod	19	add_histoprod
78	Can change histo prod	19	change_histoprod
79	Can delete histo prod	19	delete_histoprod
80	Can view histo prod	19	view_histoprod
81	Can add produit vente	20	add_produitvente
82	Can change produit vente	20	change_produitvente
83	Can delete produit vente	20	delete_produitvente
84	Can view produit vente	20	view_produitvente
85	Can add produits	21	add_produits
86	Can change produits	21	change_produits
87	Can delete produits	21	delete_produits
88	Can view produits	21	view_produits
89	Can add produit vente	22	add_produitvente
90	Can change produit vente	22	change_produitvente
91	Can delete produit vente	22	delete_produitvente
92	Can view produit vente	22	view_produitvente
93	Can add ventes	23	add_ventes
94	Can change ventes	23	change_ventes
95	Can delete ventes	23	delete_ventes
96	Can view ventes	23	view_ventes
97	Can add histo prod vte	24	add_histoprodvte
98	Can change histo prod vte	24	change_histoprodvte
99	Can delete histo prod vte	24	delete_histoprodvte
100	Can view histo prod vte	24	view_histoprodvte
101	Can add prestations	25	add_prestations
102	Can change prestations	25	change_prestations
103	Can delete prestations	25	delete_prestations
104	Can view prestations	25	view_prestations
105	Can add service prestation	26	add_serviceprestation
106	Can change service prestation	26	change_serviceprestation
107	Can delete service prestation	26	delete_serviceprestation
108	Can view service prestation	26	view_serviceprestation
109	Can add requestings	27	add_requestings
110	Can change requestings	27	change_requestings
111	Can delete requestings	27	delete_requestings
112	Can view requestings	27	view_requestings
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
4	pbkdf2_sha256$216000$sMflVun4OhGz$Pvv8G+ID2y91rpHwu7BNaZJEYbPikfTJH5TmvKL3F4s=	2021-02-26 16:29:42.264885+00	f	Koffi	Abalo	Koffi	koffiabalo@gmail.com	f	t	2021-02-09 11:20:22.726432+00
6	pbkdf2_sha256$216000$TqyRJYayjJOx$AMGYfOOECQwH+30GvhOpVaMc11WEbWDxV1JPmzdhXEA=	2021-03-02 10:26:14.866413+00	f	smith	Efrem	Koudoh		f	t	2021-02-26 16:15:52.911483+00
8	pbkdf2_sha256$216000$su3BQ783vAdm$KnZKnGeQXX40pua96h1vvIAnDoFC1g62vqkYRMAoHA0=	2021-06-23 10:44:09.243106+00	f	line	Afiyo Aline	Dzegle		f	t	2021-03-12 11:03:42.088396+00
10	pbkdf2_sha256$216000$kLwPWs04Ijqd$OzGD6MoEjW7ibwfbKqzbZa+RmYlRvoaoPA7DX2N1B9o=	2022-08-02 10:31:04.365136+00	f	saddat12	Saddat	Igodo		f	t	2021-04-08 11:50:35.653049+00
11	pbkdf2_sha256$216000$YjtHFUSfCwmm$k4t2wQ4gZuX4jNPoS7sBzc6yNl6nbl6PXhFYZcdkRVU=	2022-08-23 10:29:13.474003+00	f	aleckbernard9	Bernard	Aleck	aleckxxxx@gmail.com	f	t	2022-08-04 17:15:01.308553+00
12	pbkdf2_sha256$216000$OmMao9Dqnu7N$I02YK6U0lg4q6I0NV77x4wyVJ6sOuHwtCo4a0FN0HLw=	2022-08-23 10:59:15.496348+00	f	ktkstan	stan	ktk		f	t	2022-08-23 10:57:35.802216+00
1	pbkdf2_sha256$216000$C8gXR7DezuaI$z/xcjI//IzWBO5CpJdxR/q0R8Nal1bN3NAyql5J2xMk=	2022-09-10 12:24:59.862861+00	t	iamwinner422	Winner	Dzegle	iamwinner422@gmail.com	t	t	2021-02-08 11:14:19+00
3	pbkdf2_sha256$216000$eJMA7y6FRSHo$c4nkNFT80KSOUZ9sBNFeqnGkFHOyn6g8MnI1wOshTwQ=	2022-09-10 12:26:07.112221+00	f	Winner	Winner	Dzegle	iamwinner422@gmail.com	f	t	2021-02-08 14:55:32.14541+00
7	pbkdf2_sha256$216000$gOgqEyWB3pnN$3qUUKm5Dubyg0cz3vm9HNKSu7d1BOzxR1eIj95vdelQ=	2022-09-10 12:26:24.858831+00	f	kubycoder	Honoré	Bilante	billhonore@hotmail.com	f	t	2021-02-26 17:02:17.033581+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: categories_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories_categories (id, nom, typecategorie_id, org_id, admin_id) FROM stdin;
2	Smartphones	1	1	1
3	Ordinateurs portables	1	1	1
4	Transferts	2	1	1
6	Audit	2	1	1
8	Transfert d'argent	2	2	2
9	Téléphones	1	2	2
10	Baladeurs	1	1	1
11	Montres Connéctés	1	1	3
12	Objets connectés	1	1	3
\.


--
-- Data for Name: categories_typecategorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories_typecategorie (id, nom) FROM stdin;
1	Produits
2	Services
\.


--
-- Data for Name: clients_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients_clients (id, nom, prenoms, telephone_p, adr_mail, adr_phisique, image, gerant_id, point_vente_id, telephone_s, org_id) FROM stdin;
8	Aziamble	Joseph	98588387	stanjoe99@gmail.com	403 Adapkamé		2	2		1
9	Traore	Fadila	93910239	traorefadila@gmail.com	23 Assiyéyé		2	2		1
10	Segbe	Matthieu	91716303	rapauto228@gmail.com	Rue des Segbe		2	2		1
11	Dossavi	Alexandre	97821593	dossalexandre@gmail.com	Boulevard du 13 Janvier		2	2		1
5	Aziawa	Jacqueline	93231340	nassaziawa@gmail.com	132 Sito Aéroport		5	43	 	1
6	Affo	Rachad	92296843	rachadshado@gmail.com	Rue des Manguiers Kégué		5	43	 	1
7	Aoudou	Chadad	93602900	chadadeyram@gmail.com	Cassablanca	\N	5	43	None	1
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-02-08 15:02:47.023361+00	2	iamwinner422	3		4	1
2	2021-02-09 14:16:15.943461+00	1	iamwinner422	2	[{"changed": {"fields": ["Username"]}}]	4	1
3	2021-02-09 14:18:14.288805+00	1	iamwinner422	2	[{"changed": {"fields": ["password"]}}]	4	1
4	2021-02-12 15:44:27.099219+00	1	Produits	1	[{"added": {}}]	12	1
5	2021-02-12 15:44:41.800054+00	2	Services	1	[{"added": {}}]	12	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	organisations	organisations
8	administrateurs	administrateurs
9	produits	produits
10	points_affaire	pointsaffaires
11	categories	categories
12	categories	typecategorie
13	services	services
14	gerants	utilisateurs
15	clients	clients
16	ventes	ventes
17	histo_prod	historiqueprod
18	produits	quantitepoint
19	produits	histoprod
20	ventes	produitvente
21	ventes	produits
22	ventess	produitvente
23	ventess	ventes
24	ventess	histoprodvte
25	prestation	prestations
26	prestation	serviceprestation
27	requestings	requestings
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-01-27 15:25:27.091668+00
2	auth	0001_initial	2021-01-27 15:25:27.443449+00
3	admin	0001_initial	2021-01-27 15:25:28.022773+00
4	admin	0002_logentry_remove_auto_add	2021-01-27 15:25:28.121712+00
5	admin	0003_logentry_add_action_flag_choices	2021-01-27 15:25:28.138701+00
6	contenttypes	0002_remove_content_type_name	2021-01-27 15:25:28.179676+00
7	auth	0002_alter_permission_name_max_length	2021-01-27 15:25:28.18767+00
8	auth	0003_alter_user_email_max_length	2021-01-27 15:25:28.214655+00
9	auth	0004_alter_user_username_opts	2021-01-27 15:25:28.235641+00
10	auth	0005_alter_user_last_login_null	2021-01-27 15:25:28.25463+00
11	auth	0006_require_contenttypes_0002	2021-01-27 15:25:28.269621+00
12	auth	0007_alter_validators_add_error_messages	2021-01-27 15:25:28.283613+00
13	auth	0008_alter_user_username_max_length	2021-01-27 15:25:28.337579+00
14	auth	0009_alter_user_last_name_max_length	2021-01-27 15:25:28.354568+00
15	auth	0010_alter_group_name_max_length	2021-01-27 15:25:28.369559+00
16	auth	0011_update_proxy_permissions	2021-01-27 15:25:28.387547+00
17	sessions	0001_initial	2021-01-27 15:25:28.493481+00
18	organisations	0001_initial	2021-01-28 16:38:30.125154+00
19	organisations	0002_auto_20210128_1733	2021-01-28 17:34:06.146914+00
20	organisations	0003_auto_20210129_1106	2021-01-29 11:06:19.626742+00
21	organisations	0004_auto_20210129_1134	2021-01-29 11:34:19.684797+00
22	organisations	0005_auto_20210129_1142	2021-01-29 11:42:25.986494+00
23	auth	0012_alter_user_first_name_max_length	2021-02-02 11:14:56.356033+00
24	administrateurs	0001_initial	2021-02-02 14:37:24.636111+00
25	organisations	0006_auto_20210202_1437	2021-02-02 14:37:24.900098+00
26	administrateurs	0002_auto_20210202_1439	2021-02-02 14:39:30.414866+00
27	administrateurs	0003_auto_20210202_1521	2021-02-02 15:22:10.380389+00
28	administrateurs	0004_auto_20210203_1128	2021-02-03 11:29:01.589952+00
29	administrateurs	0005_auto_20210208_1156	2021-02-08 11:58:02.786578+00
30	administrateurs	0006_auto_20210208_1409	2021-02-08 14:09:25.343985+00
31	organisations	0007_auto_20210208_1420	2021-02-08 14:20:56.683201+00
32	produits	0001_initial	2021-02-09 16:25:18.071497+00
33	points_affaire	0001_initial	2021-02-10 09:52:54.237863+00
34	produits	0002_produits_point_vente	2021-02-10 09:52:55.203666+00
35	categories	0001_initial	2021-02-12 15:17:01.229928+00
36	produits	0003_auto_20210212_1542	2021-02-12 15:42:30.229709+00
37	categories	0002_categories_org	2021-02-12 15:52:03.578749+00
38	categories	0003_categories_admin	2021-02-12 16:58:24.195122+00
39	produits	0004_auto_20210215_1412	2021-02-15 14:12:33.132419+00
40	produits	0005_produits_org	2021-02-15 16:08:06.97893+00
41	services	0001_initial	2021-02-15 17:31:06.340913+00
42	services	0002_services_admin	2021-02-15 18:04:29.958083+00
43	gerants	0001_initial	2021-02-16 11:38:55.605013+00
44	clients	0001_initial	2021-03-02 15:16:28.179402+00
45	produits	0006_auto_20210302_1515	2021-03-02 15:16:28.937311+00
46	services	0003_auto_20210302_1515	2021-03-02 15:16:28.991309+00
47	clients	0002_auto_20210302_1557	2021-03-02 15:57:32.962529+00
48	clients	0003_auto_20210309_1016	2021-03-09 10:18:50.950849+00
49	ventes	0001_initial	2021-03-09 10:18:51.436507+00
50	ventes	0002_auto_20210309_1018	2021-03-09 10:18:52.539912+00
51	clients	0004_auto_20210309_1123	2021-03-09 11:24:00.005958+00
52	points_affaire	0002_pointsaffaires_adresse	2021-03-11 17:24:47.058577+00
53	histo_prod	0001_initial	2021-03-15 09:39:02.86389+00
54	histo_prod	0002_auto_20210315_1151	2021-03-15 12:08:15.65584+00
55	histo_prod	0003_auto_20210315_1233	2021-03-15 12:33:34.973174+00
56	clients	0005_clients_org	2021-04-07 11:19:30.951574+00
57	clients	0006_remove_clients_org	2021-04-07 11:19:31.283573+00
58	clients	0007_clients_org	2021-04-07 11:19:31.350574+00
59	clients	0008_auto_20210407_1541	2021-04-07 15:41:22.830637+00
60	points_affaire	0003_auto_20210408_1045	2021-04-08 10:45:36.373694+00
61	auth	0013_auto_20210412_1434	2021-04-12 14:34:51.501596+00
62	services	0004_services_date_add	2021-04-12 14:37:28.415187+00
63	administrateurs	0007_remove_administrateurs_date_creation	2021-04-13 10:18:18.185804+00
64	produits	0007_remove_produits_point_vente	2021-04-14 13:19:27.068506+00
65	produits	0008_auto_20210414_1320	2021-04-14 13:20:38.566083+00
66	produits	0009_remove_produits_quantite	2021-04-21 11:00:17.93586+00
67	histo_prod	0004_delete_historiqueprod	2021-06-01 10:59:46.474238+00
68	produits	0010_histoprod	2021-06-01 10:59:46.645131+00
69	produits	0011_auto_20210519_1723	2021-06-01 10:59:46.818023+00
70	ventes	0002_auto_20210610_1526	2021-06-10 15:26:50.063304+00
71	ventess	0001_initial	2021-06-14 14:31:18.047473+00
72	ventess	0002_ventes_net_ccial	2021-06-14 17:00:47.423033+00
73	ventess	0003_histoprodvte	2021-06-15 14:12:16.48577+00
74	prestation	0001_initial	2021-06-28 11:52:27.173306+00
75	prestation	0002_auto_20210628_1514	2021-06-28 15:14:28.825234+00
76	prestation	0003_prestations_org	2021-07-05 16:56:40.831588+00
77	ventess	0004_ventes_org	2021-07-05 16:56:41.040459+00
78	ventess	0005_auto_20210706_1700	2021-07-06 17:01:06.00463+00
79	prestation	0004_auto_20210706_1707	2021-07-06 17:07:48.33211+00
80	ventess	0006_auto_20210706_1707	2021-07-06 17:07:48.612932+00
81	clients	0009_auto_20210712_1010	2022-08-31 20:17:08.508617+00
82	gerants	0002_auto_20210712_1010	2022-08-31 20:17:08.545615+00
83	organisations	0008_auto_20210815_2033	2022-08-31 20:17:08.578614+00
84	organisations	0009_auto_20210815_2038	2022-08-31 20:17:08.596613+00
85	requestings	0001_initial	2022-08-31 20:22:14.095152+00
86	produits	0012_auto_20210712_1010	2022-09-10 12:34:35.486491+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
54hbcmh1ddhm9xw1svxyqj65b6h36teb	.eJxVjDEOAiEQRe9CbQjCAGJp7xnIwMzKqoFk2a2Md1eSLbT9773_EhG3tcSt8xJnEmfhxeF3S5gfXAegO9Zbk7nVdZmTHIrcaZfXRvy87O7fQcFeRk0nzx4pO1DKokbGcFTMVmc2iIYnp5iy8l8HwPsEFAI6g5BABzuJ9wcRQji_:1lH2Um:GPv6tf-sbVIRJ3ySX7YSsh-vi8CxA_N_uYuddrGtD5Y	2021-03-16 10:43:16.105056+00
57z3fht8h1je5svsi0dl27j71nwe0qly	.eJxVjDEOAiEQRe9CbQgwoGBp7xkIwwyyaiBZdivj3XWTLbT9773_EjGtS43r4DlOJM4CxOF3w5Qf3DZA99RuXebelnlCuSlyp0NeO_Hzsrt_BzWN-q09Ha0uWIrOCpQPxoBBbwGCxuI8WwUp0AlcsYbQFERKxFqDs8w6sHh_ANdbN_o:1l98Hw:kNkoxoCzXzOB91pMn8l1kWUN560FdElXRtrvq8r7eq4	2021-02-22 15:17:20.801201+00
jii4uqbtsquk2vi9ka2z7bwjfeeiz0sw	.eJxVjDEOAiEQRe9CbQgwoGBp7xkIwwyyaiBZdivj3XWTLbT9773_EjGtS43r4DlOJM4CxOF3w5Qf3DZA99RuXebelnlCuSlyp0NeO_Hzsrt_BzWN-q09Ha0uWIrOCpQPxoBBbwGCxuI8WwUp0AlcsYbQFERKxFqDs8w6sHh_ANdbN_o:1l98qE:phFaffuqUCSKEe6hnGpxgqV-HFJIuu9yhjAp9EpZmws	2021-02-22 15:52:46.840107+00
5h0bazzt1o184x59ak8ds61g2mf80m45	.eJxVjDEOAiEQRe9CbQgwoGBp7xkIwwyyaiBZdivj3XWTLbT9773_EjGtS43r4DlOJM4CxOF3w5Qf3DZA99RuXebelnlCuSlyp0NeO_Hzsrt_BzWN-q09Ha0uWIrOCpQPxoBBbwGCxuI8WwUp0AlcsYbQFERKxFqDs8w6sHh_ANdbN_o:1l99Mx:zgHGvGXl2tfHqdUoAoiiljBEIBI2W1moIcKU_tp7h2s	2021-02-22 16:26:35.040834+00
v479dfzyseps7djtf2a5hrqh7437qu4f	.eJxVjDEOAiEQRe9CbQgwoGBp7xkIwwyyaiBZdivj3XWTLbT9773_EjGtS43r4DlOJM4CxOF3w5Qf3DZA99RuXebelnlCuSlyp0NeO_Hzsrt_BzWN-q09Ha0uWIrOCpQPxoBBbwGCxuI8WwUp0AlcsYbQFERKxFqDs8w6sHh_ANdbN_o:1l99zQ:Ur1Pow_QsCr9V_9tRQogOP7T3fxGM8mjNfe3L_6_H-I	2021-02-22 17:06:20.393426+00
st7rg10ee7h45pfzj1d66cwgw9hhpbxg	.eJxVjDEOAiEQRe9CbQgwoGBp7xkIwwyyaiBZdivj3XWTLbT9773_EjGtS43r4DlOJM4CxOF3w5Qf3DZA99RuXebelnlCuSlyp0NeO_Hzsrt_BzWN-q09Ha0uWIrOCpQPxoBBbwGCxuI8WwUp0AlcsYbQFERKxFqDs8w6sHh_ANdbN_o:1l9AhE:TNOCHKPJdWuyvj3emz7O16CZ4mByq7tCt3fU-8c-XGU	2021-02-22 17:51:36.206685+00
lxurwntnpv1umz9gvdpvmdhyu5srlguh	.eJxVjMsOgjAQRf-la9N0SgvWpXu-gUznIagpCYWV8d-VhIVu7znnvsyA2zoOW5VlmNhcDJjT75aRHlJ2wHcst9nSXNZlynZX7EGr7WeW5_Vw_w5GrOO37phiUAnQpgQxIPmgytFlwOCwkYjKDlhCgq5VUNdQOlOSRtUjeDHvD-4uOFo:1lAacA:IwfoaBVnQ4bI4rGehhvrJbwDoGncniyfm6fJBh6F36Y	2021-02-26 15:44:14.260186+00
qtjuikq4o74pk9xyudsrvs82te8d2r9r	.eJxVjDEOAiEQRe9CbQgwoGBp7xkIwwyyaiBZdivj3XWTLbT9773_EjGtS43r4DlOJM4CxOF3w5Qf3DZA99RuXebelnlCuSlyp0NeO_Hzsrt_BzWN-q09Ha0uWIrOCpQPxoBBbwGCxuI8WwUp0AlcsYbQFERKxFqDs8w6sHh_ANdbN_o:1l9QGU:tolBVttCypEXejqicE8JcGoRGmE1ZbcUw9ibQbsrWNA	2021-02-23 10:29:02.004125+00
kfjxwofwu453r3u6e6wm2eld4qne54iz	.eJxVjEEOwiAQRe_C2hAo1GFcuu8ZCDCDVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-JnERVpx-txjSg-sO6B7qrcnU6rrMUe6KPGiXUyN-Xg_376CEXr61NhlUVEAU2OYUos0OMSmDeQDLdkwACgZkckDj2VDKVqMmjYQuE4j3B_SoOCk:1l9R4S:L-2iyZ96V2zNNAqmcMbxHP9_Vavev_kbtwdBmLtx7hY	2021-02-23 11:20:40.891995+00
yxd0g01fxsfzszjiipt6gc2utrrhuidi	.eJxVjEEOwiAQRe_C2hAo1GFcuu8ZCDCDVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-JnERVpx-txjSg-sO6B7qrcnU6rrMUe6KPGiXUyN-Xg_376CEXr61NhlUVEAU2OYUos0OMSmDeQDLdkwACgZkckDj2VDKVqMmjYQuE4j3B_SoOCk:1l9TgK:nqE4EOJENT7Al96Isb04z8--BITJdJwdO9IeQe75mT8	2021-02-23 14:07:56.279451+00
gs7jz5f8btqhfcn35jyw7lp4hbfu2iu5	.eJxVjEEOwiAQRe_C2hAo1GFcuu8ZCDCDVA0kpV0Z765NutDtf-_9l_BhW4vfOi9-JnERVpx-txjSg-sO6B7qrcnU6rrMUe6KPGiXUyN-Xg_376CEXr61NhlUVEAU2OYUos0OMSmDeQDLdkwACgZkckDj2VDKVqMmjYQuE4j3B_SoOCk:1l9Tih:9_lp7EQ8uBoY2FoWAJWN475wyiFwJa7FDdxQWR2rQg8	2021-02-23 14:10:23.146973+00
yh0nn2o5qq3lh3j78svmh6e00n5almqk	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lAbI7:wZRjwolXF3wZTJhRi8Zyq0ZTkUqUfQpw0gZY7Ie0yXM	2021-02-26 16:27:35.521021+00
bugbb3t7hkju65bppt4jeyemntkd913n	.eJxVjMsOgjAQRf-la9N0SgvWpXu-gUznIagpCYWV8d-VhIVu7znnvsyA2zoOW5VlmNhcDJjT75aRHlJ2wHcst9nSXNZlynZX7EGr7WeW5_Vw_w5GrOO37phiUAnQpgQxIPmgytFlwOCwkYjKDlhCgq5VUNdQOlOSRtUjeDHvD-4uOFo:1l9TqI:E8U7SNRBe92UqCpgzpvfMxkdkftEG3OhTofLibfDX3U	2021-02-23 14:18:14.304792+00
3a6x7kmdx9cnje1md8fzbala7ovaw8h1	.eJxVjMsOgjAQRf-la9N0SgvWpXu-gUznIagpCYWV8d-VhIVu7znnvsyA2zoOW5VlmNhcDJjT75aRHlJ2wHcst9nSXNZlynZX7EGr7WeW5_Vw_w5GrOO37phiUAnQpgQxIPmgytFlwOCwkYjKDlhCgq5VUNdQOlOSRtUjeDHvD-4uOFo:1l9Tqh:P2LTyu9U7cBDb3zTc0fqQ2rkL84NqIRQlag7vmfvXCU	2021-02-23 14:18:39.078546+00
o03schfe89gebl4ro0xnj9pq1iupaps9	.eJxVjDEOAiEQRe9CbQgwoGBp7xkIwwyyaiBZdivj3XWTLbT9773_EjGtS43r4DlOJM4CxOF3w5Qf3DZA99RuXebelnlCuSlyp0NeO_Hzsrt_BzWN-q09Ha0uWIrOCpQPxoBBbwGCxuI8WwUp0AlcsYbQFERKxFqDs8w6sHh_ANdbN_o:1l9UBK:tftmopvuzZrffIpsuGZCCpjaGA4KjB19yadj0WTA5kQ	2021-02-23 14:39:58.058045+00
5d8lu90c4nvap71dkz18cqorzqnr6dnp	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lBNPm:YiLjYku2itdBKWUBru54zKLect8cWwmLLclK_ALYVBQ	2021-02-28 19:50:42.01242+00
pf5wwbilsygs3iatdsbnrpaww4ciee8p	.eJxVjDEOAiEQRe9CbQgwoGBp7xkIwwyyaiBZdivj3XWTLbT9773_EjGtS43r4DlOJM4CxOF3w5Qf3DZA99RuXebelnlCuSlyp0NeO_Hzsrt_BzWN-q09Ha0uWIrOCpQPxoBBbwGCxuI8WwUp0AlcsYbQFERKxFqDs8w6sHh_ANdbN_o:1l9UQP:IfePWIcC0Mw8e6PQF_uDGMsy5reYjD9BkHT3zH5OdG8	2021-02-23 14:55:33.53878+00
pbqkk8215891wnqgz937epaa6jkytmbb	.eJxVjDEOAiEQRe9CbQgwoGBp7xkIwwyyaiBZdivj3XWTLbT9773_EjGtS43r4DlOJM4CxOF3w5Qf3DZA99RuXebelnlCuSlyp0NeO_Hzsrt_BzWN-q09Ha0uWIrOCpQPxoBBbwGCxuI8WwUp0AlcsYbQFERKxFqDs8w6sHh_ANdbN_o:1l9Urp:gz3ReUPUUTdFjLrKOcPfPKailymUWDxT61BKK8A694A	2021-02-23 15:23:53.143227+00
334hyhvcqov0lj5dvx93qxs3920whdyi	.eJxVjDEOAiEQRe9CbQgwoGBp7xkIwwyyaiBZdivj3XWTLbT9773_EjGtS43r4DlOJM4CxOF3w5Qf3DZA99RuXebelnlCuSlyp0NeO_Hzsrt_BzWN-q09Ha0uWIrOCpQPxoBBbwGCxuI8WwUp0AlcsYbQFERKxFqDs8w6sHh_ANdbN_o:1l9VJQ:fL_zLQW522iXTOUyjhIFhTVWoP9pxGQcHCqcU-bfYJQ	2021-02-23 15:52:24.66401+00
57naxkxnie4rh9e5tu1qb7qnqehoku7n	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lBNUs:6-t2ycs6T_5mFaWud1-luf8x5yi_j3kW6afW3ySALy0	2021-02-28 19:55:58.131857+00
3vyamk9k1100ecnxf4qsfrxvmrtegc7c	.eJxVjDEOAiEQRe9CbQgwoGBp7xkIwwyyaiBZdivj3XWTLbT9773_EjGtS43r4DlOJM4CxOF3w5Qf3DZA99RuXebelnlCuSlyp0NeO_Hzsrt_BzWN-q09Ha0uWIrOCpQPxoBBbwGCxuI8WwUp0AlcsYbQFERKxFqDs8w6sHh_ANdbN_o:1l9mKs:c9oAlt6Sj7LI_8nKCQwCjvVn54WDOREfjYIupm89494	2021-02-24 10:03:02.135577+00
0bg3d3xbxszz3d9rinj65y949256u3md	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lBNdv:GnvW8jxYnFfU2OVuJIpzRbCKpY7Q1eeSshQjge1uUu4	2021-02-28 20:05:19.74259+00
jyixqcju6qucscypd2b05p4tjd17uw18	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lBNuj:Blca-SGVYxd1TFycenridt6lfkiDcQd0eJz1quA4TgI	2021-02-28 20:22:41.270969+00
rm6s6jdgnn0avhh9l38k7msaxlfvhkbr	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1l9sti:gxdnLF1wXtBidiUX3LITmgpVu2TFLj9fCPlrDi9xq0M	2021-02-24 17:03:26.598674+00
w6b58hpal8p7cn3wtwe4hukhwvivawnn	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1l9sut:c7GvUmSDdwEuIEvBklcvweDztTkHirKbx1XHlj0coaE	2021-02-24 17:04:39.06472+00
5321dms82vr7le2gej3l3k4xoj54ehx6	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lBb2r:8Tt9whl4ZJJbuOzTsDUEKAmLNaJ9zoVh27zd-HDwdtY	2021-03-01 10:23:57.31297+00
enh4tcnvgk3vfgf9t4us5l0uh8so9xbo	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lBfT1:VOCgtUlO1EqIU2nsDqbHr_ZHZCICdzWGeCh3NO9IUjM	2021-03-01 15:07:15.308199+00
yzb2msvyx44364wahk6lnuy6nnf0wo3k	.eJxVjssOgjAQRf-la9NA37B07zc0bWcE1LSmFDfGf5ciMTq7M-fOzTyJdUsZ7TJjthOQnihy-N15F64Yq4CLi0OiIcWSJ09rhO52pqcEeDvu2b-C0c3jeu21QrOOYFwFaTh2Do1W4JX3TdeiEJIxgVIy3qgOGHiJZ5A6aGG4g1o6YHaxbF-2X0p52PCeppUeGAvajyI9e70B4tJJiA:1lH2Sp:14uCmzyfEj1imljEa3nCqQFAje-pyQGGeFeemlm5Ze4	2021-03-16 10:41:15.699393+00
ik9aoyac98lgenz8mjdwnfrj6muk7owq	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lCQ0V:wxp9Klp-Wdf97B_Ai5tU03vvsmFvpClCLlef30vOlVU	2021-03-03 16:48:55.860446+00
v209tkdng6e8alwr0epx9z5plxifpg53	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lBhqK:MEm8CoDm62Ks3e7wBU15l73SIV0QXif4tnZTwuApgLg	2021-03-01 17:39:28.300497+00
6mnjli8jvi7yt5v7vy1wv58yo2rmjbl6	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lCQ1Q:4ffKouf4hvi8Q5wcuchHDao8uvp9O9NYkTKtW6VNcHQ	2021-03-03 16:49:52.677054+00
g6gdpykay105v5uuykhzrt180csu0bh5	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lBxG3:QZxEC7qUOWwugihiCkeahSgHDm6CPEAiCBC1bxHexNc	2021-03-02 10:07:03.223483+00
fbxlhy8ejx0mu7y145h5g6cnbrf5waek	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lBy1m:bzbKIG5uHsfWc7AO2wjc7pubZLCUYPF9cD5_NlI1kew	2021-03-02 10:56:22.582326+00
fn47felo4l52ec441phiq1vt2ol5id6g	.eJxVjksOwjAMRO-SNYrqOIWEJXvOUNm1Q8snkfpZIe5Oi4oEy5l5M5qnaWieumYedWh6MUeDZvfrMbU3zWsgV8qXYtuSp6FnuyJ2S0d7LqL308b-DXQ0dks7yN5D4pSgrbAK0Tl0HDxiBE51UF8hRTlgnbwTdolZSBQAa68KUZdRkkefPyfhK8pwWdTrDTLHQJU:1lCOu6:WFv4xX-TdPgkpd6JrKdUVEuZCPLBymulZexZYw5FpYY	2021-03-03 15:38:14.3984+00
gngua80okoh1n9o52kwawpgl12amjmbl	.eJxVjssOwiAQRf-FdUMopUW6dO83kIGZPtSAodSN8d-l2hhd3jnn3syDWVjzZNeFkp2R9Uyz6vfmwF8obADPEMbIfQw5zY5vCt_pwk8R6Xrc3b-BCZZpa-NBkwb0nRKiBQkEphZErfTUADQ0dILQC10cpbR2Co2BrgHllDTtUEZHShDy-0v5TTGNrK8rdotzSXcKmewHFev5AmLkSrI:1lH2ZH:nbVgp6GLE94wZ8FNf1gzxTLybRivfCyDGfxrxJwl_bQ	2021-03-16 10:47:55.694848+00
qz0j6e3c5aqmbmv12ydzrfprepx8wn3g	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lCRJ3:3rBUihOjalfTEuVujl9fxilNgqlOAmiLse0jnnEvyi4	2021-03-03 18:12:09.3513+00
aghykx9h3iyomc9hk8mz17pws5wa54k5	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lCh7w:mC3qZJobD6xeI_ySa2GZQOR7LnQ3ZR9o-WRY5waBJHU	2021-03-04 11:05:44.11274+00
2xqp6yrs23vhhecl4w542lo0x4eeugc7	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lChLR:XIBSg0kcbf7hxskhGMT88UpukR_oRNJokrPBoVKdGyM	2021-03-04 11:19:41.087713+00
30cxh1uhkl5b2lzcku5ogtlf4uy08sol	.eJxVjs0OwiAQhN-FsyHQUrfr0bvPQBYW2voDCbQn47vbmprocWa-mcxTWFrm0S41FDuxOAkjDr-eI38LaQv4SmnI0uc0l8nJDZF7WuUlc7ifd_ZvYKQ6rm3dRlBOATMFEz05E3tEr1qMDZhgOg-goMHAPXB3bNlHo1GzRsY-MqyjxI8pfU42X5HLsKrXG1UbQMY:1lD8ov:tgCtyQfiFXB4VgMUH-yRgPJJt_Oi7WlXJG0KIT_OF-w	2021-03-05 16:39:57.45069+00
klwwi2g1s6zzmvqpeheownguf0a0z6li	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lFgad:iYepGsNlS3vn95Om0ghnV5Z9A-wskRhcfoQxe4A32d0	2021-03-12 17:07:43.060577+00
jkhtnf3jdz97oly9qusiugnl0r2w7kpe	.eJxVjssOgyAQRf-FtSEIKMVl9_0GM8Co9AENYjdN_71qtWmXZ-65N_MkLUx5aKcRU-sdaYgixe_NgL1gWAJ3htBHamPIyRu6KHRLR3qKDq_Hzf0bGGAclrY7KFTgbC0Zq4ADgi4ZYsUtCgCBXc3QWaZmR0qljHRaQy1AGsl11c2jPSYIef2SfymmnjRlQe7Rz_TAkHE3wN18WEHs8LFfb18MUZs:1lH712:4xb1dxwBgFThSHNYOwDq7oHDRZgMNHfFINRD2oT0h5o	2021-03-16 15:32:52.30486+00
xnevhubbzfwxbczcj1g7daxnc1xp6j81	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lHNhz:62pBr5kT1GTkNsX-0X9RqlIQP35DDbaBgs32KdDuAoc	2021-03-17 09:22:19.34149+00
s2ea7c6x5pwcickd4mtllvwozvby1ji8	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lHULK:TBqvgJs40NegcdeBexWubE9NtZ_iWhrkNVPRtcbTqh0	2021-03-17 16:27:22.318939+00
x2govvfu7uoska3bb4eibg0msez40t4y	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lJGzq:MYJkwynm5WcUsZREMU9BBAfs1tp4TiJB2RBBj6jqt7k	2021-03-22 14:36:34.713079+00
4oc2cenzutrhj5bltaqxblr3v0i884c7	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lJHyL:VcIFNp-fh2fJlgn4x9yMKjD5JhCaAdQ_TCdpnb1_fTI	2021-03-22 15:39:05.580204+00
ctohvbgt3fb8dprwibba60sn94i9pdxr	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lJIIF:Mxl-ePB1eNwhpTvt3vhTY5UjSFSNRbtyoec617es1ec	2021-03-22 15:59:39.916418+00
awo7uz0fad8m4qfa30wznti7qqlmvm7j	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lJZVr:XLxLD56tfrOIQfW04MBssRkNc482Ll7Gbyg0zgRO9W0	2021-03-23 10:22:51.502609+00
irwl7tu1q152powneus4vj4pzrqer445	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lWiFS:jVu1vdEiwOE0JPDWX30UiCl7Y5Bj1gdEKQf9Ls5nnqU	2021-04-28 16:20:14.134876+00
di5ql8ezwn1js6mxz90l6y767py70v0n	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lKJlZ:fL01UtMRUG573EqppN-MWoSZugPuGviQhUgRmtOu-Zw	2021-03-25 11:46:09.955355+00
fr3l8983bhe0mplxev9azknxii6rl0mi	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lKLzx:o9o4DsnHJq6TXcK3Qoi4YjywQ0E4r6cg-BR6Ojinpc0	2021-03-25 14:09:09.587961+00
ipzedhv6tli6low6v1un6amvlselmjq4	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lKNND:0bNgdVP4NpA9Uzi99B-krWTFPpNRM01EbIm_QblwdXk	2021-03-25 15:37:15.897921+00
qt34065xsq5edhaijx4cl1tq1xr7j4n6	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lKPFs:SBiynLZMEVTl92eeb7kdAKxhwNZ4b_6hNXPBfhLhFOQ	2021-03-25 17:37:48.628205+00
75egqz7ncvj0kau19ypcp7s2ylkqt6d4	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lJeUV:9UXiwvPmwhqjHQULJ4icoDvz1kmjNYj-pJScXHZGk1s	2021-03-23 15:41:47.060903+00
kfko7vpb7g8vmhvnkxcuilhr9t2rc3ep	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lKgTf:WeL4JHdjZ8hWqO94BS3xcFzXjTUugTjBJoeXAujMysA	2021-03-26 12:01:11.624103+00
ekfscfk89w13kz6y3etinukgqlbja9u4	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lKk3f:rAL7_F5FkXLJTRS8F0IgbeOX37mid3XNX2BiIbKUM2Q	2021-03-26 15:50:35.099868+00
js6gzr6t63cysh88fthi01hz7sbbznlp	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lKk9W:S91IppPwnjqbovlr3dmdJbJ98e3vPCOTE41wB7Gu3lg	2021-03-26 15:56:38.786614+00
j58h9d5asjjpm8zygdi47mb47swrlzd4	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lKkEh:zLDcq-X9R-NLArBU99at9zsgcnLgHr1lLEC_CJSedWc	2021-03-26 16:01:59.944487+00
obwkipbflg2dp2wdvros0kw8yyvei0rp	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lKlb8:pkyN0q8NlIImFWUizpMgMDSPOlywy8pcn2LpsA1wi6w	2021-03-26 17:29:14.701621+00
ggdms61gccbv87cuql7xf9s6luz24bcx	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lJk9f:VQDbi-2EFdTybiR6HBOR-lIyNlraSIRSrIosfl0dPTc	2021-03-23 21:44:39.859309+00
a5krw2eqho1eqticv9ltjf6r2loveppb	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lJlnL:ljzL-vpVNbQNBGCuL5Z0Me-y_YXUmCuwvN7qqnD4ABU	2021-03-23 23:29:43.184235+00
l6vnsq2b8udozy332kdxrdhb4e281yst	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lLjtC:oJ7TQdwkK9Op1AaHuv5msVqh28oBBxFtd7bDjPSL2PY	2021-03-29 09:51:54.982137+00
6dc9lhtz4rztyrwvtnvvdo2gpwvnblbx	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lLlAX:MOTGZ0aRCVVgLXTf_Y9NMNbz44wV8X6Sb9o7q3gPAx0	2021-03-29 11:13:53.317485+00
ah51t6e2poxqi8vg4pzgc0vx6e8azky5	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lM770:goOaNyFvjAWPLCKTr9_32PuVA0H9Iz9_Jm_6GMT_X44	2021-03-30 10:39:42.691983+00
dx65vsf1z5x5l823wr27z62x13uhixbw	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lJwKL:U_4wrBrWtuGRvPqSbr3r_FZo6TsxcbmmcpXSzinheMg	2021-03-24 10:44:29.8162+00
qg8xcc5q76eyylb9512zjazm3t5ka6r8	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lJwOZ:bPHNT_mlHHqdIDNk9AW2MIOroCLoliwZIzsNrMpwPTM	2021-03-24 10:48:51.912715+00
mrac5ahqkwz14590xlhtprre29eq51x9	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lM7M2:PplLdIT0nqXgBBuq6iqhgiNxXNSA_F28mp1OVv-tbfE	2021-03-30 10:55:14.655873+00
97uf4khkncisyyx0vv0flqjfjww8bbp8	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lM7OM:naXpJf-vmdblDXRXLYHfvBcF22B5lLPWFHQVmxN-ly8	2021-03-30 10:57:38.654982+00
gupm27z4kzbxjp8wvqm8k7y9jylgzsc7	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lM7ll:zDKnHSEF2IjVT0L_hDKiTGnvYJdfssRw0uEmxDYghAM	2021-03-30 11:21:49.922419+00
6c3ki3siwd5en5ft1ct09ne6bixn69yh	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lJytG:SAGsC3K4yqmsE6_Fr1DTTFgwB18igS4xlKNer_YzOv4	2021-03-24 13:28:42.692911+00
3p0legg3ilhaqvpfusylgqixmvjfjjj4	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lKJ8x:bXgTJxHZAEMgAtPbaZJ9_bDUajICFXo-hUFZMpJrFcw	2021-03-25 11:06:15.009108+00
jj7fc1e4zi2rf1jhm0k3rn875wot0jph	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lKJAa:YKMwxtGVawH9ua-rYSZfr2hcGJBG7YN7yPiH8X351AI	2021-03-25 11:07:56.971347+00
1s4pj7db391ua3cxgpyche8qfnqq50i2	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lKJDb:0MDHm7S-KLWEsjC_h3Ufq09Oel-9A-PgT3XPVDt9hHI	2021-03-25 11:11:03.489607+00
pewutcvuefjmp4dxkko8val2enadg523	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lMSRy:Ki5fmdUMmMqU01_O-v5_-Cmq_2aia7t2EpnrWgzZK4A	2021-03-31 09:26:46.851269+00
fnmc3i5hsrsi4sfwy7t022h7ayjv3zzu	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lMSTV:wREHeFXJ8dYn6plPfshZq3l_H6lqtB9OiJtQ_TtAP9M	2021-03-31 09:28:21.99713+00
fm9iimc6ql7x8bhzl96igdut58zem5py	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lMTKN:xhoVuNuUtov6rAE-lZPdF_9DgEv14uHpQAZ9IU3PIwg	2021-03-31 10:22:59.810131+00
x9nptgu9jonnqqbjokost4vib3lufh4y	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lMUIJ:E3PyTqQ6sBgIUhpVKdF3pGZvfc23e6m_zARYaSxWzKY	2021-03-31 11:24:55.424664+00
nm7ptuk4i4mvjiypo6j7duo5zlcpb7ni	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lMX6J:TN8mF3QNzvqJw4WIVJz3BiukpMfl0jdTLd_Y2darjfM	2021-03-31 14:24:43.06762+00
rjslttr95wqxd20p2ionjlrkn9uwvpt3	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lMXhB:StE4FizzuKe8nOKJYmENYWRvgJVc15u6M3ZmlJ9fNAw	2021-03-31 15:02:49.644881+00
t3x3wy3iawmlstzpvg483lxyl0fwf2v0	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lMYPC:FRKTbDx44dbatRltWq4D1nfXxvZgxlqVS-d3NoMBrBQ	2021-03-31 15:48:18.31785+00
4jlj5n1d5ep5rb7f5t2iqvjdlsbg18il	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lMYSz:mG5FxcGQ2eSPA9DWtnMIAs0qfB1HvFbBSOsRhJFelLY	2021-03-31 15:52:13.61178+00
05bw1si32dpz1vxlcjmladj0wva1rrsw	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lNFpk:asrBWUZNt7OIrRYclqFwS9VUfV1oZbClE3dNJIb6koY	2021-04-02 14:10:36.828792+00
rsfoqd0bvd6d819i0vgzxrh1fyjz17p2	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lPs2n:yojtl5SQ4qGeF1UsVUnn4QShfUsh__yGCG2wpYmHAbQ	2021-04-09 19:22:53.62181+00
m367htvq1co9d6sw19i1f00dt64vv8tj	.eJxVjs0OwiAQhN-Fc0MopSA9evcZmoXd_qgBQ6kX47tLtTF6nJlvJvNgPax56teFUj8j65hh1a_nwF8obAGeIYyR-xhymh3fEL6nCz9FpOtxZ_8GJlimrY0HQwbQayVECxIIbC2IWumpAWho0ILQC1MYpYxxCq0F3YByStp2KKMjJQj5_VJ-VUwj6-qK3eJc1J1Cpg_xfAE4BUj-:1lTk2v:VxnWLwFoJ47yshLjRUzDipEzrAitSaxxuC_fruhtLgI	2021-04-20 11:39:01.996858+00
rth20g1qi2qqy4u391yvvnelbi43a9vs	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lTk3m:XSyTMS_GikklzIz2eljxTQj37NiSQtW_A6mb6u7rDHY	2021-04-20 11:39:54.887862+00
iflesv1or1o45w0l41xyclzu5fzw28jy	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lUA0k:L9SoCsK2_Dp0TdqzFEYKfZttoL5PjCvROfiheqnU1dI	2021-04-21 15:22:30.833498+00
9zy8alp1hxizq23ugt9h2i9qkbraqy5q	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lUVSP:-uzm4bgqymHX13FZaeORIZz85e8-DAZ30mq21EWthOo	2021-04-22 14:16:29.68801+00
hh29f1wld0lfghjty8zoxv94vjsgr3t4	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lUZDC:VzAX7udZ8ABTB4nEK36NkR0Q5Yd9W6YLuKY4gKxta3I	2021-04-22 18:17:02.627628+00
ejnm7skrt8ezogajhdki229swqcy8308	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lUn9C:taoLgCvKCqEDATU1dQMSyky53wSodz7zDz3y_8PB9ZA	2021-04-23 09:09:50.646109+00
1t4xbwebx5g6cvdii5ofhq625p2eitkp	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lUqMf:NW-6K11ylSYXqO7ns87grCpLLZfZoElkV9ssQKPFLPE	2021-04-23 12:35:57.544449+00
bwxo4fi1ggoz2e3i07g6jp4hqelbaz4n	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lUtLz:OfrCYDtRRq1fUGBaGUHmCclfIx1YuQxBogJtnilcPzM	2021-04-23 15:47:27.350879+00
4u5qiw0i4an8l6szvckwotzv1679vy3h	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lVtMa:4NHup9X5WM459byet6EwdHIxmUmJvZjJaPpcOyHL1rQ	2021-04-26 10:00:12.924711+00
shkreb2b5l1en8b6rmuruhd63xph8ozs	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lVzSx:1GfHWaDzcKmQmFECEk_Bsx_12k-CDU_V_IHSC6r40oY	2021-04-26 16:31:11.267727+00
wa5vz5pu6fe6ydaabsuztbemidsp094i	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lVzXi:iKcgv_NpKehasY61IZjZlAot49u43IzslHdIMwS_jPE	2021-04-26 16:36:06.812589+00
8vbmfey91tbfx6cvrkagwhljhk8mm8rv	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lVzfa:X6aGE6zwKZVMlKW6rX7PyazWdH-8wvrJlOravzksdEM	2021-04-26 16:44:14.121487+00
leehm6b5ej9n0v7zr3ap8fvlbsy4spy0	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lWF3K:PDfN1Vbi05491elk72UQyHRUCROpH-38uRMa91OSN9s	2021-04-27 09:09:46.427166+00
golpylhr40qebxvuotyzd8v1jvljc8oh	.eJxVjskOwjAQQ_8lZxRl6SSUI3e-oZrMTBeWROpyQvw7LSoSHG0_W36qBpe5b5ZJxmZgdVJeHX69hHSTvAV8xdwVTSXP45D0hug9nfSlsNzPO_s30OPUr23wMQILBG8dkQ21sxTaZBKxJcMWUHxVx-Ak-lBRi8DHWpwFQCJjaB1Ffgz5c9J-RRm7Vb3eKktAXg:1lWI8y:pziLWjv5jA2WDOjHpEPwjfuRu4B6aNVkjDNBQp-s5ig	2021-04-27 12:27:48.441719+00
idzke6bfb5jt7q8wbz1aagvy8bk1qg1m	.eJxVjkkOgzAUQ--SdRUFEkjDsnvOgJz8z9AhkQKsqt69UFGpXdp-tvwUHdZl7NaZczeRaIQVp1_PI9w47gFdEYckQ4pLnrzcEXmks2wT8f1ysH8DI-Zxb9PZsgWF2ihVoQTDFYq5KgNrQHNfK6ag7MYYY6035BxqDeNN6ap-GwU9pvg5qb8i5UE0xesNgYZBXA:1lXMoS:ntthDV-K85nUFGkQsUceIgNL1SPTLADvZOsDALyETAs	2021-04-30 11:39:04.104369+00
fp5bfjfeoij1krv2udr1z0ej535mwiv8	.eJxVjkkOgzAUQ--SdRUFEkjDsnvOgJz8z9AhkQKsqt69UFGpXdp-tvwUHdZl7NaZczeRaIQVp1_PI9w47gFdEYckQ4pLnrzcEXmks2wT8f1ysH8DI-Zxb9PZsgWF2ihVoQTDFYq5KgNrQHNfK6ag7MYYY6035BxqDeNN6ap-GwU9pvg5qb8i5UE0xesNgYZBXA:1lXQ4R:MtOfzWidcw9usorhDY8IphZOhLvLcOLJSs5Nz4ZSEQg	2021-04-30 15:07:47.751073+00
e2j2pupsrtuvfdz1ko66e4ixxcuxtshy	.eJxVjkkOgzAUQ--SdRUFEkjDsnvOgJz8z9AhkQKsqt69UFGpXdp-tvwUHdZl7NaZczeRaIQVp1_PI9w47gFdEYckQ4pLnrzcEXmks2wT8f1ysH8DI-Zxb9PZsgWF2ihVoQTDFYq5KgNrQHNfK6ag7MYYY6035BxqDeNN6ap-GwU9pvg5qb8i5UE0xesNgYZBXA:1lYQPq:7Sfsx2edOCYU9b1DsW_p5hk8oVLN7PltOavkpRt9yGQ	2021-05-03 09:42:02.610823+00
br3z5aatthxav0ryc64ti02ie4b38wqa	.eJxVjkkOgzAUQ--SdRUFEkjDsnvOgJz8z9AhkQKsqt69UFGpXdp-tvwUHdZl7NaZczeRaIQVp1_PI9w47gFdEYckQ4pLnrzcEXmks2wT8f1ysH8DI-Zxb9PZsgWF2ihVoQTDFYq5KgNrQHNfK6ag7MYYY6035BxqDeNN6ap-GwU9pvg5qb8i5UE0xesNgYZBXA:1lZ9sq:oHEdHugBaucgNaFf6XfpUnCL7er0FA09QXSqJQCxfwc	2021-05-05 10:15:00.675515+00
9txkmgbwd80h33aauyg1ujxbgw1zeuga	.eJxVjkkOgzAUQ--SdRUFEkjDsnvOgJz8z9AhkQKsqt69UFGpXdp-tvwUHdZl7NaZczeRaIQVp1_PI9w47gFdEYckQ4pLnrzcEXmks2wT8f1ysH8DI-Zxb9PZsgWF2ihVoQTDFYq5KgNrQHNfK6ag7MYYY6035BxqDeNN6ap-GwU9pvg5qb8i5UE0xesNgYZBXA:1lZAMX:5gw0o7LJQPlCrbWy1HOuP6pyXLAlybnAQZVW4IywFag	2021-05-05 10:45:41.178939+00
zo5e0n3o22cnv38exvwl7ihndh9ib5gu	.eJxVjkkOgzAUQ--SdRUFEkjDsnvOgJz8z9AhkQKsqt69UFGpXdp-tvwUHdZl7NaZczeRaIQVp1_PI9w47gFdEYckQ4pLnrzcEXmks2wT8f1ysH8DI-Zxb9PZsgWF2ihVoQTDFYq5KgNrQHNfK6ag7MYYY6035BxqDeNN6ap-GwU9pvg5qb8i5UE0xesNgYZBXA:1lZF9g:sUVj49n5f9DP-molbOAbrf4SMNkfQNi6nf4pKMWO6rw	2021-05-05 15:52:44.358591+00
8jt17phpevtcjcelhwwq73jz3p02weq0	.eJxVjssOgyAQRf-FtTEgD8Vl9_0GMryUtgGD2E3Tfy8a07TLM_fcm3khBVuZ1ba6rIJFIyIYNb9HDebu4p7YG8QptSbFkoNud6U907W9Jusel9P9G5hhnWtbamvw4CUDKZhgxHUWPBUSs4EDZb2gvOfSc91jgy3FWgCAoGTwneHgSR2dXIZYjjf5l1Ke0EgatKRQ6elicYfBaIOCVUtOdgulcvf-ANskTV0:1ltpav:utf-qpHW-vEvdw95hz4eQYCl0NBMeX70Yyt1P0qeAlg	2021-07-01 10:49:57.88396+00
xr598qlcz16uiv07l9ajfq3coqajn920	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lo2T8:IjNsJ-CGqCgmZo1C9U9lvy2e6hWQl8uPpUw9ePS17Sg	2021-06-15 11:21:58.019366+00
spnqs7723jbqccif17fo9la4s5zimcvd	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lo6sT:jz_-63zAHSdggRnd_spRYeQnD-hAewMQveseMC6MFuc	2021-06-15 16:04:25.726431+00
dsha6a6xzlo53uz9p0uuakrglg0wxdke	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lo77K:f-kTA6rh3byIEXcvICrL1wGNrpF_nMMx0zL45m1vCGI	2021-06-15 16:19:46.545936+00
dcvtixkin7celjqodmalf4icn13vmxzw	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lo7AX:hrhmoEt0DcnSFNzTUsSimMLAYuHbFY-t9MR6MVZiIPM	2021-06-15 16:23:05.844392+00
sllpur0zdw6xq57ucq2y0w1pg39m5n5r	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lokoC:gYwFaOfMabXfM6LNK6v_gQ7nNi6y-f5BFwhy_iEeOZM	2021-06-17 10:42:40.940071+00
ef8emvqg7r4k35udg7ylcd3kjr1y0vmn	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lomdM:m0kY9TO8dfaKLgNFHxi4CXMyyztFO08ymsF5OjCp99w	2021-06-17 12:39:36.3165+00
2ugayxmcdnxuvwcwjy9pvqlh8a4eud4q	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1looxa:GeA9kob2wjts96txEIYFMgg5tNDXvUYSamvRLauByM4	2021-06-17 15:08:38.509639+00
t5wjk57ve61of51r0tffxxkt1i8vc5gv	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lqHAE:IAGXaTsQ1sBEyEf_F5UCSea-PfBFhyIkMT5LwXw1ou8	2021-06-21 15:27:42.919105+00
81ogd5552llrvhj1bxz4zj8i2zg87o1p	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lqgE8:6OY_9XZ7BPb4UbzNC1vBo3cZol4dSR1vraPKmzLB0hs	2021-06-22 18:13:24.862494+00
lpz4tpvu8905utzgtcqqitd2hwz5nw8d	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lqur8:Agr7rB50lhTvQ2dFa7TnXTSxeW1Nd7VYcqw1TEEI-to	2021-06-23 09:50:38.928064+00
twww2iays8iejcvw98zql1u1god766zg	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lsk7Z:G7fvE7HzeZMfNT8oFBC0IEWy_TUggBuJo0umL9toq78	2021-06-28 10:47:09.611056+00
y3hv0tekr5l2cn5r8b6lim5m2baptowt	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lsneT:h4ohOA6S-cUF9uYGdIZSYlcqAomjXDDTs8fxY3Z4njM	2021-06-28 14:33:21.137057+00
x1gczddrv84vk9v8klf3puzuxuw0xvh6	.eJxVjksOgyAYhO_C2hCQh-Ky-56B_LyUtgGD2E3Tu1eNadrlzHwzmRfSsNZJr4svOjo0IEpQ82sasHef9sTdII0Z25xqiQbvCD7TBV-z84_Lyf4NTLBMW1sZZ0kfFAclueTUtw4Ck4rwXgDjnWSiEyoI0xFLHCNGAoBktA-tFRDoNjr6AqkeN8VX5TKigTZoznFTT5-qPwjOGhSdnkt2a6xoYOr9AdsvTWM:1lxnLq:tgZSfMBK6OVobk2CDkPgBKhjIt14l7jzhNxUgKLXBAI	2021-07-12 09:14:46.613559+00
uacwn3c0weqbilq7uc1p8dla4cdg0mfk	.eJxVjk0OgyAUhO_C2hCQH8Vl9z2DecBDbRswiN00vXvVmKZdzsw3k3mRHtYy9uuCuZ886QhnpPo1Lbg7xj3xN4hDoi7FkidLd4Se6UKvyePjcrJ_AyMs49Y21jvWBiPBaKklx9pDENow2SoQstFCNcoEZRvmmBfMagDQgrehdgoC30YHzBDLcVN9VcoD6XhF5jRt6omx4EFI8f4ALclIGg:1lspC7:tNmdJdPjpqE-VmXQGz19BlXkPmjZy662-uRr8g5h7NY	2021-06-28 16:12:11.963476+00
26eayrclfxp7fn4r9b3uzswfshsyugyy	.eJxVjssOgyAURP-FtTEggo9l9_0GcrkXlT7AKK6a_nuV2KRdzsyZybyYgS1NZlvdYjyxnklW_HoW8O7CEdANwhhLjCEt3pYHUp7pWl4jucflZP8GJlinva1k0yhySktRIQrdVQL1YLlFEshJKHCy7hpduUbqGgdQ1HauEkoBIue4jwI9fcgnxVfEZczKk5mXSJtPrJdtweboQ8pW5mv5_gDIakwh:1m0oYa:HX-eDd7VNGSf0DvpoHvUgmv79bAutfLpooYAS0lIDw8	2021-07-20 17:08:24.672575+00
67cay5z3rzi3xy36d3xz2tc9olsu7xog	.eJxVjssOgyAQRf-FtTEgD8Vl9_0GMryUtgGD2E3Tfy8a07TLM_fcm3khBVuZ1ba6rIJFIyIYNb9HDebu4p7YG8QptSbFkoNud6U907W9Jusel9P9G5hhnWtbamvw4CUDKZhgxHUWPBUSs4EDZb2gvOfSc91jgy3FWgCAoGTwneHgSR2dXIZYjjf5l1Ke0EgatKRQ6elicYfBaIOCVUtOdgulcvf-ANskTV0:1ltoWA:OG_hIvCFWhkWfJHzpn60Njyl24VQZc9iQ5BrOfrBtF8	2021-07-01 09:40:58.066009+00
nt25zh5v5bgxjvbr1pinfa2as17yx9r8	.eJxVjksOwjAQQ--SdRWlyeRTluw5QzVpph9ACUpTNoi701YVgqXtZ8sv1uJSxnaZKbdTYCdWS1b9mh67G8UtCVeMQ-JdiiVPnm8IP9KZX1Kg-_lg_wZGnMe1reoGBUBt-t451N46aawkg-QhKEXWgtSCjG6Elk6JvsHQkfKWrNAE2-hAGWPZb5qvSnlgJ1WxR5pW9aRYaCcA3h8Z8Ef7:1oQRcp:k3_z0HqkoBO_Eldr3izXzRz6CcQ0eDCzXkhS-lzLGP8	2022-09-06 10:59:15.663619+00
7oaz6iueasaiy4gqivuc86w2ehvm4kra	.eJxVjMsOgjAQRf-la9N0SgvWpXu-gUznIagpCYWV8d-VhIVu7znnvsyA2zoOW5VlmNhcDJjT75aRHlJ2wHcst9nSXNZlynZX7EGr7WeW5_Vw_w5GrOO37phiUAnQpgQxIPmgytFlwOCwkYjKDlhCgq5VUNdQOlOSRtUjeDHvD-4uOFo:1oTTOY:ffGC8cChY0ovEHt8qFG1ws5WAYinMR4zGemA8cl6CRU	2022-09-14 19:29:02.442646+00
amtc8lldjsvjq4iziw8qapmnh6lju8ih	.eJxVjMsOgjAQRf-la9N0SgvWpXu-gUznIagpCYWV8d-VhIVu7znnvsyA2zoOW5VlmNhcDJjT75aRHlJ2wHcst9nSXNZlynZX7EGr7WeW5_Vw_w5GrOO37phiUAnQpgQxIPmgytFlwOCwkYjKDlhCgq5VUNdQOlOSRtUjeDHvD-4uOFo:1oTpB7:FkZ7Y7DbBEms-8dMSfYNTqu87dUxPFmycmMZy7UoOSY	2022-09-15 18:44:37.10008+00
91fnx96usbkat67qi4qtxufav3n6gmkv	.eJxVjkkOgzAUQ--SdRUFEkjDsnvOgJz8z9AhkQKsqt69UFGpXdp-tvwUHdZl7NaZczeRaIQVp1_PI9w47gFdEYckQ4pLnrzcEXmks2wT8f1ysH8DI-Zxb9PZsgWF2ihVoQTDFYq5KgNrQHNfK6ag7MYYY6035BxqDeNN6ap-GwU9pvg5qb8i5UE0xesNgYZBXA:1oWzZ3:r0um_kCEoSURIwx9w7PO8zEsBMDKY9wfOGh0PwG5zh0	2022-09-24 12:26:25.087729+00
\.


--
-- Data for Name: gerants_utilisateurs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gerants_utilisateurs (id, telephone, admin_id, organisation_id, point_vente_id, user_id) FROM stdin;
1	90000000	1	1	2	6
2	81023225	1	1	2	7
3	97685753	1	1	5	8
5	97432505	1	1	43	10
6	01020304	4	3	44	12
\.


--
-- Data for Name: organisations_organisations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.organisations_organisations (id, nom, telephone_p, mail, date_add, telephone_s) FROM stdin;
2	Azert	90023809	azert@gmail.com	2021-02-09 11:19:25.131802+00	
1	Weazel Studio	98023036	contact@weazelstudio.com	2021-02-08 14:48:38.873964+00	12345678
3	ThotLab	98023037	thotlab@pagesnoires.fr	2022-08-04 17:13:41.636402+00	None
\.


--
-- Data for Name: points_affaire_pointsaffaires; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.points_affaire_pointsaffaires (id, nom, telephone_point, date_creation, admin_id, org_id, adresse) FROM stdin;
1	Azert Store I		2021-02-10 12:48:32.845188+00	2	2	0
7	PSDTT Wuiti	90909090	2021-02-12 14:12:00.184161+00	2	2	0
8	Adidogomé		2021-02-19 16:40:37.397343+00	2	2	0
5	Paris Central Studio 2	90032501	2021-02-10 17:20:54.972588+00	1	1	228 Rue des Piments
2	Paris Central Studio	99003644	2021-02-10 13:04:57.924096+00	1	1	11 Rue Avenue de la Paix
9	Paris Central Studio Champs Elysées	22222222	2021-03-17 15:03:55.448162+00	1	1	75000 Avenue Montaigne
42	PSDTT Cerfer	00000000	2021-03-26 19:03:02.299104+00	1	1	Hountigomé
43	Apple Store Novissi		2021-04-08 11:50:35.66905+00	1	1	152 Zumba Cafew
44	RedConnect	00000000	2022-08-23 10:57:35.829221+00	4	3	Kégué
\.


--
-- Data for Name: prestation_prestations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prestation_prestations (id, date_prestation, total_prestation, client_id, gerant_id, point_vente_id, org_id) FROM stdin;
1	2021-07-05 10:14:08.98949+00	20000	7	5	43	1
2	2021-07-05 17:01:31.710016+00	500000	\N	5	43	1
\.


--
-- Data for Name: prestation_serviceprestation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prestation_serviceprestation (id, prestation_id, service_id, montant_prestation) FROM stdin;
1	1	4	20000
2	2	6	500000
\.


--
-- Data for Name: produits_histoprod; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produits_histoprod (id, qte, date_ajout, admin_id, point_id, produit_id) FROM stdin;
\.


--
-- Data for Name: produits_produits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produits_produits (id, designation, prix_unitaire, date_add, admin_id, categorie_id, image, org_id) FROM stdin;
33	iPhone 8 64GO	100000	2021-06-01 11:05:38.94498+00	1	2	products_img/iphone-8-plus-1_qQdtzQI.png	1
34	iPhone 7 32Go	125000	2021-06-01 11:06:32.427081+00	1	2		1
35	HP Pavilion 15 NoteBook PC 	160000	2021-06-01 11:07:52.667986+00	1	3	products_img/c06864531.png	1
36	LG G5 32 Go	35000	2021-06-01 11:09:54.40344+00	1	3	products_img/lg-g5.png	1
37	iPod Touch 7 32 Go	40000	2021-06-01 11:11:33.869132+00	1	10	products_img/ipod-touch-select-blue-2019_GEO_US.png	1
38	LG G6 32 Go	55000	2021-06-01 11:12:33.740867+00	1	2		1
39	Apple Watch Series 6	50000	2021-06-01 11:14:10.602209+00	1	11	products_img/apple-watch-series-6-frandroid-2020_PAdXjpP.png	1
40	HomePod Mini	35000	2021-06-01 11:16:09.553494+00	1	12	products_img/apple-homepod-mini-frandroid-2020.png	1
41	iPhone SE 2 64 Go	110000	2021-06-01 11:17:59.607413+00	1	2	products_img/apple_iphone_se_64gb20201.primaryproductimage.code-MDAwMDAwMDAwMDAwMDIwNjQx_U6HI8yU.png	1
42	Apple AirTag	10000	2021-06-01 11:19:38.301375+00	1	12	products_img/airtag-single-select-202104_FV1.png	1
\.


--
-- Data for Name: produits_quantitepoint; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produits_quantitepoint (id, qte_stock, point_id, produit_id) FROM stdin;
14	12	5	33
15	12	9	33
17	20	2	34
18	20	9	34
20	7	5	35
21	7	9	35
22	17	5	36
23	17	2	36
24	17	42	36
26	25	5	38
27	25	2	38
28	25	9	38
29	14	2	39
31	50	9	40
33	30	5	41
34	30	2	41
35	30	9	41
36	20	43	41
30	6	43	39
16	11	43	33
25	31	43	37
19	4	43	34
32	34	43	40
37	74	43	42
38	10	5	\N
39	10	43	\N
\.


--
-- Data for Name: requestings_requestings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.requestings_requestings (id, nom, telephone_p, telephone_s, mail, other, date_add) FROM stdin;
\.


--
-- Data for Name: services_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.services_services (id, nom, categorie_id, org_id, admin_id, date_add) FROM stdin;
4	Transfert d'argent	4	1	1	2021-02-15 16:21:59.66212+00
6	Audition de portefeuille	6	1	1	2021-02-15 16:21:59.66212+00
\.


--
-- Data for Name: services_services_point_vente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.services_services_point_vente (id, services_id, pointsaffaires_id) FROM stdin;
1	4	2
2	4	5
4	6	5
5	6	9
6	6	42
7	6	43
8	4	9
9	4	42
10	4	43
11	6	2
\.


--
-- Data for Name: ventess_histoprodvte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventess_histoprodvte (id, qte, date_ajout, gerant_id, point_id, produit_id) FROM stdin;
1	1	2021-06-15 14:25:21.399926+00	5	43	39
2	2	2021-06-15 14:25:21.407921+00	5	43	34
3	2	2021-06-18 11:49:28.619402+00	5	43	40
4	2	2021-06-18 11:49:28.762506+00	5	43	41
5	5	2021-06-18 11:49:28.764505+00	5	43	34
6	1	2021-06-18 16:36:37.02177+00	5	43	40
7	4	2021-06-23 16:07:28.078843+00	5	43	34
8	1	2021-06-23 16:07:28.251626+00	5	43	37
9	2	2021-06-23 16:07:28.255437+00	5	43	40
10	4	2021-06-23 16:07:28.258437+00	5	43	41
11	5	2021-06-23 16:13:50.930733+00	5	43	40
12	3	2021-06-23 16:18:45.829805+00	5	43	39
13	1	2021-06-23 16:18:45.836801+00	5	43	41
14	1	2021-06-23 16:18:45.839798+00	5	43	40
15	1	2021-06-23 16:18:45.842681+00	5	43	42
16	2	2021-06-23 16:21:52.260603+00	5	43	39
17	1	2021-06-23 16:22:58.538887+00	5	43	39
18	1	2021-06-23 16:22:58.545883+00	5	43	37
19	1	2021-06-23 16:23:58.022194+00	5	43	33
20	2	2021-06-23 16:23:58.027191+00	5	43	37
21	3	2021-06-23 17:27:32.388015+00	5	43	34
22	2	2021-06-23 17:53:22.271248+00	5	43	40
\.


--
-- Data for Name: ventess_produitvente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventess_produitvente (id, qte_cmdee, produit_id, vente_id) FROM stdin;
2	1	39	6
3	3	40	6
4	2	41	6
5	1	39	7
6	2	34	7
7	2	40	8
8	2	41	8
9	5	34	8
10	1	40	9
11	4	34	10
12	1	37	10
13	2	40	10
14	4	41	10
15	5	40	11
16	3	39	12
17	1	41	12
18	1	40	12
19	1	42	12
20	2	39	13
21	1	39	14
22	1	37	14
23	1	33	15
24	2	37	15
25	3	34	16
26	2	40	17
\.


--
-- Data for Name: ventess_ventes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ventess_ventes (id, date_vente, montant_brut, montant_net, taxe, taux_taxe, remise, taux_remise, client_id, gerant_id, point_vente_id, net_ccial, org_id) FROM stdin;
6	2021-06-14 17:41:50.77387+00	375000	398250	60750	18	37500	10	7	5	43	337500	1
7	2021-06-15 14:25:21.146666+00	300000	354000	54000	18	500	1	5	5	43	49500	1
10	2021-06-23 16:07:27.95312+00	1050000	1214220	185220	18	21000	2	7	5	43	1029000	1
11	2021-06-23 16:13:50.896753+00	175000	204435	31185	18	1750	1	6	5	43	173250	1
13	2021-06-23 16:21:52.239361+00	100000	118000	18000	18	0	0	5	5	43	0	1
8	2021-06-18 11:49:28.379709+00	915000	1025715	156465	18	45750	5	\N	5	43	869250	1
9	2021-06-18 16:36:36.993917+00	35000	41300	6300	18	0	0	\N	5	43	0	1
14	2021-06-23 16:22:58.489984+00	90000	106200	16200	18	0	0	\N	5	43	0	1
17	2021-06-23 17:53:22.24327+00	70000	82600	12600	18	0	0	\N	5	43	0	1
12	2021-06-23 16:18:45.80382+00	305000	341905	52155	18	15250	5	\N	5	43	289750	1
15	2021-06-23 16:23:58.001205+00	180000	210276	32076	18	1800	1	\N	5	43	178200	1
16	2021-06-23 17:27:32.359033+00	375000	429225	65475	18	11250	3	\N	5	43	363750	1
\.


--
-- Name: administrateurs_administrateur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.administrateurs_administrateur_id_seq', 4, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 112, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 12, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: categories_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_categories_id_seq', 12, true);


--
-- Name: categories_typecategorie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_typecategorie_id_seq', 2, true);


--
-- Name: clients_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_clients_id_seq', 13, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 5, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 27, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 86, true);


--
-- Name: gerants_utilisateurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gerants_utilisateurs_id_seq', 6, true);


--
-- Name: organisations_organisations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.organisations_organisations_id_seq', 3, true);


--
-- Name: points_affaire_pointsaffaires_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.points_affaire_pointsaffaires_id_seq', 44, true);


--
-- Name: prestation_prestations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prestation_prestations_id_seq', 2, true);


--
-- Name: prestation_serviceprestation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prestation_serviceprestation_id_seq', 2, true);


--
-- Name: produits_histoprod_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produits_histoprod_id_seq', 1, false);


--
-- Name: produits_produits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produits_produits_id_seq', 43, true);


--
-- Name: produits_quantitepoint_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produits_quantitepoint_id_seq', 39, true);


--
-- Name: requestings_requestings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.requestings_requestings_id_seq', 1, false);


--
-- Name: services_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.services_services_id_seq', 6, true);


--
-- Name: services_services_point_vente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.services_services_point_vente_id_seq', 11, true);


--
-- Name: ventess_histoprodvte_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventess_histoprodvte_id_seq', 22, true);


--
-- Name: ventess_produitvente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventess_produitvente_id_seq', 26, true);


--
-- Name: ventess_ventes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ventess_ventes_id_seq', 17, true);


--
-- Name: administrateurs_administrateurs administrateurs_administrateur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_administrateur_pkey PRIMARY KEY (id);


--
-- Name: administrateurs_administrateurs administrateurs_administrateur_telephone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_administrateur_telephone_key UNIQUE (telephone);


--
-- Name: administrateurs_administrateurs administrateurs_administrateurs_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_administrateurs_user_id_key UNIQUE (user_id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: categories_categories categories_categories_nom_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categories_nom_key UNIQUE (nom);


--
-- Name: categories_categories categories_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categories_pkey PRIMARY KEY (id);


--
-- Name: categories_typecategorie categories_typecategorie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_typecategorie
    ADD CONSTRAINT categories_typecategorie_pkey PRIMARY KEY (id);


--
-- Name: clients_clients clients_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_pkey PRIMARY KEY (id);


--
-- Name: clients_clients clients_clients_telephone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_telephone_key UNIQUE (telephone_p);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: gerants_utilisateurs gerants_utilisateurs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_pkey PRIMARY KEY (id);


--
-- Name: gerants_utilisateurs gerants_utilisateurs_telephone_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_telephone_key UNIQUE (telephone);


--
-- Name: gerants_utilisateurs gerants_utilisateurs_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_user_id_key UNIQUE (user_id);


--
-- Name: organisations_organisations organisations_organisations_mail_fec430db_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_mail_fec430db_uniq UNIQUE (mail);


--
-- Name: organisations_organisations organisations_organisations_nom_32808af1_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_nom_32808af1_uniq UNIQUE (nom);


--
-- Name: organisations_organisations organisations_organisations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_pkey PRIMARY KEY (id);


--
-- Name: organisations_organisations organisations_organisations_telephone_p_09e77c51_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_telephone_p_09e77c51_uniq UNIQUE (telephone_p);


--
-- Name: points_affaire_pointsaffaires points_affaire_pointsaffaires_nom_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.points_affaire_pointsaffaires
    ADD CONSTRAINT points_affaire_pointsaffaires_nom_key UNIQUE (nom);


--
-- Name: points_affaire_pointsaffaires points_affaire_pointsaffaires_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.points_affaire_pointsaffaires
    ADD CONSTRAINT points_affaire_pointsaffaires_pkey PRIMARY KEY (id);


--
-- Name: prestation_prestations prestation_prestations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestation_prestations
    ADD CONSTRAINT prestation_prestations_pkey PRIMARY KEY (id);


--
-- Name: prestation_serviceprestation prestation_serviceprestation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestation_serviceprestation
    ADD CONSTRAINT prestation_serviceprestation_pkey PRIMARY KEY (id);


--
-- Name: produits_histoprod produits_histoprod_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_histoprod
    ADD CONSTRAINT produits_histoprod_pkey PRIMARY KEY (id);


--
-- Name: produits_produits produits_produits_designation_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_designation_key UNIQUE (designation);


--
-- Name: produits_produits produits_produits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_pkey PRIMARY KEY (id);


--
-- Name: produits_quantitepoint produits_quantitepoint_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_quantitepoint
    ADD CONSTRAINT produits_quantitepoint_pkey PRIMARY KEY (id);


--
-- Name: requestings_requestings requestings_requestings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.requestings_requestings
    ADD CONSTRAINT requestings_requestings_pkey PRIMARY KEY (id);


--
-- Name: services_services services_services_nom_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_nom_key UNIQUE (nom);


--
-- Name: services_services services_services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_pkey PRIMARY KEY (id);


--
-- Name: services_services_point_vente services_services_point__services_id_pointsaffair_d14e19e4_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services_services_point_vente
    ADD CONSTRAINT services_services_point__services_id_pointsaffair_d14e19e4_uniq UNIQUE (services_id, pointsaffaires_id);


--
-- Name: services_services_point_vente services_services_point_vente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services_services_point_vente
    ADD CONSTRAINT services_services_point_vente_pkey PRIMARY KEY (id);


--
-- Name: ventess_histoprodvte ventess_histoprodvte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_histoprodvte
    ADD CONSTRAINT ventess_histoprodvte_pkey PRIMARY KEY (id);


--
-- Name: ventess_produitvente ventess_produitvente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_produitvente
    ADD CONSTRAINT ventess_produitvente_pkey PRIMARY KEY (id);


--
-- Name: ventess_ventes ventess_ventes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_ventes
    ADD CONSTRAINT ventess_ventes_pkey PRIMARY KEY (id);


--
-- Name: administrateurs_administrateurs_organisation_id_8267725a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX administrateurs_administrateurs_organisation_id_8267725a ON public.administrateurs_administrateurs USING btree (organisation_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: categories_categories_admin_id_f2878ef6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_categories_admin_id_f2878ef6 ON public.categories_categories USING btree (admin_id);


--
-- Name: categories_categories_nom_076302a7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_categories_nom_076302a7_like ON public.categories_categories USING btree (nom varchar_pattern_ops);


--
-- Name: categories_categories_org_id_c8ad353b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_categories_org_id_c8ad353b ON public.categories_categories USING btree (org_id);


--
-- Name: categories_categories_typecategorie_id_c893c3db; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_categories_typecategorie_id_c893c3db ON public.categories_categories USING btree (typecategorie_id);


--
-- Name: clients_clients_gerant_id_ecde46d4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clients_clients_gerant_id_ecde46d4 ON public.clients_clients USING btree (gerant_id);


--
-- Name: clients_clients_org_id_973b4c82; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clients_clients_org_id_973b4c82 ON public.clients_clients USING btree (org_id);


--
-- Name: clients_clients_point_vente_id_26371778; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clients_clients_point_vente_id_26371778 ON public.clients_clients USING btree (point_vente_id);


--
-- Name: clients_clients_telephone_4a5ae726_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clients_clients_telephone_4a5ae726_like ON public.clients_clients USING btree (telephone_p varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: gerants_utilisateurs_admin_id_be93b74c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX gerants_utilisateurs_admin_id_be93b74c ON public.gerants_utilisateurs USING btree (admin_id);


--
-- Name: gerants_utilisateurs_organisation_id_0080ab33; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX gerants_utilisateurs_organisation_id_0080ab33 ON public.gerants_utilisateurs USING btree (organisation_id);


--
-- Name: gerants_utilisateurs_point_vente_id_b3ddcc1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX gerants_utilisateurs_point_vente_id_b3ddcc1b ON public.gerants_utilisateurs USING btree (point_vente_id);


--
-- Name: gerants_utilisateurs_telephone_cfd13147_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX gerants_utilisateurs_telephone_cfd13147_like ON public.gerants_utilisateurs USING btree (telephone varchar_pattern_ops);


--
-- Name: organisations_organisations_mail_fec430db_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organisations_organisations_mail_fec430db_like ON public.organisations_organisations USING btree (mail varchar_pattern_ops);


--
-- Name: organisations_organisations_nom_32808af1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX organisations_organisations_nom_32808af1_like ON public.organisations_organisations USING btree (nom varchar_pattern_ops);


--
-- Name: points_affaire_pointsaffaires_admin_id_2c0cc0ff; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX points_affaire_pointsaffaires_admin_id_2c0cc0ff ON public.points_affaire_pointsaffaires USING btree (admin_id);


--
-- Name: points_affaire_pointsaffaires_nom_a53a4486_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX points_affaire_pointsaffaires_nom_a53a4486_like ON public.points_affaire_pointsaffaires USING btree (nom varchar_pattern_ops);


--
-- Name: points_affaire_pointsaffaires_org_id_69626215; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX points_affaire_pointsaffaires_org_id_69626215 ON public.points_affaire_pointsaffaires USING btree (org_id);


--
-- Name: prestation_prestations_client_id_213e20b1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prestation_prestations_client_id_213e20b1 ON public.prestation_prestations USING btree (client_id);


--
-- Name: prestation_prestations_gerant_id_82d960ee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prestation_prestations_gerant_id_82d960ee ON public.prestation_prestations USING btree (gerant_id);


--
-- Name: prestation_prestations_org_id_28dd1814; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prestation_prestations_org_id_28dd1814 ON public.prestation_prestations USING btree (org_id);


--
-- Name: prestation_prestations_point_vente_id_6ec7ffd3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prestation_prestations_point_vente_id_6ec7ffd3 ON public.prestation_prestations USING btree (point_vente_id);


--
-- Name: prestation_serviceprestation_prestation_id_69621837; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prestation_serviceprestation_prestation_id_69621837 ON public.prestation_serviceprestation USING btree (prestation_id);


--
-- Name: prestation_serviceprestation_service_id_941bf826; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX prestation_serviceprestation_service_id_941bf826 ON public.prestation_serviceprestation USING btree (service_id);


--
-- Name: produits_histoprod_admin_id_11b16c0d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX produits_histoprod_admin_id_11b16c0d ON public.produits_histoprod USING btree (admin_id);


--
-- Name: produits_histoprod_point_id_018ff4b0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX produits_histoprod_point_id_018ff4b0 ON public.produits_histoprod USING btree (point_id);


--
-- Name: produits_histoprod_produit_id_1e382737; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX produits_histoprod_produit_id_1e382737 ON public.produits_histoprod USING btree (produit_id);


--
-- Name: produits_produits_admin_id_2e3828d7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX produits_produits_admin_id_2e3828d7 ON public.produits_produits USING btree (admin_id);


--
-- Name: produits_produits_categorie_id_5228d9a4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX produits_produits_categorie_id_5228d9a4 ON public.produits_produits USING btree (categorie_id);


--
-- Name: produits_produits_designation_f60785e7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX produits_produits_designation_f60785e7_like ON public.produits_produits USING btree (designation varchar_pattern_ops);


--
-- Name: produits_produits_org_id_49707c56; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX produits_produits_org_id_49707c56 ON public.produits_produits USING btree (org_id);


--
-- Name: produits_quantitepoint_point_id_27f0f977; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX produits_quantitepoint_point_id_27f0f977 ON public.produits_quantitepoint USING btree (point_id);


--
-- Name: produits_quantitepoint_produit_id_a4d13792; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX produits_quantitepoint_produit_id_a4d13792 ON public.produits_quantitepoint USING btree (produit_id);


--
-- Name: services_services_admin_id_be857cf7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX services_services_admin_id_be857cf7 ON public.services_services USING btree (admin_id);


--
-- Name: services_services_categorie_id_51aa7bf3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX services_services_categorie_id_51aa7bf3 ON public.services_services USING btree (categorie_id);


--
-- Name: services_services_nom_27008563_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX services_services_nom_27008563_like ON public.services_services USING btree (nom varchar_pattern_ops);


--
-- Name: services_services_org_id_49e8bd7b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX services_services_org_id_49e8bd7b ON public.services_services USING btree (org_id);


--
-- Name: services_services_point_vente_pointsaffaires_id_d5932eea; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX services_services_point_vente_pointsaffaires_id_d5932eea ON public.services_services_point_vente USING btree (pointsaffaires_id);


--
-- Name: services_services_point_vente_services_id_401bb472; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX services_services_point_vente_services_id_401bb472 ON public.services_services_point_vente USING btree (services_id);


--
-- Name: ventess_histoprodvte_gerant_id_4adde69c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventess_histoprodvte_gerant_id_4adde69c ON public.ventess_histoprodvte USING btree (gerant_id);


--
-- Name: ventess_histoprodvte_point_id_55fbef88; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventess_histoprodvte_point_id_55fbef88 ON public.ventess_histoprodvte USING btree (point_id);


--
-- Name: ventess_histoprodvte_produit_id_419970fa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventess_histoprodvte_produit_id_419970fa ON public.ventess_histoprodvte USING btree (produit_id);


--
-- Name: ventess_produitvente_produit_id_0ded1efe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventess_produitvente_produit_id_0ded1efe ON public.ventess_produitvente USING btree (produit_id);


--
-- Name: ventess_produitvente_vente_id_0521b4d0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventess_produitvente_vente_id_0521b4d0 ON public.ventess_produitvente USING btree (vente_id);


--
-- Name: ventess_ventes_client_id_8e30ac86; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventess_ventes_client_id_8e30ac86 ON public.ventess_ventes USING btree (client_id);


--
-- Name: ventess_ventes_gerant_id_0ccd936f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventess_ventes_gerant_id_0ccd936f ON public.ventess_ventes USING btree (gerant_id);


--
-- Name: ventess_ventes_org_id_3f9d12ac; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventess_ventes_org_id_3f9d12ac ON public.ventess_ventes USING btree (org_id);


--
-- Name: ventess_ventes_point_vente_id_85353d6d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ventess_ventes_point_vente_id_85353d6d ON public.ventess_ventes USING btree (point_vente_id);


--
-- Name: administrateurs_administrateurs administrateurs_admi_organisation_id_8267725a_fk_organisat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_admi_organisation_id_8267725a_fk_organisat FOREIGN KEY (organisation_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: administrateurs_administrateurs administrateurs_admi_user_id_e0f67ab8_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_admi_user_id_e0f67ab8_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categories categories_categorie_admin_id_f2878ef6_fk_administr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categorie_admin_id_f2878ef6_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categories categories_categorie_org_id_c8ad353b_fk_organisat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categorie_org_id_c8ad353b_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_categories categories_categorie_typecategorie_id_c893c3db_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categorie_typecategorie_id_c893c3db_fk_categorie FOREIGN KEY (typecategorie_id) REFERENCES public.categories_typecategorie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clients_clients clients_clients_gerant_id_ecde46d4_fk_gerants_utilisateurs_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_gerant_id_ecde46d4_fk_gerants_utilisateurs_id FOREIGN KEY (gerant_id) REFERENCES public.gerants_utilisateurs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clients_clients clients_clients_org_id_973b4c82_fk_organisat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_org_id_973b4c82_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: clients_clients clients_clients_point_vente_id_26371778_fk_points_af; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_point_vente_id_26371778_fk_points_af FOREIGN KEY (point_vente_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerants_utilisateurs gerants_utilisateurs_admin_id_be93b74c_fk_administr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_admin_id_be93b74c_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerants_utilisateurs gerants_utilisateurs_organisation_id_0080ab33_fk_organisat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_organisation_id_0080ab33_fk_organisat FOREIGN KEY (organisation_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerants_utilisateurs gerants_utilisateurs_point_vente_id_b3ddcc1b_fk_points_af; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_point_vente_id_b3ddcc1b_fk_points_af FOREIGN KEY (point_vente_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gerants_utilisateurs gerants_utilisateurs_user_id_0b9fd436_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_user_id_0b9fd436_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: points_affaire_pointsaffaires points_affaire_point_admin_id_2c0cc0ff_fk_administr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.points_affaire_pointsaffaires
    ADD CONSTRAINT points_affaire_point_admin_id_2c0cc0ff_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: points_affaire_pointsaffaires points_affaire_point_org_id_69626215_fk_organisat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.points_affaire_pointsaffaires
    ADD CONSTRAINT points_affaire_point_org_id_69626215_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: prestation_prestations prestation_prestatio_gerant_id_82d960ee_fk_gerants_u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestation_prestations
    ADD CONSTRAINT prestation_prestatio_gerant_id_82d960ee_fk_gerants_u FOREIGN KEY (gerant_id) REFERENCES public.gerants_utilisateurs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: prestation_prestations prestation_prestatio_org_id_28dd1814_fk_organisat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestation_prestations
    ADD CONSTRAINT prestation_prestatio_org_id_28dd1814_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: prestation_prestations prestation_prestatio_point_vente_id_6ec7ffd3_fk_points_af; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestation_prestations
    ADD CONSTRAINT prestation_prestatio_point_vente_id_6ec7ffd3_fk_points_af FOREIGN KEY (point_vente_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: prestation_prestations prestation_prestations_client_id_213e20b1_fk_clients_clients_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestation_prestations
    ADD CONSTRAINT prestation_prestations_client_id_213e20b1_fk_clients_clients_id FOREIGN KEY (client_id) REFERENCES public.clients_clients(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: prestation_serviceprestation prestation_servicepr_prestation_id_69621837_fk_prestatio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestation_serviceprestation
    ADD CONSTRAINT prestation_servicepr_prestation_id_69621837_fk_prestatio FOREIGN KEY (prestation_id) REFERENCES public.prestation_prestations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: prestation_serviceprestation prestation_servicepr_service_id_941bf826_fk_services_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestation_serviceprestation
    ADD CONSTRAINT prestation_servicepr_service_id_941bf826_fk_services_ FOREIGN KEY (service_id) REFERENCES public.services_services(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: produits_histoprod produits_histoprod_admin_id_11b16c0d_fk_administr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_histoprod
    ADD CONSTRAINT produits_histoprod_admin_id_11b16c0d_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: produits_histoprod produits_histoprod_point_id_018ff4b0_fk_points_af; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_histoprod
    ADD CONSTRAINT produits_histoprod_point_id_018ff4b0_fk_points_af FOREIGN KEY (point_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: produits_histoprod produits_histoprod_produit_id_1e382737_fk_produits_produits_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_histoprod
    ADD CONSTRAINT produits_histoprod_produit_id_1e382737_fk_produits_produits_id FOREIGN KEY (produit_id) REFERENCES public.produits_produits(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: produits_produits produits_produits_admin_id_2e3828d7_fk_administr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_admin_id_2e3828d7_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: produits_produits produits_produits_categorie_id_5228d9a4_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_categorie_id_5228d9a4_fk_categorie FOREIGN KEY (categorie_id) REFERENCES public.categories_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: produits_produits produits_produits_org_id_49707c56_fk_organisat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_org_id_49707c56_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: produits_quantitepoint produits_quantitepoi_point_id_27f0f977_fk_points_af; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_quantitepoint
    ADD CONSTRAINT produits_quantitepoi_point_id_27f0f977_fk_points_af FOREIGN KEY (point_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: produits_quantitepoint produits_quantitepoi_produit_id_a4d13792_fk_produits_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produits_quantitepoint
    ADD CONSTRAINT produits_quantitepoi_produit_id_a4d13792_fk_produits_ FOREIGN KEY (produit_id) REFERENCES public.produits_produits(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: services_services services_services_admin_id_be857cf7_fk_administr; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_admin_id_be857cf7_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: services_services services_services_categorie_id_51aa7bf3_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_categorie_id_51aa7bf3_fk_categorie FOREIGN KEY (categorie_id) REFERENCES public.categories_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: services_services services_services_org_id_49e8bd7b_fk_organisat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_org_id_49e8bd7b_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: services_services_point_vente services_services_po_pointsaffaires_id_d5932eea_fk_points_af; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services_services_point_vente
    ADD CONSTRAINT services_services_po_pointsaffaires_id_d5932eea_fk_points_af FOREIGN KEY (pointsaffaires_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: services_services_point_vente services_services_po_services_id_401bb472_fk_services_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.services_services_point_vente
    ADD CONSTRAINT services_services_po_services_id_401bb472_fk_services_ FOREIGN KEY (services_id) REFERENCES public.services_services(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ventess_histoprodvte ventess_histoprodvte_gerant_id_4adde69c_fk_gerants_u; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_histoprodvte
    ADD CONSTRAINT ventess_histoprodvte_gerant_id_4adde69c_fk_gerants_u FOREIGN KEY (gerant_id) REFERENCES public.gerants_utilisateurs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ventess_histoprodvte ventess_histoprodvte_point_id_55fbef88_fk_points_af; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_histoprodvte
    ADD CONSTRAINT ventess_histoprodvte_point_id_55fbef88_fk_points_af FOREIGN KEY (point_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ventess_histoprodvte ventess_histoprodvte_produit_id_419970fa_fk_produits_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_histoprodvte
    ADD CONSTRAINT ventess_histoprodvte_produit_id_419970fa_fk_produits_ FOREIGN KEY (produit_id) REFERENCES public.produits_produits(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ventess_produitvente ventess_produitvente_produit_id_0ded1efe_fk_produits_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_produitvente
    ADD CONSTRAINT ventess_produitvente_produit_id_0ded1efe_fk_produits_ FOREIGN KEY (produit_id) REFERENCES public.produits_produits(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ventess_produitvente ventess_produitvente_vente_id_0521b4d0_fk_ventess_ventes_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_produitvente
    ADD CONSTRAINT ventess_produitvente_vente_id_0521b4d0_fk_ventess_ventes_id FOREIGN KEY (vente_id) REFERENCES public.ventess_ventes(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ventess_ventes ventess_ventes_client_id_8e30ac86_fk_clients_clients_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_ventes
    ADD CONSTRAINT ventess_ventes_client_id_8e30ac86_fk_clients_clients_id FOREIGN KEY (client_id) REFERENCES public.clients_clients(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ventess_ventes ventess_ventes_gerant_id_0ccd936f_fk_gerants_utilisateurs_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_ventes
    ADD CONSTRAINT ventess_ventes_gerant_id_0ccd936f_fk_gerants_utilisateurs_id FOREIGN KEY (gerant_id) REFERENCES public.gerants_utilisateurs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ventess_ventes ventess_ventes_org_id_3f9d12ac_fk_organisat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_ventes
    ADD CONSTRAINT ventess_ventes_org_id_3f9d12ac_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ventess_ventes ventess_ventes_point_vente_id_85353d6d_fk_points_af; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ventess_ventes
    ADD CONSTRAINT ventess_ventes_point_vente_id_85353d6d_fk_points_af FOREIGN KEY (point_vente_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

