PGDMP     !    )            
    y           yopituteo_development    13.4    13.4 ╩    ¹           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ³           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ²           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ■           1262    16639    yopituteo_development    DATABASE     q   CREATE DATABASE yopituteo_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';
 %   DROP DATABASE yopituteo_development;
                postgres    false                        3079    33006    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false                        0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    2            ┌            1259    24869    action_text_rich_texts    TABLE     6  CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 *   DROP TABLE public.action_text_rich_texts;
       public         heap    postgres    false            ┘            1259    24867    action_text_rich_texts_id_seq    SEQUENCE     å   CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.action_text_rich_texts_id_seq;
       public          postgres    false    218             
           0    0    action_text_rich_texts_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;
          public          postgres    false    217            ð            1259    24781    active_storage_attachments    TABLE     
  CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 .   DROP TABLE public.active_storage_attachments;
       public         heap    postgres    false            ¤            1259    24779 !   active_storage_attachments_id_seq    SEQUENCE     è   CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.active_storage_attachments_id_seq;
       public          postgres    false    208            
           0    0 !   active_storage_attachments_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;
          public          postgres    false    207            ╬            1259    24769    active_storage_blobs    TABLE     s  CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.active_storage_blobs;
       public         heap    postgres    false            ═            1259    24767    active_storage_blobs_id_seq    SEQUENCE     ä   CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.active_storage_blobs_id_seq;
       public          postgres    false    206            
           0    0    active_storage_blobs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;
          public          postgres    false    205            Ê            1259    24799    active_storage_variant_records    TABLE     Ø   CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);
 2   DROP TABLE public.active_storage_variant_records;
       public         heap    postgres    false            Ð            1259    24797 %   active_storage_variant_records_id_seq    SEQUENCE     Ä   CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.active_storage_variant_records_id_seq;
       public          postgres    false    210            
           0    0 %   active_storage_variant_records_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;
          public          postgres    false    209            Ò            1259    33185    administrators    TABLE     ù  CREATE TABLE public.administrators (
    id bigint NOT NULL,
    email character varying,
    password_digest character varying,
    first_name character varying,
    last_name character varying,
    remember_token character varying,
    remember_token_expires_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 "   DROP TABLE public.administrators;
       public         heap    postgres    false            Ô            1259    33183    administrators_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.administrators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.administrators_id_seq;
       public          postgres    false    227            
           0    0    administrators_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.administrators_id_seq OWNED BY public.administrators.id;
          public          postgres    false    226            ╩            1259    16648    ar_internal_metadata    TABLE     Ì   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    postgres    false            È            1259    24816 
   categories    TABLE     Þ   CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    active boolean DEFAULT true
);
    DROP TABLE public.categories;
       public         heap    postgres    false            Ë            1259    24814    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    212            
           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    211            Ú            1259    33259    comments    TABLE     ¶   CREATE TABLE public.comments (
    id bigint NOT NULL,
    content text,
    user_id bigint NOT NULL,
    order_id uuid NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.comments;
       public         heap    postgres    false            Þ            1259    33257    comments_id_seq    SEQUENCE     x   CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    233            
           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    232            Õ            1259    33216 
   conversations    TABLE     ¯   CREATE TABLE public.conversations (
    id bigint NOT NULL,
    sender_id bigint NOT NULL,
    receiver_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 !   DROP TABLE public.conversations;
       public         heap    postgres    false            õ            1259    33214    conversations_id_seq    SEQUENCE     }   CREATE SEQUENCE public.conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.conversations_id_seq;
       public          postgres    false    229            
           0    0    conversations_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.conversations_id_seq OWNED BY public.conversations.id;
          public          postgres    false    228            Í            1259    24827    gigs    TABLE     à  CREATE TABLE public.gigs (
    id bigint NOT NULL,
    title character varying,
    video character varying,
    active boolean DEFAULT false,
    has_single_pricing boolean DEFAULT false,
    user_id bigint NOT NULL,
    category_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    province_id bigint
);
    DROP TABLE public.gigs;
       public         heap    postgres    false            ı            1259    24825    gigs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.gigs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.gigs_id_seq;
       public          postgres    false    214            
           0    0    gigs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.gigs_id_seq OWNED BY public.gigs.id;
          public          postgres    false    213            þ            1259    33236    messages    TABLE     ²   CREATE TABLE public.messages (
    id bigint NOT NULL,
    content text,
    user_id bigint NOT NULL,
    conversation_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.messages;
       public         heap    postgres    false            µ            1259    33234    messages_id_seq    SEQUENCE     x   CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.messages_id_seq;
       public          postgres    false    231            	
           0    0    messages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;
          public          postgres    false    230            ▀            1259    33118    offers    TABLE     7  CREATE TABLE public.offers (
    id bigint NOT NULL,
    note text,
    amount integer,
    days integer,
    status integer DEFAULT 0,
    request_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.offers;
       public         heap    postgres    false            Ì            1259    33116 
   offers_id_seq    SEQUENCE     v   CREATE SEQUENCE public.offers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.offers_id_seq;
       public          postgres    false    223            

           0    0 
   offers_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.offers_id_seq OWNED BY public.offers.id;
          public          postgres    false    222            █            1259    33043    orders    TABLE     ║  CREATE TABLE public.orders (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    due_date date,
    title character varying,
    amount double precision,
    status integer,
    seller_name character varying,
    buyer_name character varying,
    gig_id bigint,
    buyer_id bigint,
    seller_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    request_id bigint
);
    DROP TABLE public.orders;
       public         heap    postgres    false            Ï            1259    24852    pricings    TABLE     @  CREATE TABLE public.pricings (
    id bigint NOT NULL,
    title character varying,
    description text,
    delivery_time integer,
    price integer,
    pricing_type integer,
    gig_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.pricings;
       public         heap    postgres    false            Î            1259    24850    pricings_id_seq    SEQUENCE     x   CREATE SEQUENCE public.pricings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pricings_id_seq;
       public          postgres    false    216            
           0    0    pricings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pricings_id_seq OWNED BY public.pricings.id;
          public          postgres    false    215            ´            1259    33780 	   provinces    TABLE     þ   CREATE TABLE public.provinces (
    id bigint NOT NULL,
    nombre character varying,
    region_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.provinces;
       public         heap    postgres    false            ¯            1259    33778    provinces_id_seq    SEQUENCE     y   CREATE SEQUENCE public.provinces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.provinces_id_seq;
       public          postgres    false    239            
           0    0    provinces_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.provinces_id_seq OWNED BY public.provinces.id;
          public          postgres    false    238            Ý            1259    33698 	   provincia    TABLE     Õ   CREATE TABLE public.provincia (
    id bigint NOT NULL,
    name character varying,
    region_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.provincia;
       public         heap    postgres    false            ý            1259    33696    provincia_id_seq    SEQUENCE     y   CREATE SEQUENCE public.provincia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.provincia_id_seq;
       public          postgres    false    237            

           0    0    provincia_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.provincia_id_seq OWNED BY public.provincia.id;
          public          postgres    false    236            Ù            1259    33687    regions    TABLE     Û   CREATE TABLE public.regions (
    id bigint NOT NULL,
    name character varying,
    region_ordinal character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.regions;
       public         heap    postgres    false            Û            1259    33685    regions_id_seq    SEQUENCE     w   CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.regions_id_seq;
       public          postgres    false    235            
           0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
          public          postgres    false    234            ¦            1259    33095    requests    TABLE     D  CREATE TABLE public.requests (
    id bigint NOT NULL,
    description text,
    title character varying,
    budget integer,
    delivery integer,
    user_id bigint NOT NULL,
    category_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.requests;
       public         heap    postgres    false            ▄            1259    33093    requests_id_seq    SEQUENCE     x   CREATE SEQUENCE public.requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.requests_id_seq;
       public          postgres    false    221            
           0    0    requests_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.requests_id_seq OWNED BY public.requests.id;
          public          postgres    false    220            ß            1259    33148    reviews    TABLE     0  CREATE TABLE public.reviews (
    id bigint NOT NULL,
    review text,
    stars integer DEFAULT 1,
    order_id uuid NOT NULL,
    gig_id bigint,
    buyer_id bigint,
    seller_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.reviews;
       public         heap    postgres    false            Ó            1259    33146    reviews_id_seq    SEQUENCE     w   CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reviews_id_seq;
       public          postgres    false    225            
           0    0    reviews_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;
          public          postgres    false    224            ╔            1259    16640    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    postgres    false            ╠            1259    16658    users    TABLE     ├  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    nombre character varying,
    edad character varying,
    profesion character varying,
    telefono character varying(12),
    genero character varying,
    descripcion text,
    id_ciudad integer,
    status boolean DEFAULT false,
    provider character varying,
    uid character varying,
    image character varying,
    ciudad character varying,
    about character varying,
    language character varying,
    active boolean DEFAULT true,
    region_id bigint,
    provincia_id bigint
);
    DROP TABLE public.users;
       public         heap    postgres    false            ╦            1259    16656    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    204            
           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    203            █           2604    24872    action_text_rich_texts id    DEFAULT     å   ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);
 H   ALTER TABLE public.action_text_rich_texts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            Ë           2604    24784    active_storage_attachments id    DEFAULT     Ä   ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);
 L   ALTER TABLE public.active_storage_attachments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            Ê           2604    24772    active_storage_blobs id    DEFAULT     é   ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);
 F   ALTER TABLE public.active_storage_blobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    206    206            È           2604    24802 !   active_storage_variant_records id    DEFAULT     û   ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);
 P   ALTER TABLE public.active_storage_variant_records ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            Ô           2604    33188    administrators id    DEFAULT     v   ALTER TABLE ONLY public.administrators ALTER COLUMN id SET DEFAULT nextval('public.administrators_id_seq'::regclass);
 @   ALTER TABLE public.administrators ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            ı           2604    24819 
   categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            Õ           2604    33262    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            Ò           2604    33219    conversations id    DEFAULT     t   ALTER TABLE ONLY public.conversations ALTER COLUMN id SET DEFAULT nextval('public.conversations_id_seq'::regclass);
 ?   ALTER TABLE public.conversations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            Î           2604    24830    gigs id    DEFAULT     b   ALTER TABLE ONLY public.gigs ALTER COLUMN id SET DEFAULT nextval('public.gigs_id_seq'::regclass);
 6   ALTER TABLE public.gigs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            õ           2604    33239    messages id    DEFAULT     j   ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);
 :   ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            Ì           2604    33121 	   offers id    DEFAULT     f   ALTER TABLE ONLY public.offers ALTER COLUMN id SET DEFAULT nextval('public.offers_id_seq'::regclass);
 8   ALTER TABLE public.offers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            ┌           2604    24855    pricings id    DEFAULT     j   ALTER TABLE ONLY public.pricings ALTER COLUMN id SET DEFAULT nextval('public.pricings_id_seq'::regclass);
 :   ALTER TABLE public.pricings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            Þ           2604    33783    provinces id    DEFAULT     l   ALTER TABLE ONLY public.provinces ALTER COLUMN id SET DEFAULT nextval('public.provinces_id_seq'::regclass);
 ;   ALTER TABLE public.provinces ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            þ           2604    33701    provincia id    DEFAULT     l   ALTER TABLE ONLY public.provincia ALTER COLUMN id SET DEFAULT nextval('public.provincia_id_seq'::regclass);
 ;   ALTER TABLE public.provincia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            µ           2604    33690 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            ¦           2604    33098    requests id    DEFAULT     j   ALTER TABLE ONLY public.requests ALTER COLUMN id SET DEFAULT nextval('public.requests_id_seq'::regclass);
 :   ALTER TABLE public.requests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            Ó           2604    33151 
   reviews id    DEFAULT     h   ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);
 9   ALTER TABLE public.reviews ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            ═           2604    16661    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203    204            Ò          0    24869    action_text_rich_texts 
   TABLE DATA           p   COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
    public          postgres    false    218            ┘          0    24781    active_storage_attachments 
   TABLE DATA           k   COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
    public          postgres    false    208            Î          0    24769    active_storage_blobs 
   TABLE DATA           ê   COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
    public          postgres    false    206            █          0    24799    active_storage_variant_records 
   TABLE DATA           W   COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
    public          postgres    false    210            ý          0    33185    administrators 
   TABLE DATA           ×   COPY public.administrators (id, email, password_digest, first_name, last_name, remember_token, remember_token_expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    227            Ë          0    16648    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          postgres    false    202            ¦          0    24816 
   categories 
   TABLE DATA           N   COPY public.categories (id, name, created_at, updated_at, active) FROM stdin;
    public          postgres    false    212            ‗          0    33259    comments 
   TABLE DATA           Z   COPY public.comments (id, content, user_id, order_id, created_at, updated_at) FROM stdin;
    public          postgres    false    233            ¯          0    33216 
   conversations 
   TABLE DATA           [   COPY public.conversations (id, sender_id, receiver_id, created_at, updated_at) FROM stdin;
    public          postgres    false    229            ▀          0    24827    gigs 
   TABLE DATA           ç   COPY public.gigs (id, title, video, active, has_single_pricing, user_id, category_id, created_at, updated_at, province_id) FROM stdin;
    public          postgres    false    214            ­          0    33236    messages 
   TABLE DATA           a   COPY public.messages (id, content, user_id, conversation_id, created_at, updated_at) FROM stdin;
    public          postgres    false    231            Þ          0    33118    offers 
   TABLE DATA           m   COPY public.offers (id, note, amount, days, status, request_id, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    223            õ          0    33043    orders 
   TABLE DATA           ƒ   COPY public.orders (id, due_date, title, amount, status, seller_name, buyer_name, gig_id, buyer_id, seller_id, created_at, updated_at, request_id) FROM stdin;
    public          postgres    false    219            ß          0    24852    pricings 
   TABLE DATA           ~   COPY public.pricings (id, title, description, delivery_time, price, pricing_type, gig_id, created_at, updated_at) FROM stdin;
    public          postgres    false    216            °          0    33780 	   provinces 
   TABLE DATA           R   COPY public.provinces (id, nombre, region_id, created_at, updated_at) FROM stdin;
    public          postgres    false    239            ÷          0    33698 	   provincia 
   TABLE DATA           P   COPY public.provincia (id, name, region_id, created_at, updated_at) FROM stdin;
    public          postgres    false    237            ¶          0    33687    regions 
   TABLE DATA           S   COPY public.regions (id, name, region_ordinal, created_at, updated_at) FROM stdin;
    public          postgres    false    235            µ          0    33095    requests 
   TABLE DATA           z   COPY public.requests (id, description, title, budget, delivery, user_id, category_id, created_at, updated_at) FROM stdin;
    public          postgres    false    221            Û          0    33148    reviews 
   TABLE DATA           s   COPY public.reviews (id, review, stars, order_id, gig_id, buyer_id, seller_id, created_at, updated_at) FROM stdin;
    public          postgres    false    225            Ê          0    16640    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          postgres    false    201            ı          0    16658    users 
   TABLE DATA           4  COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, nombre, edad, profesion, telefono, genero, descripcion, id_ciudad, status, provider, uid, image, ciudad, about, language, active, region_id, provincia_id) FROM stdin;
    public          postgres    false    204            
           0    0    action_text_rich_texts_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 35, true);
          public          postgres    false    217            
           0    0 !   active_storage_attachments_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 58, true);
          public          postgres    false    207            
           0    0    active_storage_blobs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 58, true);
          public          postgres    false    205            
           0    0 %   active_storage_variant_records_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);
          public          postgres    false    209            
           0    0    administrators_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.administrators_id_seq', 1, true);
          public          postgres    false    226            
           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 11, true);
          public          postgres    false    211            
           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 13, true);
          public          postgres    false    232            
           0    0    conversations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.conversations_id_seq', 2, true);
          public          postgres    false    228            
           0    0    gigs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.gigs_id_seq', 36, true);
          public          postgres    false    213            
           0    0    messages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.messages_id_seq', 32, true);
          public          postgres    false    230            
           0    0 
   offers_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.offers_id_seq', 5, true);
          public          postgres    false    222            
           0    0    pricings_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pricings_id_seq', 108, true);
          public          postgres    false    215            
           0    0    provinces_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.provinces_id_seq', 1, false);
          public          postgres    false    238            
           0    0    provincia_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.provincia_id_seq', 1, false);
          public          postgres    false    236             
           0    0    regions_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.regions_id_seq', 1, false);
          public          postgres    false    234            !
           0    0    requests_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.requests_id_seq', 13, true);
          public          postgres    false    220            "
           0    0    reviews_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.reviews_id_seq', 3, true);
          public          postgres    false    224            #
           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 9, true);
          public          postgres    false    203                       2606    24877 2   action_text_rich_texts action_text_rich_texts_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.action_text_rich_texts DROP CONSTRAINT action_text_rich_texts_pkey;
       public            postgres    false    218            ¸           2606    24789 :   active_storage_attachments active_storage_attachments_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT active_storage_attachments_pkey;
       public            postgres    false    208            ¶           2606    24777 .   active_storage_blobs active_storage_blobs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.active_storage_blobs DROP CONSTRAINT active_storage_blobs_pkey;
       public            postgres    false    206            ¹           2606    24807 B   active_storage_variant_records active_storage_variant_records_pkey 
   CONSTRAINT     Ç   ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.active_storage_variant_records DROP CONSTRAINT active_storage_variant_records_pkey;
       public            postgres    false    210                       2606    33193 "   administrators administrators_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.administrators
    ADD CONSTRAINT administrators_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.administrators DROP CONSTRAINT administrators_pkey;
       public            postgres    false    227            ý           2606    16655 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            postgres    false    202            ■           2606    24824    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    212            )           2606    33267    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    233            !           2606    33221     conversations conversations_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.conversations DROP CONSTRAINT conversations_pkey;
       public            postgres    false    229                        2606    24837    gigs gigs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.gigs
    ADD CONSTRAINT gigs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.gigs DROP CONSTRAINT gigs_pkey;
       public            postgres    false    214            '           2606    33244    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public            postgres    false    231                       2606    33127    offers offers_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.offers DROP CONSTRAINT offers_pkey;
       public            postgres    false    223                       2606    33051    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219                       2606    24860    pricings pricings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pricings
    ADD CONSTRAINT pricings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pricings DROP CONSTRAINT pricings_pkey;
       public            postgres    false    216            3           2606    33788    provinces provinces_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.provinces DROP CONSTRAINT provinces_pkey;
       public            postgres    false    239            0           2606    33706    provincia provincia_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT provincia_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.provincia DROP CONSTRAINT provincia_pkey;
       public            postgres    false    237            -           2606    33695    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public            postgres    false    235                       2606    33103    requests requests_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT requests_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.requests DROP CONSTRAINT requests_pkey;
       public            postgres    false    221                       2606    33157    reviews reviews_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_pkey;
       public            postgres    false    225            Û           2606    16647 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            postgres    false    201            ‗           2606    16668    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    204            	           1259    24878 '   index_action_text_rich_texts_uniqueness    INDEX     ë   CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);
 ;   DROP INDEX public.index_action_text_rich_texts_uniqueness;
       public            postgres    false    218    218    218            °           1259    24795 +   index_active_storage_attachments_on_blob_id    INDEX     u   CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_on_blob_id;
       public            postgres    false    208            ¨           1259    24796 +   index_active_storage_attachments_uniqueness    INDEX     Ü   CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_uniqueness;
       public            postgres    false    208    208    208    208            §           1259    24778 !   index_active_storage_blobs_on_key    INDEX     h   CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);
 5   DROP INDEX public.index_active_storage_blobs_on_key;
       public            postgres    false    206            ³           1259    24813 /   index_active_storage_variant_records_uniqueness    INDEX     û   CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);
 C   DROP INDEX public.index_active_storage_variant_records_uniqueness;
       public            postgres    false    210    210            *           1259    33279    index_comments_on_order_id    INDEX     S   CREATE INDEX index_comments_on_order_id ON public.comments USING btree (order_id);
 .   DROP INDEX public.index_comments_on_order_id;
       public            postgres    false    233            +           1259    33278    index_comments_on_user_id    INDEX     Q   CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);
 -   DROP INDEX public.index_comments_on_user_id;
       public            postgres    false    233            "           1259    33233 "   index_conversations_on_receiver_id    INDEX     c   CREATE INDEX index_conversations_on_receiver_id ON public.conversations USING btree (receiver_id);
 6   DROP INDEX public.index_conversations_on_receiver_id;
       public            postgres    false    229            #           1259    33232     index_conversations_on_sender_id    INDEX     _   CREATE INDEX index_conversations_on_sender_id ON public.conversations USING btree (sender_id);
 4   DROP INDEX public.index_conversations_on_sender_id;
       public            postgres    false    229                       1259    24849    index_gigs_on_category_id    INDEX     Q   CREATE INDEX index_gigs_on_category_id ON public.gigs USING btree (category_id);
 -   DROP INDEX public.index_gigs_on_category_id;
       public            postgres    false    214                       1259    33727    index_gigs_on_provincia_id    INDEX     R   CREATE INDEX index_gigs_on_provincia_id ON public.gigs USING btree (province_id);
 .   DROP INDEX public.index_gigs_on_provincia_id;
       public            postgres    false    214                       1259    24848    index_gigs_on_user_id    INDEX     I   CREATE INDEX index_gigs_on_user_id ON public.gigs USING btree (user_id);
 )   DROP INDEX public.index_gigs_on_user_id;
       public            postgres    false    214            $           1259    33256 !   index_messages_on_conversation_id    INDEX     a   CREATE INDEX index_messages_on_conversation_id ON public.messages USING btree (conversation_id);
 5   DROP INDEX public.index_messages_on_conversation_id;
       public            postgres    false    231            %           1259    33255    index_messages_on_user_id    INDEX     Q   CREATE INDEX index_messages_on_user_id ON public.messages USING btree (user_id);
 -   DROP INDEX public.index_messages_on_user_id;
       public            postgres    false    231                       1259    33138    index_offers_on_request_id    INDEX     S   CREATE INDEX index_offers_on_request_id ON public.offers USING btree (request_id);
 .   DROP INDEX public.index_offers_on_request_id;
       public            postgres    false    223                       1259    33139    index_offers_on_user_id    INDEX     M   CREATE INDEX index_offers_on_user_id ON public.offers USING btree (user_id);
 +   DROP INDEX public.index_offers_on_user_id;
       public            postgres    false    223            
           1259    33068    index_orders_on_buyer_id    INDEX     O   CREATE INDEX index_orders_on_buyer_id ON public.orders USING btree (buyer_id);
 ,   DROP INDEX public.index_orders_on_buyer_id;
       public            postgres    false    219                       1259    33067    index_orders_on_gig_id    INDEX     K   CREATE INDEX index_orders_on_gig_id ON public.orders USING btree (gig_id);
 *   DROP INDEX public.index_orders_on_gig_id;
       public            postgres    false    219                       1259    33140    index_orders_on_request_id    INDEX     S   CREATE INDEX index_orders_on_request_id ON public.orders USING btree (request_id);
 .   DROP INDEX public.index_orders_on_request_id;
       public            postgres    false    219            
           1259    33069    index_orders_on_seller_id    INDEX     Q   CREATE INDEX index_orders_on_seller_id ON public.orders USING btree (seller_id);
 -   DROP INDEX public.index_orders_on_seller_id;
       public            postgres    false    219                       1259    24866    index_pricings_on_gig_id    INDEX     O   CREATE INDEX index_pricings_on_gig_id ON public.pricings USING btree (gig_id);
 ,   DROP INDEX public.index_pricings_on_gig_id;
       public            postgres    false    216            1           1259    33794    index_provinces_on_region_id    INDEX     W   CREATE INDEX index_provinces_on_region_id ON public.provinces USING btree (region_id);
 0   DROP INDEX public.index_provinces_on_region_id;
       public            postgres    false    239            .           1259    33712    index_provincia_on_region_id    INDEX     W   CREATE INDEX index_provincia_on_region_id ON public.provincia USING btree (region_id);
 0   DROP INDEX public.index_provincia_on_region_id;
       public            postgres    false    237                       1259    33115    index_requests_on_category_id    INDEX     Y   CREATE INDEX index_requests_on_category_id ON public.requests USING btree (category_id);
 1   DROP INDEX public.index_requests_on_category_id;
       public            postgres    false    221                       1259    33114    index_requests_on_user_id    INDEX     Q   CREATE INDEX index_requests_on_user_id ON public.requests USING btree (user_id);
 -   DROP INDEX public.index_requests_on_user_id;
       public            postgres    false    221                       1259    33180    index_reviews_on_buyer_id    INDEX     Q   CREATE INDEX index_reviews_on_buyer_id ON public.reviews USING btree (buyer_id);
 -   DROP INDEX public.index_reviews_on_buyer_id;
       public            postgres    false    225                       1259    33179    index_reviews_on_gig_id    INDEX     M   CREATE INDEX index_reviews_on_gig_id ON public.reviews USING btree (gig_id);
 +   DROP INDEX public.index_reviews_on_gig_id;
       public            postgres    false    225                       1259    33178    index_reviews_on_order_id    INDEX     Q   CREATE INDEX index_reviews_on_order_id ON public.reviews USING btree (order_id);
 -   DROP INDEX public.index_reviews_on_order_id;
       public            postgres    false    225                       1259    33181    index_reviews_on_seller_id    INDEX     S   CREATE INDEX index_reviews_on_seller_id ON public.reviews USING btree (seller_id);
 .   DROP INDEX public.index_reviews_on_seller_id;
       public            postgres    false    225            Ý           1259    16669    index_users_on_email    INDEX     N   CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public            postgres    false    204            ¯           1259    33733    index_users_on_provincia_id    INDEX     U   CREATE INDEX index_users_on_provincia_id ON public.users USING btree (provincia_id);
 /   DROP INDEX public.index_users_on_provincia_id;
       public            postgres    false    204            ´           1259    33714    index_users_on_region_id    INDEX     O   CREATE INDEX index_users_on_region_id ON public.users USING btree (region_id);
 ,   DROP INDEX public.index_users_on_region_id;
       public            postgres    false    204            ­           1259    16670 #   index_users_on_reset_password_token    INDEX     l   CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public            postgres    false    204            L           2606    33268    comments fk_rails_03de2dc08c 
   FK CONSTRAINT     {   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_rails_03de2dc08c;
       public          postgres    false    204    3058    233            5           2606    33734    users fk_rails_0ac2212bba 
   FK CONSTRAINT     ü   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_0ac2212bba FOREIGN KEY (provincia_id) REFERENCES public.provincia(id);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_rails_0ac2212bba;
       public          postgres    false    204    237    3120            J           2606    33245    messages fk_rails_273a25a7a6 
   FK CONSTRAINT     {   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk_rails_273a25a7a6 FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.messages DROP CONSTRAINT fk_rails_273a25a7a6;
       public          postgres    false    231    3058    204            H           2606    33222 !   conversations fk_rails_2855ab3029 
   FK CONSTRAINT     é   ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT fk_rails_2855ab3029 FOREIGN KEY (sender_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.conversations DROP CONSTRAINT fk_rails_2855ab3029;
       public          postgres    false    204    3058    229            A           2606    33109    requests fk_rails_320a1ce6f0 
   FK CONSTRAINT     ä   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_rails_320a1ce6f0 FOREIGN KEY (category_id) REFERENCES public.categories(id);
 F   ALTER TABLE ONLY public.requests DROP CONSTRAINT fk_rails_320a1ce6f0;
       public          postgres    false    221    3070    212            M           2606    33273    comments fk_rails_453b7b85cf 
   FK CONSTRAINT     }   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_453b7b85cf FOREIGN KEY (order_id) REFERENCES public.orders(id);
 F   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_rails_453b7b85cf;
       public          postgres    false    3087    233    219            ;           2606    24861    pricings fk_rails_47132a4f4a 
   FK CONSTRAINT     y   ALTER TABLE ONLY public.pricings
    ADD CONSTRAINT fk_rails_47132a4f4a FOREIGN KEY (gig_id) REFERENCES public.gigs(id);
 F   ALTER TABLE ONLY public.pricings DROP CONSTRAINT fk_rails_47132a4f4a;
       public          postgres    false    3072    214    216            E           2606    33163    reviews fk_rails_544c610a1f 
   FK CONSTRAINT     x   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_544c610a1f FOREIGN KEY (gig_id) REFERENCES public.gigs(id);
 E   ALTER TABLE ONLY public.reviews DROP CONSTRAINT fk_rails_544c610a1f;
       public          postgres    false    214    225    3072            O           2606    33789    provinces fk_rails_5aca3eede1 
   FK CONSTRAINT     Ç   ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT fk_rails_5aca3eede1 FOREIGN KEY (region_id) REFERENCES public.regions(id);
 G   ALTER TABLE ONLY public.provinces DROP CONSTRAINT fk_rails_5aca3eede1;
       public          postgres    false    235    239    3117            B           2606    33128    offers fk_rails_5ff5bafd22 
   FK CONSTRAINT        ALTER TABLE ONLY public.offers
    ADD CONSTRAINT fk_rails_5ff5bafd22 FOREIGN KEY (request_id) REFERENCES public.requests(id);
 D   ALTER TABLE ONLY public.offers DROP CONSTRAINT fk_rails_5ff5bafd22;
       public          postgres    false    3091    223    221            9           2606    24843    gigs fk_rails_601286f7a1 
   FK CONSTRAINT     Ç   ALTER TABLE ONLY public.gigs
    ADD CONSTRAINT fk_rails_601286f7a1 FOREIGN KEY (category_id) REFERENCES public.categories(id);
 B   ALTER TABLE ONLY public.gigs DROP CONSTRAINT fk_rails_601286f7a1;
       public          postgres    false    212    3070    214            <           2606    33052    orders fk_rails_6ad35d81ff 
   FK CONSTRAINT     w   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_6ad35d81ff FOREIGN KEY (gig_id) REFERENCES public.gigs(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_rails_6ad35d81ff;
       public          postgres    false    219    214    3072            K           2606    33250    messages fk_rails_7f927086d2 
   FK CONSTRAINT     ï   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk_rails_7f927086d2 FOREIGN KEY (conversation_id) REFERENCES public.conversations(id);
 F   ALTER TABLE ONLY public.messages DROP CONSTRAINT fk_rails_7f927086d2;
       public          postgres    false    3105    231    229            @           2606    33104    requests fk_rails_8ead8b1e6b 
   FK CONSTRAINT     {   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_rails_8ead8b1e6b FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.requests DROP CONSTRAINT fk_rails_8ead8b1e6b;
       public          postgres    false    204    3058    221            7           2606    24808 2   active_storage_variant_records fk_rails_993965df05 
   FK CONSTRAINT     á   ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);
 \   ALTER TABLE ONLY public.active_storage_variant_records DROP CONSTRAINT fk_rails_993965df05;
       public          postgres    false    210    3060    206            G           2606    33173    reviews fk_rails_9c9b72d3b5 
   FK CONSTRAINT     |   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_9c9b72d3b5 FOREIGN KEY (seller_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.reviews DROP CONSTRAINT fk_rails_9c9b72d3b5;
       public          postgres    false    225    3058    204            4           2606    33715    users fk_rails_b3a8faedd1 
   FK CONSTRAINT     |   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_b3a8faedd1 FOREIGN KEY (region_id) REFERENCES public.regions(id);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_rails_b3a8faedd1;
       public          postgres    false    3117    204    235            ?           2606    33141    orders fk_rails_b3cb052e93 
   FK CONSTRAINT        ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_b3cb052e93 FOREIGN KEY (request_id) REFERENCES public.requests(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_rails_b3cb052e93;
       public          postgres    false    221    3091    219            N           2606    33707    provincia fk_rails_c36b847daf 
   FK CONSTRAINT     Ç   ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT fk_rails_c36b847daf FOREIGN KEY (region_id) REFERENCES public.regions(id);
 G   ALTER TABLE ONLY public.provincia DROP CONSTRAINT fk_rails_c36b847daf;
       public          postgres    false    235    3117    237            6           2606    24790 .   active_storage_attachments fk_rails_c3b3935057 
   FK CONSTRAINT     £   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);
 X   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT fk_rails_c3b3935057;
       public          postgres    false    208    3060    206            F           2606    33168    reviews fk_rails_c7b3e20248 
   FK CONSTRAINT     {   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_c7b3e20248 FOREIGN KEY (buyer_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.reviews DROP CONSTRAINT fk_rails_c7b3e20248;
       public          postgres    false    225    204    3058            =           2606    33057    orders fk_rails_d3775977e3 
   FK CONSTRAINT     z   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_d3775977e3 FOREIGN KEY (buyer_id) REFERENCES public.users(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_rails_d3775977e3;
       public          postgres    false    219    3058    204            8           2606    24838    gigs fk_rails_d872f8ccad 
   FK CONSTRAINT     w   ALTER TABLE ONLY public.gigs
    ADD CONSTRAINT fk_rails_d872f8ccad FOREIGN KEY (user_id) REFERENCES public.users(id);
 B   ALTER TABLE ONLY public.gigs DROP CONSTRAINT fk_rails_d872f8ccad;
       public          postgres    false    3058    204    214            C           2606    33133    offers fk_rails_e6095d6211 
   FK CONSTRAINT     y   ALTER TABLE ONLY public.offers
    ADD CONSTRAINT fk_rails_e6095d6211 FOREIGN KEY (user_id) REFERENCES public.users(id);
 D   ALTER TABLE ONLY public.offers DROP CONSTRAINT fk_rails_e6095d6211;
       public          postgres    false    223    3058    204            D           2606    33158    reviews fk_rails_eadb6874f1 
   FK CONSTRAINT     |   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_eadb6874f1 FOREIGN KEY (order_id) REFERENCES public.orders(id);
 E   ALTER TABLE ONLY public.reviews DROP CONSTRAINT fk_rails_eadb6874f1;
       public          postgres    false    3087    219    225            I           2606    33227 !   conversations fk_rails_f4e4d987ce 
   FK CONSTRAINT     ä   ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT fk_rails_f4e4d987ce FOREIGN KEY (receiver_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.conversations DROP CONSTRAINT fk_rails_f4e4d987ce;
       public          postgres    false    229    204    3058            >           2606    33062    orders fk_rails_f569184c98 
   FK CONSTRAINT     {   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_f569184c98 FOREIGN KEY (seller_id) REFERENCES public.users(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_rails_f569184c98;
       public          postgres    false    3058    219    204            :           2606    33795    gigs fk_rails_to_province 
   FK CONSTRAINT     è   ALTER TABLE ONLY public.gigs
    ADD CONSTRAINT fk_rails_to_province FOREIGN KEY (province_id) REFERENCES public.provinces(id) NOT VALID;
 C   ALTER TABLE ONLY public.gigs DROP CONSTRAINT fk_rails_to_province;
       public          postgres    false    239    3123    214            Ò   $	  x£ÝYMÅÒ©=Å~▒ù╣©5§ÝLfæ	▓ïÆý`gÇ┼╣ðmsZëjÀ }^æ▓-╣5}╩ôFÇ▄RQdıÒ½WE)|S╔¥ýÈ┴(¦¥y_®Ã´{ËÚv¸ßo¢L÷¼lSb■»┘AÖ┴h┐7Ä} Ä×|¾│┌¢ë▀­Ççwapµ,,Í1■"?ïè,╦º&¼âbq?╦¾ó(<>¸d~°¼k═║âF▓F÷+&Ø~öÕ^°´▀aä]0╝╬Z░ X'┼:î²4/┬Ç¤LßÍ ¸│$9¸óþí ±!▄F~┼¬ìh▒╝Þ┬m▒d7	2║L╠ªÙ ]'▒±éþ┼¡)_çæƒaT$^2[¾Ì0ı│Vf÷Æu▓?ÞÂWU+sbzk´Íó¦
b'­ÌÛ«ölºu┼j¡T╗cÑ«õèm3▄´§PWßaa<0Ý▒L-}Kzu8eaä-YçëƒY¢d‗▓y,ìÏ®V▓ôÿÞ$;v╩ðéóe▓¬÷┘´úEÁlÊÿsäÑnâæ¦uä>╚NÏºº÷+kU┌(░EzÞ%&»ÿ9ÞvN░y┌hÐUWD└Ü× 9¬║f #▒0ál?`âÏÈ┘ü¬┼¡4>¹¼»AÞ╬«ÀæÇ^ÌxCKò┘_µ┌╚¢"çª1Yä¾Eï8,óõôù¤■ç¯/ÿÐ?¶ý(YÑ¡úp¤9Ð¹ý'╩ÿ'Ðj0C`Þ+E]ÁáiêqÑZo;4┘§¼ÎvÍíÐ6Qëx0kt+AF─èMkXsbGQÎÊ©°ºOw{Ëôïú+6°b!┬Èé"ïúL^1■'Z£||T‗xð╩Ðþ©ãn╣[ÚìÞý^¡.╣ðFò┌n▒Ðw^©▓-a' kı(#½¶>Ø╠×êà]²uÏ£®ÅBë║í═áëzÐPBëFE┌uói╬╗╦aaXä/ÿ<<8àÓµÍ┌ÚVÈl+à:┼Ò^Â─©
‗È',õËíªLN┌Æ▒ûOòÐíÕU├$éùL£Ñ<_+¨Hë!çíâ©H┌øZm▒>iÂaÁÇë9sÓRq/çô¤>è^Vö¥fj┌À+7«▒×┌!,zã¬┘]K_(ºnÙ├¶'╗ÁóòÀCÙ│{║¿§▒À³░(`│[aæn5di³´iSß¾d‗ò╦Ý·┴Põ­3éÃÔYK╔|6y! Á?\N┴¿(‗d9qØ╔þı¾V7$╦▓Ð¦i┼Ò5ÇâïH@E¬[ëôU*ú1¬ËÃÐçxqí$+‗Ó%ôçþt¼Tı¥5VÁ┴«¯Jù╝▓█╩ÊX@┌¯e|▓TJê%[ëÌµ¼╝rÆ'}÷O}┼À┤R┐8hçÉò|aÕf▄▓F£0ë2o	ªCÓè¤(█¤7/Kô§þA¤G8±+ÂrhêFÓÝFlÓ░¼Î[:ãÚÜþ╚Õ"ënqØÜ╝pÌÑ|Íì4
à■h	¹
+}D6¸r¿¶ØÕòªõ>P┐▀:=ÿZ╗íE.½Ð└Kù~¬╗öI¿ä2ö³=ÈA§┤ë╩³Þ└#<¹Q2j§Ó─fÕ■Ø.aÎñu³│lÅ¯÷`Ø(¡Gdn¹>Oô,¢M´®╔├â│è,l9¡:hHk5åE■	,xh§?©«p¡ÕıNJÎ¯Óþ_PWÄ{´▀6û6_	;ílàF¯tÔh !¯¢*Wÿû(H
éË[sD╦¢Åó¼Hûcv&/╠¥¾└n[¿Ð¹"Å×U│®╔þ=ÈÃ1█Gü²2tN®@┘ÆÏÒ¥ò0øË6 ­§<¶¯<t.HH·▒Å"WJï═å║3<	Ò$AØ╔7'qÆ H1/‗»zÒzÔqëëG(Ñó´e!;Q£Uh▒#tÎf╦X╩f#ßÃ	╩{ã¶VÓpqÜ'╦I`-^X|çuî▀÷X╬Ò$ëc¥ª3y£┐û6ô▀ûrg×ª±│R>5y|^╩]þı"B‗È.§Iv8¾#ƒu»{╗¡{±H[Ð©cñ,¨Nõ]Ñ».[║RY£╬H:pØ═┘┐ï«;▒▀É8È¤jÔÄxþøÊöP4Ð{^[æ═8└lÐgLÝ;e╗RÚ6ô¼m,Êt»ÐƒÄê-W┴óHèe╣▒ÅÃL[╬þ§:^G┴Ü>/ÆÓ&!þ&Å'»å├Úb£Þ9Òóx┴õ±ya■e1Ù?ö╝?╚RYM>7LÂ¶Â┬v[]²¨Hðêîò¿a{b┘é~tðãÓ╩ÚÎ8┌ØqW÷_öDw	tüÉÏðy╣Êö!Ë¾
­Ü┐┌└	¿FÁ░þ‗Q+/8@▓┼¿Ò,HnÄjsôÃ│ Z╬¾┼àÆ8Åèe^:ôÃ¾oÃWáÈ╔µÜ>T4A┤jÁ}ôÓ╬½Kü9t¬PèØF«®v┤ÅÄ.S$ÕQÿG/ÿ<>/iƒ\▀H~\¬1ÜJwÎ	╚┤Lô¬uJîî┘║─"Ï┘HEúI/Qüæ¶¬╔×<¹ıD┤Çç:[')YÚ)$ñ╬V|jýÄT§Þ-ì┬±┴f÷²[╝¾Ðú¦(X;┬$Yfû3yQ­╩Å Ðr÷diöÕ╦:ýL^4BÝ┘u ¥Ûô}´A)E@o$0HwwÊ^w└nÒ├¬|¿]
\,Ó═vhWþ═Áì¤Ä/¯¯┬½ûò}ÀBU‗wÜj|¹22pîy9[¾,N¥│3yØÛ-®BÞAÆÃKòÞl‗x°ý█+k¶┘■\}[@d~©|K1áÁu╦²^¥ø░ÎÇÕõ╗_>9dqöªôî╦ÞÙOÆ»ú▄óöçÖÃâþ_c■7Ö)╦GËöÃizû▀­.êX╚ÎqL_ÉÆ4ëxý┼¤┴xeDY■¯æñEÃWdÔIð┤Â ‗Êþ╚³æ}┼─Ò█W+╬Ò~e¤<ªØ÷├$,é┬ïó ┐ü°ãêøÎÉgæ
Ò(_Û9Gï-ñ	½UÎÚG┌dª8Ð:êÍIÞ<ä¦Üb█<ÃH?¯E╔¾>
¸ E¢2-¦±Þú┌ï~z‗╦Üi{gúÇ1}7¯qoÛIz╦Él~ö±°Êã_L┼Üg~
║þ▄¹ù´yÌ ÐÍ¸Ø      ┘   ı  x£uû╦n7EÎõW╠¿Qo▓zøE÷▓üê¡─þ¹s;‗c¬ç«Ï8£.­\▓┌█Ò┐ÅÎÃ¤Ýùùº¤═1ääÿÏ/ó╗¨«║1ÖYÅ┬ã=k│▓╬>
<0VpàIƒ×¸░oËS¦{81¯ßÏå3~Ø╣²²■¨·³Ê~■­g│å¨wz^Dv═¦e3ƒªÐYN┤£hÒ i╔°o¢Ñ╣a■Ø╬±Nä[ÖØÝûÍå¨7ZÞ┬▒Ë▄Ø6┘{}¢>■■■ÒËºÙo|°Ù®¢{·þ╦Ë╦ÁIÒ/|┌9wµ-F$Ò=Ò═ÑxÚ8->^Ûû┴ÊyÌûÞìxÉ©░¯*;¹6ÿËAþ-ìsIOÐ®┘ànÚúî%Øñ:╝KÐå2xMÃáÞR¼í
Y└▒æd"kR¡í]Ô╚▒*)┌Ä°Ïƒ8#ÔG%¥─Q╦P¯G%▒─q³¨öQpT2ûx0ó÷ÔôQ╔Y¿┼.sÜ|(*BÅöØì~┼þP╩«┼(ÆÑgÑ»©·Tæ«E)óÑgº»©a']╗®╚û×¡~┼ßþ\ïUäK¤V_q9hv-Ü=kz┼$æw-Ü=kz┼g&■╗HB\¶,ÚÇsú ûÐÁHB\┤J▓]qLiS3ÀÞZ$!.ÜK▄DN¡HB\îÍxÄü╗ıè$─┼xë¹HÝV$!.&K<LªIêïÚr<ÝVoLnfK|▓Mö^ö"-µK:ë8║úï┼éµì,┬QJq¬Íl,q>.{ÙV£"[vÒtMè░blÄÙÄ┤[×±\Ôô"Éuº¯┤└søÛÔÍØ´┬O¤Å╔q¹¨ìÓ<┌É·┌ð╚ð¯‗÷Zn.¸k┼ðå┌Þ«o»òµZÍ¢o7▄-3Qs²Í ■M?É_XvG├─ÄÇ'Ú^┐6P┘©ÃÐ©)ØáÃ½×h>oq┤E╦cÖÐî╣ ║§Ì ñ┬®      Î   9	  x£¢ÿYoIÃƒ│>à┼Ë¼X7y-═Å┴6Gâ═a¡┤╩║+Ù«¼{Á▀}Ë│aï~ÚC¡n ±Å°GÆ`
Ó<LÖÄ┌óD®é¥▒2èÒiël	¦GI¦- &ËD	╚JØDÅ>¢³¤â,î¬>ï│(|░Ý╗!·þ]ÚbYoÌ uáÇcéÒS┤{¥;ç·"╣©¿ju÷‗õı¶¹´ Cî<─³ æ-┴[─6R┬<ñ@òXõ2eTX¸#ë╩Ò¼-3_±ðm╝ª·:å▒ñÓ¼┌Ø%ÅÏQ³õ8;═/_ı/>7╗└I╣:#■2Ùñ,Ï-»TôW¯úÁÐË¶¿{¦1GvÃ©a(^×Ñ/2-ù´╬N.╬ÅO.^~||ï▒LÂöm	┘ êÔQZ8╬,Ú
æCøÈcm┌É│±3┐;"*ð=lbøï‗uéNÏË ¢├¾K¥KFÖb\x4)0qI¡╔çí§qc┌a┴Ðg2q2ùN▀X*©¯╬Ü¬┬dX^|?ftúêõRx©Ã║þ"ÍePIX¡»Îä~&ô¸ëÑ£╝Mƒ╠,ýv¤-¤╣¤_£º/Ü´Ã╠Úî	Ôtª@´├4ÇA▄ªÁJtP:fcb╗å7:SO÷Á	C ╠³Í>|è,}|è9| Q´¥K┬7éJéÉçHô┼╬¥2¥Ñió[f6Ï¼Ü¶¤Áï╗À¥ßÉ3E<ä@Ì÷YPMÌ3¯C
Ð(ÈTÀª(Äè╠²═╚³YÓ×#ÔøÙ■pùNí(íLé­qt^ºõ╣íÚ½·!;_$=²F\‗ Ò-Q[å7öN░ç0░'k│î"Á(ª¬Ù½9k·pnç4■(┐¿R▄Iv7¬z┐|%ÆG-²°LåC=Ó¦_@)·è)".ó0Íöp¡2ƒøgc®lB¬k'Âó8tg´╠FçPé¯Ô§ı¨x¶qw╣N÷┘Õ;¾ð×▄╬6Rm!txE9úó ÎCÅR"2┐┬¨û
Ñ¤ñïïÄÇÀCòÁ=¬âªÛâ▀ð¦#HeN\Ý│3;╝yößØ*Y¸Û¶è>9-oW+åêoí▄2©üI┬=─┴ÏUPêó;À1q$ÝXç%k┬¯Âg¦òaîòÔ╦­Ú±│#K×O»╔y═ |U▀x:└pïÈí
wÄ╩£pà2Cô6Ð@cÊÂ¡æ╦╩Ç³»t¸­-N9WõÑ┤cº¼\Í±ây ~>ys¶°/x]Å╣┌ÆÏ├╚R[
SRÑåõØéCÂx╚ªrMıW<³¸å ┼F)ÆÓu$³7W┘°µÆ]i▄ƒ·´
²úßCAH▒¶0╚È£.vÈ8¡╗0Ç>krÌþ-¦WÀs<«Ü▒Ù¥0╚­Z3Aı:z2│¬û¿h├h/┴ßêàñå h`Æ¹yÆÅM£Ih³─ñL&c*┘Oìfw┼°!DäËì╦aà1IµÜÍðemÐ┌▓┼$I¥?cBBrF<╠Ç_çjÄtCqJlÌ6yûurHã$ú¹JV▄9üç9ÿ:ø¥╣‗þÑÙk¿*Ê2
ôro:µJg╠s_KÖ{7f§ª.Ý0╔iÊC7I┌¶«»²rÚP¥┼rÒ£╣Þ,▓¾ö¾íÀP-F╚5F	ÛîIÝ┌¯ïã╣»t│┴áBÏ═·¾╝­iµn┘aqøæ9ƒE║▓_.£¤0╩ìÙ! HÙ1IN½Iñé▒╠ÙÇyçX▓'&║UÂó.^╩Â┴ò┌└·úàT¼Ex[4┐N─‗ßz░¶8aÂêMc‗┌qå¿Z½eýÊı5µ}╔F*N¦ðü%░-
)û:î│XÀ±,{g
¾ÈÅÜýQ■ôCãäçhÃåO(╚I2╔xåZÔÃïÍeT?Ñú¯╩?¡+¸¤87§ê amøæ¡v-lôÉXQUÉÉ├~Lùq_║R╚─uÐQÆ5/█╔¸I9┼UN
#NRYOEbé_¡+║%n$â«©yîyncÁæ█6ÃÊ_Ë>¼╣§3%®Ök.XÂ/&£ò!Åb@
Nô^┤ån4ilÙÑ6uV²·\¦­pè s<ÈÂt!Ê▄Víãà╚ãEí|╔:ê²±©ëÉ╦ä¼íhfZøjEëi*69¹╚#▄Y¹ï÷
ît({öüJ½├e
¹f═©½YÖX8CÌáf_0╩IÃ┴©nmXìVö!ÌÜR¸]┐ÍÛ!─┼░7Õá
ñnyúæ Òu-Õ─║$è,m─╠ASÂ ╗ÙM╝EB9wSÇ7&ÜâvÕÏfsh=Ã0ê├NÕ¥²õKW┬PÅ
ð¡ü▀»¢l░üs╠·jZ╦WÒFÝ/ÖHþpU`╗34╚ö®ÝÙDÄmï"l:q╦B¯qq┼╩═¬N³¦Ë▄yL╠█├|¨░ÐW2y÷═EB\_ÝáCÚ÷XN=*AæÎQÐÙ╩¤ã|¦╚┬║æç■\}Ù"qÅ╗+AHBºÛ°óD¤Åú²╔█│■▄▓ïÃ?ÓcKI=╦¾RN├Då6ØHjãJÍñÄJUÃß~o_­ÈFbÀ! Å!0-ä°A(Ù^ç-ÛMK┌~pn╚H#└¹T¸÷qË<┐;°‗K‗@¸n{g╠Ý╠¸(c,─`>:çÅHu?d─╗ÅÅ_┬‗a¬ÙSª[x}èÆð═¿ULl^a╦!KÃ ╬ÜþC╝p?#{N³
ª╬»É$┬c.!ÑAôAyhTXÖ┤Î¡Ý MÃyEê│ ıç}TYám^ç·0Î]¦~·Q|©i┬Þª)▄þ}VWÅ«▀ Dd1G─u█¦ÙÛ‗2ù>>i·æÔº/»ÄÆ c┐¥±m®øó«Þ═ö▒Xúeé2!zj▓╝o:.DUÖø½³º╚Ì5±L╣6³ÄwO¬&êÜé×░ô■IôNÝÎ■ê!;@x╦°║éGî W7Ë‗r`xÇmØÒ╠.IƒãKÑ~¿²ÞåìÌâìJ╔@=┐èâ¢░þ£ÅÌc║Ò´º´▒1╝ü
2╔=&AÊT¥Píøos=å4æ6MµHd2ý¾█╬‗k¤úƒÞ░K®║«ut¦)à¸»ìþy äS±¶      █   
   x£ïÐÒÔÔ ┼ ®      ý   ╗   x£UîK
┬0 ÎÚ)\t█┌¸LËò ê°iU─*©	%¶cmjî¿¢òg­b║Aÿ¦0ñÉ═E5y]^
½dV(3╠O▓¼²LƒêïÊtÅa╗l[¼·Ö╚║Íê¬MV<ÁK=2╦═±Ðƒ▓¬ëò2h█²|¢ÙÂg2¨£╔Ô·zÛÄT(o┌Þô=O╗<▒Ò°N0@­ÓCðQQß0ñ! ¬└CÌâ0é BÛ3Óî┴ƒ·Uî;▀q£7ýk;g      Ë   =   x£K═+╦,╩¤╦M═+ßLI-K═╔/ │ìîu

t
╠-¼-¡î
§,î╠Çóxñ©b¶©©© ¸!L      ¦   8  x£Ñô=j├0åþOº­¶k╦ÌJhíüB3fQea▓$9¸Ú:§╣X¦:EÆ¨yy°~)╝øpÂ┌·X
f2A9übJ6oê¿(Ù©Þ¦ÔZrÐûPB²SÿÁÂù´Úz©aäHB
<¹AàÙ┘êåòPB÷*jƒTªæûÓª.íäZ8=yþç╦ù╩D9ôÖBVö┴░Ùg¡
├h%╣Z■ðb!░sFº░l®W²ÿ6┼%┴[,0!╝ä]v=╠ß>	âç╣ÀggÕnÀp8,à─Ð▀«░7·‗9Y¡nùÈ­µCR«zÖF aØU┴ÌQ╝Ü! @ó%2¾@+Jê├n<sº█Èñ&%öÉ°U8Ò3ëy╬░óäjx2ºe,&3W+YøÙdE	ÀíÞ¢¶Ø      ‗   ü  x£ØôMï█0å¤Ê»ð¿┼╠h$K║,í_╩▓░ºB.èúd;Ù─à■¹¬¥44┴ØÿùþØ¤╣╦ùÒuPþ1ª■ÜãkVÚ²0ÏuÇ;Àk(¨▄░þÈlÀy█ý;kt╝Ã=┬ííáÉ#çHá-ÁÓýÆ$^ÎƒT¸×ãA½/ÃSTg!óı.Ç¾┤ÇñƒºÈ╦"À╦ºaLùºÜDóa¦2äÍ/ ╔Ô<|LÑÏÜ╦,┘j‗╬9│ÇñSVÎÈ½¾ð
òN#Ym\åÉtÔ4²×âÛñ╩0Fm]Ú', ┘èƒ+§²Ù¾z§úR¿¼▀i└¾ K║EÊù+|Y┐V┌Ï¼¡Õ¹îDåÔ‗▓7}ÑI[ªigý]e7H"êoC9Âèë#ÇË▓k#OÄQ"╬!Û-§ùY®óÀy$qyL.²<D-!xë$Vc¸v³Uul■´ │ÎäÌzî▒D#cÛÄÚRSØƒ ├k@
¯.Õ╔ìûR■ëìC¸      ¯   V   x£]╦Ð	Ç0EÐ´fè.ð­^ÆZôY▄+é┐¸r¼Y[═`─░│sVá┬5&‗┘╔▓(║r!3à[‗'=+¦	Ùx╝Ëï®Ö¯╦ÕR╣Z─-      ▀   ╗  x£}VKr█8]ºÓ╠B7■▄)N£ñ*Ä]Qû┘└$│Bæ*èrãsø9╦\lÜ·Ê44bò6]xh╝~»╗A▓Ã«j╩jÛý▒M;÷Ù;Ù┘ÆYéí@©qâ&YH,└õÊKç6R┌9a ┼¥┼í■îÕsSòUhN└└\‗░ÂZKÖ	F═A´q╦ÎýKu \å.f│┼║j¬m▀à¥Ý.ÎÞ	û2║ñû6B íôéâa_ø░«╩ý×áøU‗&ìbð8òy┬3óÃ▓╗]┐ú▄o█f╗½¹ßè┘vKÅM║┴░4îöJñCF *ÓÏù¦:4┘|)ÝÜá▄%}·]Äç¢V>Qt)S└┴│=m¦«^│YÛÎÝ(ß+Ãì‗0-Ý1õìºr(┴Q£J;u▄f]¨'EÑÔ$Q┤ãñ╔Êà┤âvÏÎµà █.¹▄¥─«YÃª¤f+·g{b­
ß┴ÚôfÓF╚░P║ øôÜê0±╚¸Å©ÚÔû0C_¢─þÿäÂÊ{5Æú═P┌ÊÕB®$╦Q5aæ}½BÁmøÚ::#¼KïËÑ¼gÓ8*v¹\┼ev╩¬«·1═■è┤¢'S¨\ÿA¸æúfç¥ÀN<®
)
dàô!®îwñ*╔	}øèèw═3╦äB╬8^K╔ÉBÝH!¿8ÁÁ»MO┬áã5j*UK.┌mb¸BýÅHÜ4╚3×1ÆN-äâI¯$÷æøÌvP═ò;┤ó_ÜLÝ
Ä´┘]ÞÍ{×.F]■O!8{%ó┤4ö║ÒR░█Öh╗ýCh~­╦eUãQ´M┐ƒJi1]gïJS─s	ýGýCUìyätÎÿ░·d╚üÑî-ù╚¥´½He²_b¦n╣¿H'õ,¨/-/ñ&áµÊ░Ã YUMÏfÔúT{z=^Zà³LÐ×ñlçN4	¨B╔¿I7<Ï³ËCÂ	]╚·]÷D║8ÇÔ╚Æ@'eí¸¥Ë5îB>P┬Á9M3
{P|z|=0ÿ┬┌BC¯ìÆúJÑBT*r╦k,Kbûý▓EKôzI╦ÄnçÝA[éG´GÿB©BÙ,9äî┼{▄┼EømIdör┘«Î╗ªÛ_│¹ðäU´þ²z)■Ü ¨{■¹x┘êw¼eï4^,î¨WÇ·½Ñ×Ò)─¤;┼lASí»Ââñ/B9J:ÁÜhÔ_ ÜiQE2ÀVxjåÆv█vøû:I£Âò
╣¬ÅÕ╚ÖË┴~©Ãz%|:D█Áª©eúÑh4÷ÅòN¡]t┌éÁr·ÇA^╣Àãj2▄]³s6Õ2ß¾&mê╬^	þ53▄ƒç²ø§$i§Ë(äFƒÌ<àDÚåTÚÞþ║}2Ø¯&ÎPØæÿJÍÉâîÍ└╚òpBÁÙÃ«]ý╩q'Io»á¦ÉÐjb▄░is└ÒÈ|À╠ê¥rÌJßË╣ô.=¢8ÝÈ?H7ƒhN÷þà3╝i¡Ú6GÒÌøDåıîeJqÜtb▀Ý╩âáSÚûåÚÆcƒl+Ê$ðéKMþ ÔCkÑjçû"åä╩/╝▒ËÉ*mQäc╩±_9þ³?¿ §Q      ­   Ó  x£ìò╦Ä▄6EÎ¼»Ó╠¼Ôø/└Ì	Éda b─îe¶Hm®e└ƒÆctÀ4DÂ}èÑ[ÀìÔË´º"Há M°ê·æóDùM╩Í+mØ	È@@Ô»:<Årè<O§y.k║¹7Vgkö
húm 0ÔËx*‗ù2ìº¨m®r¿Ou¯/e■└oUªî>ôQS▓-V³}½´&Üt6ÿ¬dÁq-N³Ze7]òu¬¾Q&ô-)<·¸	x±ßÞ¡╦┌)´R└ð@Vsõ┐u╩ðì¸Í╝>ááLè1Ýä\!êÔ│╝,;siÝJ6Z¨öÊ╬ôkIt7×fÔ╩=½À´@-■,├Ñ/¤Òü7╬dm‗Ä┼o╦y¬_Ã#)k#Oø7;[« ë:oS}*¾Ñ)╗\╚═åT­!·¸	áÈiöþÑvú³Ìù»e┌ıçy╠"[j´à¦"@¹ ÊQv^ECÚ] Þ─Ã:¶à7ÝiYÃÞ5¦~ËÍg&╗─\áÏ@└S_O‗┤╦┴í6WbÁãØ«+<■ƒ╦â,█°2NÕPÅ▒S³ø	-┼ÍEÖÄ±=│è[ÄëX´yÁ¢╬ù2UI▓Ù╦aà×f3╝ëªüÇ┤°┴¥y%Ù└%þ¯Û├Í█z▄¥jIYÙñ ëÇp;ñ¸ùx
KYÑM0ê─ù]å$y╔r╦═Ù▀@└
ƒN|╚À&╬²¡Y[©ÕMA>j<┌¸╣F@V╠█┐²#tÕe£Õ╣LÕº{ÀF¢¢_70mC91¸g¨: µHcÔ¬_ õcyNÈ(qÜX%m"Âp;.ý{}╣?\»▒³=¡éCoı^╬þ®<¡│yƒéW"‗É($½)5ðvÐçÊòØ[$ ]GFÀ}U╬>ìß█Å*Ïö¿à└`;═6&:ptl 0¶Âo­Q╔ÃÉGû XS2<÷
 ( °N´u      Þ   ▒   x£}É1
├0Eg¨¥@î$Këý¶à.íàÂPÛÑKn_;dHJ▒ÕE<■C┴╔_þÀ┐ ³`¼¿vLß└ý╔2qª╠XdÛ Ãp.■U³c¥ ┬¬│]╩b-#╔FLõÔ^ùÍ¨"6[½CL-½ä$6┘©Gî9JV¿*ÛûÔÙ/╦Â¯:ÓAº-ú1c═ÈØÔÈAN7▀Rvþú°¤'"G5Ú w	╬╣/öOô      õ   3  x£Øð═N├0­s·yüTv>Ø▄BÔ2@Ò║KÜ©hÊÍBÀJ└[±╝!ªØ°·À¡ƒ
ò2s&Eé▓]Úq§à#¡ðáQ!*ìb═O¾ûºQ╬âõþG×ÄúõAÌ_¦èK	ùyw‗bÃàKÝ¹£╗,┼ur5┐┐ì»rØ¸ÒAlnû^²¢öÍRC269h¼Åþ&░╔ÿÍC┤╠5X
`§UÚL¼,┘¼║Ä;ıg█c'©w3ÎQxÆÃYûq┐ƒçÝ±E«‗Éx¯ox{n¸19ùÇZÉ╝;ïtLFÀæYob_B═5¿HöÕóYoT§¼§j~­├#|Úßƒz°³╝÷	á%oÐÖSõ$┌ñ]rí!.¬fË6M¾åãöë      ß      x£Ý]¦Ä█8▓¥ƒBw╣Ú"ERT´┼"3╔ýÿ╠IÇ┼{#█▓[Y‗æõ¯°q╬#£Gÿ;_æÆ%╗®^`¸ËÚ¶ ÿ¯vI³)Í¤W┼"-â■:■ïêH­ù<z╔U(Ôkò\+¥H¡E‗ ë®│v°\;)W▒|Ç─¶Y;┬█ÄXDO§C$ãúÇçYXfaø´▓*t©?,╦bò¡è║╩█0+├]Ìq¿ aÛôqÖÉ╦Ù8óq®D½D£æÊÙX\GbÃ17åq╠÷¼+═÷┼#█ƒÙ,5J¤uûJÑhflp¥#c;3Ú(ÕB¨;Æ▒Üë 8-&┐õ┤¥ÚBÃ)ÎRFh;¢µríUäÅY|jC╠Á!Mñî┐
¡Mèà>¥¨-°T»Ùpƒ5Y©»█éfø5awùe¢ÑÚÜ~
gzë×æJ│ð<ì$gI­j}(╗║
ÍyndíJ├ýÅ ┴Ý█ÂÒ╦ÂËÙH/ö6▒ùLD!ÎÎD1Y─£+╔L­kaB╦X╣É'ºåòôàÖåM─U2Ë0ªcX┌:|ùÙ&°X/ø<,Ù6ÈÐ®ï─I┴\ëî┤┐▒OÅâ¨ûÏ]å?þY┘¦¼2t‗«,║¼CÀ´ÛÂÙMÏ¦õaùÁƒ█­.▒Z¶▄ªn┬øöó]ä?ß¸³KÂ█ù¨Ïðe_┬UV«eÍí²░h├U}¿║ó┌åıaÀ╠ø6lk█ÛÂ¥═øjùWÌ¿ ‗%─‗~ÙCnÜz¯Äß]Vûyw.±┘¶ì║jïÂkiê²Pÿ2.4¶╩?╬^ç<&Ójæ(êÇ─©c▓‗Õø\╚├¸M¢>¼‗&°G}└Hð/û%»~»ÅaYl0ßu]¢Þ┬c}°k°vC?├mn n┬▀Ù%æ¾­┐┼Ûsy│j=R└ù═í║#▓¯EïÖık|Fì¦_├O¯SÔÊ■ð@7rÜºÙÛÊòÃE°jè>óÂûyÎÕ═"Ó*Ó<éõoåI─E³ ëíìôp³X´vç¬ÞÄ/?µ═m▒é1·É´ø╝┼`üo¾ÓmG²WugG╩×VfIrtõº╠¬Ý!█µ─=╚╬*w¾-Ù·3╔┼¬^þnü¤noÛC╣w┘g¤¾d0ðMÖ/éÜ£
s3;e±╣)ëq╝¡└@7Õ¬ÝÜ├╩è´Ù³6/Ù=$Óç|ò▄:ð(?7³.çòÂ╦U7Ã½´4Ã¯åÞ┤■¯Ðù├úÒIÛíQ¶├¥Üw0¨%$eÖ;╔YÆðÈá5│ì8¥e°«ï═&o£r┤ØÉíï╔êè*╠Zx4░«q/WÁ&ëwK+┤oÛmôÝ╬×─8Ä;îJ&úú8àÆi/KM¼Mö>@b<	~¼!ı
®Ï╗¼¨£[¾­¬Y¦]¥Û`‗v°./▄þ5µìÚ0ì;ë6?¼ÙùV░<¹K│ ı#=:ú6ç¬K┤ÄÍû┼EcýÇòn»áhñ7-l╦¿xÓyÎ╣ÕÍí, }È°ò¹u┌àÝô·Yä´┴]Ånø▒½kÞñüZ&Fƒ¤▒L╩hÛl¯æ┌°╣n¸░═V»^Ám¢*└¥Ó'2ô$ÉÀE~À»ï╩Ý;Û³xZ23É¿õeÉ£û├╔L°‗ñ}âæªô®/ïÍd}aþ¹ÚÆE│â╚▄ÓHV¯╚mPCmÂ#%¢CÙØ│¸¢\Ý╚NÖ PZáÿ9û(.à|Ç─x|╩W7U
¼p||VIh8Úïëw)ÅEÛ_tGb░ÔôÆ],Çû´ØÿÐ·£ö2Þ>]¦Èõ/&Íá┴
6EÂ└dèìÔOÍ¹
Þ>,
|´¾¬­kim!qz‗vÔ¨Ó╦╦20zïVX├BvgFv1 ³X╬═JÒ█À╣ı¼5Á┤¯§"┬Ëägf°`R┐IÀ_>ÆWk╣«h¡)9ÚÃ█]Â-`¦Hê_w`=¢ ¬/Jg&ës╠QØ@¤`)ã'╚d÷Ý)²*\¬[d└/õ#H/║ÒÌ9 |·9?.Ù¼YÅÔ█Í´
ÇÿÆ\ÔKµ└LH@Ã>XXÀöwûƒºIÈìÝoiU·b4È┼]Ð¦£┌Zµ0³Ù¾9rö*2õ4gx/ÇË²NËæÿ┴½ı	▄¢╬█b[┴Q>
ßDÊ▒ÆÛk³LHÊD╠¿»%14±SÍý¿¹Å¹ÔX░´2èÎ
ã_Qo½&çá■3¨\ıw°ü┐	ö§m>ÊCÙ¢ßi^a)´n
­‗ÝïØÁpÍ
æ¸╦
╗@ÑMvgü═ÌXƒ╚É¶CÏÛMwùæ3¯ßI├ð‗╣i'~;ýH/ÅJ8▒Wo*R╝o;â®H╬/(ù1ú-û─{╠½l?═■iaX\äÉy5─ËÇß§█ë┴1N╠ãoøMAÍ½Uw ▒'I]kÜâu▒ÍjòY▒sâ░s┌ÈeY▀§KX╝*há┤╚y¶ÐbıøóÁZ¥╦Iè6y┘úkñÞÐïåêßP¬║¡¸7âïPÅ!ó└ÞçÿÓ╠~SvÓ▓>{┐²z¤&ÞC¡µÏö─Ê'Jë!ÿõéÜ«¤OØ]└£Oÿl┌M¢ÁÐ┌ûÔðÉY╝╗üqü|,!äp;ñ¹¨ù}I+
#Q¸q╦á!Ù
öV1pÏ▄`ò  yÇ─äÒ'┐~Tf/Ä╔àªåGÌyqí╚°¤ôÿHâƒ¡{}àIaÏ _ÍáûG"ÆdÉþåG:§kÿ#1L´Wø}┴0>vdùÀõyÌ┬öB┴!yÅÚ,Ù8léÃõ╣íýÑ═¡8ì╣:AihÍ.kÄÓ>dr¶à¼Ôå┬ý¨ü'▄Ù1ïy­ÒjèU■ÆoÐ├4#§Õ³PÆhT─	¬p_rK/DîÉ╔omëA¢╔│u8 û;¾
&9T(Nu¤▒E¬T>Dbq|v┐GX=þéN╣ @%)óÈÛ³bÜH,û┴$¶À²+eùü╩mè°miKô°Y¯H,VüKlwSå ÚUì╣N)w=77iÚ)Ä─b╩õ"2ä├ÿF]oHÞI▓o▓ûdî-nï5­Z©╠VƒÀ
╠Êzî;Ç^­<wåÃbBàÄÜùÝ¢G‗ª╝r‗C©æê$=]ô÷Ä*ÖÁÿ│VSF-║õòk└Â|ÏúwN.A»┬¯ÂþÝBò█m\69 Yù¹sá¸Â¿aÄ¾
ƒ_ä¤
░¹ ºçƒäç╝ë{]åüHññ,Î³è&B¹Êë!Ô:üáH╠
A0H7D(X9L░EÉÕ #┴░uQeM/╣²_Ã■y½C\*DÁÉ4Î2æiÛçÄ─b╝ü9┐6f«┐.ãé^$iË«Ù▄└M¼ä/e6ÉX£:O´╦╗[¨(*╚Õ|ÝXH░'íæ§░┘-¢Âs&îî×§Gù:ô┐ÍÃP©4m±,ðr║¾KÍ`▓çÀ#¼\ô$┴ıÒòz®&ykGýHa▓ 6M×OÚ█ÔÍJüKïuM)‗║¤=-hÙ<Ä╣ñ²Ë.*╔ì÷╦½#1╝=	b_míÍX¹xÛ®═¹ÌõÕÌ9▄I÷øûöåoP«¹ð|´ý1åÌ[æ!U2╝fÒÜ×▓$3Â▀6ÎA³ÜJ═$ÚaÃp2/┤?*îÍw°-ÁN³ÔÒHxÚCÌ┴ç┐YÐÍU­╦`þÎ}░=-En█ÐÕ═"vnýÄº'1%J╠YµYC¸n8M░Ù▄¦Ã1░T6yHiƒ▀0J¹1aXý▀2Kvo$­X=£s®G½Üw5I┤à@õ¡¿Ã■[/±ö=:×³eiAVÍy;Ïf=║¹│Öç╔¦{ í­%,‗Ô}J/´¥£Ê]8<àqm┤ÂbfëÁ±C$&E0╔8LÂ¥v saæ╦ýðæÒHLãCóºø¨┐┴╬┴M46ÿ|2Yjc"╗╔─/ıVÛka▀┼▒╣dþö─ñÀ¹?f%Ç┴ÉÐxZ®KÏzÑëíñ▄,│ÊõÊÙO(L¬®ıÀ╣¯│zåù╝ä¡É:òö▒ƒ[Q®°¢d┘ö─õ$`@4½µL]ƒÒÑÉ
½┌¼¤íÃÓDh<y┐°ú#íZ}Zö▓Ã:;,├»§yÏ┐╠¢═ª9)╗┐þ]nAðê§─ñÚ#J¤▄Àg®;­ñÀ─©╩├╬║┌ª^┬³{╣äæQüJ)223┌æò^µ)ë╔dõrÅ, ¿2├▒Ñ2:%#ßƒ,I┐H9ô&p┘╦»æ¡OiÒ6í┤ıý 9B.┐:8C²÷ËñÂÚ[┘íâ$ã<E©Q▓└;┴$è°e‗cJb*ÜngÉÓqd@0?eß█▄Ut»äqJbè╬ìÅÙ¹ñ6ÎDKcöM:╬­╚─‗^e═ö─└aÃú
}ÄeO,#`¦L┬)╗_úeØ÷Ùé#1Hëg»¨qy
wäÔû╬╠SF³^╚6%1%]RgR╦}*]■>Æ:ö╚ÐFZ½0ÃE¡ö▀*8─±l╣Å)‗ºë4ê#¬@îhÎ┘Ã®8÷	GbJ´è╩r®Å┐i│▒dÆ*gÿÃ#)³ÆÞHa¹ÙcòÝèıà©§1╚Ë7¬°Õèî·<ÃöV~3þHLM╩Lc■█ª╦ç.»┬╝u{>Õ±4G ZWèà╔nÛıíÝ┘ )XA╝‗ÂOÛTß▓B	»└Ùƒv{╩W÷W°¸gh═lÂñ²ÚuMK7q_d÷¤À│²×NtYÏ┘â╔Ë A¿®ñéqY<Ðs Õ®▀ıY
â(×¼┐ì;ÒÅ«,Ü
\b(Ä▒g║f&öÿ{█╔SËQ­CV}÷*|+æòÐ±8r*¢SıæH┤▀~8Ë|╔╝¨Æ»nì²6m?ñ	Õf"Ø&"ÜÖ╗%1¦Î½©¬cÏOÀ╔g3╗%¡¯‗Ø¡└Ï¸w0Ò$öeÝÛuv┤É«ãSM}þl║õå█3ì■q%QÜ╠ßHLƒ╬ß|ª
ßùru^s\<Ð■Èä#1-Ã╩Þ├×ûÁ├ë├~`¯­	*ïù_Íıj│êðõöù├ÈI±×!Íf[èòÞ3¸[1°╗ý_¾Â-í±╬å4¨‗░¦ÊÃ?üli0Mðõd9█!█ÛXLóéXq ÑEaVnâüýµ.¤·©p(ûÚ┌╝▄Y┌]¢.6öã│f­ ¡]üe?┐_·8ÎeÌVyï┼Û?(▄8ìwê)Æ{£¦¸&¿░¯7¢L×æ,«
.ØF÷╔YïÁ(îl\P¿Â╔ÜI±ÍEõzÐ°05Í
█┤ı×¾┌C5Ç®Ul?ðNî╩´²ëiE®)Àí·ok▓å7àêãñ╔■üÿH╬i▓#1H­┘I└I1╔W¦NÆæó▒═Ä=µ<÷Ùù#1="╦qs iXHq+b Î  ù{¸Ä®µAâW}ÁF▀àM³ØÎo<	&Q¨╣NtjÕå▒QÛ!Ëi­ÌÑ ╬¤ê┐Â┴─│╣■÷═5òiSàòuÕ3▓áÕ·üÿ#▒$½│|Ñ▓O+êàE6ãh*Á¥w╚E┌;)ón╠g£Kx0="1@ú_q=ÌÅ*0¢+╩3║\|Q┘ ÒÛî `eÌr╔hqsÕ©AIOùÏ7ºfåÿvVC4t┼─e[ô■X═\Bƒó'╗)%»ý±é┴┌<)ÕNZ:î1ƒà
6}\Rq4õ?õª¦,{┴Ã?M┬cƒ$ûêI±dO■½zihLÆP	íÿxè ¤uKÔëà¢­Hôy|+!-LÀÎ¸ðIÉ│y██iD┤êÁ1i· ë%T^╚u:C;f├×È]ËíEöðÐþ9f%*¢8tuNbêá╝ürÛºî ú┌▀Ç-áê¼ôÖÖ®ZÎÉ°4$µOÃîƒßÃ7?DhÖñ6þÚ_}+àÉXÆ©4ð4nCÃo¶Z[┐)tb´µÜaèõã­H,1┴»OScÅ?5cí,Úù╣Úq©ƒôXÆN­└e■ÎÁå╣<Z5ÃjÂôëS-N>hVÏÕ_:┬*V▒2XKwÜgRû5VçóÃ¹w-3üþÕÐ-{þÄêòY█÷fh{(3Æ`¾ §■p C+m╦CQv«Þ,ÚnmÞv¨║┴║├Ì¬┌üv®ÞÒ«Û~û)?@b&Û¢ÃrÆGÕ_Þ£ñ^Ë9┐┘YÛö¹qç#1(È$m;=3¹|═{═1]Eh±´ËEó┤▀ß;âi?/Í×IÐ0╠ÍsU╬#¬╩ë'ÆJ­.vÀO½ïÞF?Db&÷ıY§á¤ÑÀcÚ-*e"k▄µxjb■ë┘▀T0▒k¤'ÿ¦	f°>I*ñØÒ»Y¨Øç#1ú╬:#ù ├cè"└╩ÃtØÑÿÇÆÆ¹qÆ#1─Uþ§Ú^Üg5ø¿ƒæ┤¡└gY¡#¡²░█æPÚp¬zäJ¤«Ù±©.Ó){┐Ëý"'\·1ï#1cªW‗Ø2. íó¾Ç¬Úýe─æÀ¸õ─»ÞÄ─L:µßçZ╝ºò2Kü¾Ò(÷µµVñ"±»¼#▒4▓'3VÃ■ñ█y² cÅÄ)'áS┌×ÕÇöæ÷ÒqGb)µ`÷¸Q║	 MN¼▓¨Ý╣ë5O³V└æX*1‗▄Å|╬ÈºÑât]á1´═1O
í³Gbi▄ƒÄ:AæþËôÍÚI.$Öï¨┼L(÷ÿ'▒TN»┴ÿƒ³╬v2à=û'ÞJæÖMøTãQÛWGb®║╚ç\ý	¤▀╩å ┴ièagÖóÆX¨M¡#▒T7jÄÊ§}8**¤0÷*@1╦¥D¬Ö
UGbi2¢Ï■¥»:Ømy¸!─õ▄Á6ñå>]Òï(Qùg®╬I,5ºýÈ(rOª.,I╣ª║░9÷ærƒ░
$y;]1╔Öƒ£¨wú£1W÷ÿ§+yñìwoe 1EcØµEEÔx/█W-c1A£D÷ûÙÑíô$╠é╗MXçÛåÓ¾9┐t×ãì╣îi[wÄ¤"Nıƒ-	|þ§┴ÙÎ¡Iå÷SM ³­S┼}Ä| a°r‗ıSËcà	}sQD┼Q╬M:ıÖüñ°"Æ«³þæÜ|¹È\3Z®ià¶┤·n/ëfÔÓS¦ee ░¦╣` uP■&#
ñl.I‗ÜG4ºoÍÔ@╩ô	¦¾ùæ
EDÑ_*]╚Hî¸>ƒH╔5O1}±ûA3f:┴Öf NºÛ­╦fÆTƒt­■Å ª║¼u╝╬[`ß­PeßÌ}N╗/▀Ûa¥ú-þ,¼¦oê└v┤«¥"!áÎYþß¬W╣²Ä«óé³├╣³/╠74£>ºµ;╝©╬~ñÊ­É@+Îx{Wlk
Ë┤þÀåqbã│º'Æ╣ûrØH÷¤cý  ¦░ûÄ      °   g  x£Ñù¢n█0àþÙºð$É¿K┘#i8¿█Ø║▄╚¼MÇ%JÛðÀÞ┌-cEA/ûCw¸pÁp­ßÞ‗▄├├îV┴┤L®TeWYzÑTÆı7Ö║╔ÜÙ║VE▒╝­ËBÐûâq▄·A╔Úßy4¤ú&%$tgô õ0Ïè1%¡▄Ó­ü{|N.ñTQ╠ã╦K┌¨ÍwãZ9úª§æº0ÄB╚hh
▄MobDûÊÃæ¹Í╦	¥─sÃTJ	
â╔9m╝5Øõêéz╦╔^'[îcd¬ññÆ6¥OVn»{9ñó¡|hgÞXÊþìï/fÈ¶ò]ù╬/Ã4g╠¢ÂªËq─½Í╗û3ª¼R·ãÂ├·ÿ^.LE´r╦O#ÓÊ^ä(¼aÏcÈ:░£ÆË#ønåîéÒÇ¤®$åö±ñ├çB*┌▒EF╗A╦!KZs{õ╬#k)!╦a»█x9(&¡à£hY)$Oíf─-ÛìÃÄhê|1B!-ç9*‗x─'1á@»ß©u©ÇäêÆnìOnºËHàâu¡¯Z3¢╣£%Mã'½g óYÃa:Aå©¿5õP£½öQ£ôuo~Fq▀╦Þ╗(CL@¬ì§Ë+eÊÄUáXv¿GtW9ªáO¢╬¤@öÞßA4QÐ╩¶Ë+ý!¡jEı╬ËïKÂüç$ÿıø#ƒrJCÉåß<çx}èYe▀ËK­\Jóu╬Ëû÷┴2├&ß®¹ 'ÕE;úCê┼Ê&¸úã¢*çÕ4²ÁÜnrÎwÿû¹=Ò┐_/ïw_¨
$      ÷   g  x£Ñù¢n█0àþÙºð$É¿K┘#i8¿█Ø║▄╚¼MÇ%JÛðÀÞ┌-cEA/ûCw¸pÁp­ßÞ‗▄├├îV┴┤L®TeWYzÑTÆı7Ö║╔ÜÙ║VE▒╝­ËBÐûâq▄·A╔Úßy4¤ú&%$tgô õ0Ïè1%¡▄Ó­ü{|N.ñTQ╠ã╦K┌¨ÍwãZ9úª§æº0ÄB╚hh
▄MobDûÊÃæ¹Í╦	¥─sÃTJ	
â╔9m╝5Øõêéz╦╔^'[îcd¬ññÆ6¥OVn»{9ñó¡|hgÞXÊþìï/fÈ¶ò]ù╬/Ã4g╠¢ÂªËq─½Í╗û3ª¼R·ãÂ├·ÿ^.LE´r╦O#ÓÊ^ä(¼aÏcÈ:░£ÆË#ønåîéÒÇ¤®$åö±ñ├çB*┌▒EF╗A╦!KZs{õ╬#k)!╦a»█x9(&¡à£hY)$Oíf─-ÛìÃÄhê|1B!-ç9*‗x─'1á@»ß©u©ÇäêÆnìOnºËHàâu¡¯Z3¢╣£%Mã'½g óYÃa:Aå©¿5õP£½öQ£ôuo~Fq▀╦Þ╗(CL@¬ì§Ë+eÊÄUáXv¿GtW9ªáO¢╬¤@öÞßA4QÐ╩¶Ë+ý!¡jEı╬ËïKÂüç$ÿıø#ƒrJCÉåß<çx}èYe▀ËK­\Jóu╬Ëû÷┴2├&ß®¹ 'ÕE;úCê┼Ê&¸úã¢*çÕ4²ÁÜnrÎwÿû¹=Ò┐_/ïw_¨
$      ¶   @  x£ØÈ▒n┬0Ó¨‗~6P[╚ðF
jE+─ðÕ▄ÈÆ▒SÃÝ█0v`Þ3°┼z0týp│Ñ¤º ~Øä"ÿ┼ºx┬`Â>"ýwá&JÄõdñöÉ¨J¬ò\Ä¾\═fï×2/░Ã6ØíbS(\¶oÏß@úT\fE─ÅWék╠í¶'sl<T▄H¯`çÂºT╠Óüï,`úc­¢À&óCqðÔ]4ÏyÏnÿhÁitêx­A▄kºZ▒Í┴a8x±°`║╬©v▄¶û░┴ôıp9üÁ±M║°+┬V$È(èÇº]║P!÷\IAÝ▒ÑüÏ│+!º7ªªÝ├E¿ÓfH▀Ä╩` ÍWb░DWM:º²u{+±Ï{ù¹Ð£÷ÏíÁÞ¶@wé║g)NË9─ÙÚ(▀ìıÄ«{C»Ò,╦~¢¾©      µ   E  x£}V╦r█8<ô_17_dIQÑ=l┘øÈ«½£d╦╬e½÷æÉäÿ ┤┬┐OáNd┘eï"^====(óOLÆ0Tk±╩%YEòµ╠‗?Þü^ñ┌Ò▀øfáF¢‗Ë8┘ØÉ[ôðØ¼i┐
ºçøûñ▓┤U¬&f®cBZLÜ`sÂ¸JS█QM░màâ¸Z`+ú6v¤4Oópö¦Uxª╗║R½ÖU:╩Ë¿îû°═Ë<╗═Ê█<º,_┼j:OÊYÂ╚╦+C±,z░.J¤¯8B2ØÆF¼E#ý@jÒ▀6Ln{Â§Qnö«xÑQÛÞ®R5ƒð║Ào'øØÛøÜZ÷ra>u╩Óÿ▒=!Â█Åã:‗>p#ÂÆÙ¿(Ë,*.âƒ¤è³┌P<Åh═┴]jv, ÙzìS╣ï¬Ä©'.
g$HõE█ëïq═iÃ║nHÞ×^ôÆ.½&ý©ÖðS┐╝6┌┌¡±avZm5k[ÑúTIÞ█×Í­Î╦ä▄ùFÝ

¬¸┌Q▓ÔÊÕöçËxÉ┤GFÈ¾┘µ┌╗rcJ└G²ÕÎ7¶▄w\┐
q╦(KúEö]ªj1╦þ´¿├┼ïÞ×W¼ö9L_{Ïv
À\║¾±^ÚaBáZ^³êÓ0§÷0§$'´Z¨┐ö[Q¨:ÙÁ[	n╚█q²¯&Am╚úZl6\#vá26í @Þx─"dù├[Nç┼Ryÿ{&¡q┘}38åV╣·{Éûkë|(Ú(¯x%Xâ"î ├9~º■╩e1Ø]è╦Þ±└╦(&m<&)╝	ÊÕz├+{$ í»;>gé:└¯Ð0õÔµËp"Bù{ß²FNrC¸ DÏC▀zöBÎ└áH┤ç=├┬~C6Gì©î■ý^┌ÓyuE2u┬■┼´Kh=mô÷«T└â╝╠}┐ë£é<~[┐â/´9m8ovèùoÍÌ×Åo>+¬$║½*ı{k>Oq6Gz╦Þr│4-╦╦EåÔ%¼¿Á╝AxJ┐└Y¶╔0╝ô(àÁå┤ ‗¡╬!<ÓúÊQ+¡ZjAãg§Â▓Í³Ôv╚<Y-°òô█▒¬Z6`»gaþS %ð ½³Þ▀¢Ç«^Ô	┬Ú[/<¡ÍPµ@ BkJ┬Ñð]·ãS³AhýøéGyø║\DYVªÕ¶╩Pî┼¤¬àÅ┤▄I]┴+ÞáÎjS7╝»ı¡´9╩y<░âìMPã¨¿¯%,¦âÓÓ┬B{│ÙQ²h┬║`ð$äq¨÷¤└úúÍîàÏêùðs&ß±³ª;'	9└EıÄ}J®$zõ¼ª3ª¯Â╚zTñ¥%^6¾l6ƒ^ë│,‗uúqÛÍøÏÝÑGÙ@/┘ßéâ0Î¢lÔe─tìîïèÝ■.I¶¨Óüƒÿ~ß\¦│▄g±rg╬┼b±■Hî┼º×]╣KêAç®\3¿¤p╗kë¸ÑÒ·Rpª╔±
ËiÐ2=Ó╩ö­▒0~┤­å¨ GzýÚ^¥'┐e║,»
┼┘4zãë÷É╦^Í(S9åÙác¢ÆÚ±F5~ã¨º╬=ªyÕH‗eO╔ËrÂ©\a(╬#\Ñö╗p$¨¢ç)7█^ ╔-ç¥÷³Ê¾Ã/©{}ÃÇV Ýr╬5Ê═├ý?¥8ÞxbFy║╩û½,KµE1øÕo└½t╣╩ï$+ªï<×Fƒy·¡▀2j{ÚHhÖäiÞ¸NÔ╚=+g└▄`dÛÇLÆg½YÜ╠‗Õ4Ø■$╦Vy×öïY:/Ô ô8Ä&È│K      Û   ║   x£}ì╦m1¤RjÇèñD«èH¥Þøï▒¹ç7Î ±╗╬├Lt)╠Ã¾{Ì´§ßÆ├au╬j`¿
ÊzøM┴Vƒºaý|è╗}©Þ╚Räê@)û┬vêÖ]Å æ'ù~vÁ╬ıuÈípÜ"╚ý&Öaõî"u,u‗G*II|0×ñ¨
‗ý¥vx¯>¸ù%÷ÄqõTméÿThm6X=1cù■µ®`,óÑñ³¨█ß¢┐J      Ê   ¬   x£UÐAÄ!ð}fBU¡Ìe¯Äßg~+¢"/
2D▄µ┼NX‗°Dr┼s
!#Á:çÈê;ÔðæÓß2N«ü|q£wï$^L=ò©ÌØ‗|LÐ9¢I©øø«±®]¬ûS¹pIBú┴}yéèpº▒O╚;┐=#▓ÔÍfRVú|°Ú╣│>/▓Õ:├/ì+¸┼èƒm³■\Î§0ób?      ı   ƒ  x£¡VÙN█H²m×b~TbWÄ´v"¡
Ñ!BÑPU¬&÷Ï×─×1×Ö8µ¡÷÷┼÷│C.önwæV▓`2ÎÒs¥sã¥&1ïJ|TÒös=õ╣÷╬┬´LÙ]>c╩eUM»öª¸!^¶/u}Ô3¸N:æÑÃÃq<<<åsn°E¶Ú¶Ti_»×╦░╠CË84]d¢÷┘Ý│ý×Ò÷lG´:ÂÕ╗┌i®ú×æ34─ßÃzA╩Ýfø'Ì6ç£ßÉkþQüùHªòD£	:Ñò5Ôq█øaû(£$9èyöpíî¾9e	
yDðT╔ùôE╩Uí¤0\└1ÐÁ.0#XM«áÝZN`ø·[╚│î2±Ü\í╠■¦âmÊ┘ÁÕ═§┬y,úBÅ½┤ÜÉ╩Ä¯}┬Ýïá8×<xc ËtY/·Êz+╣«xªa[┌Ç0åüV&	Üö·¤y=╬ªÿQ¼MxN$═ë@ßEFð8Äx┼P!êè°aKçƒ© áÌy├5û/FK┼èhIBÖı═\ ÿû@`^(IJqÇ¿hJääû`¹áÑ|ÅnÈ┤F▓ñp46I(Hðl~░j¯Ð×┘£úúÙZª
×\üÙıáÛÁ/*S}║ZBJ\F³[èsx├úö╦ËlW!B.&õnL<SƒÅ¢°─ÏÅü«øùA4¼û'¯▒¸$è┌.?£_Eây_ç║2╚[‗t▀uÝåG ]╠g?ùgÇiêÁ?Hêò Ù┐UÕ¬4sxwIóÚþe}Çx	¿iã9[O=\O¦|Ìïx¹»]
‗ç8ß@é¿Y	▓`pZ
X iôòÅÇu║Ã1)	ôÇJH=pÁ>beAr░R╣Z╠x│érmá(yRÔ³┼L└QþÇPÎ.Ó/fi]-┬%·#IÝê|y*▄¥ õ/G╔tÐ¢ÙTíã╔Ý(7¾┌áà╝└ý┴;w╩©{¸©─¾ø¨ø═ÍM#p║¥÷▒-1ÈÃß£H¨sQ'_Ó9┼ÞùU¦ÉBM3■
1'õZdë┼\á¬QßÆ4YåRæ	┼m▓─ì@¥─K ;Uå%S@Få\1┘P╬T>¾!┴█]j░╝
õ)Tûí ├éq╔söÎ GB»┌]Ðñ¡ í Ô3Ýûd*┘║═Ë@®Æèúõ{AãEÂ╝║Ò┬1;Ò│ÐÚqzgÏ¥║▒ôøÿìî┘²-Á¹ô▒mM°E¨¦┴²°:¹cÜ×c{┌ .üN░Ç©Bºw├æDEPVùkoDDðä5¼5u┘öÕ¬ºe6î!Ô6&ðÐmJÛ═L░åómÜJhXoMG┼z9D¿|m}²íÜ\▄hªáèâh¥¥Çv░ÓWH@»þ£h\K┌¬æhuÙ¡µJ[╣uï}ÈÜ»nÉüßÎùL¬Ü4m «¾áó2]eýï7G½êxÁ>ÕUS╝1!RóÚ|▒÷pw╝J)╝┌│§¾å¡OYD7Ueiã\─│2»┐Ö×Ý«g┌┴æîº¼ÊæÙ"╦F╬Ö9¤Õ#>ƒ╬Ki[sÊ¨Éã}N▓█°bVÿbv}~6<¾²╝­¦·Ef#ËÝ╣~¤t╦vßúÕy╚<4\dZ=ÎÙ¥Ïûþk'©õ:╬HH┬(Ä1×b¶╝▀o«Î§╗ü©û╗=Ej1╔©Ê¼«8¥c]▀sLSKÑ,zØ­Pñ·zVÒó╬┬é¼Ú|7┐SðP¬Æ╝ùuA~¤pÖÝå░ä├à^#AøÇh£KÉéoéPAó║íZæ)ÍÁó└²╔│t╬Æîê
ßÇ▄²┌─ ┐åÅ╠n¤0█oB¤q
o├»iÂ³Ü=╦ÈÎ´vm¡PðPð'tâs.v┘
³└qØýnm
Õ{ß¢ òæÝ{_§¢¢¢┐õ#ä╚      ╩    ¹           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ³           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ²           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ■           1262    16639    yopituteo_development    DATABASE     q   CREATE DATABASE yopituteo_development WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';
 %   DROP DATABASE yopituteo_development;
                postgres    false                        3079    33006    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false                        0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    2            ┌            1259    24869    action_text_rich_texts    TABLE     6  CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 *   DROP TABLE public.action_text_rich_texts;
       public         heap    postgres    false            ┘            1259    24867    action_text_rich_texts_id_seq    SEQUENCE     å   CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.action_text_rich_texts_id_seq;
       public          postgres    false    218             
           0    0    action_text_rich_texts_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;
          public          postgres    false    217            ð            1259    24781    active_storage_attachments    TABLE     
  CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 .   DROP TABLE public.active_storage_attachments;
       public         heap    postgres    false            ¤            1259    24779 !   active_storage_attachments_id_seq    SEQUENCE     è   CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.active_storage_attachments_id_seq;
       public          postgres    false    208            
           0    0 !   active_storage_attachments_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;
          public          postgres    false    207            ╬            1259    24769    active_storage_blobs    TABLE     s  CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.active_storage_blobs;
       public         heap    postgres    false            ═            1259    24767    active_storage_blobs_id_seq    SEQUENCE     ä   CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.active_storage_blobs_id_seq;
       public          postgres    false    206            
           0    0    active_storage_blobs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;
          public          postgres    false    205            Ê            1259    24799    active_storage_variant_records    TABLE     Ø   CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);
 2   DROP TABLE public.active_storage_variant_records;
       public         heap    postgres    false            Ð            1259    24797 %   active_storage_variant_records_id_seq    SEQUENCE     Ä   CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.active_storage_variant_records_id_seq;
       public          postgres    false    210            
           0    0 %   active_storage_variant_records_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;
          public          postgres    false    209            Ò            1259    33185    administrators    TABLE     ù  CREATE TABLE public.administrators (
    id bigint NOT NULL,
    email character varying,
    password_digest character varying,
    first_name character varying,
    last_name character varying,
    remember_token character varying,
    remember_token_expires_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 "   DROP TABLE public.administrators;
       public         heap    postgres    false            Ô            1259    33183    administrators_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.administrators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.administrators_id_seq;
       public          postgres    false    227            
           0    0    administrators_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.administrators_id_seq OWNED BY public.administrators.id;
          public          postgres    false    226            ╩            1259    16648    ar_internal_metadata    TABLE     Ì   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    postgres    false            È            1259    24816 
   categories    TABLE     Þ   CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    active boolean DEFAULT true
);
    DROP TABLE public.categories;
       public         heap    postgres    false            Ë            1259    24814    categories_id_seq    SEQUENCE     z   CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          postgres    false    212            
           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          postgres    false    211            Ú            1259    33259    comments    TABLE     ¶   CREATE TABLE public.comments (
    id bigint NOT NULL,
    content text,
    user_id bigint NOT NULL,
    order_id uuid NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.comments;
       public         heap    postgres    false            Þ            1259    33257    comments_id_seq    SEQUENCE     x   CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    233            
           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    232            Õ            1259    33216 
   conversations    TABLE     ¯   CREATE TABLE public.conversations (
    id bigint NOT NULL,
    sender_id bigint NOT NULL,
    receiver_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 !   DROP TABLE public.conversations;
       public         heap    postgres    false            õ            1259    33214    conversations_id_seq    SEQUENCE     }   CREATE SEQUENCE public.conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.conversations_id_seq;
       public          postgres    false    229            
           0    0    conversations_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.conversations_id_seq OWNED BY public.conversations.id;
          public          postgres    false    228            Í            1259    24827    gigs    TABLE     à  CREATE TABLE public.gigs (
    id bigint NOT NULL,
    title character varying,
    video character varying,
    active boolean DEFAULT false,
    has_single_pricing boolean DEFAULT false,
    user_id bigint NOT NULL,
    category_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    province_id bigint
);
    DROP TABLE public.gigs;
       public         heap    postgres    false            ı            1259    24825    gigs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.gigs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.gigs_id_seq;
       public          postgres    false    214            
           0    0    gigs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.gigs_id_seq OWNED BY public.gigs.id;
          public          postgres    false    213            þ            1259    33236    messages    TABLE     ²   CREATE TABLE public.messages (
    id bigint NOT NULL,
    content text,
    user_id bigint NOT NULL,
    conversation_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.messages;
       public         heap    postgres    false            µ            1259    33234    messages_id_seq    SEQUENCE     x   CREATE SEQUENCE public.messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.messages_id_seq;
       public          postgres    false    231            	
           0    0    messages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;
          public          postgres    false    230            ▀            1259    33118    offers    TABLE     7  CREATE TABLE public.offers (
    id bigint NOT NULL,
    note text,
    amount integer,
    days integer,
    status integer DEFAULT 0,
    request_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.offers;
       public         heap    postgres    false            Ì            1259    33116 
   offers_id_seq    SEQUENCE     v   CREATE SEQUENCE public.offers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.offers_id_seq;
       public          postgres    false    223            

           0    0 
   offers_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.offers_id_seq OWNED BY public.offers.id;
          public          postgres    false    222            █            1259    33043    orders    TABLE     ║  CREATE TABLE public.orders (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    due_date date,
    title character varying,
    amount double precision,
    status integer,
    seller_name character varying,
    buyer_name character varying,
    gig_id bigint,
    buyer_id bigint,
    seller_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    request_id bigint
);
    DROP TABLE public.orders;
       public         heap    postgres    false            Ï            1259    24852    pricings    TABLE     @  CREATE TABLE public.pricings (
    id bigint NOT NULL,
    title character varying,
    description text,
    delivery_time integer,
    price integer,
    pricing_type integer,
    gig_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.pricings;
       public         heap    postgres    false            Î            1259    24850    pricings_id_seq    SEQUENCE     x   CREATE SEQUENCE public.pricings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pricings_id_seq;
       public          postgres    false    216            
           0    0    pricings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pricings_id_seq OWNED BY public.pricings.id;
          public          postgres    false    215            ´            1259    33780 	   provinces    TABLE     þ   CREATE TABLE public.provinces (
    id bigint NOT NULL,
    nombre character varying,
    region_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.provinces;
       public         heap    postgres    false            ¯            1259    33778    provinces_id_seq    SEQUENCE     y   CREATE SEQUENCE public.provinces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.provinces_id_seq;
       public          postgres    false    239            
           0    0    provinces_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.provinces_id_seq OWNED BY public.provinces.id;
          public          postgres    false    238            Ý            1259    33698 	   provincia    TABLE     Õ   CREATE TABLE public.provincia (
    id bigint NOT NULL,
    name character varying,
    region_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.provincia;
       public         heap    postgres    false            ý            1259    33696    provincia_id_seq    SEQUENCE     y   CREATE SEQUENCE public.provincia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.provincia_id_seq;
       public          postgres    false    237            

           0    0    provincia_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.provincia_id_seq OWNED BY public.provincia.id;
          public          postgres    false    236            Ù            1259    33687    regions    TABLE     Û   CREATE TABLE public.regions (
    id bigint NOT NULL,
    name character varying,
    region_ordinal character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.regions;
       public         heap    postgres    false            Û            1259    33685    regions_id_seq    SEQUENCE     w   CREATE SEQUENCE public.regions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.regions_id_seq;
       public          postgres    false    235            
           0    0    regions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.regions_id_seq OWNED BY public.regions.id;
          public          postgres    false    234            ¦            1259    33095    requests    TABLE     D  CREATE TABLE public.requests (
    id bigint NOT NULL,
    description text,
    title character varying,
    budget integer,
    delivery integer,
    user_id bigint NOT NULL,
    category_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.requests;
       public         heap    postgres    false            ▄            1259    33093    requests_id_seq    SEQUENCE     x   CREATE SEQUENCE public.requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.requests_id_seq;
       public          postgres    false    221            
           0    0    requests_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.requests_id_seq OWNED BY public.requests.id;
          public          postgres    false    220            ß            1259    33148    reviews    TABLE     0  CREATE TABLE public.reviews (
    id bigint NOT NULL,
    review text,
    stars integer DEFAULT 1,
    order_id uuid NOT NULL,
    gig_id bigint,
    buyer_id bigint,
    seller_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.reviews;
       public         heap    postgres    false            Ó            1259    33146    reviews_id_seq    SEQUENCE     w   CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reviews_id_seq;
       public          postgres    false    225            
           0    0    reviews_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;
          public          postgres    false    224            ╔            1259    16640    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    postgres    false            ╠            1259    16658    users    TABLE     ├  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    nombre character varying,
    edad character varying,
    profesion character varying,
    telefono character varying(12),
    genero character varying,
    descripcion text,
    id_ciudad integer,
    status boolean DEFAULT false,
    provider character varying,
    uid character varying,
    image character varying,
    ciudad character varying,
    about character varying,
    language character varying,
    active boolean DEFAULT true,
    region_id bigint,
    provincia_id bigint
);
    DROP TABLE public.users;
       public         heap    postgres    false            ╦            1259    16656    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    204            
           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    203            █           2604    24872    action_text_rich_texts id    DEFAULT     å   ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);
 H   ALTER TABLE public.action_text_rich_texts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            Ë           2604    24784    active_storage_attachments id    DEFAULT     Ä   ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);
 L   ALTER TABLE public.active_storage_attachments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            Ê           2604    24772    active_storage_blobs id    DEFAULT     é   ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);
 F   ALTER TABLE public.active_storage_blobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    206    206            È           2604    24802 !   active_storage_variant_records id    DEFAULT     û   ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);
 P   ALTER TABLE public.active_storage_variant_records ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            Ô           2604    33188    administrators id    DEFAULT     v   ALTER TABLE ONLY public.administrators ALTER COLUMN id SET DEFAULT nextval('public.administrators_id_seq'::regclass);
 @   ALTER TABLE public.administrators ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            ı           2604    24819 
   categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            Õ           2604    33262    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            Ò           2604    33219    conversations id    DEFAULT     t   ALTER TABLE ONLY public.conversations ALTER COLUMN id SET DEFAULT nextval('public.conversations_id_seq'::regclass);
 ?   ALTER TABLE public.conversations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            Î           2604    24830    gigs id    DEFAULT     b   ALTER TABLE ONLY public.gigs ALTER COLUMN id SET DEFAULT nextval('public.gigs_id_seq'::regclass);
 6   ALTER TABLE public.gigs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            õ           2604    33239    messages id    DEFAULT     j   ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);
 :   ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            Ì           2604    33121 	   offers id    DEFAULT     f   ALTER TABLE ONLY public.offers ALTER COLUMN id SET DEFAULT nextval('public.offers_id_seq'::regclass);
 8   ALTER TABLE public.offers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            ┌           2604    24855    pricings id    DEFAULT     j   ALTER TABLE ONLY public.pricings ALTER COLUMN id SET DEFAULT nextval('public.pricings_id_seq'::regclass);
 :   ALTER TABLE public.pricings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            Þ           2604    33783    provinces id    DEFAULT     l   ALTER TABLE ONLY public.provinces ALTER COLUMN id SET DEFAULT nextval('public.provinces_id_seq'::regclass);
 ;   ALTER TABLE public.provinces ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            þ           2604    33701    provincia id    DEFAULT     l   ALTER TABLE ONLY public.provincia ALTER COLUMN id SET DEFAULT nextval('public.provincia_id_seq'::regclass);
 ;   ALTER TABLE public.provincia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            µ           2604    33690 
   regions id    DEFAULT     h   ALTER TABLE ONLY public.regions ALTER COLUMN id SET DEFAULT nextval('public.regions_id_seq'::regclass);
 9   ALTER TABLE public.regions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            ¦           2604    33098    requests id    DEFAULT     j   ALTER TABLE ONLY public.requests ALTER COLUMN id SET DEFAULT nextval('public.requests_id_seq'::regclass);
 :   ALTER TABLE public.requests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            Ó           2604    33151 
   reviews id    DEFAULT     h   ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);
 9   ALTER TABLE public.reviews ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            ═           2604    16661    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203    204            Ò          0    24869    action_text_rich_texts 
   TABLE DATA           p   COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
    public          postgres    false    218   ~
       ┘          0    24781    active_storage_attachments 
   TABLE DATA           k   COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
    public          postgres    false    208   ▓       Î          0    24769    active_storage_blobs 
   TABLE DATA           ê   COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
    public          postgres    false    206   ù       █          0    24799    active_storage_variant_records 
   TABLE DATA           W   COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
    public          postgres    false    210   Ó       ý          0    33185    administrators 
   TABLE DATA           ×   COPY public.administrators (id, email, password_digest, first_name, last_name, remember_token, remember_token_expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    227   ²       Ë          0    16648    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          postgres    false    202   ╚        ¦          0    24816 
   categories 
   TABLE DATA           N   COPY public.categories (id, name, created_at, updated_at, active) FROM stdin;
    public          postgres    false    212          ‗          0    33259    comments 
   TABLE DATA           Z   COPY public.comments (id, content, user_id, order_id, created_at, updated_at) FROM stdin;
    public          postgres    false    233   ]       ¯          0    33216 
   conversations 
   TABLE DATA           [   COPY public.conversations (id, sender_id, receiver_id, created_at, updated_at) FROM stdin;
    public          postgres    false    229   ¯       ▀          0    24827    gigs 
   TABLE DATA           ç   COPY public.gigs (id, title, video, active, has_single_pricing, user_id, category_id, created_at, updated_at, province_id) FROM stdin;
    public          postgres    false    214   T       ­          0    33236    messages 
   TABLE DATA           a   COPY public.messages (id, content, user_id, conversation_id, created_at, updated_at) FROM stdin;
    public          postgres    false    231   	       Þ          0    33118    offers 
   TABLE DATA           m   COPY public.offers (id, note, amount, days, status, request_id, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    223          õ          0    33043    orders 
   TABLE DATA           ƒ   COPY public.orders (id, due_date, title, amount, status, seller_name, buyer_name, gig_id, buyer_id, seller_id, created_at, updated_at, request_id) FROM stdin;
    public          postgres    false    219   ð       ß          0    24852    pricings 
   TABLE DATA           ~   COPY public.pricings (id, title, description, delivery_time, price, pricing_type, gig_id, created_at, updated_at) FROM stdin;
    public          postgres    false    216          °          0    33780 	   provinces 
   TABLE DATA           R   COPY public.provinces (id, nombre, region_id, created_at, updated_at) FROM stdin;
    public          postgres    false    239           ÷          0    33698 	   provincia 
   TABLE DATA           P   COPY public.provincia (id, name, region_id, created_at, updated_at) FROM stdin;
    public          postgres    false    237   v       ¶          0    33687    regions 
   TABLE DATA           S   COPY public.regions (id, name, region_ordinal, created_at, updated_at) FROM stdin;
    public          postgres    false    235   Ý       µ          0    33095    requests 
   TABLE DATA           z   COPY public.requests (id, description, title, budget, delivery, user_id, category_id, created_at, updated_at) FROM stdin;
    public          postgres    false    221   =
       Û          0    33148    reviews 
   TABLE DATA           s   COPY public.reviews (id, review, stars, order_id, gig_id, buyer_id, seller_id, created_at, updated_at) FROM stdin;
    public          postgres    false    225   Æ       Ê          0    16640    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          postgres    false    201   \        ı          0    16658    users 
   TABLE DATA           4  COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, nombre, edad, profesion, telefono, genero, descripcion, id_ciudad, status, provider, uid, image, ciudad, about, language, active, region_id, provincia_id) FROM stdin;
    public          postgres    false    204          
           0    0    action_text_rich_texts_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 35, true);
          public          postgres    false    217            
           0    0 !   active_storage_attachments_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 58, true);
          public          postgres    false    207            
           0    0    active_storage_blobs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 58, true);
          public          postgres    false    205            
           0    0 %   active_storage_variant_records_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);
          public          postgres    false    209            
           0    0    administrators_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.administrators_id_seq', 1, true);
          public          postgres    false    226            
           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 11, true);
          public          postgres    false    211            
           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 13, true);
          public          postgres    false    232            
           0    0    conversations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.conversations_id_seq', 2, true);
          public          postgres    false    228            
           0    0    gigs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.gigs_id_seq', 36, true);
          public          postgres    false    213            
           0    0    messages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.messages_id_seq', 32, true);
          public          postgres    false    230            
           0    0 
   offers_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.offers_id_seq', 5, true);
          public          postgres    false    222            
           0    0    pricings_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pricings_id_seq', 108, true);
          public          postgres    false    215            
           0    0    provinces_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.provinces_id_seq', 1, false);
          public          postgres    false    238            
           0    0    provincia_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.provincia_id_seq', 1, false);
          public          postgres    false    236             
           0    0    regions_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.regions_id_seq', 1, false);
          public          postgres    false    234            !
           0    0    requests_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.requests_id_seq', 13, true);
          public          postgres    false    220            "
           0    0    reviews_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.reviews_id_seq', 3, true);
          public          postgres    false    224            #
           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 9, true);
          public          postgres    false    203                       2606    24877 2   action_text_rich_texts action_text_rich_texts_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.action_text_rich_texts DROP CONSTRAINT action_text_rich_texts_pkey;
       public            postgres    false    218            ¸           2606    24789 :   active_storage_attachments active_storage_attachments_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT active_storage_attachments_pkey;
       public            postgres    false    208            ¶           2606    24777 .   active_storage_blobs active_storage_blobs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.active_storage_blobs DROP CONSTRAINT active_storage_blobs_pkey;
       public            postgres    false    206            ¹           2606    24807 B   active_storage_variant_records active_storage_variant_records_pkey 
   CONSTRAINT     Ç   ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.active_storage_variant_records DROP CONSTRAINT active_storage_variant_records_pkey;
       public            postgres    false    210                       2606    33193 "   administrators administrators_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.administrators
    ADD CONSTRAINT administrators_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.administrators DROP CONSTRAINT administrators_pkey;
       public            postgres    false    227            ý           2606    16655 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            postgres    false    202            ■           2606    24824    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    212            )           2606    33267    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    233            !           2606    33221     conversations conversations_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.conversations DROP CONSTRAINT conversations_pkey;
       public            postgres    false    229                        2606    24837    gigs gigs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.gigs
    ADD CONSTRAINT gigs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.gigs DROP CONSTRAINT gigs_pkey;
       public            postgres    false    214            '           2606    33244    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public            postgres    false    231                       2606    33127    offers offers_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.offers
    ADD CONSTRAINT offers_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.offers DROP CONSTRAINT offers_pkey;
       public            postgres    false    223                       2606    33051    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219                       2606    24860    pricings pricings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pricings
    ADD CONSTRAINT pricings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pricings DROP CONSTRAINT pricings_pkey;
       public            postgres    false    216            3           2606    33788    provinces provinces_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.provinces DROP CONSTRAINT provinces_pkey;
       public            postgres    false    239            0           2606    33706    provincia provincia_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT provincia_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.provincia DROP CONSTRAINT provincia_pkey;
       public            postgres    false    237            -           2606    33695    regions regions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public            postgres    false    235                       2606    33103    requests requests_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT requests_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.requests DROP CONSTRAINT requests_pkey;
       public            postgres    false    221                       2606    33157    reviews reviews_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_pkey;
       public            postgres    false    225            Û           2606    16647 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            postgres    false    201            ‗           2606    16668    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    204            	           1259    24878 '   index_action_text_rich_texts_uniqueness    INDEX     ë   CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);
 ;   DROP INDEX public.index_action_text_rich_texts_uniqueness;
       public            postgres    false    218    218    218            °           1259    24795 +   index_active_storage_attachments_on_blob_id    INDEX     u   CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_on_blob_id;
       public            postgres    false    208            ¨           1259    24796 +   index_active_storage_attachments_uniqueness    INDEX     Ü   CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_uniqueness;
       public            postgres    false    208    208    208    208            §           1259    24778 !   index_active_storage_blobs_on_key    INDEX     h   CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);
 5   DROP INDEX public.index_active_storage_blobs_on_key;
       public            postgres    false    206            ³           1259    24813 /   index_active_storage_variant_records_uniqueness    INDEX     û   CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);
 C   DROP INDEX public.index_active_storage_variant_records_uniqueness;
       public            postgres    false    210    210            *           1259    33279    index_comments_on_order_id    INDEX     S   CREATE INDEX index_comments_on_order_id ON public.comments USING btree (order_id);
 .   DROP INDEX public.index_comments_on_order_id;
       public            postgres    false    233            +           1259    33278    index_comments_on_user_id    INDEX     Q   CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);
 -   DROP INDEX public.index_comments_on_user_id;
       public            postgres    false    233            "           1259    33233 "   index_conversations_on_receiver_id    INDEX     c   CREATE INDEX index_conversations_on_receiver_id ON public.conversations USING btree (receiver_id);
 6   DROP INDEX public.index_conversations_on_receiver_id;
       public            postgres    false    229            #           1259    33232     index_conversations_on_sender_id    INDEX     _   CREATE INDEX index_conversations_on_sender_id ON public.conversations USING btree (sender_id);
 4   DROP INDEX public.index_conversations_on_sender_id;
       public            postgres    false    229                       1259    24849    index_gigs_on_category_id    INDEX     Q   CREATE INDEX index_gigs_on_category_id ON public.gigs USING btree (category_id);
 -   DROP INDEX public.index_gigs_on_category_id;
       public            postgres    false    214                       1259    33727    index_gigs_on_provincia_id    INDEX     R   CREATE INDEX index_gigs_on_provincia_id ON public.gigs USING btree (province_id);
 .   DROP INDEX public.index_gigs_on_provincia_id;
       public            postgres    false    214                       1259    24848    index_gigs_on_user_id    INDEX     I   CREATE INDEX index_gigs_on_user_id ON public.gigs USING btree (user_id);
 )   DROP INDEX public.index_gigs_on_user_id;
       public            postgres    false    214            $           1259    33256 !   index_messages_on_conversation_id    INDEX     a   CREATE INDEX index_messages_on_conversation_id ON public.messages USING btree (conversation_id);
 5   DROP INDEX public.index_messages_on_conversation_id;
       public            postgres    false    231            %           1259    33255    index_messages_on_user_id    INDEX     Q   CREATE INDEX index_messages_on_user_id ON public.messages USING btree (user_id);
 -   DROP INDEX public.index_messages_on_user_id;
       public            postgres    false    231                       1259    33138    index_offers_on_request_id    INDEX     S   CREATE INDEX index_offers_on_request_id ON public.offers USING btree (request_id);
 .   DROP INDEX public.index_offers_on_request_id;
       public            postgres    false    223                       1259    33139    index_offers_on_user_id    INDEX     M   CREATE INDEX index_offers_on_user_id ON public.offers USING btree (user_id);
 +   DROP INDEX public.index_offers_on_user_id;
       public            postgres    false    223            
           1259    33068    index_orders_on_buyer_id    INDEX     O   CREATE INDEX index_orders_on_buyer_id ON public.orders USING btree (buyer_id);
 ,   DROP INDEX public.index_orders_on_buyer_id;
       public            postgres    false    219                       1259    33067    index_orders_on_gig_id    INDEX     K   CREATE INDEX index_orders_on_gig_id ON public.orders USING btree (gig_id);
 *   DROP INDEX public.index_orders_on_gig_id;
       public            postgres    false    219                       1259    33140    index_orders_on_request_id    INDEX     S   CREATE INDEX index_orders_on_request_id ON public.orders USING btree (request_id);
 .   DROP INDEX public.index_orders_on_request_id;
       public            postgres    false    219            
           1259    33069    index_orders_on_seller_id    INDEX     Q   CREATE INDEX index_orders_on_seller_id ON public.orders USING btree (seller_id);
 -   DROP INDEX public.index_orders_on_seller_id;
       public            postgres    false    219                       1259    24866    index_pricings_on_gig_id    INDEX     O   CREATE INDEX index_pricings_on_gig_id ON public.pricings USING btree (gig_id);
 ,   DROP INDEX public.index_pricings_on_gig_id;
       public            postgres    false    216            1           1259    33794    index_provinces_on_region_id    INDEX     W   CREATE INDEX index_provinces_on_region_id ON public.provinces USING btree (region_id);
 0   DROP INDEX public.index_provinces_on_region_id;
       public            postgres    false    239            .           1259    33712    index_provincia_on_region_id    INDEX     W   CREATE INDEX index_provincia_on_region_id ON public.provincia USING btree (region_id);
 0   DROP INDEX public.index_provincia_on_region_id;
       public            postgres    false    237                       1259    33115    index_requests_on_category_id    INDEX     Y   CREATE INDEX index_requests_on_category_id ON public.requests USING btree (category_id);
 1   DROP INDEX public.index_requests_on_category_id;
       public            postgres    false    221                       1259    33114    index_requests_on_user_id    INDEX     Q   CREATE INDEX index_requests_on_user_id ON public.requests USING btree (user_id);
 -   DROP INDEX public.index_requests_on_user_id;
       public            postgres    false    221                       1259    33180    index_reviews_on_buyer_id    INDEX     Q   CREATE INDEX index_reviews_on_buyer_id ON public.reviews USING btree (buyer_id);
 -   DROP INDEX public.index_reviews_on_buyer_id;
       public            postgres    false    225                       1259    33179    index_reviews_on_gig_id    INDEX     M   CREATE INDEX index_reviews_on_gig_id ON public.reviews USING btree (gig_id);
 +   DROP INDEX public.index_reviews_on_gig_id;
       public            postgres    false    225                       1259    33178    index_reviews_on_order_id    INDEX     Q   CREATE INDEX index_reviews_on_order_id ON public.reviews USING btree (order_id);
 -   DROP INDEX public.index_reviews_on_order_id;
       public            postgres    false    225                       1259    33181    index_reviews_on_seller_id    INDEX     S   CREATE INDEX index_reviews_on_seller_id ON public.reviews USING btree (seller_id);
 .   DROP INDEX public.index_reviews_on_seller_id;
       public            postgres    false    225            Ý           1259    16669    index_users_on_email    INDEX     N   CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public            postgres    false    204            ¯           1259    33733    index_users_on_provincia_id    INDEX     U   CREATE INDEX index_users_on_provincia_id ON public.users USING btree (provincia_id);
 /   DROP INDEX public.index_users_on_provincia_id;
       public            postgres    false    204            ´           1259    33714    index_users_on_region_id    INDEX     O   CREATE INDEX index_users_on_region_id ON public.users USING btree (region_id);
 ,   DROP INDEX public.index_users_on_region_id;
       public            postgres    false    204            ­           1259    16670 #   index_users_on_reset_password_token    INDEX     l   CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public            postgres    false    204            L           2606    33268    comments fk_rails_03de2dc08c 
   FK CONSTRAINT     {   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_rails_03de2dc08c;
       public          postgres    false    204    3058    233            5           2606    33734    users fk_rails_0ac2212bba 
   FK CONSTRAINT     ü   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_0ac2212bba FOREIGN KEY (provincia_id) REFERENCES public.provincia(id);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_rails_0ac2212bba;
       public          postgres    false    204    237    3120            J           2606    33245    messages fk_rails_273a25a7a6 
   FK CONSTRAINT     {   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk_rails_273a25a7a6 FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.messages DROP CONSTRAINT fk_rails_273a25a7a6;
       public          postgres    false    231    3058    204            H           2606    33222 !   conversations fk_rails_2855ab3029 
   FK CONSTRAINT     é   ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT fk_rails_2855ab3029 FOREIGN KEY (sender_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.conversations DROP CONSTRAINT fk_rails_2855ab3029;
       public          postgres    false    204    3058    229            A           2606    33109    requests fk_rails_320a1ce6f0 
   FK CONSTRAINT     ä   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_rails_320a1ce6f0 FOREIGN KEY (category_id) REFERENCES public.categories(id);
 F   ALTER TABLE ONLY public.requests DROP CONSTRAINT fk_rails_320a1ce6f0;
       public          postgres    false    221    3070    212            M           2606    33273    comments fk_rails_453b7b85cf 
   FK CONSTRAINT     }   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_453b7b85cf FOREIGN KEY (order_id) REFERENCES public.orders(id);
 F   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_rails_453b7b85cf;
       public          postgres    false    3087    233    219            ;           2606    24861    pricings fk_rails_47132a4f4a 
   FK CONSTRAINT     y   ALTER TABLE ONLY public.pricings
    ADD CONSTRAINT fk_rails_47132a4f4a FOREIGN KEY (gig_id) REFERENCES public.gigs(id);
 F   ALTER TABLE ONLY public.pricings DROP CONSTRAINT fk_rails_47132a4f4a;
       public          postgres    false    3072    214    216            E           2606    33163    reviews fk_rails_544c610a1f 
   FK CONSTRAINT     x   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_544c610a1f FOREIGN KEY (gig_id) REFERENCES public.gigs(id);
 E   ALTER TABLE ONLY public.reviews DROP CONSTRAINT fk_rails_544c610a1f;
       public          postgres    false    214    225    3072            O           2606    33789    provinces fk_rails_5aca3eede1 
   FK CONSTRAINT     Ç   ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT fk_rails_5aca3eede1 FOREIGN KEY (region_id) REFERENCES public.regions(id);
 G   ALTER TABLE ONLY public.provinces DROP CONSTRAINT fk_rails_5aca3eede1;
       public          postgres    false    235    239    3117            B           2606    33128    offers fk_rails_5ff5bafd22 
   FK CONSTRAINT        ALTER TABLE ONLY public.offers
    ADD CONSTRAINT fk_rails_5ff5bafd22 FOREIGN KEY (request_id) REFERENCES public.requests(id);
 D   ALTER TABLE ONLY public.offers DROP CONSTRAINT fk_rails_5ff5bafd22;
       public          postgres    false    3091    223    221            9           2606    24843    gigs fk_rails_601286f7a1 
   FK CONSTRAINT     Ç   ALTER TABLE ONLY public.gigs
    ADD CONSTRAINT fk_rails_601286f7a1 FOREIGN KEY (category_id) REFERENCES public.categories(id);
 B   ALTER TABLE ONLY public.gigs DROP CONSTRAINT fk_rails_601286f7a1;
       public          postgres    false    212    3070    214            <           2606    33052    orders fk_rails_6ad35d81ff 
   FK CONSTRAINT     w   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_6ad35d81ff FOREIGN KEY (gig_id) REFERENCES public.gigs(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_rails_6ad35d81ff;
       public          postgres    false    219    214    3072            K           2606    33250    messages fk_rails_7f927086d2 
   FK CONSTRAINT     ï   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk_rails_7f927086d2 FOREIGN KEY (conversation_id) REFERENCES public.conversations(id);
 F   ALTER TABLE ONLY public.messages DROP CONSTRAINT fk_rails_7f927086d2;
       public          postgres    false    3105    231    229            @           2606    33104    requests fk_rails_8ead8b1e6b 
   FK CONSTRAINT     {   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_rails_8ead8b1e6b FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.requests DROP CONSTRAINT fk_rails_8ead8b1e6b;
       public          postgres    false    204    3058    221            7           2606    24808 2   active_storage_variant_records fk_rails_993965df05 
   FK CONSTRAINT     á   ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);
 \   ALTER TABLE ONLY public.active_storage_variant_records DROP CONSTRAINT fk_rails_993965df05;
       public          postgres    false    210    3060    206            G           2606    33173    reviews fk_rails_9c9b72d3b5 
   FK CONSTRAINT     |   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_9c9b72d3b5 FOREIGN KEY (seller_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.reviews DROP CONSTRAINT fk_rails_9c9b72d3b5;
       public          postgres    false    225    3058    204            4           2606    33715    users fk_rails_b3a8faedd1 
   FK CONSTRAINT     |   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_b3a8faedd1 FOREIGN KEY (region_id) REFERENCES public.regions(id);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_rails_b3a8faedd1;
       public          postgres    false    3117    204    235            ?           2606    33141    orders fk_rails_b3cb052e93 
   FK CONSTRAINT        ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_b3cb052e93 FOREIGN KEY (request_id) REFERENCES public.requests(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_rails_b3cb052e93;
       public          postgres    false    221    3091    219            N           2606    33707    provincia fk_rails_c36b847daf 
   FK CONSTRAINT     Ç   ALTER TABLE ONLY public.provincia
    ADD CONSTRAINT fk_rails_c36b847daf FOREIGN KEY (region_id) REFERENCES public.regions(id);
 G   ALTER TABLE ONLY public.provincia DROP CONSTRAINT fk_rails_c36b847daf;
       public          postgres    false    235    3117    237            6           2606    24790 .   active_storage_attachments fk_rails_c3b3935057 
   FK CONSTRAINT     £   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);
 X   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT fk_rails_c3b3935057;
       public          postgres    false    208    3060    206            F           2606    33168    reviews fk_rails_c7b3e20248 
   FK CONSTRAINT     {   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_c7b3e20248 FOREIGN KEY (buyer_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.reviews DROP CONSTRAINT fk_rails_c7b3e20248;
       public          postgres    false    225    204    3058            =           2606    33057    orders fk_rails_d3775977e3 
   FK CONSTRAINT     z   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_d3775977e3 FOREIGN KEY (buyer_id) REFERENCES public.users(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_rails_d3775977e3;
       public          postgres    false    219    3058    204            8           2606    24838    gigs fk_rails_d872f8ccad 
   FK CONSTRAINT     w   ALTER TABLE ONLY public.gigs
    ADD CONSTRAINT fk_rails_d872f8ccad FOREIGN KEY (user_id) REFERENCES public.users(id);
 B   ALTER TABLE ONLY public.gigs DROP CONSTRAINT fk_rails_d872f8ccad;
       public          postgres    false    3058    204    214            C           2606    33133    offers fk_rails_e6095d6211 
   FK CONSTRAINT     y   ALTER TABLE ONLY public.offers
    ADD CONSTRAINT fk_rails_e6095d6211 FOREIGN KEY (user_id) REFERENCES public.users(id);
 D   ALTER TABLE ONLY public.offers DROP CONSTRAINT fk_rails_e6095d6211;
       public          postgres    false    223    3058    204            D           2606    33158    reviews fk_rails_eadb6874f1 
   FK CONSTRAINT     |   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_eadb6874f1 FOREIGN KEY (order_id) REFERENCES public.orders(id);
 E   ALTER TABLE ONLY public.reviews DROP CONSTRAINT fk_rails_eadb6874f1;
       public          postgres    false    3087    219    225            I           2606    33227 !   conversations fk_rails_f4e4d987ce 
   FK CONSTRAINT     ä   ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT fk_rails_f4e4d987ce FOREIGN KEY (receiver_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.conversations DROP CONSTRAINT fk_rails_f4e4d987ce;
       public          postgres    false    229    204    3058            >           2606    33062    orders fk_rails_f569184c98 
   FK CONSTRAINT     {   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_f569184c98 FOREIGN KEY (seller_id) REFERENCES public.users(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_rails_f569184c98;
       public          postgres    false    3058    219    204            :           2606    33795    gigs fk_rails_to_province 
   FK CONSTRAINT     è   ALTER TABLE ONLY public.gigs
    ADD CONSTRAINT fk_rails_to_province FOREIGN KEY (province_id) REFERENCES public.provinces(id) NOT VALID;
 C   ALTER TABLE ONLY public.gigs DROP CONSTRAINT fk_rails_to_province;
       public          postgres    false    239    3123    214           
