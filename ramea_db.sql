PGDMP          	    
            y            ramea_db    12.5    12.5    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25934    ramea_db    DATABASE     �   CREATE DATABASE ramea_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE ramea_db;
                postgres    false            �            1259    41491    administrateurs_administrateurs    TABLE     �   CREATE TABLE public.administrateurs_administrateurs (
    id integer NOT NULL,
    telephone character varying(8) NOT NULL,
    organisation_id integer NOT NULL,
    user_id integer NOT NULL
);
 3   DROP TABLE public.administrateurs_administrateurs;
       public         heap    postgres    false            �            1259    41489 %   administrateurs_administrateur_id_seq    SEQUENCE     �   CREATE SEQUENCE public.administrateurs_administrateur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.administrateurs_administrateur_id_seq;
       public          postgres    false    224            �           0    0 %   administrateurs_administrateur_id_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE public.administrateurs_administrateur_id_seq OWNED BY public.administrateurs_administrateurs.id;
          public          postgres    false    223            �            1259    25966 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    25964    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    25976    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    25974    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    25958    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    25956    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    25984 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    25994    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    25992    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    25982    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    26002    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    26000 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    50115    categories_categories    TABLE     �   CREATE TABLE public.categories_categories (
    id integer NOT NULL,
    nom character varying(55) NOT NULL,
    typecategorie_id integer NOT NULL,
    org_id integer NOT NULL,
    admin_id integer NOT NULL
);
 )   DROP TABLE public.categories_categories;
       public         heap    postgres    false            �            1259    50113    categories_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.categories_categories_id_seq;
       public          postgres    false    232            �           0    0    categories_categories_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.categories_categories_id_seq OWNED BY public.categories_categories.id;
          public          postgres    false    231            �            1259    50107    categories_typecategorie    TABLE     r   CREATE TABLE public.categories_typecategorie (
    id integer NOT NULL,
    nom character varying(35) NOT NULL
);
 ,   DROP TABLE public.categories_typecategorie;
       public         heap    postgres    false            �            1259    50105    categories_typecategorie_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_typecategorie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.categories_typecategorie_id_seq;
       public          postgres    false    230            �           0    0    categories_typecategorie_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.categories_typecategorie_id_seq OWNED BY public.categories_typecategorie.id;
          public          postgres    false    229            �            1259    58357    clients_clients    TABLE     �  CREATE TABLE public.clients_clients (
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
       public         heap    postgres    false            �            1259    58355    clients_clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.clients_clients_id_seq;
       public          postgres    false    240            �           0    0    clients_clients_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.clients_clients_id_seq OWNED BY public.clients_clients.id;
          public          postgres    false    239            �            1259    26062    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    26060    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    25948    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    25946    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    25937    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    25935    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    26093    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    50249    gerants_utilisateurs    TABLE     �   CREATE TABLE public.gerants_utilisateurs (
    id integer NOT NULL,
    telephone character varying(8) NOT NULL,
    admin_id integer NOT NULL,
    organisation_id integer NOT NULL,
    point_vente_id integer NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.gerants_utilisateurs;
       public         heap    postgres    false            �            1259    50247    gerants_utilisateurs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gerants_utilisateurs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.gerants_utilisateurs_id_seq;
       public          postgres    false    238            �           0    0    gerants_utilisateurs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.gerants_utilisateurs_id_seq OWNED BY public.gerants_utilisateurs.id;
          public          postgres    false    237            �            1259    82932    histo_prod_historiqueprod    TABLE       CREATE TABLE public.histo_prod_historiqueprod (
    id integer NOT NULL,
    qte_ajoutee integer NOT NULL,
    date_ajout timestamp with time zone NOT NULL,
    produit_id integer NOT NULL,
    gerant_id integer NOT NULL,
    point_vente_id integer NOT NULL
);
 -   DROP TABLE public.histo_prod_historiqueprod;
       public         heap    postgres    false            �            1259    82930     histo_prod_historiqueprod_id_seq    SEQUENCE     �   CREATE SEQUENCE public.histo_prod_historiqueprod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.histo_prod_historiqueprod_id_seq;
       public          postgres    false    246            �           0    0     histo_prod_historiqueprod_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.histo_prod_historiqueprod_id_seq OWNED BY public.histo_prod_historiqueprod.id;
          public          postgres    false    245            �            1259    26105    organisations_organisations    TABLE     %  CREATE TABLE public.organisations_organisations (
    id integer NOT NULL,
    nom character varying(255) NOT NULL,
    telephone_p character varying(8) NOT NULL,
    mail character varying(255) NOT NULL,
    date_add timestamp with time zone NOT NULL,
    telephone_s character varying(8)
);
 /   DROP TABLE public.organisations_organisations;
       public         heap    postgres    false            �            1259    26103 "   organisations_organisations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.organisations_organisations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.organisations_organisations_id_seq;
       public          postgres    false    222            �           0    0 "   organisations_organisations_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.organisations_organisations_id_seq OWNED BY public.organisations_organisations.id;
          public          postgres    false    221            �            1259    50049    points_affaire_pointsaffaires    TABLE     @  CREATE TABLE public.points_affaire_pointsaffaires (
    id integer NOT NULL,
    nom character varying(100) NOT NULL,
    telephone_point character varying(8),
    date_creation timestamp with time zone NOT NULL,
    admin_id integer NOT NULL,
    org_id integer NOT NULL,
    adresse character varying(255) NOT NULL
);
 1   DROP TABLE public.points_affaire_pointsaffaires;
       public         heap    postgres    false            �            1259    50047 $   points_affaire_pointsaffaires_id_seq    SEQUENCE     �   CREATE SEQUENCE public.points_affaire_pointsaffaires_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.points_affaire_pointsaffaires_id_seq;
       public          postgres    false    228            �           0    0 $   points_affaire_pointsaffaires_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.points_affaire_pointsaffaires_id_seq OWNED BY public.points_affaire_pointsaffaires.id;
          public          postgres    false    227            �            1259    50032    produits_produits    TABLE     R  CREATE TABLE public.produits_produits (
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
       public         heap    postgres    false            �            1259    50030    produits_produits_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produits_produits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.produits_produits_id_seq;
       public          postgres    false    226            �           0    0    produits_produits_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.produits_produits_id_seq OWNED BY public.produits_produits.id;
          public          postgres    false    225            �            1259    107535    produits_quantitepoint    TABLE     �   CREATE TABLE public.produits_quantitepoint (
    id integer NOT NULL,
    qte_stock integer NOT NULL,
    point_id integer NOT NULL,
    produit_id integer NOT NULL
);
 *   DROP TABLE public.produits_quantitepoint;
       public         heap    postgres    false            �            1259    107533    produits_quantitepoint_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produits_quantitepoint_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.produits_quantitepoint_id_seq;
       public          postgres    false    248            �           0    0    produits_quantitepoint_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.produits_quantitepoint_id_seq OWNED BY public.produits_quantitepoint.id;
          public          postgres    false    247            �            1259    50197    services_services    TABLE     �   CREATE TABLE public.services_services (
    id integer NOT NULL,
    nom character varying(35) NOT NULL,
    categorie_id integer NOT NULL,
    org_id integer NOT NULL,
    admin_id integer NOT NULL,
    date_add timestamp with time zone NOT NULL
);
 %   DROP TABLE public.services_services;
       public         heap    postgres    false            �            1259    50195    services_services_id_seq    SEQUENCE     �   CREATE SEQUENCE public.services_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.services_services_id_seq;
       public          postgres    false    234            �           0    0    services_services_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.services_services_id_seq OWNED BY public.services_services.id;
          public          postgres    false    233            �            1259    50207    services_services_point_vente    TABLE     �   CREATE TABLE public.services_services_point_vente (
    id integer NOT NULL,
    services_id integer NOT NULL,
    pointsaffaires_id integer NOT NULL
);
 1   DROP TABLE public.services_services_point_vente;
       public         heap    postgres    false            �            1259    50205 $   services_services_point_vente_id_seq    SEQUENCE     �   CREATE SEQUENCE public.services_services_point_vente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.services_services_point_vente_id_seq;
       public          postgres    false    236            �           0    0 $   services_services_point_vente_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.services_services_point_vente_id_seq OWNED BY public.services_services_point_vente.id;
          public          postgres    false    235            �            1259    66551    ventes_ventes    TABLE     ,  CREATE TABLE public.ventes_ventes (
    id integer NOT NULL,
    date_vente timestamp with time zone NOT NULL,
    montant double precision NOT NULL,
    client_id integer NOT NULL,
    gerant_id integer NOT NULL,
    point_vente_id integer NOT NULL,
    remise integer,
    taxe integer NOT NULL
);
 !   DROP TABLE public.ventes_ventes;
       public         heap    postgres    false            �            1259    66549    ventes_ventes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ventes_ventes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ventes_ventes_id_seq;
       public          postgres    false    242            �           0    0    ventes_ventes_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ventes_ventes_id_seq OWNED BY public.ventes_ventes.id;
          public          postgres    false    241            �            1259    66559    ventes_ventes_produit    TABLE     �   CREATE TABLE public.ventes_ventes_produit (
    id integer NOT NULL,
    ventes_id integer NOT NULL,
    produits_id integer NOT NULL
);
 )   DROP TABLE public.ventes_ventes_produit;
       public         heap    postgres    false            �            1259    66557    ventes_ventes_produit_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ventes_ventes_produit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.ventes_ventes_produit_id_seq;
       public          postgres    false    244            �           0    0    ventes_ventes_produit_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.ventes_ventes_produit_id_seq OWNED BY public.ventes_ventes_produit.id;
          public          postgres    false    243                       2604    41494 "   administrateurs_administrateurs id    DEFAULT     �   ALTER TABLE ONLY public.administrateurs_administrateurs ALTER COLUMN id SET DEFAULT nextval('public.administrateurs_administrateur_id_seq'::regclass);
 Q   ALTER TABLE public.administrateurs_administrateurs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224                       2604    25969    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209                       2604    25979    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211                       2604    25961    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207                       2604    25987    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213                       2604    25997    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    26005    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                       2604    50118    categories_categories id    DEFAULT     �   ALTER TABLE ONLY public.categories_categories ALTER COLUMN id SET DEFAULT nextval('public.categories_categories_id_seq'::regclass);
 G   ALTER TABLE public.categories_categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232                       2604    50110    categories_typecategorie id    DEFAULT     �   ALTER TABLE ONLY public.categories_typecategorie ALTER COLUMN id SET DEFAULT nextval('public.categories_typecategorie_id_seq'::regclass);
 J   ALTER TABLE public.categories_typecategorie ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230                        2604    58360    clients_clients id    DEFAULT     x   ALTER TABLE ONLY public.clients_clients ALTER COLUMN id SET DEFAULT nextval('public.clients_clients_id_seq'::regclass);
 A   ALTER TABLE public.clients_clients ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240                       2604    26065    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                       2604    25951    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205                       2604    25940    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203                       2604    50252    gerants_utilisateurs id    DEFAULT     �   ALTER TABLE ONLY public.gerants_utilisateurs ALTER COLUMN id SET DEFAULT nextval('public.gerants_utilisateurs_id_seq'::regclass);
 F   ALTER TABLE public.gerants_utilisateurs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            #           2604    82935    histo_prod_historiqueprod id    DEFAULT     �   ALTER TABLE ONLY public.histo_prod_historiqueprod ALTER COLUMN id SET DEFAULT nextval('public.histo_prod_historiqueprod_id_seq'::regclass);
 K   ALTER TABLE public.histo_prod_historiqueprod ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246                       2604    26108    organisations_organisations id    DEFAULT     �   ALTER TABLE ONLY public.organisations_organisations ALTER COLUMN id SET DEFAULT nextval('public.organisations_organisations_id_seq'::regclass);
 M   ALTER TABLE public.organisations_organisations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222                       2604    50052     points_affaire_pointsaffaires id    DEFAULT     �   ALTER TABLE ONLY public.points_affaire_pointsaffaires ALTER COLUMN id SET DEFAULT nextval('public.points_affaire_pointsaffaires_id_seq'::regclass);
 O   ALTER TABLE public.points_affaire_pointsaffaires ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228                       2604    50035    produits_produits id    DEFAULT     |   ALTER TABLE ONLY public.produits_produits ALTER COLUMN id SET DEFAULT nextval('public.produits_produits_id_seq'::regclass);
 C   ALTER TABLE public.produits_produits ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            $           2604    107538    produits_quantitepoint id    DEFAULT     �   ALTER TABLE ONLY public.produits_quantitepoint ALTER COLUMN id SET DEFAULT nextval('public.produits_quantitepoint_id_seq'::regclass);
 H   ALTER TABLE public.produits_quantitepoint ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248                       2604    50200    services_services id    DEFAULT     |   ALTER TABLE ONLY public.services_services ALTER COLUMN id SET DEFAULT nextval('public.services_services_id_seq'::regclass);
 C   ALTER TABLE public.services_services ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234                       2604    50210     services_services_point_vente id    DEFAULT     �   ALTER TABLE ONLY public.services_services_point_vente ALTER COLUMN id SET DEFAULT nextval('public.services_services_point_vente_id_seq'::regclass);
 O   ALTER TABLE public.services_services_point_vente ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            !           2604    66554    ventes_ventes id    DEFAULT     t   ALTER TABLE ONLY public.ventes_ventes ALTER COLUMN id SET DEFAULT nextval('public.ventes_ventes_id_seq'::regclass);
 ?   ALTER TABLE public.ventes_ventes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            "           2604    66562    ventes_ventes_produit id    DEFAULT     �   ALTER TABLE ONLY public.ventes_ventes_produit ALTER COLUMN id SET DEFAULT nextval('public.ventes_ventes_produit_id_seq'::regclass);
 G   ALTER TABLE public.ventes_ventes_produit ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            q          0    41491    administrateurs_administrateurs 
   TABLE DATA           b   COPY public.administrateurs_administrateurs (id, telephone, organisation_id, user_id) FROM stdin;
    public          postgres    false    224   �      b          0    25966 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   T�      d          0    25976    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   q�      `          0    25958    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ��      f          0    25984 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   ��      h          0    25994    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ��      j          0    26002    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   ��      y          0    50115    categories_categories 
   TABLE DATA           \   COPY public.categories_categories (id, nom, typecategorie_id, org_id, admin_id) FROM stdin;
    public          postgres    false    232   ՝      w          0    50107    categories_typecategorie 
   TABLE DATA           ;   COPY public.categories_typecategorie (id, nom) FROM stdin;
    public          postgres    false    230   |�      �          0    58357    clients_clients 
   TABLE DATA           �   COPY public.clients_clients (id, nom, prenoms, telephone_p, adr_mail, adr_phisique, image, gerant_id, point_vente_id, telephone_s, org_id) FROM stdin;
    public          postgres    false    240   ��      l          0    26062    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   �      ^          0    25948    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   �      \          0    25937    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   ס      m          0    26093    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   _�                0    50249    gerants_utilisateurs 
   TABLE DATA           q   COPY public.gerants_utilisateurs (id, telephone, admin_id, organisation_id, point_vente_id, user_id) FROM stdin;
    public          postgres    false    238   ��      �          0    82932    histo_prod_historiqueprod 
   TABLE DATA           w   COPY public.histo_prod_historiqueprod (id, qte_ajoutee, date_ajout, produit_id, gerant_id, point_vente_id) FROM stdin;
    public          postgres    false    246   ?�      o          0    26105    organisations_organisations 
   TABLE DATA           h   COPY public.organisations_organisations (id, nom, telephone_p, mail, date_add, telephone_s) FROM stdin;
    public          postgres    false    222   ��      u          0    50049    points_affaire_pointsaffaires 
   TABLE DATA           {   COPY public.points_affaire_pointsaffaires (id, nom, telephone_point, date_creation, admin_id, org_id, adresse) FROM stdin;
    public          postgres    false    228   C�      s          0    50032    produits_produits 
   TABLE DATA           |   COPY public.produits_produits (id, designation, prix_unitaire, date_add, admin_id, categorie_id, image, org_id) FROM stdin;
    public          postgres    false    226   ��      �          0    107535    produits_quantitepoint 
   TABLE DATA           U   COPY public.produits_quantitepoint (id, qte_stock, point_id, produit_id) FROM stdin;
    public          postgres    false    248   ��      {          0    50197    services_services 
   TABLE DATA           ^   COPY public.services_services (id, nom, categorie_id, org_id, admin_id, date_add) FROM stdin;
    public          postgres    false    234   ��      }          0    50207    services_services_point_vente 
   TABLE DATA           [   COPY public.services_services_point_vente (id, services_id, pointsaffaires_id) FROM stdin;
    public          postgres    false    236   J�      �          0    66551    ventes_ventes 
   TABLE DATA           t   COPY public.ventes_ventes (id, date_vente, montant, client_id, gerant_id, point_vente_id, remise, taxe) FROM stdin;
    public          postgres    false    242   ��      �          0    66559    ventes_ventes_produit 
   TABLE DATA           K   COPY public.ventes_ventes_produit (id, ventes_id, produits_id) FROM stdin;
    public          postgres    false    244   ��      �           0    0 %   administrateurs_administrateur_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.administrateurs_administrateur_id_seq', 3, true);
          public          postgres    false    223            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 10, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    categories_categories_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.categories_categories_id_seq', 12, true);
          public          postgres    false    231            �           0    0    categories_typecategorie_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.categories_typecategorie_id_seq', 2, true);
          public          postgres    false    229            �           0    0    clients_clients_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.clients_clients_id_seq', 11, true);
          public          postgres    false    239            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 5, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 66, true);
          public          postgres    false    202            �           0    0    gerants_utilisateurs_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.gerants_utilisateurs_id_seq', 5, true);
          public          postgres    false    237            �           0    0     histo_prod_historiqueprod_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.histo_prod_historiqueprod_id_seq', 9, true);
          public          postgres    false    245            �           0    0 "   organisations_organisations_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.organisations_organisations_id_seq', 2, true);
          public          postgres    false    221            �           0    0 $   points_affaire_pointsaffaires_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.points_affaire_pointsaffaires_id_seq', 43, true);
          public          postgres    false    227            �           0    0    produits_produits_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.produits_produits_id_seq', 32, true);
          public          postgres    false    225            �           0    0    produits_quantitepoint_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.produits_quantitepoint_id_seq', 13, true);
          public          postgres    false    247            �           0    0    services_services_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.services_services_id_seq', 6, true);
          public          postgres    false    233            �           0    0 $   services_services_point_vente_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.services_services_point_vente_id_seq', 11, true);
          public          postgres    false    235            �           0    0    ventes_ventes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ventes_ventes_id_seq', 1, false);
          public          postgres    false    241            �           0    0    ventes_ventes_produit_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.ventes_ventes_produit_id_seq', 1, false);
          public          postgres    false    243            a           2606    41499 C   administrateurs_administrateurs administrateurs_administrateur_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_administrateur_pkey PRIMARY KEY (id);
 m   ALTER TABLE ONLY public.administrateurs_administrateurs DROP CONSTRAINT administrateurs_administrateur_pkey;
       public            postgres    false    224            c           2606    41987 L   administrateurs_administrateurs administrateurs_administrateur_telephone_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_administrateur_telephone_key UNIQUE (telephone);
 v   ALTER TABLE ONLY public.administrateurs_administrateurs DROP CONSTRAINT administrateurs_administrateur_telephone_key;
       public            postgres    false    224            f           2606    41980 K   administrateurs_administrateurs administrateurs_administrateurs_user_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_administrateurs_user_id_key UNIQUE (user_id);
 u   ALTER TABLE ONLY public.administrateurs_administrateurs DROP CONSTRAINT administrateurs_administrateurs_user_id_key;
       public            postgres    false    224            2           2606    26091    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            7           2606    26018 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            :           2606    25981 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            4           2606    25971    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            -           2606    26009 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            /           2606    25963 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            B           2606    25999 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            E           2606    26033 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            <           2606    25989    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            H           2606    26007 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            K           2606    26047 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            ?           2606    26085     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            {           2606    50122 3   categories_categories categories_categories_nom_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categories_nom_key UNIQUE (nom);
 ]   ALTER TABLE ONLY public.categories_categories DROP CONSTRAINT categories_categories_nom_key;
       public            postgres    false    232            ~           2606    50120 0   categories_categories categories_categories_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categories_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.categories_categories DROP CONSTRAINT categories_categories_pkey;
       public            postgres    false    232            w           2606    50112 6   categories_typecategorie categories_typecategorie_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.categories_typecategorie
    ADD CONSTRAINT categories_typecategorie_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.categories_typecategorie DROP CONSTRAINT categories_typecategorie_pkey;
       public            postgres    false    230            �           2606    58365 $   clients_clients clients_clients_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.clients_clients DROP CONSTRAINT clients_clients_pkey;
       public            postgres    false    240            �           2606    58367 -   clients_clients clients_clients_telephone_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_telephone_key UNIQUE (telephone_p);
 W   ALTER TABLE ONLY public.clients_clients DROP CONSTRAINT clients_clients_telephone_key;
       public            postgres    false    240            N           2606    26071 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            (           2606    25955 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            *           2606    25953 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            &           2606    25945 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            R           2606    26100 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            �           2606    50254 .   gerants_utilisateurs gerants_utilisateurs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_pkey;
       public            postgres    false    238            �           2606    50256 7   gerants_utilisateurs gerants_utilisateurs_telephone_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_telephone_key UNIQUE (telephone);
 a   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_telephone_key;
       public            postgres    false    238            �           2606    50258 5   gerants_utilisateurs gerants_utilisateurs_user_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_user_id_key UNIQUE (user_id);
 _   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_user_id_key;
       public            postgres    false    238            �           2606    82937 8   histo_prod_historiqueprod histo_prod_historiqueprod_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.histo_prod_historiqueprod
    ADD CONSTRAINT histo_prod_historiqueprod_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.histo_prod_historiqueprod DROP CONSTRAINT histo_prod_historiqueprod_pkey;
       public            postgres    false    246            V           2606    33342 J   organisations_organisations organisations_organisations_mail_fec430db_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_mail_fec430db_uniq UNIQUE (mail);
 t   ALTER TABLE ONLY public.organisations_organisations DROP CONSTRAINT organisations_organisations_mail_fec430db_uniq;
       public            postgres    false    222            Y           2606    33345 I   organisations_organisations organisations_organisations_nom_32808af1_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_nom_32808af1_uniq UNIQUE (nom);
 s   ALTER TABLE ONLY public.organisations_organisations DROP CONSTRAINT organisations_organisations_nom_32808af1_uniq;
       public            postgres    false    222            [           2606    26113 <   organisations_organisations organisations_organisations_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.organisations_organisations DROP CONSTRAINT organisations_organisations_pkey;
       public            postgres    false    222            ]           2606    41996 Q   organisations_organisations organisations_organisations_telephone_p_09e77c51_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_telephone_p_09e77c51_uniq UNIQUE (telephone_p);
 {   ALTER TABLE ONLY public.organisations_organisations DROP CONSTRAINT organisations_organisations_telephone_p_09e77c51_uniq;
       public            postgres    false    222            _           2606    42011 Q   organisations_organisations organisations_organisations_telephone_s_e27f94a0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.organisations_organisations
    ADD CONSTRAINT organisations_organisations_telephone_s_e27f94a0_uniq UNIQUE (telephone_s);
 {   ALTER TABLE ONLY public.organisations_organisations DROP CONSTRAINT organisations_organisations_telephone_s_e27f94a0_uniq;
       public            postgres    false    222            r           2606    50056 C   points_affaire_pointsaffaires points_affaire_pointsaffaires_nom_key 
   CONSTRAINT     }   ALTER TABLE ONLY public.points_affaire_pointsaffaires
    ADD CONSTRAINT points_affaire_pointsaffaires_nom_key UNIQUE (nom);
 m   ALTER TABLE ONLY public.points_affaire_pointsaffaires DROP CONSTRAINT points_affaire_pointsaffaires_nom_key;
       public            postgres    false    228            u           2606    50054 @   points_affaire_pointsaffaires points_affaire_pointsaffaires_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.points_affaire_pointsaffaires
    ADD CONSTRAINT points_affaire_pointsaffaires_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.points_affaire_pointsaffaires DROP CONSTRAINT points_affaire_pointsaffaires_pkey;
       public            postgres    false    228            k           2606    50137 3   produits_produits produits_produits_designation_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_designation_key UNIQUE (designation);
 ]   ALTER TABLE ONLY public.produits_produits DROP CONSTRAINT produits_produits_designation_key;
       public            postgres    false    226            n           2606    50037 (   produits_produits produits_produits_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.produits_produits DROP CONSTRAINT produits_produits_pkey;
       public            postgres    false    226            �           2606    107540 2   produits_quantitepoint produits_quantitepoint_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.produits_quantitepoint
    ADD CONSTRAINT produits_quantitepoint_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.produits_quantitepoint DROP CONSTRAINT produits_quantitepoint_pkey;
       public            postgres    false    248            �           2606    50204 +   services_services services_services_nom_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_nom_key UNIQUE (nom);
 U   ALTER TABLE ONLY public.services_services DROP CONSTRAINT services_services_nom_key;
       public            postgres    false    234            �           2606    50202 (   services_services services_services_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.services_services DROP CONSTRAINT services_services_pkey;
       public            postgres    false    234            �           2606    50227 ]   services_services_point_vente services_services_point__services_id_pointsaffair_d14e19e4_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.services_services_point_vente
    ADD CONSTRAINT services_services_point__services_id_pointsaffair_d14e19e4_uniq UNIQUE (services_id, pointsaffaires_id);
 �   ALTER TABLE ONLY public.services_services_point_vente DROP CONSTRAINT services_services_point__services_id_pointsaffair_d14e19e4_uniq;
       public            postgres    false    236    236            �           2606    50212 @   services_services_point_vente services_services_point_vente_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.services_services_point_vente
    ADD CONSTRAINT services_services_point_vente_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.services_services_point_vente DROP CONSTRAINT services_services_point_vente_pkey;
       public            postgres    false    236            �           2606    66556     ventes_ventes ventes_ventes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.ventes_ventes
    ADD CONSTRAINT ventes_ventes_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.ventes_ventes DROP CONSTRAINT ventes_ventes_pkey;
       public            postgres    false    242            �           2606    66564 0   ventes_ventes_produit ventes_ventes_produit_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.ventes_ventes_produit
    ADD CONSTRAINT ventes_ventes_produit_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.ventes_ventes_produit DROP CONSTRAINT ventes_ventes_produit_pkey;
       public            postgres    false    244            �           2606    66584 O   ventes_ventes_produit ventes_ventes_produit_ventes_id_produits_id_89a6c659_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ventes_ventes_produit
    ADD CONSTRAINT ventes_ventes_produit_ventes_id_produits_id_89a6c659_uniq UNIQUE (ventes_id, produits_id);
 y   ALTER TABLE ONLY public.ventes_ventes_produit DROP CONSTRAINT ventes_ventes_produit_ventes_id_produits_id_89a6c659_uniq;
       public            postgres    false    244    244            d           1259    41522 8   administrateurs_administrateurs_organisation_id_8267725a    INDEX     �   CREATE INDEX administrateurs_administrateurs_organisation_id_8267725a ON public.administrateurs_administrateurs USING btree (organisation_id);
 L   DROP INDEX public.administrateurs_administrateurs_organisation_id_8267725a;
       public            postgres    false    224            0           1259    26092    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            5           1259    26029 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            8           1259    26030 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            +           1259    26015 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            @           1259    26045 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            C           1259    26044 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            F           1259    26059 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            I           1259    26058 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            =           1259    26086     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            x           1259    50160 '   categories_categories_admin_id_f2878ef6    INDEX     m   CREATE INDEX categories_categories_admin_id_f2878ef6 ON public.categories_categories USING btree (admin_id);
 ;   DROP INDEX public.categories_categories_admin_id_f2878ef6;
       public            postgres    false    232            y           1259    50128 '   categories_categories_nom_076302a7_like    INDEX     |   CREATE INDEX categories_categories_nom_076302a7_like ON public.categories_categories USING btree (nom varchar_pattern_ops);
 ;   DROP INDEX public.categories_categories_nom_076302a7_like;
       public            postgres    false    232            |           1259    50153 %   categories_categories_org_id_c8ad353b    INDEX     i   CREATE INDEX categories_categories_org_id_c8ad353b ON public.categories_categories USING btree (org_id);
 9   DROP INDEX public.categories_categories_org_id_c8ad353b;
       public            postgres    false    232                       1259    50129 /   categories_categories_typecategorie_id_c893c3db    INDEX     }   CREATE INDEX categories_categories_typecategorie_id_c893c3db ON public.categories_categories USING btree (typecategorie_id);
 C   DROP INDEX public.categories_categories_typecategorie_id_c893c3db;
       public            postgres    false    232            �           1259    58379 "   clients_clients_gerant_id_ecde46d4    INDEX     c   CREATE INDEX clients_clients_gerant_id_ecde46d4 ON public.clients_clients USING btree (gerant_id);
 6   DROP INDEX public.clients_clients_gerant_id_ecde46d4;
       public            postgres    false    240            �           1259    91171    clients_clients_org_id_973b4c82    INDEX     ]   CREATE INDEX clients_clients_org_id_973b4c82 ON public.clients_clients USING btree (org_id);
 3   DROP INDEX public.clients_clients_org_id_973b4c82;
       public            postgres    false    240            �           1259    58380 '   clients_clients_point_vente_id_26371778    INDEX     m   CREATE INDEX clients_clients_point_vente_id_26371778 ON public.clients_clients USING btree (point_vente_id);
 ;   DROP INDEX public.clients_clients_point_vente_id_26371778;
       public            postgres    false    240            �           1259    58378 '   clients_clients_telephone_4a5ae726_like    INDEX     ~   CREATE INDEX clients_clients_telephone_4a5ae726_like ON public.clients_clients USING btree (telephone_p varchar_pattern_ops);
 ;   DROP INDEX public.clients_clients_telephone_4a5ae726_like;
       public            postgres    false    240            L           1259    26082 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            O           1259    26083 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            P           1259    26102 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            S           1259    26101 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            �           1259    50280 &   gerants_utilisateurs_admin_id_be93b74c    INDEX     k   CREATE INDEX gerants_utilisateurs_admin_id_be93b74c ON public.gerants_utilisateurs USING btree (admin_id);
 :   DROP INDEX public.gerants_utilisateurs_admin_id_be93b74c;
       public            postgres    false    238            �           1259    50281 -   gerants_utilisateurs_organisation_id_0080ab33    INDEX     y   CREATE INDEX gerants_utilisateurs_organisation_id_0080ab33 ON public.gerants_utilisateurs USING btree (organisation_id);
 A   DROP INDEX public.gerants_utilisateurs_organisation_id_0080ab33;
       public            postgres    false    238            �           1259    50282 ,   gerants_utilisateurs_point_vente_id_b3ddcc1b    INDEX     w   CREATE INDEX gerants_utilisateurs_point_vente_id_b3ddcc1b ON public.gerants_utilisateurs USING btree (point_vente_id);
 @   DROP INDEX public.gerants_utilisateurs_point_vente_id_b3ddcc1b;
       public            postgres    false    238            �           1259    50279 ,   gerants_utilisateurs_telephone_cfd13147_like    INDEX     �   CREATE INDEX gerants_utilisateurs_telephone_cfd13147_like ON public.gerants_utilisateurs USING btree (telephone varchar_pattern_ops);
 @   DROP INDEX public.gerants_utilisateurs_telephone_cfd13147_like;
       public            postgres    false    238            �           1259    82957 ,   histo_prod_historiqueprod_gerant_id_8c4ceb7b    INDEX     w   CREATE INDEX histo_prod_historiqueprod_gerant_id_8c4ceb7b ON public.histo_prod_historiqueprod USING btree (gerant_id);
 @   DROP INDEX public.histo_prod_historiqueprod_gerant_id_8c4ceb7b;
       public            postgres    false    246            �           1259    82958 1   histo_prod_historiqueprod_point_vente_id_71adb2fa    INDEX     �   CREATE INDEX histo_prod_historiqueprod_point_vente_id_71adb2fa ON public.histo_prod_historiqueprod USING btree (point_vente_id);
 E   DROP INDEX public.histo_prod_historiqueprod_point_vente_id_71adb2fa;
       public            postgres    false    246            �           1259    82959 -   histo_prod_historiqueprod_produit_id_234b8a55    INDEX     y   CREATE INDEX histo_prod_historiqueprod_produit_id_234b8a55 ON public.histo_prod_historiqueprod USING btree (produit_id);
 A   DROP INDEX public.histo_prod_historiqueprod_produit_id_234b8a55;
       public            postgres    false    246            T           1259    33343 .   organisations_organisations_mail_fec430db_like    INDEX     �   CREATE INDEX organisations_organisations_mail_fec430db_like ON public.organisations_organisations USING btree (mail varchar_pattern_ops);
 B   DROP INDEX public.organisations_organisations_mail_fec430db_like;
       public            postgres    false    222            W           1259    33346 -   organisations_organisations_nom_32808af1_like    INDEX     �   CREATE INDEX organisations_organisations_nom_32808af1_like ON public.organisations_organisations USING btree (nom varchar_pattern_ops);
 A   DROP INDEX public.organisations_organisations_nom_32808af1_like;
       public            postgres    false    222            o           1259    50068 /   points_affaire_pointsaffaires_admin_id_2c0cc0ff    INDEX     }   CREATE INDEX points_affaire_pointsaffaires_admin_id_2c0cc0ff ON public.points_affaire_pointsaffaires USING btree (admin_id);
 C   DROP INDEX public.points_affaire_pointsaffaires_admin_id_2c0cc0ff;
       public            postgres    false    228            p           1259    50067 /   points_affaire_pointsaffaires_nom_a53a4486_like    INDEX     �   CREATE INDEX points_affaire_pointsaffaires_nom_a53a4486_like ON public.points_affaire_pointsaffaires USING btree (nom varchar_pattern_ops);
 C   DROP INDEX public.points_affaire_pointsaffaires_nom_a53a4486_like;
       public            postgres    false    228            s           1259    50069 -   points_affaire_pointsaffaires_org_id_69626215    INDEX     y   CREATE INDEX points_affaire_pointsaffaires_org_id_69626215 ON public.points_affaire_pointsaffaires USING btree (org_id);
 A   DROP INDEX public.points_affaire_pointsaffaires_org_id_69626215;
       public            postgres    false    228            g           1259    50046 #   produits_produits_admin_id_2e3828d7    INDEX     e   CREATE INDEX produits_produits_admin_id_2e3828d7 ON public.produits_produits USING btree (admin_id);
 7   DROP INDEX public.produits_produits_admin_id_2e3828d7;
       public            postgres    false    226            h           1259    50146 '   produits_produits_categorie_id_5228d9a4    INDEX     m   CREATE INDEX produits_produits_categorie_id_5228d9a4 ON public.produits_produits USING btree (categorie_id);
 ;   DROP INDEX public.produits_produits_categorie_id_5228d9a4;
       public            postgres    false    226            i           1259    50138 +   produits_produits_designation_f60785e7_like    INDEX     �   CREATE INDEX produits_produits_designation_f60785e7_like ON public.produits_produits USING btree (designation varchar_pattern_ops);
 ?   DROP INDEX public.produits_produits_designation_f60785e7_like;
       public            postgres    false    226            l           1259    50194 !   produits_produits_org_id_49707c56    INDEX     a   CREATE INDEX produits_produits_org_id_49707c56 ON public.produits_produits USING btree (org_id);
 5   DROP INDEX public.produits_produits_org_id_49707c56;
       public            postgres    false    226            �           1259    107551 (   produits_quantitepoint_point_id_27f0f977    INDEX     o   CREATE INDEX produits_quantitepoint_point_id_27f0f977 ON public.produits_quantitepoint USING btree (point_id);
 <   DROP INDEX public.produits_quantitepoint_point_id_27f0f977;
       public            postgres    false    248            �           1259    107552 *   produits_quantitepoint_produit_id_a4d13792    INDEX     s   CREATE INDEX produits_quantitepoint_produit_id_a4d13792 ON public.produits_quantitepoint USING btree (produit_id);
 >   DROP INDEX public.produits_quantitepoint_produit_id_a4d13792;
       public            postgres    false    248            �           1259    50246 #   services_services_admin_id_be857cf7    INDEX     e   CREATE INDEX services_services_admin_id_be857cf7 ON public.services_services USING btree (admin_id);
 7   DROP INDEX public.services_services_admin_id_be857cf7;
       public            postgres    false    234            �           1259    50224 '   services_services_categorie_id_51aa7bf3    INDEX     m   CREATE INDEX services_services_categorie_id_51aa7bf3 ON public.services_services USING btree (categorie_id);
 ;   DROP INDEX public.services_services_categorie_id_51aa7bf3;
       public            postgres    false    234            �           1259    50223 #   services_services_nom_27008563_like    INDEX     t   CREATE INDEX services_services_nom_27008563_like ON public.services_services USING btree (nom varchar_pattern_ops);
 7   DROP INDEX public.services_services_nom_27008563_like;
       public            postgres    false    234            �           1259    50225 !   services_services_org_id_49e8bd7b    INDEX     a   CREATE INDEX services_services_org_id_49e8bd7b ON public.services_services USING btree (org_id);
 5   DROP INDEX public.services_services_org_id_49e8bd7b;
       public            postgres    false    234            �           1259    50239 8   services_services_point_vente_pointsaffaires_id_d5932eea    INDEX     �   CREATE INDEX services_services_point_vente_pointsaffaires_id_d5932eea ON public.services_services_point_vente USING btree (pointsaffaires_id);
 L   DROP INDEX public.services_services_point_vente_pointsaffaires_id_d5932eea;
       public            postgres    false    236            �           1259    50238 2   services_services_point_vente_services_id_401bb472    INDEX     �   CREATE INDEX services_services_point_vente_services_id_401bb472 ON public.services_services_point_vente USING btree (services_id);
 F   DROP INDEX public.services_services_point_vente_services_id_401bb472;
       public            postgres    false    236            �           1259    66580     ventes_ventes_client_id_66fbedfb    INDEX     _   CREATE INDEX ventes_ventes_client_id_66fbedfb ON public.ventes_ventes USING btree (client_id);
 4   DROP INDEX public.ventes_ventes_client_id_66fbedfb;
       public            postgres    false    242            �           1259    66581     ventes_ventes_gerant_id_eaaa58dd    INDEX     _   CREATE INDEX ventes_ventes_gerant_id_eaaa58dd ON public.ventes_ventes USING btree (gerant_id);
 4   DROP INDEX public.ventes_ventes_gerant_id_eaaa58dd;
       public            postgres    false    242            �           1259    66582 %   ventes_ventes_point_vente_id_b28a3535    INDEX     i   CREATE INDEX ventes_ventes_point_vente_id_b28a3535 ON public.ventes_ventes USING btree (point_vente_id);
 9   DROP INDEX public.ventes_ventes_point_vente_id_b28a3535;
       public            postgres    false    242            �           1259    66596 *   ventes_ventes_produit_produits_id_83188722    INDEX     s   CREATE INDEX ventes_ventes_produit_produits_id_83188722 ON public.ventes_ventes_produit USING btree (produits_id);
 >   DROP INDEX public.ventes_ventes_produit_produits_id_83188722;
       public            postgres    false    244            �           1259    66595 (   ventes_ventes_produit_ventes_id_21cb1a2e    INDEX     o   CREATE INDEX ventes_ventes_produit_ventes_id_21cb1a2e ON public.ventes_ventes_produit USING btree (ventes_id);
 <   DROP INDEX public.ventes_ventes_produit_ventes_id_21cb1a2e;
       public            postgres    false    244            �           2606    41517 Z   administrateurs_administrateurs administrateurs_admi_organisation_id_8267725a_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_admi_organisation_id_8267725a_fk_organisat FOREIGN KEY (organisation_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.administrateurs_administrateurs DROP CONSTRAINT administrateurs_admi_organisation_id_8267725a_fk_organisat;
       public          postgres    false    224    222    2907            �           2606    41981 R   administrateurs_administrateurs administrateurs_admi_user_id_e0f67ab8_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.administrateurs_administrateurs
    ADD CONSTRAINT administrateurs_admi_user_id_e0f67ab8_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.administrateurs_administrateurs DROP CONSTRAINT administrateurs_admi_user_id_e0f67ab8_fk_auth_user;
       public          postgres    false    2876    213    224            �           2606    26024 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    211    2863            �           2606    26019 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    211    2868            �           2606    26010 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    2858    205            �           2606    26039 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    2868    215            �           2606    26034 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    215    2876    213            �           2606    26053 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    207    2863            �           2606    26048 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    2876    213            �           2606    50155 I   categories_categories categories_categorie_admin_id_f2878ef6_fk_administr    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categorie_admin_id_f2878ef6_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.categories_categories DROP CONSTRAINT categories_categorie_admin_id_f2878ef6_fk_administr;
       public          postgres    false    2913    224    232            �           2606    50148 G   categories_categories categories_categorie_org_id_c8ad353b_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categorie_org_id_c8ad353b_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.categories_categories DROP CONSTRAINT categories_categorie_org_id_c8ad353b_fk_organisat;
       public          postgres    false    2907    232    222            �           2606    50123 Q   categories_categories categories_categorie_typecategorie_id_c893c3db_fk_categorie    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories_categories
    ADD CONSTRAINT categories_categorie_typecategorie_id_c893c3db_fk_categorie FOREIGN KEY (typecategorie_id) REFERENCES public.categories_typecategorie(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.categories_categories DROP CONSTRAINT categories_categorie_typecategorie_id_c893c3db_fk_categorie;
       public          postgres    false    232    2935    230            �           2606    58368 M   clients_clients clients_clients_gerant_id_ecde46d4_fk_gerants_utilisateurs_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_gerant_id_ecde46d4_fk_gerants_utilisateurs_id FOREIGN KEY (gerant_id) REFERENCES public.gerants_utilisateurs(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.clients_clients DROP CONSTRAINT clients_clients_gerant_id_ecde46d4_fk_gerants_utilisateurs_id;
       public          postgres    false    2961    240    238            �           2606    91166 <   clients_clients clients_clients_org_id_973b4c82_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_org_id_973b4c82_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.clients_clients DROP CONSTRAINT clients_clients_org_id_973b4c82_fk_organisat;
       public          postgres    false    222    2907    240            �           2606    58373 D   clients_clients clients_clients_point_vente_id_26371778_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.clients_clients
    ADD CONSTRAINT clients_clients_point_vente_id_26371778_fk_points_af FOREIGN KEY (point_vente_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.clients_clients DROP CONSTRAINT clients_clients_point_vente_id_26371778_fk_points_af;
       public          postgres    false    2933    228    240            �           2606    26072 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    205    219    2858            �           2606    26077 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    2876    213            �           2606    50259 H   gerants_utilisateurs gerants_utilisateurs_admin_id_be93b74c_fk_administr    FK CONSTRAINT     �   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_admin_id_be93b74c_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_admin_id_be93b74c_fk_administr;
       public          postgres    false    2913    224    238            �           2606    50264 O   gerants_utilisateurs gerants_utilisateurs_organisation_id_0080ab33_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_organisation_id_0080ab33_fk_organisat FOREIGN KEY (organisation_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_organisation_id_0080ab33_fk_organisat;
       public          postgres    false    238    222    2907            �           2606    50269 N   gerants_utilisateurs gerants_utilisateurs_point_vente_id_b3ddcc1b_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_point_vente_id_b3ddcc1b_fk_points_af FOREIGN KEY (point_vente_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_point_vente_id_b3ddcc1b_fk_points_af;
       public          postgres    false    238    228    2933            �           2606    50274 J   gerants_utilisateurs gerants_utilisateurs_user_id_0b9fd436_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.gerants_utilisateurs
    ADD CONSTRAINT gerants_utilisateurs_user_id_0b9fd436_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.gerants_utilisateurs DROP CONSTRAINT gerants_utilisateurs_user_id_0b9fd436_fk_auth_user_id;
       public          postgres    false    238    2876    213            �           2606    82946 N   histo_prod_historiqueprod histo_prod_historiqu_gerant_id_8c4ceb7b_fk_gerants_u    FK CONSTRAINT     �   ALTER TABLE ONLY public.histo_prod_historiqueprod
    ADD CONSTRAINT histo_prod_historiqu_gerant_id_8c4ceb7b_fk_gerants_u FOREIGN KEY (gerant_id) REFERENCES public.gerants_utilisateurs(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.histo_prod_historiqueprod DROP CONSTRAINT histo_prod_historiqu_gerant_id_8c4ceb7b_fk_gerants_u;
       public          postgres    false    246    238    2961            �           2606    82952 S   histo_prod_historiqueprod histo_prod_historiqu_point_vente_id_71adb2fa_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.histo_prod_historiqueprod
    ADD CONSTRAINT histo_prod_historiqu_point_vente_id_71adb2fa_fk_points_af FOREIGN KEY (point_vente_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.histo_prod_historiqueprod DROP CONSTRAINT histo_prod_historiqu_point_vente_id_71adb2fa_fk_points_af;
       public          postgres    false    228    246    2933            �           2606    82960 O   histo_prod_historiqueprod histo_prod_historiqu_produit_id_234b8a55_fk_produits_    FK CONSTRAINT     �   ALTER TABLE ONLY public.histo_prod_historiqueprod
    ADD CONSTRAINT histo_prod_historiqu_produit_id_234b8a55_fk_produits_ FOREIGN KEY (produit_id) REFERENCES public.produits_produits(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.histo_prod_historiqueprod DROP CONSTRAINT histo_prod_historiqu_produit_id_234b8a55_fk_produits_;
       public          postgres    false    226    246    2926            �           2606    50057 Q   points_affaire_pointsaffaires points_affaire_point_admin_id_2c0cc0ff_fk_administr    FK CONSTRAINT     �   ALTER TABLE ONLY public.points_affaire_pointsaffaires
    ADD CONSTRAINT points_affaire_point_admin_id_2c0cc0ff_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.points_affaire_pointsaffaires DROP CONSTRAINT points_affaire_point_admin_id_2c0cc0ff_fk_administr;
       public          postgres    false    224    2913    228            �           2606    50062 O   points_affaire_pointsaffaires points_affaire_point_org_id_69626215_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.points_affaire_pointsaffaires
    ADD CONSTRAINT points_affaire_point_org_id_69626215_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.points_affaire_pointsaffaires DROP CONSTRAINT points_affaire_point_org_id_69626215_fk_organisat;
       public          postgres    false    222    2907    228            �           2606    50040 B   produits_produits produits_produits_admin_id_2e3828d7_fk_administr    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_admin_id_2e3828d7_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.produits_produits DROP CONSTRAINT produits_produits_admin_id_2e3828d7_fk_administr;
       public          postgres    false    2913    226    224            �           2606    58381 F   produits_produits produits_produits_categorie_id_5228d9a4_fk_categorie    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_categorie_id_5228d9a4_fk_categorie FOREIGN KEY (categorie_id) REFERENCES public.categories_categories(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.produits_produits DROP CONSTRAINT produits_produits_categorie_id_5228d9a4_fk_categorie;
       public          postgres    false    2942    232    226            �           2606    50189 @   produits_produits produits_produits_org_id_49707c56_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_produits
    ADD CONSTRAINT produits_produits_org_id_49707c56_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.produits_produits DROP CONSTRAINT produits_produits_org_id_49707c56_fk_organisat;
       public          postgres    false    2907    226    222            �           2606    107541 J   produits_quantitepoint produits_quantitepoi_point_id_27f0f977_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_quantitepoint
    ADD CONSTRAINT produits_quantitepoi_point_id_27f0f977_fk_points_af FOREIGN KEY (point_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.produits_quantitepoint DROP CONSTRAINT produits_quantitepoi_point_id_27f0f977_fk_points_af;
       public          postgres    false    2933    228    248            �           2606    107546 L   produits_quantitepoint produits_quantitepoi_produit_id_a4d13792_fk_produits_    FK CONSTRAINT     �   ALTER TABLE ONLY public.produits_quantitepoint
    ADD CONSTRAINT produits_quantitepoi_produit_id_a4d13792_fk_produits_ FOREIGN KEY (produit_id) REFERENCES public.produits_produits(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.produits_quantitepoint DROP CONSTRAINT produits_quantitepoi_produit_id_a4d13792_fk_produits_;
       public          postgres    false    226    248    2926            �           2606    50241 B   services_services services_services_admin_id_be857cf7_fk_administr    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_admin_id_be857cf7_fk_administr FOREIGN KEY (admin_id) REFERENCES public.administrateurs_administrateurs(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.services_services DROP CONSTRAINT services_services_admin_id_be857cf7_fk_administr;
       public          postgres    false    234    224    2913            �           2606    58386 F   services_services services_services_categorie_id_51aa7bf3_fk_categorie    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_categorie_id_51aa7bf3_fk_categorie FOREIGN KEY (categorie_id) REFERENCES public.categories_categories(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.services_services DROP CONSTRAINT services_services_categorie_id_51aa7bf3_fk_categorie;
       public          postgres    false    232    234    2942            �           2606    50218 @   services_services services_services_org_id_49e8bd7b_fk_organisat    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_services
    ADD CONSTRAINT services_services_org_id_49e8bd7b_fk_organisat FOREIGN KEY (org_id) REFERENCES public.organisations_organisations(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.services_services DROP CONSTRAINT services_services_org_id_49e8bd7b_fk_organisat;
       public          postgres    false    234    222    2907            �           2606    50233 Z   services_services_point_vente services_services_po_pointsaffaires_id_d5932eea_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_services_point_vente
    ADD CONSTRAINT services_services_po_pointsaffaires_id_d5932eea_fk_points_af FOREIGN KEY (pointsaffaires_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.services_services_point_vente DROP CONSTRAINT services_services_po_pointsaffaires_id_d5932eea_fk_points_af;
       public          postgres    false    236    228    2933            �           2606    50228 T   services_services_point_vente services_services_po_services_id_401bb472_fk_services_    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_services_point_vente
    ADD CONSTRAINT services_services_po_services_id_401bb472_fk_services_ FOREIGN KEY (services_id) REFERENCES public.services_services(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.services_services_point_vente DROP CONSTRAINT services_services_po_services_id_401bb472_fk_services_;
       public          postgres    false    236    234    2951            �           2606    66565 D   ventes_ventes ventes_ventes_client_id_66fbedfb_fk_clients_clients_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventes_ventes
    ADD CONSTRAINT ventes_ventes_client_id_66fbedfb_fk_clients_clients_id FOREIGN KEY (client_id) REFERENCES public.clients_clients(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.ventes_ventes DROP CONSTRAINT ventes_ventes_client_id_66fbedfb_fk_clients_clients_id;
       public          postgres    false    242    240    2971            �           2606    66570 I   ventes_ventes ventes_ventes_gerant_id_eaaa58dd_fk_gerants_utilisateurs_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventes_ventes
    ADD CONSTRAINT ventes_ventes_gerant_id_eaaa58dd_fk_gerants_utilisateurs_id FOREIGN KEY (gerant_id) REFERENCES public.gerants_utilisateurs(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.ventes_ventes DROP CONSTRAINT ventes_ventes_gerant_id_eaaa58dd_fk_gerants_utilisateurs_id;
       public          postgres    false    242    2961    238            �           2606    66575 @   ventes_ventes ventes_ventes_point_vente_id_b28a3535_fk_points_af    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventes_ventes
    ADD CONSTRAINT ventes_ventes_point_vente_id_b28a3535_fk_points_af FOREIGN KEY (point_vente_id) REFERENCES public.points_affaire_pointsaffaires(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.ventes_ventes DROP CONSTRAINT ventes_ventes_point_vente_id_b28a3535_fk_points_af;
       public          postgres    false    2933    228    242            �           2606    66590 L   ventes_ventes_produit ventes_ventes_produi_produits_id_83188722_fk_produits_    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventes_ventes_produit
    ADD CONSTRAINT ventes_ventes_produi_produits_id_83188722_fk_produits_ FOREIGN KEY (produits_id) REFERENCES public.produits_produits(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.ventes_ventes_produit DROP CONSTRAINT ventes_ventes_produi_produits_id_83188722_fk_produits_;
       public          postgres    false    2926    226    244            �           2606    66585 R   ventes_ventes_produit ventes_ventes_produit_ventes_id_21cb1a2e_fk_ventes_ventes_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.ventes_ventes_produit
    ADD CONSTRAINT ventes_ventes_produit_ventes_id_21cb1a2e_fk_ventes_ventes_id FOREIGN KEY (ventes_id) REFERENCES public.ventes_ventes(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.ventes_ventes_produit DROP CONSTRAINT ventes_ventes_produit_ventes_id_21cb1a2e_fk_ventes_ventes_id;
       public          postgres    false    242    244    2979            q   3   x���  �w;�Avq�9<�K`�L��@�1�B��(x(w�o�.��}�      b      x������ � �      d      x������ � �      `   �  x�u�[n�0E��Ud�:~$��m007�کeg�ݏL����_D�]:�T�~����^��v��i�q�K�iK�����NQ��`	ൻw�s��
�g��)l)0T����bC�`������{���{f����{_]��a~��o_�Is���)�'B�"G�B ���ru0�ntX~�����.��Z�� �����m8:o�֓/C?��0�<:W�,-_���!ſK_�G�?��MC�]������ø�GuߙA�+�n;cho��]g\���a��}���ѝ�������G�F��_#��
���9��+��il�n�Z�E_�\l؄��lD؆��l$Ј�/:���D_V�{���I��u7�U;Iּ�'�7�$���8\�0E���(.}��)(�+�r)@��V"���s�8��!�S<�m�����P���T2w4���TRwd���DrwD�#�$_��cX���r�W*��q(h�_M�0���f�($�v��L�"?�Ku-�Z�v�@�F�R��#��J�#(�L��4\�T�k_Wz�3�v"k=ٙ\g;�����x'�8O�LMl�O���ZE���v+�ʤU�c.�����hN���+�8|���7*���L�ʡ��'�'�|}��=Sa����+ߨ�1���R�b
%��!����Fo���s���ȏ8���?�,�hЧ��4��и��<툠+�D}�m?����� U��O*\[�cD*g[6cD"r[	��~y���@w�      f   �  x����n�HE��W��7+�nRK��v��v����\��66��|��؀�̤Gni^���Y�ko"������A2�  �0җSN�h\���d�1@�
����I���t�qq,�y���xD����.T4�jI����B �xĂ�:)����鴍�a�ĩ��Y���Q@�B�!�!$)�,��Q|�ܟ�u��#�i��-�s�d`�d=����9�|��&V�Ӑ�s��C�<?~��;H���� �T"3���Y�y�}����;��� ���u��ɲ���L`Oo�/�ʞn�j7�.�>o�><�'=�ed�_�����]./p��j/Z�Ox�,�B�!�A"1J	����	�����O��_(߯�E�
!a��6fh�ŰZ��>7E\<?�2ypr�lk\f�Ĝ=����bC�ةr�������4�%�)�]䤙��^#������?�~�:���8M����������	`,����7?����p�{�8�_g��\�	؟�F�,=��)*�dc�u>��7��lM��� �xW������ j�p��Vio=�pm+�>9�X�_�;��ިW}K~�O��}_ ��N
]�zU��]�ɿ��J{~L4$K��2#��1�����?�m$%T���6~��X 1v�'Z�x@�|�[)�{�YQ��N��6�]r�/te�F&��K�P�;B��1L	P�=qp<�9B$<]��ǿ
M>e�aY�2��S�t:�rX�      h      x������ � �      j      x������ � �      y   �   x�M�;�0D��)��!� %P���q�姰�֛C��1DM5�Fz�_���{� &G�P�{�8�޳ئ��j�����L��!S���-,ߐ2�vP�إ8��hVp��u�69���'a��Rl%�/,�)�j�(A�#�tY*�ޞ=�      w   #   x�3�(�O)�,)�2�N-*�LN-����� w�      �   Q  x�m��n�0 �y�<AE�r�C����؋KR�#�[�F</������`[�d;��[c}�l�U�Dg�R�=6oF	�P֨�Uaj�BNr��;�� ��x��t
�Q�
ApAC��s�<g
��6��BC8��`�}�ʁ�)Mxȡ�]o���)"�%�Mw����J}a#�\"��9����ѸJ]��D:B9�`sժ���|�O�NU��(g��(�=:�"�toH>�iM��q �K ?�챸���H�hZs����=�ؔ�e��8�n��L!7Nk�<�<	�C(�X�:��z��TaS w�����hp\A����      l   �   x����j1��s�)�\�03��$OQ(��C0i�U�V�]�T顷���
�)�l�3��Ei=�	� �����!&Z�ѽr=�B4ʱ�����I�?����I�紉��9��a���|^�p��[���Z��>�zܕx��G��e���:G�F����w���lp�qd� R̳��, ?���!�ӟ�Ru]w�\�      ^   �   x�]�Qn1D���TP�w����KKl�����ni�<��8���gK�l���fW�$7V�q;w��Vq7CS���ds�=+�+��&��<@�3k�����8�`5�FM�?�'T)�Ʀ����p6=��%�Ђ�� ��S�	W�a�z�3��a����*0� �D�x���X�ad���b��Å��� Wߤ�z�Y
�u�p�]���6����7D�뫔�      \   x  x����n�8��ӧ��b�uȳ, ��1���)v�~))u,[�H~�ȟv��2u�i�}�n;����O}{ڡB����W0{�=�Fy0����w�}����֤���k����;�(Dk)��	��pG��a���G��!�ooU X���'����a�Kx?��p�9��@�E�*�,�	~z��"�o¥=wu��ƚ��s�0���õ���]�����N��(����56��L��~������� �0G��)zI�oɛ�:գ��F�耚�d���#����zΑ�I)�!Fb��ޏspS�CY�a����S����G{���io)��8c8w�[{�"���@��f���(Y��@�$�	�_�Xs.@�O��8���a�g���~�u�:��^��
�I�`w����o�[{�.g����^�[;��ֽ�ݓۓ��f`�l��sK��
��DFz�L#���0��*0> (���W@a��7�թ� l1z�!�7��)��[o0W���;�}��,W������K���"�����(J��G�o�(Ҹ��,ekޓݣn���#o/d�� �l�c��YcjN��� U�A;��.��� �|.A"]���+r�j��@� ��J~7�(��^A��{���5 Q2�y�\��+l�3lS�H�@f�� �+�C<�U�l7)��*
�8�<*	w�F�����b|�k�	 ߂�% {��$]�����_7�
r��A� �($�J�-����)$f���U�H�L��� �;c__��0IB��L"z�9�8�DQ�u�I��u
��� ������$ee/�+j$���`��=-���$�(")4���(��C�g`I;,��1����lH�!��UA�g

�9��\l��:��=�)2~�5�wN-����p��.�0|~Z�X�����`��)��iw����J��F��H�b�8S����M#����i�����Ͳ6)��5�'K��jSܕ�� ���v�9n lW �ً�,V������N
� R�{Vq�J�ߥ:�*t�4���X-�p{���c�$���Z��T �Oˢ��H%�җ0����OQq�~�f@T���<:�c�/C��Ҧ�T�(D��8���Ks�C��ʮD�O@��Xc �evi5`^!h�@���%�X4h3�,c���aQ����i�H�W�?,���� ��8��A.�g��$V�G���[�ZG�3 i� C�q���U ��J���l!Ү�l��3?�@ai�ѳul�:n�R�v��tR/�lv������|�6��"g�jk������2�0vix�)�S��1Tz�N�r���?aA�(1�V��q��5�NY�t�q�VY?�5lL��B(���8��.M�_x�ӥ�^V:.��ȿ�������~�      m      x�ݝَ㸶��O=E�7 ERu'Y�mٲ-Oh��<ϳ��eG�Ί<����	$����q�&�3�؃��Ŵka�t}��`=�V��?_����l/�3�hө�Sq�θ.Y��a���љ����8S�Cϙ�@�y��n��b���9:׹����#䒋����Ua��vlz��s�j��c����ʛ44�����&��IF����e{(gsqźD��^��<���`�d�XX�r&�qYר?ݸ���&��O;�<�{mYŢ�����	@��	��� �/ ������*ރ�Mʦ�1\����A����ۦi��ڶ�u_zX~����>��:aT`9گwx���%���H鱾ن%Ѵ>E}{�\eQ=��Lr@�:���b?��C�J��.�]�⯭�12˻��g�M7��o�r�=E�2�g:"�#@!T´K��m�Kf���`x��5�nǪhr�������0̟� '0�����(�}\�FU�u�4>uf��6pl�@��;�3!���Թ6=mf6�%��s��d9_���^ ft�=��a�~�@�����>L!�;B���J�L�� ��_���:ap��fq���Y斖���G�4[I+�
�ten�g�q��B�����G�������/��䬠r�xE�qqy��'�A�����ӂ^��:���?pg�t��c��}.'��x��DCa�]�ʊ+\l��0ɜ!�˚��R�ˌ��W"��pV���氶�u?~8;�=d�K}�U�
9ڄ7'���"�~1�ey�Buu�&U�5���6V�Ė�פ,"���B�+�n �Gg�T'��f�z�jC���lz�^xkr�V����){����\�X�Ly�9��њi�fY��tSQ�<n�lQpW�J���ْE��#.�|ML��U��!v�j��iރ�yS7'M��}�?+-��e#Op�����)
��Iu钨�X�ba{^S��VN������Z��9b���Z�� ��ȿ�(���s�r8i��VY4%�T6o1-��Q�.4�J#�RU�>��� ���6�q���0����j��U!B���P0_ `ȼ�(t��M����fm��;�p����_�f�}�Qd?��'�p17�L�|A�]��c�RW�E�4zJ�7�ާ�Q/Y7����N�=+qya&[;�f7���zers��c��[�Bŋ��LԘ�]KK�ߝb�V����}�f(�E�\�]��z�$=O�~��I�N�P���"汹3��>/zc7�ШZK��U�y����	xl�R�F�wpt���a� Yź&SWE�վ��+�ݍ��3<ۯgʙ#ʮJ���L��ym�[kOW�js$>�?pkG1y�"�䂁8�Q�c&�}�E�(����k��D�{}F7S�ZJ��<��뫂9����]��\�:�zd
���� f)��Q�$aR��(�P��e{�@B�(�ÿ����q?9)�"߯�����kJU�LB'{�l��q:�IDv$O��o��ݶ�;���S��ҽ���^է��'u�fN���ޘ�7Xa��
�qvrC܀s�r�K3�9�ϑ���J��IRE��7��:���z���Y{�΅|�.յ�*�Ɗ��1h��6��y�}����q�\sԬ��έl��v?J�����V"���ͨ]�@�A=Z�,�p`�v�T�E!J��]���0�5�%�2Z>��!k�]Z�S�h�Sg��|C��ſ���d^���v\[5�����;��G:�6z;��)"O80�s_S�3%�@��N�2E�屒��j��\;�m�_!�8��H*Mϱy��F��tI@��u�g%�W
M��S�i��ãp�UV֋�t��Bě@��׭ \�"	��!*��w�#��8i�V8@���bȓ����Sꓤb��o�{8��ʒ6WM*j����6+޼��vkF����_�`������� �߹�9�m?*{�D�^Y���޶��m��������c�+s
v-o�u���Ů�Ia��J��%�[��c}�s�����!�@2
�6�݁"��t�¾���:u���P�	�vд�5��fo��F��>֮rwf����"K�O>:]$��4@�� ���k�lk@��(ʻQ�����JD��*8��U��a��y�����{��5=Ь[��r����p�k�7Dd����e��܍p�ޅ]�۸�M���'���a�%�S��R`'ӛ%{~�x�_kN���;��� �WVw��?���^�ȫ�Cy�XM��!!�6���y�]�횜���xS
&MŨbO�]=�d3U�i�\����8s����b�b���.~�_�^�"B�7"`��B�ѕÀ,Z�I��~��ak[�YV#,����=�;�)���U6��&�s*��S驁k�Z�������~q�!�=��.7GE��fi����d�
,��-�?�ZRd���r�,x�����U�����Z�^0�E|vW�Qc��&ʾ�1[���&	�ϣ�C..�.r/4�O�F����J�s��*ɷ|톶�s�f��9Ϸu����}��`�#G�W�2��<˽��-k����83Am��ثC�m���$S�iYW��-->�V;�W�F
#�imy����/6Fo�( f��~ǆߦ���[��@+.y�)��f\;@
q��^�~
5�`
�?W��"�X��z?�KY�m�x��k:���k��[��u

�{ :�1�A�����x�2��Q��p]��_��3ҏ�朡p�O�J��p��4&)��X���1]M�Ằ�R�t����� ����A��l�`0q��ƈŭ�l4�$l�8�M��ӭ��BD����՜��)����!��;��n⌿�~mi�;���۫����9��9�n}��W��������rsf�M��)0Q`�T���>o���c�^���Ζ��֫ν�z�����_?���va�ޗzg�'�d�9L�,����A��6$\�׾�>�?e��4zg@?�����i�����d��X�sێ��<l��	<|Qd)E�=#�C���nR>r�d���j�ظ���?%��*�m��M�M��C9�)��� j�2�7�4�n#�A��G�W�׌����Y���;hZ��ڼ����$�:��\�>���a7��i*�,�)�͵�Iġ��ԛ��*y��Z�ܭ�#g_1��ǜ��ԱqD>4>�W������)���>�ALU�
�q6i�`��y��fmzKYO����*�𼩮�E1����FG7��r o5Ⲯ����C@R�}�Ey`�50<�)ؤn���ͦ\���m���?m�;��1�����O�)4���)�/l��hq���b��wms�.�z�:�\1�˚�Q8���9��z�`lVR/K�jr�i��j㱝j�Ü�2y*�
�v�6����^�p�9v��0��1�<?�MŤ�-��l�}�
�y����l�0��u���ˬ~L[����aw�{K����#IY}��P�;E��y����&l�6s#��q�/5�>�t&sKۥ�ve�=����q�Nbj�ޚD��Y(HT���Ş�s�Z?���s>5D�0�+Gm�p'ʹzfm��[a"c"M�L�(R� 9n|Ig����Y��j�N!03��LSF*�e��J�=�'O�'�!��B)6|a��p����n�s�!��O��-GK!1.n�.�3��?W��y�G�q���p��[���P�#ܫ����=���62���F�@����Ɋ���m����2|Ş�>���#�t�VȞ��bw���q?���嶧��\������� �u?\벶�7�z�ӹ/|g����v�D^���9E�2����A+����VZ�V�2����C�tkswՖݥ���$��>//�Y;W��@���qb���x�����MX�7�z�5P!i����9��KD���Hq�h/���������Уd@���2��^v�C~��&�B> ���X�ɧ0�V��(�SCf;{��O:�x��#�MT�8�tr=��[Z/����k��/�o��ty��Eɠ��l3�-�L���v���@���J:� 4��2��3�kY��QY�aq����Z��ߠ�    ����9�;�0;�^��3�I�V����n�?U����L�e�T��)��T�~e�T���b#ΊԼ�����y��s���b���^!~��>��
�&��d-?�ܵ�"����h��-bd#i/�w�� �U��;��{w⦻�x�I�P�e
ñ�Ovyt+>s4���r[n��j�����d>m�ʝV����/�N[N��{X������m� �����O��Q�K��:�/L��.���g\X��7yf{vڎ��:����X���%�w;[�JtBMB�>��\ȃ������jgc1��
��1G݋� ���W%
��ri�Ӽ.��M"P0-f�?�}��Q��l��]"����X�8S<9�W�����Dy�­�}c�Ii�w����n�{�ȫ��V��f7�����?����B4���m�gט�G�E����^j�ԝJ7�W�Aˣ��P\��&N���0'��Gt�T�;ϳ.g�U �-K~;w��G��ܘ��3�յ�;?{��r߷rΥK��pw�ҙ���̤g���Gg�	�����.��6��i;�� ���w�	��x��3��>9��n�G�ެg�J*�0Wm��M�Q�n��w����K<���[�,�ս?N:��=�̶l2�<�W���/֑w�T[C���lڭVƔY]�8�^
��dw��]7��ݥ�Te�f��j@���䢵;�7�^�p����q�%-��*� �L&$<��9T����1�V�Y6t�-���ZL�	���Z�z�/�!~�q��:g��Z�7C�U5m:4F��L��v#���q�%�횖-�ݵ6fT�O���r9+�8����[5zy��;�M�Ʃ�:-C�}�qiT���R�^����öObr5��q��4*I�S�*�g-1GI
� ���?�^{�D@c�⯱��M�&c��PW�#���3�5��y�K�|T䭗�V�����M�q֣���w�@&ko����<O�,1��9�~0d_=�����Y�^c�r�ʊ�7�eB�O3�+>��j5v]4������M5*��h�i~R�Fէ��B�.�m�Ɛ����,�ow��)W��->ƹ�#�I�sy�M����q)�۶���'t��Ju� 爐<���yfq�w���������>�a�E Âw.�Eq�eH�l��v]�&��P�v�񧸵�??	����5���������O#�N�QX����mI�$�ۭ��1�k_	��+a�����I���&0(ٸ(�؞c���@���YG���U��� ��Y�Lv�����C�h|���c\�����`�ˮa�5�� �^�t
�G�g�8�:���&��E�O1���	)M�\&�uΞo�����Aߪ`��t'ґ�~���52"{Q#<G��旟��5l�l��l���&*�(r�)�E����䀕L���S*M��z�2�pf��jD�uP���8���ޚ�+�K�2'#=�:lF��aWpN؏��üN��'��nv9G��m�-q�y���Ɠ���Ar��7߫?�/���b��|�����M B����̌+�>
��G2\��E���o�C�zy�T���f*7�`��l}2o��"���ʾ�1�P��o��)�d��M�5Iؙ�y���Dv��7������V��k��X:�Μ����9�֩}�`ח�/��	 
�q��7C;tJ�	y�Bl���O���##�i�10D�P�[�9'��]��'~V�a�o��}ݔ#�+c���5�����cM)Ͼ��(Lܡ`+�}��Sy>�����1$Q�1��U8Q�ʲC���6��bkm�)o��0ݟg���Q��N�ur���,߾, �G-��A���л�����\��`}N��<a��f>���Dي��Q�Wt(]3ٺ�F���9]�l�j��ƽ2����Q�om�g����1��i	����A�U.2x!{��V����C�sw�鰏���33a�Y)��g���=��Sp �ߊ�u���L�iϙuq�CK6�f�!���#\T��'�ln�{�?�Ki�D�^�
��:��UZ:�g����M�^��	E��U'a�2v���+�lhT[0Q��Yf|
�(�
Q0l'MvQU��zK`gO�����Ӻm.��ү�F�	�+�0��<f���	l��9c�=BLhu���fxؗ�G��6��B��ΪՆ�Ϡ�/���%�>��n^Y�!�Ӗ9�Z�`�k�Nƚ��(�@��<f�4�C�mS%Mc����MbDF��#�&���������nog�y��N1��cOM���?2|��B���/x��k3Y��>߸8\4�k�q�O�>�8n�ו~�����n�}"�P_D����>��]�����_��kf����%K!�^$�:�4�ґ�?l�p�t՞��P[����=q[Hŵ��搟���#e�egqlf���'��s�Y�^�<x,{_��^�� ��L��k�}dP�!ЇU$�ق�f��`���G�en�d%��٭�E:ݦ��>VC���=�w�3{=��E!��w~ƅn���v��PЍ/+
��vN`G?�ڎ�1�!�������JR��~�ݔ���3|�����T�3�-?	y)9�������01���;�4����	ږ7��Sbm��wB�߲�3ibˈ���/�F2�#�h{�Η�%�I��S�^΋%xl�o�[g�X�p8]��m��|��4�#w(?fj�E�0țdy�͙Up9��ӓ7�y�4�����,��뉻���tt^��[��&
}T��E�84+@�5�.ai�}�u_-���(�h��<.g�s^@�|���y�=�.�(v����kc#�;(C��k�D��"?���ɜ��,����4>���N0n�y�-�l����k�4dMV��-�x�������������: ��R�9&���3�/!*�#mZ� ��X۬E]�ovmW-.z���>)S0��XK�p��_�7D������e(�A��>�88�@�:2;7�M��s'�s|�c�Ɇ v�2�N���:+���C�����	'��n��\���wj��_����#���֕�Զ���0L�F�;�-�0�C��N�^��ĉ-m�r��~Ґ�d�OF�u�bfYR\����&��W���ӣ���^�t��D>�ʢ�q�=W��8�4��P;_��8[��ۚ��	�E��9��K6�+���u�>ϕx��ߩ�c����-b'����k���Q�w��"�`�$��%��y���^j�֪�aq6�k���;k ���*>�JC�U�����8�S �w�h�UnM�4��aZV��Վ�1�s;m�f�Пs�-%w�y�ec�Q�x4�� ����x���:l�?���py](�f���BsYU��ǣ���,e��P�d�����OY���صpV�x�Teh�u����z@�_��Ή@`�����Xz8?����w��o�^eTU%m�Y�?M��Z�MV}L/�y�p�fxzc��~���3�~=6��bBR�;�5u��� �r,�<�N�
u�푯�qTVCָ�GQ�G�i��B�~�
���l�Ɩ�WǨ��X��s뚇�E��4����BR��y���@Q@8���琊��&���pG�}�� �2�̅�ا�H�k��Vb	rG��fnH�}y��s;���F^��/��� 1ZX����6]dq�zu�mtX��#�y
zYHW��T�~U�f����h��c͐��W�C��{���PѨ���G+��Is��Z<�>hܡ+<��������I�>���T�/�9�ʋ�$X=y�Vz�g��.�6��K�?�3G�����K������#��&�fJ-�lG����X�4|����i�K�\��<]c�/�mp���fC!��I�z�t�ګ��y�	O���K��<�_��E�1�����y��ѥ�M�ؑ�c�Ӧ���=�(n���;=~F�j`�(��j�8�?���)����\!/����_<��/I���.�0Ť�]oFCM��e��Sԯ&�P��S:-7�S���ʇ��qU�n�!�6ǽ�{v�h��G�}�8F@��G�w v  �ѡ��(�^�9�j����<4
=�I�)�.��0��n���D�n�������8g��Zy��5�5�|훏B��_/?�?<��l#D��U�i�P��[���Ye^5o�zY|�.�KDF�_/��W hn�%�<��lј�eu�i]O�ϳ��d�n���)ؓS��������f�M�ۇ�,�O�ߕ��4W�?H�&�:��3%m�S���|����ql�Xrv�+�na{��N�/Iޚ�^�TfoޜǊM���+���֌V�7ȇ<.�x�j����Y��l�X%<��-ze��zs�t���}w`�n1ڈw���h�ʰ�x{H]=��gZ����|ʹ��ЩP��֝6�i>�����ԇ=A�)�n��?��D�/j����@��#X�ڰ�
wFk�뱒��}�:^�2$cl�
?e�P�w��\'��>:�o��KJ�s�i��>�G:��-Kus�o�R�>"�;���Ԍ�K��C�M�>�|��l�a/;�>�O�!�U�A�;��.W�cm!�mO��Yu�^�����*�#�0�~P#��6��soj�&���	��Иa�VCY�6=���K���,���u�	5z�bg��\u���G�����[X�R���A   @�2���Qzaa�A"h'��q=j?�E]����)�2�:.��U�s��|6��O�자	'SY{^���i���}o���V9�r���i�G��f Y�:6�[�n��Pv�[e(��Q�e����1��d���;W���i�i��j(���ڵ�g�Ϻ�M���Z!C�w��;vOae8���Pw[/
^ϼ�|�|���.�X}1c�v��͕-nܡׇ����mS��}�7CXZ��o$���	2�3��lۋY��M@��3�i"��q���2����F8Ȏ/��ЎB���~yԦ��_N_w:���B�_Ը��f�0�A�}��M����1��Q�4uZ���7�/?
L>��q]���4$�������N}�����%dER�II|���^��\C��ַ��f� A��|kP�ݦ��.����p���N&'��g��P&��]�@E/T7e^�T�/���M��Ֆ�#��a�Q_��>+�bΝ[���8�&�`�nqX2�w`_.yy5yt=<J�:g|gy~���U
u�8Vw���~g"R�˶��z6Y�����m:�T��C��#��ғ�T�'_&�$��R3핫l��pފr�ؗ���gg�W��g��
0b�Ԝ�N�ة��h��*� � �~�
5�]�w��o�-�˴��;�ʼ���6[s�]�J��q���j�o���G xm��.�	���ʢ��`������3�*��C���C.p'����O�5�\^�[az�*�!��zfǊ���5y���*j�ۛB�3ojF���c�vz��dq�Ʒ���6�?�ڃ���.gֲv%�6]E�;��ɴd����E@��)_���i�_��K���m��!��T���0v��⁇��׽�3�v�~5qw�ۂ�ۮ�C4-�k����f�m+F�����rū����o�0y=���Wo�CJl���a̤A��5m��^by�7�[
�9u�R��&ġ�a��������:�ⳉ����g��5��Z_<zS�з���_����ly�
         @   x�-���0�o��b�K���^R�{��ƢK���p&��
i��R)��4����8���S      �   _   x�e̱�0Dњ��}`�G�DJ�d�9b�	`�|�!015��'x��q!zV��BB.�R�p�֕c&�������1@��)Ї�zZ�������bwZ      o   �   x�U̻�@��z�)�7l���V�66�!7�5&>�@gy�����0DE�~��c�9yF�
�B�ĉ,qHH�OH���v�����S�@P"�Y��t��_���S�jM�A[�X�Ab��ت���(L      u   b  x�m�Mj1���)jFT�Jݒv�$`/���t��t��ľ���E��\���ޣ�H-�S?����	��bdZ /�l-/������,�Z�o>��)�Y<�E�@.GDC^���ԫ�&o��n����, �Q0���P[��S���R;�Ͷ$�6�.�h�޽��#ctbB������O	6i�u�Ҡ�C�
l%�U"Jt�	,��Jt�.S{dö�u����q���f����ix}ICIu���]PTE��9#��٪v�8;}�ڱ�m���&V��O�����r�BD6��īnj�|�A�U��~�ο�[���!���=�6]�Ǚ�
��.�~N�_����G���?Q���      s   �  x�u�Io�0�����= �.Zni8@�p�^
�L�lQ����yi�Tt�����_�E�+4!�,��6�|�S�0TB��SHr�rmef�̙�f]W�j��~S)�2.�][3�e��������8�\�J��G/d�H
�5�y|�S)�$QnPR<��,�
Ag�*�Z�VlR����Ia([Q���p������e�A~��YXlb�yBlB�@�#HЀ�"3��)w��ٔr�I��C�nt���V������?�]�93�P W���L���u�_v]�E��J��H�S��dT�#����Z�[�>�-w�^ � �s��$��-�Щf S��h%�+�ĺ/�UÊ��?I�����A?�6�d�G����L�3�U���bC>4bQTmW%���P�,�����g��;>�8���RK�R!;Bq�����0�Ōq�U��	����m�J�r�D���f�&��n��Ϝ��hQ���˗���&g��o�r��      �      x������ � �      {   a   x�3�)J�+NK-*QHQO,JO�+�4�4B##C]#]CSCs+#C+SK=33#C#mC.3N�Ҕ̒��<��T�����Դ��̜�TN3ºc���� ���      }   9   x���  �w�DB8��ׁ��J�[Zr���Œ���_����w�3�xD�	      �      x������ � �      �      x������ � �     