PGDMP         2    
            y            ramea_db    12.5    13.2 B   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    ramea_db    DATABASE     d   CREATE DATABASE ramea_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE ramea_db;
                postgres    false            �            1259    16394    administrateurs_administrateurs    TABLE     �   CREATE TABLE public.administrateurs_administrateurs (
    id integer NOT NULL,
    telephone character varying(8) NOT NULL,
    organisation_id integer NOT NULL,
    user_id integer NOT NULL
);
 3   DROP TABLE public.administrateurs_administrateurs;
       public         heap    postgres    false            �            1259    16397 %   administrateurs_administrateur_id_seq    SEQUENCE     �   CREATE SEQUENCE public.administrateurs_administrateur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.administrateurs_administrateur_id_seq;
       public          postgres    false    202            �           0    0 %   administrateurs_administrateur_id_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE public.administrateurs_administrateur_id_seq OWNED BY public.administrateurs_administrateurs.id;
          public          postgres    false    203            �            1259    16399 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16402    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    204            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    205            �            1259    16404    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16407    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    206            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    207            �            1259    16409    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16412    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    208            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    209            �            1259    16414 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16420    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16423    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    211            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            �            1259    16425    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    210            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    213            �            1259    16427    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16430 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    214            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    215            �            1259    16432    categories_categories    TABLE     �   CREATE TABLE public.categories_categories (
    id integer NOT NULL,
    nom character varying(55) NOT NULL,
    typecategorie_id integer NOT NULL,
    org_id integer NOT NULL,
    admin_id integer NOT NULL
);
 )   DROP TABLE public.categories_categories;
       public         heap    postgres    false            �            1259    16435    categories_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.categories_categories_id_seq;
       public          postgres    false    216            �           0    0    categories_categories_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.categories_categories_id_seq OWNED BY public.categories_categories.id;
          public          postgres    false    217            �            1259    16437    categories_typecategorie    TABLE     r   CREATE TABLE public.categories_typecategorie (
    id integer NOT NULL,
    nom character varying(35) NOT NULL
);
 ,   DROP TABLE public.categories_typecategorie;
       public         heap    postgres    false            �            1259    16440    categories_typecategorie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_typecategorie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.categories_typecategorie_id_seq;
       public          postgres    false    218            �           0    0    categories_typecategorie_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.categories_typecategorie_id_seq OWNED BY public.categories_typecategorie.id;
          public          postgres    false    219            �            1259    16442    clients_clients    TABLE     �  CREATE TABLE public.clients_clients (
    id integer NOT NULL,
    nom character varying(35) NOT NULL,
    prenoms character varying(55) NOT NULL,
    telephone_p character varying(8) NOT NULL,
    adr_mail character varying(255) NOT NULL,
    adr_phisique character varying(155) NOT NULL,
    image character varying(100),
    gerant_id integer NOT NULL,
    point_vente_id integer NOT NULL,
    telephone_s character varying(8),
    org_id integer NOT NULL
);
 #   DROP TABLE public.clients_clients;
       public         heap    postgres    false            �            1259    16448    clients_clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.clients_clients_id_seq;
       public          postgres    false    220            �           0    0    clients_clients_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.clients_clients_id_seq OWNED BY public.clients_clients.id;
          public          postgres    false    221            �            1259    16450    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16457    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    222            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    223            �            1259    16459    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16462    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    224            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    225            �            1259    16464    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16470    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    226            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    227            �            1259    16472    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16478    gerants_utilisateurs    TABLE     �   CREATE TABLE public.gerants_utilisateurs (
    id integer NOT NULL,
    telephone character varying(8) NOT NULL,
    admin_id integer NOT NULL,
    organisation_id integer NOT NULL,
    point_vente_id integer NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.gerants_utilisateurs;
       public         heap    postgres    false            �            1259    16481    gerants_utilisateurs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gerants_utilisateurs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.gerants_utilisateurs_id_seq;
       public          postgres    false    229            �           0    0    gerants_utilisateurs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.gerants_utilisateurs_id_seq OWNED BY public.gerants_utilisateurs.id;
          public          postgres    false    230            �            1259    16488    organisations_organisations    TABLE     %  CREATE TABLE public.organisations_organisations (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    telephone_p character varying(8) NOT NULL,
    mail character varying(255) NOT NULL,
    date_add timestamp with time zone NOT NULL,
    telephone_s character varying(8)
);
 /   DROP TABLE public.organisations_organisations;
       public         heap    postgres    false            �            1259    16494 "   organisations_organisations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.organisations_organisations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.organisations_organisations_id_seq;
       public          postgres    false    231            �           0    0 "   organisations_organisations_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.organisations_organisations_id_seq OWNED BY public.organisations_organisations.id;
          public          postgres    false    232            �            1259    16496    points_affaire_pointsaffaires    TABLE     @  CREATE TABLE public.points_affaire_pointsaffaires (
    id integer NOT NULL,
    nom character varying(100) NOT NULL,
    telephone_point character varying(8),
    date_creation timestamp with time zone NOT NULL,
    admin_id integer NOT NULL,
    org_id integer NOT NULL,
    adresse character varying(255) NOT NULL
);
 1   DROP TABLE public.points_affaire_pointsaffaires;
       public         heap    postgres    false            �            1259    16499 $   points_affaire_pointsaffaires_id_seq    SEQUENCE     �   CREATE SEQUENCE public.points_affaire_pointsaffaires_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.points_affaire_pointsaffaires_id_seq;
       public          postgres    false    233            �           0    0 $   points_affaire_pointsaffaires_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.points_affaire_pointsaffaires_id_seq OWNED BY public.points_affaire_pointsaffaires.id;
          public          postgres    false    234            �            1259    65547    prestation_prestations    TABLE     (  CREATE TABLE public.prestation_prestations (
    id integer NOT NULL,
    date_prestation timestamp with time zone NOT NULL,
    total_prestation double precision NOT NULL,
    client_id integer,
    gerant_id integer NOT NULL,
    point_vente_id integer NOT NULL,
    org_id integer NOT NULL
);
 *   DROP TABLE public.prestation_prestations;
       public         heap    postgres    false            �            1259    65545    prestation_prestations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prestation_prestations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.prestation_prestations_id_seq;
       public          postgres    false    252            �           0    0    prestation_prestations_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.prestation_prestations_id_seq OWNED BY public.prestation_prestations.id;
          public          postgres    false    251            �            1259    65555    prestation_serviceprestation    TABLE     �   CREATE TABLE public.prestation_serviceprestation (
    id integer NOT NULL,
    prestation_id integer NOT NULL,
    service_id integer NOT NULL,
    montant_prestation double precision NOT NULL
);
 0   DROP TABLE public.prestation_serviceprestation;
       public         heap    postgres    false            �            1259    65553 #   prestation_serviceprestation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prestation_serviceprestation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.prestation_serviceprestation_id_seq;
       public          postgres    false    254            �           0    0 #   prestation_serviceprestation_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.prestation_serviceprestation_id_seq OWNED BY public.prestation_serviceprestation.id;
          public          postgres    false    253            �            1259    16907    produits_histoprod    TABLE     �   CREATE TABLE public.produits_histoprod (
    id integer NOT NULL,
    qte integer NOT NULL,
    date_ajout timestamp with time zone NOT NULL,
    admin_id integer NOT NULL,
    point_id integer NOT NULL,
    produit_id integer NOT NULL
);
 &   DROP TABLE public.produits_histoprod;
       public         heap    postgres    false            �            1259    16905    produits_histoprod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produits_histoprod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.produits_histoprod_id_seq;
       public          postgres    false    244            �           0    0    produits_histoprod_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.produits_histoprod_id_seq OWNED BY public.produits_histoprod.id;
          public          postgres    false    243            �            1259    16501    produits_produits    TABLE     R  CREATE TABLE public.produits_produits (
    id integer NOT NULL,
    designation character varying(100) NOT NULL,
    prix_unitaire double precision NOT NULL,
    date_add timestamp with time zone NOT NULL,
    admin_id integer NOT NULL,
    categorie_id integer NOT NULL,
    image character varying(100),
    org_id integer NOT NULL
);
 %   DROP TABLE public.produits_produits;
       public         heap    postgres    false            �            1259    16504    produits_produits_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produits_produits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.produits_produits_id_seq;
       public          postgres    false    235            �           0    0    produits_produits_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.produits_produits_id_seq OWNED BY public.produits_produits.id;
          public          postgres    false    236            �            1259    16506    produits_quantitepoint    TABLE     �   CREATE TABLE public.produits_quantitepoint (
    id integer NOT NULL,
    qte_stock integer NOT NULL,
    point_id integer NOT NULL,
    produit_id integer NOT NULL
);
 *   DROP TABLE public.produits_quantitepoint;
       public         heap    postgres    false            �            1259    16509    produits_quantitepoint_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produits_quantitepoint_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.produits_quantitepoint_id_seq;
       public          postgres    false    237            �           0    0    produits_quantitepoint_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.produits_quantitepoint_id_seq OWNED BY public.produits_quantitepoint.id;
          public          postgres    false    238            �            1259    16511    services_services    TABLE     �   CREATE TABLE public.services_services (
    id integer NOT NULL,
    nom character varying(35) NOT NULL,
    categorie_id integer NOT NULL,
    org_id integer NOT NULL,
    admin_id integer NOT NULL,
    date_add timestamp with time zone NOT NULL
);
 %   DROP TABLE public.services_services;
       public         heap    postgres    false            �            1259    16514    services_services_id_seq    SEQUENCE     �   CREATE SEQUENCE public.services_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.services_services_id_seq;
       public          postgres    false    239            �           0    0    services_services_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.services_services_id_seq OWNED BY public.services_services.id;
          public          postgres    false    240            �            1259    16516    services_services_point_vente    TABLE     �   CREATE TABLE public.services_services_point_vente (
    id integer NOT NULL,
    services_id integer NOT NULL,
    pointsaffaires_id integer NOT NULL
);
 1   DROP TABLE public.services_services_point_vente;
       public         heap    postgres    false            �            1259    16519 $   services_services_point_vente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.services_services_point_vente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.services_services_point_vente_id_seq;
       public          postgres    false    241            �           0    0 $   services_services_point_vente_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.services_services_point_vente_id_seq OWNED BY public.services_services_point_vente.id;
          public          postgres    false    242            �            1259    32779    ventess_histoprodvte    TABLE     �   CREATE TABLE public.ventess_histoprodvte (
    id integer NOT NULL,
    qte integer NOT NULL,
    date_ajout timestamp with time zone NOT NULL,
    gerant_id integer NOT NULL,
    point_id integer NOT NULL,
    produit_id integer NOT NULL
);
 (   DROP TABLE public.ventess_histoprodvte;
       public         heap    postgres    false            �            1259    32777    ventess_histoprodvte_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ventess_histoprodvte_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ventess_histoprodvte_id_seq;
       public          postgres    false    250            �           0    0    ventess_histoprodvte_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ventess_histoprodvte_id_seq OWNED BY public.ventess_histoprodvte.id;
          public          postgres    false    249            �            1259    24654    ventess_produitvente    TABLE     �   CREATE TABLE public.ventess_produitvente (
    id integer NOT NULL,
    qte_cmdee integer NOT NULL,
    produit_id integer NOT NULL,
    vente_id integer NOT NULL
);
 (   DROP TABLE public.ventess_produitvente;
       public         heap    postgres    false            �            1259    24652    ventess_produitvente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ventess_produitvente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ventess_produitvente_id_seq;
       public          postgres    false    246            �           0    0    ventess_produitvente_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ventess_produitvente_id_seq OWNED BY public.ventess_produitvente.id;
          public          postgres    false    245            �            1259    24662    ventess_ventes    TABLE     �  CREATE TABLE public.ventess_ventes (
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
 "   DROP TABLE public.ventess_ventes;
       public         heap    postgres    false            �            1259    24660    ventess_ventes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ventess_ventes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ventess_ventes_id_seq;
       public          postgres    false    248            �           0    0    ventess_ventes_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ventess_ventes_id_seq OWNED BY public.ventess_ventes.id;
          public          postgres    false    247                       2604    16531 "   administrateurs_administrateurs id    DEFAULT     �   ALTER TABLE ONLY public.administrateurs_administrateurs ALTER COLUMN id SET DEFAULT nextval('public.administrateurs_administrateur_id_seq'::regclass);
 Q   ALTER TABLE public.administrateurs_administrateurs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202                        2604    16532    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            !           2604    16533    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            "           2604    16534    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            #           2604    16535    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    210            $           2604    16536    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211            %           2604    16537    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            &           2604    16538    categories_categories id    DEFAULT     �   ALTER TABLE ONLY public.categories_categories ALTER COLUMN id SET DEFAULT nextval('public.categories_categories_id_seq'::regclass);
 G   ALTER TABLE public.categories_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            '           2604    16539    categories_typecategorie id    DEFAULT     �   ALTER TABLE ONLY public.categories_typecategorie ALTER COLUMN id SET DEFAULT nextval('public.categories_typecategorie_id_seq'::regclass);
 J   ALTER TABLE public.categories_typecategorie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            (           2604    16540    clients_clients id    DEFAULT     x   ALTER TABLE ONLY public.clients_clients ALTER COLUMN id SET DEFAULT nextval('public.clients_clients_id_seq'::regclass);
 A   ALTER TABLE public.clients_clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            )           2604    16541    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            +           2604    16542    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            ,           2604    16543    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            -           2604    16544    gerants_utilisateurs id    DEFAULT     �   ALTER TABLE ONLY public.gerants_utilisateurs ALTER COLUMN id SET DEFAULT nextval('public.gerants_utilisateurs_id_seq'::regclass);
 F   ALTER TABLE public.gerants_utilisateurs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            .           2604    16546    organisations_organisations id    DEFAULT     �   ALTER TABLE ONLY public.organisations_organisations ALTER COLUMN id SET DEFAULT nextval('public.organisations_organisations_id_seq'::regclass);
 M   ALTER TABLE public.organisations_organisations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            /           2604    16547     points_affaire_pointsaffaires id    DEFAULT     �   ALTER TABLE ONLY public.points_affaire_pointsaffaires ALTER COLUMN id SET DEFAULT nextval('public.points_affaire_pointsaffaires_id_seq'::regclass);
 O   ALTER TABLE public.points_affaire_pointsaffaires ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            8           2604    65550    prestation_prestations id    DEFAULT     �   ALTER TABLE ONLY public.prestation_prestations ALTER COLUMN id SET DEFAULT nextval('public.prestation_prestations_id_seq'::regclass);
 H   ALTER TABLE public.prestation_prestations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            9           2604    65558    prestation_serviceprestation id    DEFAULT     �   ALTER TABLE ONLY public.prestation_serviceprestation ALTER COLUMN id SET DEFAULT nextval('public.prestation_serviceprestation_id_seq'::regclass);
 N   ALTER TABLE public.prestation_serviceprestation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            4           2604    16910    produits_histoprod id    DEFAULT     ~   ALTER TABLE ONLY public.produits_histoprod ALTER COLUMN id SET DEFAULT nextval('public.produits_histoprod_id_seq'::regclass);
 D   ALTER TABLE public.produits_histoprod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243    244            0           2604    16548    produits_produits id    DEFAULT     |   ALTER TABLE ONLY public.produits_produits ALTER COLUMN id SET DEFAULT nextval('public.produits_produits_id_seq'::regclass);
 C   ALTER TABLE public.produits_produits ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            1           2604    16549    produits_quantitepoint id    DEFAULT     �   ALTER TABLE ONLY public.produits_quantitepoint ALTER COLUMN id SET DEFAULT nextval('public.produits_quantitepoint_id_seq'::regclass);
 H   ALTER TABLE public.produits_quantitepoint ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            2           2604    16550    services_services id    DEFAULT     |   ALTER TABLE ONLY public.services_services ALTER COLUMN id SET DEFAULT nextval('public.services_services_id_seq'::regclass);
 C   ALTER TABLE public.services_services ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            3           2604    16551     services_services_point_vente id    DEFAULT     �   ALTER TABLE ONLY public.services_services_point_vente ALTER COLUMN id SET DEFAULT nextval('public.services_services_point_vente_id_seq'::regclass);
 O   ALTER TABLE public.services_services_point_vente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            7           2604    32782    ventess_histoprodvte id    DEFAULT     �   ALTER TABLE ONLY public.ventess_histoprodvte ALTER COLUMN id SET DEFAULT nextval('public.ventess_histoprodvte_id_seq'::regclass);
 F   ALTER TABLE public.ventess_histoprodvte ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            5           2604    24657    ventess_produitvente id    DEFAULT     �   ALTER TABLE ONLY public.ventess_produitvente ALTER COLUMN id SET DEFAULT nextval('public.ventess_produitvente_id_seq'::regclass);
 F   ALTER TABLE public.ventess_produitvente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            6           2604    24665    ventess_ventes id    DEFAULT     v   ALTER TABLE ONLY public.ventess_ventes ALTER COLUMN id SET DEFAULT nextval('public.ventess_ventes_id_seq'::regclass);
 @   ALTER TABLE public.ventess_ventes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248            �          0    16394    administrateurs_administrateurs 
   TABLE DATA           b   COPY public.administrateurs_administrateurs (id, telephone, organisation_id, user_id) FROM stdin;
    public          postgres    false    202   Y�      �          0    16399 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    204   ��      �          0    16404    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    206   ��      �          0    16409    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    208   ��      �          0    16414 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    210   ��      �          0    16420    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    211   �      �          0    16427    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    214   �      �          0    16432    categories_categories 
   TABLE DATA           \   COPY public.categories_categories (id, nom, typecategorie_id, org_id, admin_id) FROM stdin;
    public          postgres    false    216   <�      �          0    16437    categories_typecategorie 
   TABLE DATA           ;   COPY public.categories_typecategorie (id, nom) FROM stdin;
    public          postgres    false    218   ��      �          0    16442    clients_clients 
   TABLE DATA           �   COPY public.clients_clients (id, nom, prenoms, telephone_p, adr_mail, adr_phisique, image, gerant_id, point_vente_id, telephone_s, org_id) FROM stdin;
    public          postgres    false    220   �      �          0    16450    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    222   ��      �          0    16459    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    224   ~�      �          0    16464    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    226   ��      �          0    16472    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    228   7�      �          0    16478    gerants_utilisateurs 
   TABLE DATA           q   COPY public.gerants_utilisateurs (id, telephone, admin_id, organisation_id, point_vente_id, user_id) FROM stdin;
    public          postgres    false    229   �      �          0    16488    organisations_organisations 
   TABLE DATA           h   COPY public.organisations_organisations (id, nom, telephone_p, mail, date_add, telephone_s) FROM stdin;
    public          postgres    false    231   /      �          0    16496    points_affaire_pointsaffaires 
   TABLE DATA           {   COPY public.points_affaire_pointsaffaires (id, nom, telephone_point, date_creation, admin_id, org_id, adresse) FROM stdin;
    public          postgres    false    233   �      �          0    65547    prestation_prestations 
   TABLE DATA           �   COPY public.prestation_prestations (id, date_prestation, total_prestation, client_id, gerant_id, point_vente_id, org_id) FROM stdin;
    public          postgres    false    252   6      �          0    65555    prestation_serviceprestation 
   TABLE DATA           i   COPY public.prestation_serviceprestation (id, prestation_id, service_id, montant_prestation) FROM stdin;
    public          postgres    false    254   �      �          0    16907    produits_histoprod 
   TABLE DATA           a   COPY public.produits_histoprod (id, qte, date_ajout, admin_id, point_id, produit_id) FROM stdin;
    public          postgres    false    244   �      �          0    16501    produits_produits 
   TABLE DATA           |   COPY public.produits_produits (id, designation, prix_unitaire, date_add, admin_id, categorie_id, image, org_id) FROM stdin;
    public          postgres    false    235   �      �          0    16506    produits_quantitepoint 
   TABLE DATA           U   COPY public.produits_quantitepoint (id, qte_stock, point_id, produit_id) FROM stdin;
    public          postgres    false    237   �      �          0    16511    services_services 
   TABLE DATA           ^   COPY public.services_services (id, nom, categorie_id, org_id, admin_id, date_add) FROM stdin;
    public          postgres    false    239   z      �          0    16516    services_services_point_vente 
   TABLE DATA           [   COPY public.services_services_point_vente (id, services_id, pointsaffaires_id) FROM stdin;
    public          postgres    false    241   �      �          0    32779    ventess_histoprodvte 
   TABLE DATA           d   COPY public.ventess_histoprodvte (id, qte, date_ajout, gerant_id, point_id, produit_id) FROM stdin;
    public          postgres    false    250   4      �          0    24654    ventess_produitvente 
   TABLE DATA           S   COPY public.ventess_produitvente (id, qte_cmdee, produit_id, vente_id) FROM stdin;
    public          postgres    false    246   Y      �          0    24662    ventess_ventes 
   TABLE DATA           �   COPY public.ventess_ventes (id, date_vente, montant_brut, montant_net, taxe, taux_taxe, remise, taux_remise, client_id, gerant_id, point_vente_id, net_ccial, org_id) FROM stdin;
    public          postgres    false    248   �      �           0    0 %   administrateurs_administrateur_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.administrateurs_administrateur_id_seq', 3, true);
          public          postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 108, true);
          public          postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 10, true);
          public          postgres    false    213            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    215            �           0    0    categories_categories_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.categories_categories_id_seq', 12, true);
          public          postgres    false    217            �           0    0    categories_typecategorie_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.categories_typecategorie_id_seq', 2, true);
          public          postgres    false    219            �           0    0    clients_clients_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.clients_clients_id_seq', 13, true);
          public          postgres    false    221            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 5, true);
          public          postgres    false    223            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 26, true);
          public          postgres    false    225            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 80, true);
          public          postgres    false    227            �           0    0    gerants_utilisateurs_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.gerants_utilisateurs_id_seq', 5, true);
          public          postgres    false    230            �           0    0 "   organisations_organisations_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.organisations_organisations_id_seq', 2, true);
          public          postgres    false    232            �           0    0 $   points_affaire_pointsaffaires_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.points_affaire_pointsaffaires_id_seq', 43, true);
          public          postgres    false    234            �           0    0    prestation_prestations_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.prestation_prestations_id_seq', 2, true);
          public          postgres    false    251            �           0    0 #   prestation_serviceprestation_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.prestation_serviceprestation_id_seq', 2, true);
          public          postgres    false    253            �           0    0    produits_histoprod_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.produits_histoprod_id_seq', 1, false);
          public          postgres    false    243            �           0    0    produits_produits_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.produits_produits_id_seq', 42, true);
          public          postgres    false    236            �           0    0    produits_quantitepoint_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.produits_quantitepoint_id_seq', 37, true);
          public          postgres    false    238            �           0    0    services_services_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.services_services_id_seq', 6, true);
          public          postgres    false    240            �           0    0 $   services_services_point_vente_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.services_services_point_vente_id_seq', 11, true);
          public          postgres    false    242            �           0    0    ventess_histoprodvte_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ventess_histoprodvte_id_seq', 22, true);
          public          postgres    false    249            �           0    0    ventess_produitvente_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ventess_produitvente_id_seq', 26, true);
          public          postgres    false    245            �           0    0    ventess_ventes_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ventess_ventes_id_seq', 17, true);
          public          postgres    false    247            ;           2606    16555 C   administrateurs_administrateurs administrateurs_administrateur_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_administrateur_pkey PRIMARY KEY (id);
 m   ALTER TABLE ONLY public.administrateurs_administrateurs DROP CONSTRAINT administrateurs_administrateur_pkey;
       public            postgres    false    202            =           2606    16557 L   administrateurs_administrateurs administrateurs_administrateur_telephone_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_administrateur_telephone_key UNIQUE (telephone);
 v   ALTER TABLE ONLY public.administrateurs_administrateurs DROP CONSTRAINT administrateurs_administrateur_telephone_key;
       public            postgres    false    202            @           2606    16559 K   administrateurs_administrateurs administrateurs_administrateurs_user_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_administrateurs_user_id_key UNIQUE (user_id);
 u   ALTER TABLE ONLY public.administrateurs_administrateurs DROP CONSTRAINT administrateurs_administrateurs_user_id_key;
       public            postgres    false    202            C           2606    16561    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    204            H           2606    16563 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    206    206            K           2606    16565 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    206            E           2606    16567    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    204            N           2606    16569 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    208    208            P           2606    16571 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    208            X           2606    16573 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    211            [           2606    16575 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    211    211            R           2606    16577    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    210            ^           2606    16579 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    214            a           2606    16581 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    214    214            U           2606    16583     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    210            e           2606    16585 3   categories_categories categories_categories_nom_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categories_nom_key UNIQUE (nom);
 ]   ALTER TABLE ONLY public.categories_categories DROP CONSTRAINT categories_categories_nom_key;
       public            postgres    false    216            h           2606    16587 0   categories_categories categories_categories_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categories_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.categories_categories DROP CONSTRAINT categories_categories_pkey;
       public            postgres    false    216            k           2606    16589 6   categories_typecategorie categories_typecategorie_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.categories_typecategorie
    ADD CONSTRAINT categories_typecategorie_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.categories_typecategorie DROP CONSTRAINT categories_typecategorie_pkey;
       public            postgres    false    218            o           2606    16591 $   clients_clients clients_clients_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.clients_clients DROP CONSTRAINT clients_clients_pkey;
       public            postgres    false    220            s           2606    16593 -   clients_clients clients_clients_telephone_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_telephone_key UNIQUE (telephone_p);
 W   ALTER TABLE ONLY public.clients_clients DROP CONSTRAINT clients_clients_telephone_key;
       public            postgres    false    220            v           2606    16595 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    222            y           2606    16597 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    224    224            {           2606    16599 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    224            }           2606    16601 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    226            �           2606    16603 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    228            �           2606    16605 .   gerants_utilisateurs gerants_utilisateurs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_pkey;
       public            postgres    false    229            �           2606    16607 7   gerants_utilisateurs gerants_utilisateurs_telephone_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_telephone_key UNIQUE (telephone);
 a   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_telephone_key;
       public            postgres    false    229            �           2606    16609 5   gerants_utilisateurs gerants_utilisateurs_user_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_user_id_key UNIQUE (user_id);
 _   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_user_id_key;
       public            postgres    false    229            �           2606    16613 J   organisations_organisations organisations_organisations_mail_fec430db_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_mail_fec430db_uniq UNIQUE (mail);
 t   ALTER TABLE ONLY public.organisations_organisations DROP CONSTRAINT organisations_organisations_mail_fec430db_uniq;
       public            postgres    false    231            �           2606    16615 I   organisations_organisations organisations_organisations_nom_32808af1_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_nom_32808af1_uniq UNIQUE (nom);
 s   ALTER TABLE ONLY public.organisations_organisations DROP CONSTRAINT organisations_organisations_nom_32808af1_uniq;
       public            postgres    false    231            �           2606    16617 <   organisations_organisations organisations_organisations_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.organisations_organisations DROP CONSTRAINT organisations_organisations_pkey;
       public            postgres    false    231            �           2606    16619 Q   organisations_organisations organisations_organisations_telephone_p_09e77c51_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_telephone_p_09e77c51_uniq UNIQUE (telephone_p);
 {   ALTER TABLE ONLY public.organisations_organisations DROP CONSTRAINT organisations_organisations_telephone_p_09e77c51_uniq;
       public            postgres    false    231            �           2606    16621 Q   organisations_organisations organisations_organisations_telephone_s_e27f94a0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_telephone_s_e27f94a0_uniq UNIQUE (telephone_s);
 {   ALTER TABLE ONLY public.organisations_organisations DROP CONSTRAINT organisations_organisations_telephone_s_e27f94a0_uniq;
       public            postgres    false    231            �           2606    16623 C   points_affaire_pointsaffaires points_affaire_pointsaffaires_nom_key 
   CONSTRAINT     }   ALTER TABLE ONLY public.points_affaire_pointsaffaires
    ADD CONSTRAINT points_affaire_pointsaffaires_nom_key UNIQUE (nom);
 m   ALTER TABLE ONLY public.points_affaire_pointsaffaires DROP CONSTRAINT points_affaire_pointsaffaires_nom_key;
       public            postgres    false    233            �           2606    16625 @   points_affaire_pointsaffaires points_affaire_pointsaffaires_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.points_affaire_pointsaffaires
    ADD CONSTRAINT points_affaire_pointsaffaires_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.points_affaire_pointsaffaires DROP CONSTRAINT points_affaire_pointsaffaires_pkey;
       public            postgres    false    233            �           2606    65552 2   prestation_prestations prestation_prestations_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.prestation_prestations
    ADD CONSTRAINT prestation_prestations_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.prestation_prestations DROP CONSTRAINT prestation_prestations_pkey;
       public            postgres    false    252            �           2606    65560 >   prestation_serviceprestation prestation_serviceprestation_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.prestation_serviceprestation
    ADD CONSTRAINT prestation_serviceprestation_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.prestation_serviceprestation DROP CONSTRAINT prestation_serviceprestation_pkey;
       public            postgres    false    254            �           2606    16912 *   produits_histoprod produits_histoprod_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.produits_histoprod
    ADD CONSTRAINT produits_histoprod_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.produits_histoprod DROP CONSTRAINT produits_histoprod_pkey;
       public            postgres    false    244            �           2606    16627 3   produits_produits produits_produits_designation_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_designation_key UNIQUE (designation);
 ]   ALTER TABLE ONLY public.produits_produits DROP CONSTRAINT produits_produits_designation_key;
       public            postgres    false    235            �           2606    16629 (   produits_produits produits_produits_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.produits_produits DROP CONSTRAINT produits_produits_pkey;
       public            postgres    false    235            �           2606    16631 2   produits_quantitepoint produits_quantitepoint_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.produits_quantitepoint
    ADD CONSTRAINT produits_quantitepoint_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.produits_quantitepoint DROP CONSTRAINT produits_quantitepoint_pkey;
       public            postgres    false    237            �           2606    16633 +   services_services services_services_nom_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_nom_key UNIQUE (nom);
 U   ALTER TABLE ONLY public.services_services DROP CONSTRAINT services_services_nom_key;
       public            postgres    false    239            �           2606    16635 (   services_services services_services_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.services_services DROP CONSTRAINT services_services_pkey;
       public            postgres    false    239            �           2606    16637 ]   services_services_point_vente services_services_point__services_id_pointsaffair_d14e19e4_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.services_services_point_vente
    ADD CONSTRAINT services_services_point__services_id_pointsaffair_d14e19e4_uniq UNIQUE (services_id, pointsaffaires_id);
 �   ALTER TABLE ONLY public.services_services_point_vente DROP CONSTRAINT services_services_point__services_id_pointsaffair_d14e19e4_uniq;
       public            postgres    false    241    241            �           2606    16639 @   services_services_point_vente services_services_point_vente_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.services_services_point_vente
    ADD CONSTRAINT services_services_point_vente_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.services_services_point_vente DROP CONSTRAINT services_services_point_vente_pkey;
       public            postgres    false    241            �           2606    32784 .   ventess_histoprodvte ventess_histoprodvte_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ventess_histoprodvte
    ADD CONSTRAINT ventess_histoprodvte_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.ventess_histoprodvte DROP CONSTRAINT ventess_histoprodvte_pkey;
       public            postgres    false    250            �           2606    24659 .   ventess_produitvente ventess_produitvente_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ventess_produitvente
    ADD CONSTRAINT ventess_produitvente_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.ventess_produitvente DROP CONSTRAINT ventess_produitvente_pkey;
       public            postgres    false    246            �           2606    24667 "   ventess_ventes ventess_ventes_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ventess_ventes
    ADD CONSTRAINT ventess_ventes_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.ventess_ventes DROP CONSTRAINT ventess_ventes_pkey;
       public            postgres    false    248            >           1259    16646 8   administrateurs_administrateurs_organisation_id_8267725a    INDEX     �   CREATE INDEX administrateurs_administrateurs_organisation_id_8267725a ON public.administrateurs_administrateurs USING btree (organisation_id);
 L   DROP INDEX public.administrateurs_administrateurs_organisation_id_8267725a;
       public            postgres    false    202            A           1259    16647    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    204            F           1259    16648 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    206            I           1259    16649 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    206            L           1259    16650 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    208            V           1259    16651 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    211            Y           1259    16652 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    211            \           1259    16653 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    214            _           1259    16654 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    214            S           1259    16655     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    210            b           1259    16656 '   categories_categories_admin_id_f2878ef6    INDEX     m   CREATE INDEX categories_categories_admin_id_f2878ef6 ON public.categories_categories USING btree (admin_id);
 ;   DROP INDEX public.categories_categories_admin_id_f2878ef6;
       public            postgres    false    216            c           1259    16657 '   categories_categories_nom_076302a7_like    INDEX     |   CREATE INDEX categories_categories_nom_076302a7_like ON public.categories_categories USING btree (nom varchar_pattern_ops);
 ;   DROP INDEX public.categories_categories_nom_076302a7_like;
       public            postgres    false    216            f           1259    16658 %   categories_categories_org_id_c8ad353b    INDEX     i   CREATE INDEX categories_categories_org_id_c8ad353b ON public.categories_categories USING btree (org_id);
 9   DROP INDEX public.categories_categories_org_id_c8ad353b;
       public            postgres    false    216            i           1259    16659 /   categories_categories_typecategorie_id_c893c3db    INDEX     }   CREATE INDEX categories_categories_typecategorie_id_c893c3db ON public.categories_categories USING btree (typecategorie_id);
 C   DROP INDEX public.categories_categories_typecategorie_id_c893c3db;
       public            postgres    false    216            l           1259    16660 "   clients_clients_gerant_id_ecde46d4    INDEX     c   CREATE INDEX clients_clients_gerant_id_ecde46d4 ON public.clients_clients USING btree (gerant_id);
 6   DROP INDEX public.clients_clients_gerant_id_ecde46d4;
       public            postgres    false    220            m           1259    16661    clients_clients_org_id_973b4c82    INDEX     ]   CREATE INDEX clients_clients_org_id_973b4c82 ON public.clients_clients USING btree (org_id);
 3   DROP INDEX public.clients_clients_org_id_973b4c82;
       public            postgres    false    220            p           1259    16662 '   clients_clients_point_vente_id_26371778    INDEX     m   CREATE INDEX clients_clients_point_vente_id_26371778 ON public.clients_clients USING btree (point_vente_id);
 ;   DROP INDEX public.clients_clients_point_vente_id_26371778;
       public            postgres    false    220            q           1259    16663 '   clients_clients_telephone_4a5ae726_like    INDEX     ~   CREATE INDEX clients_clients_telephone_4a5ae726_like ON public.clients_clients USING btree (telephone_p varchar_pattern_ops);
 ;   DROP INDEX public.clients_clients_telephone_4a5ae726_like;
       public            postgres    false    220            t           1259    16664 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    222            w           1259    16665 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    222            ~           1259    16666 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    228            �           1259    16667 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    228            �           1259    16668 &   gerants_utilisateurs_admin_id_be93b74c    INDEX     k   CREATE INDEX gerants_utilisateurs_admin_id_be93b74c ON public.gerants_utilisateurs USING btree (admin_id);
 :   DROP INDEX public.gerants_utilisateurs_admin_id_be93b74c;
       public            postgres    false    229            �           1259    16669 -   gerants_utilisateurs_organisation_id_0080ab33    INDEX     y   CREATE INDEX gerants_utilisateurs_organisation_id_0080ab33 ON public.gerants_utilisateurs USING btree (organisation_id);
 A   DROP INDEX public.gerants_utilisateurs_organisation_id_0080ab33;
       public            postgres    false    229            �           1259    16670 ,   gerants_utilisateurs_point_vente_id_b3ddcc1b    INDEX     w   CREATE INDEX gerants_utilisateurs_point_vente_id_b3ddcc1b ON public.gerants_utilisateurs USING btree (point_vente_id);
 @   DROP INDEX public.gerants_utilisateurs_point_vente_id_b3ddcc1b;
       public            postgres    false    229            �           1259    16671 ,   gerants_utilisateurs_telephone_cfd13147_like    INDEX     �   CREATE INDEX gerants_utilisateurs_telephone_cfd13147_like ON public.gerants_utilisateurs USING btree (telephone varchar_pattern_ops);
 @   DROP INDEX public.gerants_utilisateurs_telephone_cfd13147_like;
       public            postgres    false    229            �           1259    16675 .   organisations_organisations_mail_fec430db_like    INDEX     �   CREATE INDEX organisations_organisations_mail_fec430db_like ON public.organisations_organisations USING btree (mail varchar_pattern_ops);
 B   DROP INDEX public.organisations_organisations_mail_fec430db_like;
       public            postgres    false    231            �           1259    16676 -   organisations_organisations_nom_32808af1_like    INDEX     �   CREATE INDEX organisations_organisations_nom_32808af1_like ON public.organisations_organisations USING btree (nom varchar_pattern_ops);
 A   DROP INDEX public.organisations_organisations_nom_32808af1_like;
       public            postgres    false    231            �           1259    16677 /   points_affaire_pointsaffaires_admin_id_2c0cc0ff    INDEX     }   CREATE INDEX points_affaire_pointsaffaires_admin_id_2c0cc0ff ON public.points_affaire_pointsaffaires USING btree (admin_id);
 C   DROP INDEX public.points_affaire_pointsaffaires_admin_id_2c0cc0ff;
       public            postgres    false    233            �           1259    16678 /   points_affaire_pointsaffaires_nom_a53a4486_like    INDEX     �   CREATE INDEX points_affaire_pointsaffaires_nom_a53a4486_like ON public.points_affaire_pointsaffaires USING btree (nom varchar_pattern_ops);
 C   DROP INDEX public.points_affaire_pointsaffaires_nom_a53a4486_like;
       public            postgres    false    233            �           1259    16679 -   points_affaire_pointsaffaires_org_id_69626215    INDEX     y   CREATE INDEX points_affaire_pointsaffaires_org_id_69626215 ON public.points_affaire_pointsaffaires USING btree (org_id);
 A   DROP INDEX public.points_affaire_pointsaffaires_org_id_69626215;
       public            postgres    false    233            �           1259    65576 )   prestation_prestations_client_id_213e20b1    INDEX     q   CREATE INDEX prestation_prestations_client_id_213e20b1 ON public.prestation_prestations USING btree (client_id);
 =   DROP INDEX public.prestation_prestations_client_id_213e20b1;
       public            postgres    false    252            �           1259    65577 )   prestation_prestations_gerant_id_82d960ee    INDEX     q   CREATE INDEX prestation_prestations_gerant_id_82d960ee ON public.prestation_prestations USING btree (gerant_id);
 =   DROP INDEX public.prestation_prestations_gerant_id_82d960ee;
       public            postgres    false    252            �           1259    65622 &   prestation_prestations_org_id_28dd1814    INDEX     k   CREATE INDEX prestation_prestations_org_id_28dd1814 ON public.prestation_prestations USING btree (org_id);
 :   DROP INDEX public.prestation_prestations_org_id_28dd1814;
       public            postgres    false    252            �           1259    65578 .   prestation_prestations_point_vente_id_6ec7ffd3    INDEX     {   CREATE INDEX prestation_prestations_point_vente_id_6ec7ffd3 ON public.prestation_prestations USING btree (point_vente_id);
 B   DROP INDEX public.prestation_prestations_point_vente_id_6ec7ffd3;
       public            postgres    false    252            �           1259    65589 3   prestation_serviceprestation_prestation_id_69621837    INDEX     �   CREATE INDEX prestation_serviceprestation_prestation_id_69621837 ON public.prestation_serviceprestation USING btree (prestation_id);
 G   DROP INDEX public.prestation_serviceprestation_prestation_id_69621837;
       public            postgres    false    254            �           1259    65590 0   prestation_serviceprestation_service_id_941bf826    INDEX        CREATE INDEX prestation_serviceprestation_service_id_941bf826 ON public.prestation_serviceprestation USING btree (service_id);
 D   DROP INDEX public.prestation_serviceprestation_service_id_941bf826;
       public            postgres    false    254            �           1259    16928 $   produits_histoprod_admin_id_11b16c0d    INDEX     g   CREATE INDEX produits_histoprod_admin_id_11b16c0d ON public.produits_histoprod USING btree (admin_id);
 8   DROP INDEX public.produits_histoprod_admin_id_11b16c0d;
       public            postgres    false    244            �           1259    16929 $   produits_histoprod_point_id_018ff4b0    INDEX     g   CREATE INDEX produits_histoprod_point_id_018ff4b0 ON public.produits_histoprod USING btree (point_id);
 8   DROP INDEX public.produits_histoprod_point_id_018ff4b0;
       public            postgres    false    244            �           1259    16930 &   produits_histoprod_produit_id_1e382737    INDEX     k   CREATE INDEX produits_histoprod_produit_id_1e382737 ON public.produits_histoprod USING btree (produit_id);
 :   DROP INDEX public.produits_histoprod_produit_id_1e382737;
       public            postgres    false    244            �           1259    16680 #   produits_produits_admin_id_2e3828d7    INDEX     e   CREATE INDEX produits_produits_admin_id_2e3828d7 ON public.produits_produits USING btree (admin_id);
 7   DROP INDEX public.produits_produits_admin_id_2e3828d7;
       public            postgres    false    235            �           1259    16681 '   produits_produits_categorie_id_5228d9a4    INDEX     m   CREATE INDEX produits_produits_categorie_id_5228d9a4 ON public.produits_produits USING btree (categorie_id);
 ;   DROP INDEX public.produits_produits_categorie_id_5228d9a4;
       public            postgres    false    235            �           1259    16682 +   produits_produits_designation_f60785e7_like    INDEX     �   CREATE INDEX produits_produits_designation_f60785e7_like ON public.produits_produits USING btree (designation varchar_pattern_ops);
 ?   DROP INDEX public.produits_produits_designation_f60785e7_like;
       public            postgres    false    235            �           1259    16683 !   produits_produits_org_id_49707c56    INDEX     a   CREATE INDEX produits_produits_org_id_49707c56 ON public.produits_produits USING btree (org_id);
 5   DROP INDEX public.produits_produits_org_id_49707c56;
       public            postgres    false    235            �           1259    16684 (   produits_quantitepoint_point_id_27f0f977    INDEX     o   CREATE INDEX produits_quantitepoint_point_id_27f0f977 ON public.produits_quantitepoint USING btree (point_id);
 <   DROP INDEX public.produits_quantitepoint_point_id_27f0f977;
       public            postgres    false    237            �           1259    16685 *   produits_quantitepoint_produit_id_a4d13792    INDEX     s   CREATE INDEX produits_quantitepoint_produit_id_a4d13792 ON public.produits_quantitepoint USING btree (produit_id);
 >   DROP INDEX public.produits_quantitepoint_produit_id_a4d13792;
       public            postgres    false    237            �           1259    16686 #   services_services_admin_id_be857cf7    INDEX     e   CREATE INDEX services_services_admin_id_be857cf7 ON public.services_services USING btree (admin_id);
 7   DROP INDEX public.services_services_admin_id_be857cf7;
       public            postgres    false    239            �           1259    16687 '   services_services_categorie_id_51aa7bf3    INDEX     m   CREATE INDEX services_services_categorie_id_51aa7bf3 ON public.services_services USING btree (categorie_id);
 ;   DROP INDEX public.services_services_categorie_id_51aa7bf3;
       public            postgres    false    239            �           1259    16688 #   services_services_nom_27008563_like    INDEX     t   CREATE INDEX services_services_nom_27008563_like ON public.services_services USING btree (nom varchar_pattern_ops);
 7   DROP INDEX public.services_services_nom_27008563_like;
       public            postgres    false    239            �           1259    16689 !   services_services_org_id_49e8bd7b    INDEX     a   CREATE INDEX services_services_org_id_49e8bd7b ON public.services_services USING btree (org_id);
 5   DROP INDEX public.services_services_org_id_49e8bd7b;
       public            postgres    false    239            �           1259    16690 8   services_services_point_vente_pointsaffaires_id_d5932eea    INDEX     �   CREATE INDEX services_services_point_vente_pointsaffaires_id_d5932eea ON public.services_services_point_vente USING btree (pointsaffaires_id);
 L   DROP INDEX public.services_services_point_vente_pointsaffaires_id_d5932eea;
       public            postgres    false    241            �           1259    16691 2   services_services_point_vente_services_id_401bb472    INDEX     �   CREATE INDEX services_services_point_vente_services_id_401bb472 ON public.services_services_point_vente USING btree (services_id);
 F   DROP INDEX public.services_services_point_vente_services_id_401bb472;
       public            postgres    false    241            �           1259    32800 '   ventess_histoprodvte_gerant_id_4adde69c    INDEX     m   CREATE INDEX ventess_histoprodvte_gerant_id_4adde69c ON public.ventess_histoprodvte USING btree (gerant_id);
 ;   DROP INDEX public.ventess_histoprodvte_gerant_id_4adde69c;
       public            postgres    false    250            �           1259    32801 &   ventess_histoprodvte_point_id_55fbef88    INDEX     k   CREATE INDEX ventess_histoprodvte_point_id_55fbef88 ON public.ventess_histoprodvte USING btree (point_id);
 :   DROP INDEX public.ventess_histoprodvte_point_id_55fbef88;
       public            postgres    false    250            �           1259    32802 (   ventess_histoprodvte_produit_id_419970fa    INDEX     o   CREATE INDEX ventess_histoprodvte_produit_id_419970fa ON public.ventess_histoprodvte USING btree (produit_id);
 <   DROP INDEX public.ventess_histoprodvte_produit_id_419970fa;
       public            postgres    false    250            �           1259    24678 (   ventess_produitvente_produit_id_0ded1efe    INDEX     o   CREATE INDEX ventess_produitvente_produit_id_0ded1efe ON public.ventess_produitvente USING btree (produit_id);
 <   DROP INDEX public.ventess_produitvente_produit_id_0ded1efe;
       public            postgres    false    246            �           1259    24697 &   ventess_produitvente_vente_id_0521b4d0    INDEX     k   CREATE INDEX ventess_produitvente_vente_id_0521b4d0 ON public.ventess_produitvente USING btree (vente_id);
 :   DROP INDEX public.ventess_produitvente_vente_id_0521b4d0;
       public            postgres    false    246            �           1259    24694 !   ventess_ventes_client_id_8e30ac86    INDEX     a   CREATE INDEX ventess_ventes_client_id_8e30ac86 ON public.ventess_ventes USING btree (client_id);
 5   DROP INDEX public.ventess_ventes_client_id_8e30ac86;
       public            postgres    false    248            �           1259    24695 !   ventess_ventes_gerant_id_0ccd936f    INDEX     a   CREATE INDEX ventess_ventes_gerant_id_0ccd936f ON public.ventess_ventes USING btree (gerant_id);
 5   DROP INDEX public.ventess_ventes_gerant_id_0ccd936f;
       public            postgres    false    248            �           1259    65629    ventess_ventes_org_id_3f9d12ac    INDEX     [   CREATE INDEX ventess_ventes_org_id_3f9d12ac ON public.ventess_ventes USING btree (org_id);
 2   DROP INDEX public.ventess_ventes_org_id_3f9d12ac;
       public            postgres    false    248            �           1259    24696 &   ventess_ventes_point_vente_id_85353d6d    INDEX     k   CREATE INDEX ventess_ventes_point_vente_id_85353d6d ON public.ventess_ventes USING btree (point_vente_id);
 :   DROP INDEX public.ventess_ventes_point_vente_id_85353d6d;
       public            postgres    false    248            �           2606    16697 Z   administrateurs_administrateurs administrateurs_admi_organisation_id_8267725a_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_admi_organisation_id_8267725a_fk_organisat FOREIGN KEY (organisation_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.administrateurs_administrateurs DROP CONSTRAINT administrateurs_admi_organisation_id_8267725a_fk_organisat;
       public          postgres    false    202    2963    231            �           2606    16702 R   administrateurs_administrateurs administrateurs_admi_user_id_e0f67ab8_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_admi_user_id_e0f67ab8_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.administrateurs_administrateurs DROP CONSTRAINT administrateurs_admi_user_id_e0f67ab8_fk_auth_user;
       public          postgres    false    2898    210    202            �           2606    16707 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2896    208    206            �           2606    16712 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    204    2885    206            �           2606    16717 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    208    2939    224            �           2606    16722 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    211    2885    204            �           2606    16727 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2898    210    211            �           2606    16732 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2896    214    208            �           2606    16737 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    214    2898    210            �           2606    16742 I   categories_categories categories_categorie_admin_id_f2878ef6_fk_administr    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categorie_admin_id_f2878ef6_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.categories_categories DROP CONSTRAINT categories_categorie_admin_id_f2878ef6_fk_administr;
       public          postgres    false    216    2875    202            �           2606    16747 G   categories_categories categories_categorie_org_id_c8ad353b_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categorie_org_id_c8ad353b_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.categories_categories DROP CONSTRAINT categories_categorie_org_id_c8ad353b_fk_organisat;
       public          postgres    false    2963    231    216            �           2606    16752 Q   categories_categories categories_categorie_typecategorie_id_c893c3db_fk_categorie    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categorie_typecategorie_id_c893c3db_fk_categorie FOREIGN KEY (typecategorie_id) REFERENCES public.categories_typecategorie(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.categories_categories DROP CONSTRAINT categories_categorie_typecategorie_id_c893c3db_fk_categorie;
       public          postgres    false    2923    216    218            �           2606    16757 M   clients_clients clients_clients_gerant_id_ecde46d4_fk_gerants_utilisateurs_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_gerant_id_ecde46d4_fk_gerants_utilisateurs_id FOREIGN KEY (gerant_id) REFERENCES public.gerants_utilisateurs(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.clients_clients DROP CONSTRAINT clients_clients_gerant_id_ecde46d4_fk_gerants_utilisateurs_id;
       public          postgres    false    2949    229    220            �           2606    16762 <   clients_clients clients_clients_org_id_973b4c82_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_org_id_973b4c82_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.clients_clients DROP CONSTRAINT clients_clients_org_id_973b4c82_fk_organisat;
       public          postgres    false    231    2963    220            �           2606    16767 D   clients_clients clients_clients_point_vente_id_26371778_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_point_vente_id_26371778_fk_points_af FOREIGN KEY (point_vente_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.clients_clients DROP CONSTRAINT clients_clients_point_vente_id_26371778_fk_points_af;
       public          postgres    false    220    233    2974            �           2606    16772 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2939    224    222            �           2606    16777 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    222    2898    210            �           2606    16782 H   gerants_utilisateurs gerants_utilisateurs_admin_id_be93b74c_fk_administr    FK CONSTRAINT     �   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_admin_id_be93b74c_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_admin_id_be93b74c_fk_administr;
       public          postgres    false    229    2875    202            �           2606    16787 O   gerants_utilisateurs gerants_utilisateurs_organisation_id_0080ab33_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_organisation_id_0080ab33_fk_organisat FOREIGN KEY (organisation_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_organisation_id_0080ab33_fk_organisat;
       public          postgres    false    231    2963    229            �           2606    16792 N   gerants_utilisateurs gerants_utilisateurs_point_vente_id_b3ddcc1b_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_point_vente_id_b3ddcc1b_fk_points_af FOREIGN KEY (point_vente_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_point_vente_id_b3ddcc1b_fk_points_af;
       public          postgres    false    2974    229    233            �           2606    16797 J   gerants_utilisateurs gerants_utilisateurs_user_id_0b9fd436_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_user_id_0b9fd436_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_user_id_0b9fd436_fk_auth_user_id;
       public          postgres    false    229    2898    210            �           2606    16817 Q   points_affaire_pointsaffaires points_affaire_point_admin_id_2c0cc0ff_fk_administr    FK CONSTRAINT     �   ALTER TABLE ONLY public.points_affaire_pointsaffaires
    ADD CONSTRAINT points_affaire_point_admin_id_2c0cc0ff_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.points_affaire_pointsaffaires DROP CONSTRAINT points_affaire_point_admin_id_2c0cc0ff_fk_administr;
       public          postgres    false    233    202    2875            �           2606    16822 O   points_affaire_pointsaffaires points_affaire_point_org_id_69626215_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.points_affaire_pointsaffaires
    ADD CONSTRAINT points_affaire_point_org_id_69626215_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.points_affaire_pointsaffaires DROP CONSTRAINT points_affaire_point_org_id_69626215_fk_organisat;
       public          postgres    false    231    233    2963                       2606    65566 K   prestation_prestations prestation_prestatio_gerant_id_82d960ee_fk_gerants_u    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestation_prestations
    ADD CONSTRAINT prestation_prestatio_gerant_id_82d960ee_fk_gerants_u FOREIGN KEY (gerant_id) REFERENCES public.gerants_utilisateurs(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.prestation_prestations DROP CONSTRAINT prestation_prestatio_gerant_id_82d960ee_fk_gerants_u;
       public          postgres    false    2949    252    229                       2606    65617 H   prestation_prestations prestation_prestatio_org_id_28dd1814_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestation_prestations
    ADD CONSTRAINT prestation_prestatio_org_id_28dd1814_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.prestation_prestations DROP CONSTRAINT prestation_prestatio_org_id_28dd1814_fk_organisat;
       public          postgres    false    252    231    2963                       2606    65571 P   prestation_prestations prestation_prestatio_point_vente_id_6ec7ffd3_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestation_prestations
    ADD CONSTRAINT prestation_prestatio_point_vente_id_6ec7ffd3_fk_points_af FOREIGN KEY (point_vente_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.prestation_prestations DROP CONSTRAINT prestation_prestatio_point_vente_id_6ec7ffd3_fk_points_af;
       public          postgres    false    252    233    2974                       2606    65637 V   prestation_prestations prestation_prestations_client_id_213e20b1_fk_clients_clients_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestation_prestations
    ADD CONSTRAINT prestation_prestations_client_id_213e20b1_fk_clients_clients_id FOREIGN KEY (client_id) REFERENCES public.clients_clients(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.prestation_prestations DROP CONSTRAINT prestation_prestations_client_id_213e20b1_fk_clients_clients_id;
       public          postgres    false    2927    252    220                       2606    65579 U   prestation_serviceprestation prestation_servicepr_prestation_id_69621837_fk_prestatio    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestation_serviceprestation
    ADD CONSTRAINT prestation_servicepr_prestation_id_69621837_fk_prestatio FOREIGN KEY (prestation_id) REFERENCES public.prestation_prestations(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.prestation_serviceprestation DROP CONSTRAINT prestation_servicepr_prestation_id_69621837_fk_prestatio;
       public          postgres    false    252    3025    254            	           2606    65584 R   prestation_serviceprestation prestation_servicepr_service_id_941bf826_fk_services_    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestation_serviceprestation
    ADD CONSTRAINT prestation_servicepr_service_id_941bf826_fk_services_ FOREIGN KEY (service_id) REFERENCES public.services_services(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.prestation_serviceprestation DROP CONSTRAINT prestation_servicepr_service_id_941bf826_fk_services_;
       public          postgres    false    239    2994    254            �           2606    16913 D   produits_histoprod produits_histoprod_admin_id_11b16c0d_fk_administr    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_histoprod
    ADD CONSTRAINT produits_histoprod_admin_id_11b16c0d_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.produits_histoprod DROP CONSTRAINT produits_histoprod_admin_id_11b16c0d_fk_administr;
       public          postgres    false    244    202    2875            �           2606    16918 D   produits_histoprod produits_histoprod_point_id_018ff4b0_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_histoprod
    ADD CONSTRAINT produits_histoprod_point_id_018ff4b0_fk_points_af FOREIGN KEY (point_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.produits_histoprod DROP CONSTRAINT produits_histoprod_point_id_018ff4b0_fk_points_af;
       public          postgres    false    233    244    2974            �           2606    16923 Q   produits_histoprod produits_histoprod_produit_id_1e382737_fk_produits_produits_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_histoprod
    ADD CONSTRAINT produits_histoprod_produit_id_1e382737_fk_produits_produits_id FOREIGN KEY (produit_id) REFERENCES public.produits_produits(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.produits_histoprod DROP CONSTRAINT produits_histoprod_produit_id_1e382737_fk_produits_produits_id;
       public          postgres    false    235    244    2982            �           2606    16827 B   produits_produits produits_produits_admin_id_2e3828d7_fk_administr    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_admin_id_2e3828d7_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.produits_produits DROP CONSTRAINT produits_produits_admin_id_2e3828d7_fk_administr;
       public          postgres    false    235    2875    202            �           2606    16832 F   produits_produits produits_produits_categorie_id_5228d9a4_fk_categorie    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_categorie_id_5228d9a4_fk_categorie FOREIGN KEY (categorie_id) REFERENCES public.categories_categories(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.produits_produits DROP CONSTRAINT produits_produits_categorie_id_5228d9a4_fk_categorie;
       public          postgres    false    2920    216    235            �           2606    16837 @   produits_produits produits_produits_org_id_49707c56_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_org_id_49707c56_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.produits_produits DROP CONSTRAINT produits_produits_org_id_49707c56_fk_organisat;
       public          postgres    false    2963    235    231            �           2606    16842 J   produits_quantitepoint produits_quantitepoi_point_id_27f0f977_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_quantitepoint
    ADD CONSTRAINT produits_quantitepoi_point_id_27f0f977_fk_points_af FOREIGN KEY (point_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.produits_quantitepoint DROP CONSTRAINT produits_quantitepoi_point_id_27f0f977_fk_points_af;
       public          postgres    false    233    2974    237            �           2606    16847 L   produits_quantitepoint produits_quantitepoi_produit_id_a4d13792_fk_produits_    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_quantitepoint
    ADD CONSTRAINT produits_quantitepoi_produit_id_a4d13792_fk_produits_ FOREIGN KEY (produit_id) REFERENCES public.produits_produits(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.produits_quantitepoint DROP CONSTRAINT produits_quantitepoi_produit_id_a4d13792_fk_produits_;
       public          postgres    false    2982    237    235            �           2606    16852 B   services_services services_services_admin_id_be857cf7_fk_administr    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_admin_id_be857cf7_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.services_services DROP CONSTRAINT services_services_admin_id_be857cf7_fk_administr;
       public          postgres    false    202    239    2875            �           2606    16857 F   services_services services_services_categorie_id_51aa7bf3_fk_categorie    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_categorie_id_51aa7bf3_fk_categorie FOREIGN KEY (categorie_id) REFERENCES public.categories_categories(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.services_services DROP CONSTRAINT services_services_categorie_id_51aa7bf3_fk_categorie;
       public          postgres    false    216    2920    239            �           2606    16862 @   services_services services_services_org_id_49e8bd7b_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_org_id_49e8bd7b_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.services_services DROP CONSTRAINT services_services_org_id_49e8bd7b_fk_organisat;
       public          postgres    false    231    239    2963            �           2606    16867 Z   services_services_point_vente services_services_po_pointsaffaires_id_d5932eea_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_services_point_vente
    ADD CONSTRAINT services_services_po_pointsaffaires_id_d5932eea_fk_points_af FOREIGN KEY (pointsaffaires_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.services_services_point_vente DROP CONSTRAINT services_services_po_pointsaffaires_id_d5932eea_fk_points_af;
       public          postgres    false    233    241    2974            �           2606    16872 T   services_services_point_vente services_services_po_services_id_401bb472_fk_services_    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_services_point_vente
    ADD CONSTRAINT services_services_po_services_id_401bb472_fk_services_ FOREIGN KEY (services_id) REFERENCES public.services_services(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.services_services_point_vente DROP CONSTRAINT services_services_po_services_id_401bb472_fk_services_;
       public          postgres    false    241    2994    239                       2606    32785 I   ventess_histoprodvte ventess_histoprodvte_gerant_id_4adde69c_fk_gerants_u    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventess_histoprodvte
    ADD CONSTRAINT ventess_histoprodvte_gerant_id_4adde69c_fk_gerants_u FOREIGN KEY (gerant_id) REFERENCES public.gerants_utilisateurs(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ventess_histoprodvte DROP CONSTRAINT ventess_histoprodvte_gerant_id_4adde69c_fk_gerants_u;
       public          postgres    false    229    250    2949                       2606    32790 H   ventess_histoprodvte ventess_histoprodvte_point_id_55fbef88_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventess_histoprodvte
    ADD CONSTRAINT ventess_histoprodvte_point_id_55fbef88_fk_points_af FOREIGN KEY (point_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.ventess_histoprodvte DROP CONSTRAINT ventess_histoprodvte_point_id_55fbef88_fk_points_af;
       public          postgres    false    250    233    2974                       2606    32795 J   ventess_histoprodvte ventess_histoprodvte_produit_id_419970fa_fk_produits_    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventess_histoprodvte
    ADD CONSTRAINT ventess_histoprodvte_produit_id_419970fa_fk_produits_ FOREIGN KEY (produit_id) REFERENCES public.produits_produits(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.ventess_histoprodvte DROP CONSTRAINT ventess_histoprodvte_produit_id_419970fa_fk_produits_;
       public          postgres    false    250    235    2982            �           2606    24673 J   ventess_produitvente ventess_produitvente_produit_id_0ded1efe_fk_produits_    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventess_produitvente
    ADD CONSTRAINT ventess_produitvente_produit_id_0ded1efe_fk_produits_ FOREIGN KEY (produit_id) REFERENCES public.produits_produits(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.ventess_produitvente DROP CONSTRAINT ventess_produitvente_produit_id_0ded1efe_fk_produits_;
       public          postgres    false    246    2982    235            �           2606    24668 P   ventess_produitvente ventess_produitvente_vente_id_0521b4d0_fk_ventess_ventes_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventess_produitvente
    ADD CONSTRAINT ventess_produitvente_vente_id_0521b4d0_fk_ventess_ventes_id FOREIGN KEY (vente_id) REFERENCES public.ventess_ventes(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.ventess_produitvente DROP CONSTRAINT ventess_produitvente_vente_id_0521b4d0_fk_ventess_ventes_id;
       public          postgres    false    248    3014    246                        2606    65642 F   ventess_ventes ventess_ventes_client_id_8e30ac86_fk_clients_clients_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventess_ventes
    ADD CONSTRAINT ventess_ventes_client_id_8e30ac86_fk_clients_clients_id FOREIGN KEY (client_id) REFERENCES public.clients_clients(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.ventess_ventes DROP CONSTRAINT ventess_ventes_client_id_8e30ac86_fk_clients_clients_id;
       public          postgres    false    2927    248    220            �           2606    24684 K   ventess_ventes ventess_ventes_gerant_id_0ccd936f_fk_gerants_utilisateurs_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventess_ventes
    ADD CONSTRAINT ventess_ventes_gerant_id_0ccd936f_fk_gerants_utilisateurs_id FOREIGN KEY (gerant_id) REFERENCES public.gerants_utilisateurs(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.ventess_ventes DROP CONSTRAINT ventess_ventes_gerant_id_0ccd936f_fk_gerants_utilisateurs_id;
       public          postgres    false    229    2949    248            �           2606    65624 :   ventess_ventes ventess_ventes_org_id_3f9d12ac_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventess_ventes
    ADD CONSTRAINT ventess_ventes_org_id_3f9d12ac_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.ventess_ventes DROP CONSTRAINT ventess_ventes_org_id_3f9d12ac_fk_organisat;
       public          postgres    false    231    248    2963            �           2606    24689 B   ventess_ventes ventess_ventes_point_vente_id_85353d6d_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventess_ventes
    ADD CONSTRAINT ventess_ventes_point_vente_id_85353d6d_fk_points_af FOREIGN KEY (point_vente_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.ventess_ventes DROP CONSTRAINT ventess_ventes_point_vente_id_85353d6d_fk_points_af;
       public          postgres    false    248    233    2974            �   3   x���  �w;�Avq�9<�K`�L��@�1�B��(x(w�o�.��}�      �      x������ � �      �      x������ � �      �     x�}�[��0E��Ud�`����H#��i��$$����r����_(���o��w;�����~=�e�6����5\Z����]A��%���cX$JV �����Aur���q����8�F�psDw�=q�E��mɢ �#���:ݟS�A�m�#7�/D
�)"hGV" .�v�<�a2Xڢ��ǻ�� ������г�6<:�<�'��ſ����L��Vl�r#
FC��/ţ?λ#�T4�l�\�Cx��+��~'}&L�v��^��^'\%�v�}���q�_��	|��ub�k=*���Z�~��m- �
������X�~��i�Y����F�Mh�H�F�mh��F�hA��ɜme�e��˼׌�����{�xY��Ϝo�K(���~y��l�0E�Җ"���#4�"���3�$���L%�qo�|����qf�''8�r��J$3��~�L$5#�%7#
�(	%���z���)Ul%B,�8-�+�8͢+�0
I�]'#Ѧ��ZME[��nh\�Dj�"��D,�[	��%���k<��8�õ�+9�	K�=����D��Ɇw�p�G��\ƏujB`<�Y��"��g�P�LjE<̹�a��|8�M)=�������6"��[9r"����8r,x�
�72���/��N�pe�0B�R�D��BC�b�"�D����G�ߓ_�0Mq*�U{Y�hЧ��4edh\�X�2"�DK(Q_����qr�"���
E{��*�%9ۊ�%b��J�%8�w�mw�ZB���$��� w���`�
 n�j�J@v�32l7�����m�Y�yyr�D��Z"�p��3P�i�x�;��+��F�d���6�S�/��s�m76���m���n�����u�����e׷s���2�ەz깒O���L=W���ՙ��J5��f3�\)�^�K�ᵚ�d�^����E�hvr5:k��8f�%2sA�s7���q5�T�J��Ӟ��9!H;�D����Ô7��`��D7�Nd0/�_EB-r�W�/%�fY�k��S��e���DxN      �   �  x���ێ�F���Sp�;�����n[Zi�pf��aE�l|8��9�bk{�d6!RnZ�����������:��XXf"��c/z;'�z�8�2�k����a׿����zvV�4�z�a_�������7#M����AѰ�Q,aF9�O��
�mE�=ޖ�U^|�c+��u?��J��:`#cI)r\�����������fh\E}�[y��y�]��zY`�ެ�`ѱ���q�ˎ�IN��u 3���@>ȏqx
��wp��줁��b�5K* �廚��7�}�h�]2���u���}��:'Y��'����@�ȯ&���*g��>1iC���Q"�8�BжȲN� ��$=����
#+9��FQP޹߃���ե�!��"!Bd�x���KSi������u�<=�Eː�wC�j>��'V��L��>���:�~j`M�dh$P���\�Z�%L�@1U$�s׏�_>}���_x��jI����gҚ)�d����}����rI��l�,�,�I;�>��p�̱߮��u�7=&�Q(Ր*aJ ��Da�
��Һ^�w�/�&M��tR�✨��4z��q�.��6{G4�^����f���ųG��~�f���,�ҩ���x-5��U�H�&⒪rB��Ֆ�X'��K?uү���OiD��L��J��ñ��X�|��&�Iw����x}W��I��'�m�o���q2��q�ٿH��qI!Da����������E�5�%�2�,��T��~$m]�      �      x������ � �      �      x������ � �      �   �   x�M�;�0D��)��!� %P���q�姰�֛C��1DM5�Fz�_���{� &G�P�{�8�޳ئ��j�����L��!S���-,ߐ2�vP�إ8��hVp��u�69���'a��Rl%�/,�)�j�(A�#�tY*�ޞ=�      �   #   x�3�(�O)�,)�2�N-*�LN-����� w�      �   }  x�m��r� ����	2dIܪ&Ӄ;�!�1���6�$\n�7�s�Ŋ�֣�t��K������6Λ��ZW��J�@û3J}��d�����3�jM��@��R�6����AI�3!���х"�=_/��3��}c�L!��P���$F:RN�j��Dô��v�p<9��dQw�':ե�J��S�oxa}v�3'5ӑq�64����z����tvH���<�@	���K�^mp��^Fwtc ��%X�
Ի����PB��ʧ6��O����g�1����e�������E<��)�L�,C;��y�~A>N7-�m{c�.���'��n��`ү��#}gQ�\�
�O"��W�%��ɶқ}C��}{X�V��{�      �   �   x����j1��s�)�\�03��$OQ(��C0i�U�V�]�T顷���
�)�l�3��Ei=�	� �����!&Z�ѽr=�B4ʱ�����I�?����I�紉��9��a���|^�p��[���Z��>�zܕx��G��e���:G�F����w���lp�qd� R̳��, ?���!�ӟ�Ru]w�\�      �     x�]Qю!|n?�"���/��um����&���"��3�N��wy� w���\7I��~�����㈻�D%�=���-�F�%���[? �w�E���8�`�E�5�_�_"m �F�CГ�^UZYj0pN������B��(�m
-�I@���ĥ��s�ˤW�3e��h:�H��@s�[�ğr�
?#e���]���l�f�r1�~��L���К��hm�֭ۦ׀vהvє;��I�'-`rt�J}���?�����{      �   �  x����n9��������u�, �i:�c�c;ؾ����9y�86��ȟ�v���ڝ���o�eg��ԟ�k�wl������=�}c"9�1�Ļ�v�����bm��k�_��W&�1��K6��	������н�߻��S���� &O�:1db�.��k>���%~��"�ɒ�e�{xs� �Oҩ}��Q>:�2ʏ����ݐ޺ᵿ\�K�>����cwz��6Q�;�Ia$ɝt��{m��W&�T3%�;�������u�D����9��^�9�=v;n�պ�r���_�~�[��rȶ.:��L��wO��c��^�å���^�˥}�$��Q�IF\��Q��K�I�!D�R�� I?Pd�|{�;����#7b(���.���~���T�ڢ@�Kw���m��P�v��=��������^�^�ZIm����\[B64�!�Y`��{��>R��y���q&~#cO�q�-=��c0bWx�1��X��������2B���l���J<ُ~�Te���"�W�9#E�|o���:@�a3K�Z���l����a���ف�Ȋ���\$uָ-'�נ�Uc�W�.�-��A�|�A�."c�x#�T�-�]����F���r�j4ĨU9q��L�&P� {ÍN}���-�[�����M��/�A Z���&��:*�wh#Ϸ���bb�k����dk	�b����.��G�޿mL���� B�XQ`�gr�x�
3�c�tm�-W%"�; ~/��^�`X$�I��&�-�eQ�u�A@�B� xS$�z4��}BRV�p�H�����V�2��[МೈPh���4?�BϤH;�Π9���	6$�T|�fA�)�5?݄܌��.{�)2��5l;�ZZ8e+���pFX�f�>ޭOk�E	6Q�	�Zv/�О>S)�ҨC�3j�ϴ�ñ�>��{��}��|֔�Z]�f^�R�F�!���O�[�U���XU�Y?�� �W �����r�9`���!7P��ޫA�M�*�qW��ЍF�XqjJ[P33�Ǉ�{nTp�z	���v � }��i `H� x�/q�+������z�FQV,XW'��ad�m�\jc;
Y�&�/�x4�:tԮ����	,�k��\�PV�B�Y!��Р�7�����Y���Ɨe��_t�[.��ƫ��q��A]��i)j>�avj�3- h΄��1NJҜ��,8�����	Y�[ڕ��]q����T;Z�m�:@�ш�d�ܲ�٩ٕ�}�� _vn#���5��w��g�z��
Lh�ꄲ)_C�KmA/������f�![����c.;�"]dƍY�~HhԹ��AXN���̯�~?�)���\WCuį�Ŧ���!(��C��֕�*�a)��{��ہ������׊����*I��a1�qC������Ƶ$
�K���:���t�h��!L��5T/�����~�_�~�C9�q8q-T�s+�I��SwM���<䨣C"Z�[����L�z������˵
v�c��3g��+������p�|�T��˗%W�h�+�bH��ϻ��n���3M�4�x??��۶!!��7e4�07�_<�,yc&�+/[�Q7gW��G�_#����6��&��]pk�p��2��m����j�\      �      x��ْ�H�ﯧ��?��� �;��v$$Ђ3���<� ewWg�<�i��,���~���=<<0�M+�m�	�;X��P�6�fj���/g�_���(K�쐹��sa���>�t�qWdRD����eo��e���_ѵu��~�.����`Ͻ�w$�����u�)-Cw��v��#�*��#��=ʏp��"seI��XT�y�9.��ݩZJ�(�c�%�uV����xMi	�:�L��*�9o��rg�ʟ�7�l�m��z��E
� =�� ��C�0� ��#��5����U[��)6da�9�������e+q�m�n�@�����M��O��/�.�">nh�%�ÊK/t��sswL'N�ys�������~��M�����6�q�+�>E�[��f��:-BlUS���]/���j�?�6�g6!"@>������}<�懔�at�d� �^��s]�W�N��DD�(�?��!�S�����(�f]MD��jd�.t'A��;K>�%�u�B�_vK���U�{�u�����!�
9Y�z�U�!���/ط��4Ʊ��P��qv�@�J\$�+�CϏ�zծ�1U����2!�8�qC�`�m����s֧~"�L��i��h�B�"���8TN^�vX������YD�E��'�Q����T�\��>+�w<�*���������'�\�6?q<`^�FQ�XT�l�A�8��p�!��꼎�~n�޿��/yU>�׻�־5��qN2�G��u��C���v�g��+�7D�4�E���Q�7e��i��&���y����ઌ���ѡ:z����Yl\���ߛ���������v�����\vLӶj̎7|�ٷ�Pe�q^�[�[[UM��]��!���rU�7熟����Uy<�l���*����S��w�y=��"��^���l+��x9�Z�,��b����B$��o:73�k� s�ʕ��m�5�E�J�4܄q���H4����y�"�x��(@�mEE6AT��EyD������8�v8�*I���"e��u�׺����E`-����Ϋd	u��:��Y�7Y���~%}���� A�mE��]�v�tI7��t	��6*R�`��ry�Ɋ����$�i8}��/���+�Y�M���ȓ�Oѿ��=d6ɢ�5�gu^�YudD�(�Tc��9��
�� ��ޓf���^2P�c��4��в
�d�(��u���#+Z��u���$|(�����d�y�BtF~?��A'̕eY(�`��y^��i��Yw�����?QS �є�	$�h�m����;V�$��,����o;�W"R��K�<n���
1a6�	���f�F����>���8,NT�"���S,b	�o]�Ul8b�3��w����бq>	n����;>O�q�.��%e7a{���!����J�Wng�T��A�S�Da�� M��t�rU���@��8)�?Eձ���8�ȏ�8nn���=jr�J#7�7>([8�\��-p����7��X,��-�F��ʻr��Q7����f�R`��bOΜ-�
���d�@��+Ma��} .1�$�?�����jg�~�`�����(r����;.�n�Z.��Z�j�nnX���a���)0���?�>@W#��\%?؍���G����J���ﾰ��g�t��Q�L�Z��(t'I��&�N��Y��ņ_r{�ϢC(���ޘ��ȭ�+�諙�Lwq���-�{e9L*�z!��g���Ll�M#6ج5�����"���W��h�%.LzT-�
UF{���ĆǶ�����"�|���-2@W��:�3Fe�4$y�&7��+��&��ڭ�,o�Q/]w�W�J����X	h�����*�H�Mx�}���r��� ����ЎF�YEV�EZ2v�J|�S�?�}����T��e�Ѹ�;V�Y�.��x�����l�&e�'q0�'H����.�:3���������L���:d����N�RN��uN��5��s��"=���P�tႈ�Z��5>ګ��l���4�roBfE�$����FB�NnLub��]���	�9����N���R�/wG��vF�v[�*�ݎ�~j�ҥy��4E�[&4���o'okAb��	]�M(����+]�
���^�a�
��QB#�����Hޯk=/,mf����"<�p��0�����>T���u�-���a��	NZ�3����Q�8��[c�Yܸ\����э1�=\�� ~N��!9�mX�`$� ����EE�}����Y���4�dW�Ʉ�f.!��<�t7W�y�^S�n��y醏M�'A�]����!�1�FL�����q�mRi��a��f:�?ǲ�_���G*�SQtm��|<��]�`�8��WBρ�֠�5a�4�b�ɻ>}aM��h��r�2�Qڐm:�}�&���2f�����P��I����؍�����َ�h�z�ߨQ��T&¼��	S1���)0Z�'1�ElR}�~d����Tu�{���%��k1��N�7j��׆R�}H��).�p����G)��a���11��F�嬕�]�9�o"�k���I?&����y�]�ZrY�ݲ�,[1���sc�F�ܙ=���X���z=b�������ڒ��sB:�#�g!F��3�BM4���Ԛt~����l��Z-��NH���%cv�)v�g�Eg׿NA|7D'1�~ѐ"�|�>����"�u=�Ԩ�p��2қ��PsU�_�s���#\�J�Ea�˧��盹=�V�ܧ�#�h��5�� ��k�>HޑmM*�ڡG�fPg�O�&M]�e�_ݭ�GB�Y��̛���K"-ܕ����a�N?�akk�Ϊ۰��J��L�XbУ@�} ��ƺ]����Sya-�E�P�l,:t
*����:�P}j����i�v��v�{��@�q��:c�B̘���MiF�A�����s�Y	��@D�v��K�C�̓qp�!�8\t:/I�Y>(��#9N'Xw��'��E�!�&�a#�p��#��v��e�$M�f]�)�7W�������|v�]O!��趭����|;.�c|�~��"nR�_�ww�� �#;��3�Nޓ�q����O�&�Ŏ?,n�-��U��v�q�җ�(��Eu��]#����ᳯ�Oq����$�ۀjܲ� �sCF�Ih�� �
Tx亻�q����;�����ȸ��ɑȏH��7�*[k�wk#S5�Ű,�o5�1���1@�[�4C�e9`U0}�)��~E��/�l�o]�~0�ÿx���槥��94�����/lԻ�b'�EQ4�ޱ�5��8'�AҰD��c�f���p>��C`��۬p��ܛ�
G�-6oL}?�'�X������7l����/�Q�� ��"�u�Řr,�`�lk*�q`3ާ`���I-��3�>yQn3�rgk�e��O{qH�Xwz��a)<~8)���g"��v��kdQ�Ôd��:�˽RF&f�K���#ݙdk�,�n�}��h��O�E���ٳ��}�Ӕ�������HQN��6�L�&��e��8-��U:<>p;��yqg�^Z�9纞3Y�:��] *�2��e骚���n��+7��<���[��B�������aZ��+��q�����n��[KN�'�]��[��k>5�^ά�K�:��dzc�����|X�ܾ�]�4����ʫAz�n���C[�(3i!5�c���^�.����*zٞ�<�X��1s�hڙezyPE�v>N*����%��W�y��B�lb}�'�g_����}Q[���vwU/���7I�K\�����hp<i%Ewe�W�)�z���]��7m�_���b�p��-�$e�J�7b�lg�s�^M��E�p�^�w��<]�Z�C#v�esm�}�^�$�W�L`��az�����;��?D=��`������ͻj
rE�S��l�'s�з��`zg�.�ҕ�ݧ
��I6���[ܮ����k�`�/���ꋜʊ�[�w�uQqz�8�g�m�����2]���_T���&:?���͢�$fם�    �A�l�/��췩���}��Q�M*����W�.j0U�G9��r�<��a�h�[�=)��F��bn*S�i�$/3�f��WoR���Ң�B.ʙ������蒤�X ���B��[����So;�)�>��QP�rxI�����{Go�e��p���)����s���!�7\�j�����ڕ��L��-���ko^�Hw]����g����c����vv�y�f�Ȩ���^�����]P��qL�"w|'�|��L|��I�a����W�_�6%�� �O�X'¬���o���;H�)�J�� �l���_�.�#a�x ES��Ơ�:6ʝ���wF�/���p���S�B���m��¢�%w}�`�y��Z���u�f�m<��w�����M��~-�����[��g��-��zt��Z	V\>؝�z��^��G��so.�-Z�zrE�φ2@aU�ZTx�<6�K]�!�j�s�8�y|�B�^ҝ��r]q{�5!w���Y��QoB��DOR��Z~�E�f��Y��ڕ6�yAe*�q�#�N�z�4@�s�}�~c�����5Z!�X��S�9r�z�&}r��Zz���g�
�[�kUb�m�n[�;=fjG�B.d��C�~듕�y�Y��O��=��G"�Ǻן�jI� k�3c�.��fcΩͭIr��g�O�����H�C.uN�v�p���y�ήZ2�bG;[n�<���+,����B�y���G*\��\�g�N�E�QN4^,LC�*��ًF�~����k�� �h�ۍ+�1X��q�Y��(�����5�g"��;^���VȎgَ����\�֟��/#�z:ז�>���=[5�4��f�S^ֶn�6Y�i"'0=�TΈ@��	���X���6�4�7K����Q�
�9R��H�E1d¢f�����1OO���75�Y��cS�~�͸6�ތK�ǡ_b�,o�����Hr>s}��N���p؅���`+Oun�	������y�`���P�-��:�[ӫi�����4P�$���3n6��s�#w~����x��t��f=d��@֩�c�����������2��k�\�
נA7�u�E��	~&C�Z��}�_L_�Ǎ�� :�Uu�dq�>fW����;��W�s�}����o_�.f_�$S�$��Bm��,��O��n�t��k[{t�%؞�;�`�,N��^���+���_�zc�����iı�|�.b�����#13��,hA�!�v�X��=�Z}8k+���"����]��;5�6P|�;'�����
��5ļ�c�,ݒ�9�Ѧ�$�{�%��}0e�O)<v���3��E����ޭ�dz�C��%*˛�g�in�����Es,aޓ_A>:��2u0q�1-lR�Hڸr�$,ЧP��Ly���s�hc@�8�ʛ*�r�| pin��bƝ}�~P����8�#,���/j�U�'zF�Ȋa]��dC�2�v'��/b0�{����1��d#[��~'��|2�|?�������!�b��/��(��W;^1��Ն 2H���ي⨨}$í�]y�݃�=%�_�kE�oQ`e�v�QN5�,�^��Z_E���_�ׁ6b_m���eQƶ��z\��m�V�~Ij��h'�H�;Ou���G۵�+�������Z㩡�͜�Є��~1d�i@���f�Dne�G:HG#3�N�M������._
{�)a)�����I`���N�I`�w�N����iJ�A�y���X�1ou<	o,������9έ� @d+��8�j��_����K���ک�{kn	���i~T�v"�j�����������s>��Q�a�p���b�UWƣ�9����q���ٝ�g�^(E��&c�Y��[�0�/������7�5��xRvM��}��� 7�أ����*u�0�N ��r���y4Ƞ��x�I�����;,.�c<t�[)��+v��`Ƚ�!O5 �X<�N^k",�l9�j���]R1q3Rȴ���mD\��,�`F-%[��̬��yo9.���|)7Y���>��?��k��=��aBׯ�ʎr
?�NQVK�:t������s�S��鞏�q?k�l*���7{���3����̛��٢HH�6R�? �l�_�C��9�iӪ�L���q�i*����M�P��#�u�s>۲�bwюs(��Iu-|��D��j�5�鲧N�,(�j��)�/�Q���-���ʱʮ�Ӷ�3�˻65c��L��p�Gu��<�^��]u�"dsD��rw�b��-h�$��C���{_4d���ǰf*��"�Z�g���1���)ݧ��ˎ�<Hm(�N��N-ɓ�N�U k��s�<��A}�ѯ�
�zv4yݸd$߃dv��r�{s�ǖ;2T��z��j�n��'�J�����ܞ��Y��S�3F�z�L+�_� ����Ϙ���AS������x\oY�`gb�`H��1&t�#�)��av�y��g�ׅ�Y�n�as,��>��Nߌ�\��~g�Z��E �·&�aa�/�n��O//K�"N�aO>�ځ=P�)���Fiq�D�)���@���ExJ���xmg��.�O�_J����^tA��E��VPC��q�a�q������O�{�ugmb���~��k�-��D�O7i�\�^���;5�Uy1M)���<���F�s�k���؁�C��ǌ@�8���.]_��	�*�?��.PWi���nU�;�,�~��|����S��N�E!�ֿ�EG]����5�j@R�1�>e����P�������ER-��T�J^'B.�.��w�S>�E?�ڔ��J����Ď��A�E��M5Y�I;yi~L���z޼{�_����	��4�-y��7s��|M�������o ��@ ��(��kA�U�0��eʱ��j�bk��`��ݡ�����֤1f�㢻%�[���b2;��5w�16�S{o�",�ѻN��C�6i��z/,��
7-
�c�-L넽�v�۲
�O�����ψ0;y*}?]����S{_L�Ba��h�N��V�8n����(�Z#��԰=L�B�p9�.�nbk��Ph >��?g�xRF`�5����������=ƼW�Nb�{��M��_�U�*��P��C����|5��w��ڑ�[�~�L����:~����Er���Tk�D�S�4�EȟS�nB� ��WÍ3�1&L��M���Ip�)C`u'�]���eJa9���-=��[�5�\t���Ӧ�~@�y�S ��ړ4����Y:23̢��Q�tܸ�ǌ��͖_ҧA-�����ם-��Jo]��&y���a\�۸{���Z��P�(�0��4a�P�&�y�L����[�ɦ�2q�3[^��D�yl�m�n��v�Š����V���A�F�?���g���ڽ���K����)�SA��q���ڼ��\p�E�R/�L�z�p�q�}$K�q;���jA�0ZO�-qe�������8���5���@F��U=歇8:���K��S�=Ns^:�Ts�#d�F}��[�0u�}�{}\\/3����X��o��C�Ց�nH�0q
�b*ǥɺ������2��ʈ?�e��zk�P��$�ŭN��+�u+���X�������o����@���`��U@Sv>¶��0�_[��րeY}J?R��7�R�i�\��My~Xq!ur��+�ts/i[�nL&������Z��P�I�QܟK+���
����$h��/}��������J�!�_T�	j�UKS�\|W���sX�WT�?�����̉!y��z����(���a��-������"t�k�-W� �Q-��۾��-b��߇gm\�r,���}�̟n�����LhF�u� ^��0�e-k�,�(�LU�ж����V�jD'��2���sDQ<nFʉ�^UB����Rߞ��LÖ���R���X�%I��;U�fw F��xl�;v~����{r��Վz.r���(-;W��l�O�=��w�T��?l�[�Q<� �  8�F�mkd8#Ρ�cAэW�
H��Q��j�ˉ�5c�L���Ғn8��F9�p���� )(����1�E�z5+_�擐���G���Są]l������1�[�ڰ�J���W���C�?�6�ϕ5w��H-����s�2 ���&;�����Ἦi�y�s��i~�����>�{��,`�(��6�8��k�Z��)�
���&'��EqO��R�:�)U-�e+[��6ID�`x�+���9�Q\쭫L�V�`�s�dI��҆s������R_���(����9ATE�.w4#Gg���Mn�c������Ao~��^o� j�S�6?'�ʯ**k�3�};
(�T]a>�\FKɜ��l���ݼX.u�M�p���%�Gv\����N"х_������y�:���	��Qov�ٿ���v�����9�u�)s�Zqpy�6cv��q/�lZq�W���^w�lGWRU��$�O�R�
}��Xc4�zS3�>Cn =/�� �c��ŔY�}��ޏ��-�E}>��V�����܊�M�ҋ���� �N��5�ڷA�_4���\��r1S��uY=��aI;Пr�p���u��;�&���̲�כ>ђm��[�[�a���/��< <���X�����I�8�NʙL�4�����}.?E�]�K�Õ�����%J"-���)V�R�l�О��f}�3%����'}��T9Ű�k�4��3p;�a\�l�0�f�M'	�*}J+�:�>�Y^����Ճ�=�c!�i��xmo���3�}Scx0U�����C��L\g �6�~�edx���5/	W��F��k�w�X-�����C��1�=�x��3�k�m|,�v�*{y�����L���i�G�8~�	I
Zv,i#��66�U��)���D����� F:q�R�2���|������� �x�I����A��Xȼo^zY��?9x1I����a��v��ǡ�e��!nn��1����u[�u�<u�ۜ$2�|�,*���Oj�c��M.� �^�c�0�k�f�3Gh^;pf&ymt�FASf��}֤��/Ti{��#7���]U�ѤU~��Y�v���cV6tkt��F���yڐ��d/V��|�����'QEu*�¡Zs��L�Mr�+�&Q��u!=
���RY��1<��x<@c�/�,3F>[u�[&`m	z����.�_�H��§u�/�����C#��,g��{x9�{a���j!쇥*�����,�� �̛��c�]'B�-��%�b']�r�BMAg�P���VG�*+�Ń��~����:
�#�/K��A��b�X�k�m����ʛ�*�u�F�8(�{����>��C9<{q��r����.��3�S*̮{�=���h��\�a���ï�i��F�kS8�M�,��d��тr�T�
d�\WBM'U�g륽n<�h,O6$��������SI D�_��2����E����ܦڔ��5�
� u%����i�0���M؛^G��>��p����@���)���m��csb����LE���f�$���¯�i���z�3쀔�(�J[�s�����Om�&��O�&���k�H�]�8͒,6��Y��r�#W�&uQ�;܎L���������6�0yWY\XC6�s����rb��
�G:T��, S�ނ�sX9h��ZPKZu� ��?<]+�#_�6:4��l�Ͱy�&Y/�A9�XqJ^_L)���f4��6��Ya�Oo�i$m���b��^��n'Q�Th��M�k���"0�Z�ys![�]ꬽ˙�����T6���zwV'��+�����G�kb�ug�\E�u���΍�ojwV��۬]�vG�?"Gy�c ��΂�P��$ф�/\�n�G�etG��E`%&\[#d��lL��-h++�0%��z"�T�߄r���W��K�ΉF�v�ƿ)1לr�#����_ ��N��/��f��Ӣ��[:4�
\Ⱥ�T�1H���d�L�����1�(�/��S�Y�燣���/8�:o��9̙��X?H��g#(��R�m�+�`����Hr�4FTz��ގ�O&ɲ;ޝE���>m���j7�r��\��3=z0�N`;_m~#	��Fx2�7I���>
Rv
�a�ى�(�RH�I?vMR��~�'ٲ+�H�j�%H{�ѬM�1�����z�9~#Iѯ}aB���@�yS���lc� :�{4Ip��O&es�{L��8�-��=0{yǴOOa�)�3�R��`���d�	�z=fL �ۻ�s����E4nl�b˦���h���I&��O@� ꑳ]c��di�h~?�XKG�I%�c8�	�~��_�1�|ѐy�JQ���ĲӾi;��I����ilT|2Ǭ7��#�(3�.�+���r���kyqo��eRe�ш������{�|0�[(k܅f[����a	j������Z���j���FX��R`%.�����6�8��䊒?l����ݽ�Y��M�z���\��~o,�`��c*����ُh��=��`��$�%�3�Ǔ�uV<�H3Gy[1�-=��}9ö4N�d܋��~���;���s�C!�T���y�p���*���)�q�q��&���x�+�R� ��V�l�`���^z�e��>����r����/��{O xy7�8�=�]w]G�Pq�ZmG���a��ff�>�d�:�b�vɮGG?���e�8��mx����6M�'uV���n��� y���V����v�ǔ5i�d� �	ey�u�'�L��Q��2�4�4����/��*�,	Zqn��u���$_��n�@��Ϣ�гF�.[�i�(v����@���x�h"����?�3̈���^Fٰ�x\wcrv/��oKT��0�~ʹ�Q�Q��T��� ��}(f;_��x����6��^<�`�� r%��G���#Tvwo��K����z.��L�jaVK�E&�%#�#s�;Vw���٘J��gũ�+�b�QMM%]�8�D��V�&�}�/���/�A�1�kfF�|�<q燛��G_�5o���_�c�;�_;A_��zK�����R��S�A\L*�=����č>�@�9��rbo�S���5�+�1�G�$���f͹�<��㇁�����$��vu�q���b��Y7E%1�B���ʯ����6�|�n�yy7۬2��*+�v��L�+�;O$}0��w����#�4�o�uv��|ir���p������r6��(l,7�O��޴5`�D�y���U���>����ݭ���v���ʳ�6�e����Aa�!����]�ָ�pr�l�S����13��o8i��[l���y���a����YL�F^]\�h�l�j^Ҳ�����Y�. �,:�o�|ͫr/��z=��0�Fk�r�~���G��HW�g��7���&����ߴs��G7w��r8��*�E���-�Z�~4/�TH�{n��O�߯?���f���      �   @   x�-���0�o��b�K���^R�{��ƢK���p&��
i��R)��4����8���S      �   �   x�U̻�@��z�)�7l���V�66�!7�5&>�@gy�����0DE�~��c�9yF�
�B�ĉ,qHH�OH���v�����S�@P"�Y��t��_���S�jM�A[�X�Ab��ت���(L      �   b  x�m�Mj1���)jFT�Jݒv�$`/���t��t��ľ���E��\���ޣ�H-�S?����	��bdZ /�l-/������,�Z�o>��)�Y<�E�@.GDC^���ԫ�&o��n����, �Q0���P[��S���R;�Ͷ$�6�.�h�޽��#ctbB������O	6i�u�Ҡ�C�
l%�U"Jt�	,��Jt�.S{dö�u����q���f����ix}ICIu���]PTE��9#��٪v�8;}�ڱ�m���&V��O�����r�BD6��īnj�|�A�U��~�ο�[���!���=�6]�Ǚ�
��.�~N�_����G���?Q���      �   O   x�U˱� C�ڞ"}N;��`��#$w)��?Q

Z�d�=�>l���{��ŪP�O� �27��x���aeU�}3      �   !   x�3�4�4�42 .#N#N3NS0'F��� A�:      �      x������ � �      �   �  x�u�M��0��ί�2��/>ni�M"uwe��P	��%�L�t��������@� 3��Ȭ��8�J,�P F�,�2�I�
�&o( @��-O���ͱzkZ/A�֧�@�sS6��m*3.&�s���x���H��&0���%Z���ejc��A���^��T7�$����D]��5D	�a"T��/��Î����L�HP.DP��H%'���%~����ګ� )@�y��8��}]�-���H�k��c}҄QH���}��N��9��d �;�[,h��+NѼmk��������+$C�")�MG`�.�y�R��KE�wESv֔��|=/�>��\P��G��5�	��}�HJ.ұ`!߃���+���5no0s��m����.k,�g��/��{�+Q=z'7����e|��W:��R�����k�|������r���&H6~����
�R�Sr
<����tCQ��4��f���"��y��h6���x`      �   �   x�%��!г]̊|�I/�gN<E1K�c#���^��#���%�y���֪��fx�!�0��|�[��>|�,5-�a�,#�ci�}��=,c�pľ����n�ϗ֡a2��Iv����|$��a&�      �   a   x�3�)J�+NK-*QHQO,JO�+�4�4B##C]#]CSCs+#C+SK=33#C#mC.3N�Ҕ̒��<��T�����Դ��̜�TN3ºc���� ���      �   9   x���  �w�DB8��ׁ��J�[Zr���Œ���_����w�3�xD�	      �     x�u�M�� �5���Q��lc�����1TS5�4R(���\���O�O�����If��+*E���T�R��2��9�s*�#���H�0:�+W���R�l��׉��!}����}-�E?��H��52��U¸�K��@�4��:�MyXl�+�2�?eF-�\dKE�3���랲�\�zS�A�5��4=ck�ǒ����,�04t�$[�~I�E3������T-B���RyQ�S=�Tе�7uN^S��+����f���SN�1Lf�m�B����Z�l��      �   �   x�5��!C�V1y�f�%��i�\�#y�:1QQћ�GF�`\kaJ�.X�Zl�[�qb��`S�����G����
�m�Jp*��1��Y|p߱�cLc6'һ��)ّ�m�2�H�Ǫpx��M�|�,|? ~9v#�      �   t  x�m�[n�0�oe�T���Et��:�"���h`Ȏ�^�������;��\�
 �3Ha�߅1���Kx���ÿ9}�^Tn�_{ ���۬���E5&9V�o���~�_�;������!�G��{zO�@	C�D>q#͕ۜ�"����b�^��O�ѝ�upФ��*�����z��(���G����'�$Ƙ�^���wy�蝩���@��f�&r[LP�+z�c�Mk�Ëڅ�i�&0�wJ��H����ē���l<9����钼(6{:��۫��+���(�����a9;�?���ڙ�8�x�:����7�1�^��$2Cz�)�k���om)��I�zo%�������~<����     