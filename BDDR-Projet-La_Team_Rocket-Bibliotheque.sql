PGDMP  $    1                }            new bddr project    17.2    17.2 �    |           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            }           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ~           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    24940    new bddr project    DATABASE     �   CREATE DATABASE "new bddr project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
 "   DROP DATABASE "new bddr project";
                     postgres    false            �           0    0    DATABASE "new bddr project"    ACL     �   GRANT ALL ON DATABASE "new bddr project" TO admin;
GRANT CONNECT ON DATABASE "new bddr project" TO abonne;
GRANT CONNECT ON DATABASE "new bddr project" TO accueil;
                        postgres    false    4991            �           0    0    SCHEMA public    ACL     Q   GRANT USAGE ON SCHEMA public TO abonne;
GRANT USAGE ON SCHEMA public TO accueil;
                        pg_database_owner    false    5            �            1259    24941    abonnes    TABLE     �   CREATE TABLE public.abonnes (
    id_abonne integer NOT NULL,
    nom character varying(50),
    prenom character varying(50),
    email character varying(100),
    telephone character varying(20),
    id_adresse integer
);
    DROP TABLE public.abonnes;
       public         heap r       postgres    false            �           0    0    TABLE abonnes    ACL     �   GRANT ALL ON TABLE public.abonnes TO admin;
GRANT SELECT ON TABLE public.abonnes TO abonne;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.abonnes TO accueil;
          public               postgres    false    217            �            1259    24944    abonnes_id_abonne_seq    SEQUENCE     �   CREATE SEQUENCE public.abonnes_id_abonne_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.abonnes_id_abonne_seq;
       public               postgres    false    217            �           0    0    abonnes_id_abonne_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.abonnes_id_abonne_seq OWNED BY public.abonnes.id_abonne;
          public               postgres    false    218            �           0    0    SEQUENCE abonnes_id_abonne_seq    ACL     F   GRANT SELECT,USAGE ON SEQUENCE public.abonnes_id_abonne_seq TO admin;
          public               postgres    false    218            �            1259    24945    adresses    TABLE     �   CREATE TABLE public.adresses (
    id_adresse integer NOT NULL,
    adresse character varying(255),
    region character varying(100)
);
    DROP TABLE public.adresses;
       public         heap r       postgres    false            �           0    0    TABLE adresses    ACL     �   GRANT ALL ON TABLE public.adresses TO admin;
GRANT SELECT ON TABLE public.adresses TO abonne;
GRANT SELECT ON TABLE public.adresses TO accueil;
          public               postgres    false    219            �            1259    24948    adresses_id_adresse_seq    SEQUENCE     �   CREATE SEQUENCE public.adresses_id_adresse_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.adresses_id_adresse_seq;
       public               postgres    false    219            �           0    0    adresses_id_adresse_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.adresses_id_adresse_seq OWNED BY public.adresses.id_adresse;
          public               postgres    false    220            �           0    0     SEQUENCE adresses_id_adresse_seq    ACL     H   GRANT SELECT,USAGE ON SEQUENCE public.adresses_id_adresse_seq TO admin;
          public               postgres    false    220            �            1259    24949    bibliotheques    TABLE     �   CREATE TABLE public.bibliotheques (
    id_bibliotheque integer NOT NULL,
    nom character varying(100),
    id_adresse integer
);
 !   DROP TABLE public.bibliotheques;
       public         heap r       postgres    false            �           0    0    TABLE bibliotheques    ACL     �   GRANT ALL ON TABLE public.bibliotheques TO admin;
GRANT SELECT ON TABLE public.bibliotheques TO abonne;
GRANT SELECT ON TABLE public.bibliotheques TO accueil;
          public               postgres    false    221            �            1259    24952 !   bibliotheques_id_bibliotheque_seq    SEQUENCE     �   CREATE SEQUENCE public.bibliotheques_id_bibliotheque_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.bibliotheques_id_bibliotheque_seq;
       public               postgres    false    221            �           0    0 !   bibliotheques_id_bibliotheque_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.bibliotheques_id_bibliotheque_seq OWNED BY public.bibliotheques.id_bibliotheque;
          public               postgres    false    222            �           0    0 *   SEQUENCE bibliotheques_id_bibliotheque_seq    ACL     R   GRANT SELECT,USAGE ON SEQUENCE public.bibliotheques_id_bibliotheque_seq TO admin;
          public               postgres    false    222            �            1259    24953    collections    TABLE     �   CREATE TABLE public.collections (
    id_collection integer NOT NULL,
    nom character varying(100),
    editeur character varying(100),
    annee_edition integer
);
    DROP TABLE public.collections;
       public         heap r       postgres    false            �           0    0    TABLE collections    ACL     �   GRANT ALL ON TABLE public.collections TO admin;
GRANT SELECT ON TABLE public.collections TO abonne;
GRANT SELECT ON TABLE public.collections TO accueil;
          public               postgres    false    223            �            1259    24956    collections_id_collection_seq    SEQUENCE     �   CREATE SEQUENCE public.collections_id_collection_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.collections_id_collection_seq;
       public               postgres    false    223            �           0    0    collections_id_collection_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.collections_id_collection_seq OWNED BY public.collections.id_collection;
          public               postgres    false    224            �           0    0 &   SEQUENCE collections_id_collection_seq    ACL     N   GRANT SELECT,USAGE ON SEQUENCE public.collections_id_collection_seq TO admin;
          public               postgres    false    224            �            1259    24957    emplacements    TABLE     �   CREATE TABLE public.emplacements (
    id_emplacement integer NOT NULL,
    id_localisation integer NOT NULL,
    id_ouvrage integer NOT NULL
);
     DROP TABLE public.emplacements;
       public         heap r       postgres    false            �           0    0    TABLE emplacements    ACL     �   GRANT ALL ON TABLE public.emplacements TO admin;
GRANT SELECT ON TABLE public.emplacements TO abonne;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.emplacements TO accueil;
          public               postgres    false    225            �            1259    24960 
   evenements    TABLE     �   CREATE TABLE public.evenements (
    id_evenement integer NOT NULL,
    titre character varying(100),
    description text,
    date_evenement date,
    id_bibliotheque integer
);
    DROP TABLE public.evenements;
       public         heap r       postgres    false            �           0    0    TABLE evenements    ACL     �   GRANT ALL ON TABLE public.evenements TO admin;
GRANT SELECT ON TABLE public.evenements TO abonne;
GRANT SELECT ON TABLE public.evenements TO accueil;
          public               postgres    false    226            �            1259    24965    evenements_id_evenement_seq    SEQUENCE     �   CREATE SEQUENCE public.evenements_id_evenement_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.evenements_id_evenement_seq;
       public               postgres    false    226            �           0    0    evenements_id_evenement_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.evenements_id_evenement_seq OWNED BY public.evenements.id_evenement;
          public               postgres    false    227            �           0    0 $   SEQUENCE evenements_id_evenement_seq    ACL     L   GRANT SELECT,USAGE ON SEQUENCE public.evenements_id_evenement_seq TO admin;
          public               postgres    false    227            �            1259    24966    genres    TABLE        CREATE TABLE public.genres (
    id_genre integer NOT NULL,
    isbn character varying(13),
    genre character varying(50)
);
    DROP TABLE public.genres;
       public         heap r       postgres    false            �           0    0    TABLE genres    ACL     �   GRANT ALL ON TABLE public.genres TO admin;
GRANT SELECT ON TABLE public.genres TO abonne;
GRANT SELECT ON TABLE public.genres TO accueil;
          public               postgres    false    228            �            1259    24969    genres_id_genre_seq    SEQUENCE     �   CREATE SEQUENCE public.genres_id_genre_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.genres_id_genre_seq;
       public               postgres    false    228            �           0    0    genres_id_genre_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.genres_id_genre_seq OWNED BY public.genres.id_genre;
          public               postgres    false    229            �           0    0    SEQUENCE genres_id_genre_seq    ACL     D   GRANT SELECT,USAGE ON SEQUENCE public.genres_id_genre_seq TO admin;
          public               postgres    false    229            �            1259    24970    localisations    TABLE     �   CREATE TABLE public.localisations (
    id_localisation integer NOT NULL,
    id_bibliotheque integer NOT NULL,
    nom_localisation character varying NOT NULL
);
 !   DROP TABLE public.localisations;
       public         heap r       postgres    false            �           0    0    TABLE localisations    ACL     �   GRANT ALL ON TABLE public.localisations TO admin;
GRANT SELECT ON TABLE public.localisations TO abonne;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.localisations TO accueil;
          public               postgres    false    230            �            1259    24975    ouvrages    TABLE       CREATE TABLE public.ouvrages (
    id_ouvrage integer NOT NULL,
    titre character varying(255),
    auteur character varying(100),
    categorie character varying(100),
    date_publication date,
    isbn character varying(13),
    id_collection integer
);
    DROP TABLE public.ouvrages;
       public         heap r       postgres    false            �           0    0    TABLE ouvrages    ACL     �   GRANT ALL ON TABLE public.ouvrages TO admin;
GRANT SELECT ON TABLE public.ouvrages TO abonne;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ouvrages TO accueil;
          public               postgres    false    231            �            1259    24978    ouvrages_id_ouvrage_seq    SEQUENCE     �   CREATE SEQUENCE public.ouvrages_id_ouvrage_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ouvrages_id_ouvrage_seq;
       public               postgres    false    231            �           0    0    ouvrages_id_ouvrage_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.ouvrages_id_ouvrage_seq OWNED BY public.ouvrages.id_ouvrage;
          public               postgres    false    232            �           0    0     SEQUENCE ouvrages_id_ouvrage_seq    ACL     H   GRANT SELECT,USAGE ON SEQUENCE public.ouvrages_id_ouvrage_seq TO admin;
          public               postgres    false    232            �            1259    24979    participation_evenements    TABLE     �   CREATE TABLE public.participation_evenements (
    id_participation integer NOT NULL,
    id_abonne integer,
    id_evenement integer
);
 ,   DROP TABLE public.participation_evenements;
       public         heap r       postgres    false            �           0    0    TABLE participation_evenements    ACL     �   GRANT ALL ON TABLE public.participation_evenements TO admin;
GRANT SELECT ON TABLE public.participation_evenements TO abonne;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.participation_evenements TO accueil;
          public               postgres    false    233            �            1259    24982 -   participation_evenements_id_participation_seq    SEQUENCE     �   CREATE SEQUENCE public.participation_evenements_id_participation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.participation_evenements_id_participation_seq;
       public               postgres    false    233            �           0    0 -   participation_evenements_id_participation_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.participation_evenements_id_participation_seq OWNED BY public.participation_evenements.id_participation;
          public               postgres    false    234            �           0    0 6   SEQUENCE participation_evenements_id_participation_seq    ACL     ^   GRANT SELECT,USAGE ON SEQUENCE public.participation_evenements_id_participation_seq TO admin;
          public               postgres    false    234            �            1259    24983    prets    TABLE     �   CREATE TABLE public.prets (
    id_pret integer NOT NULL,
    id_abonne integer,
    id_ouvrage integer,
    date_emprunt date,
    date_retour date,
    date_retour_effective date
);
    DROP TABLE public.prets;
       public         heap r       postgres    false            �           0    0    TABLE prets    ACL     �   GRANT ALL ON TABLE public.prets TO admin;
GRANT SELECT ON TABLE public.prets TO abonne;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.prets TO accueil;
          public               postgres    false    235            �            1259    24986    prets_id_pret_seq    SEQUENCE     �   CREATE SEQUENCE public.prets_id_pret_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.prets_id_pret_seq;
       public               postgres    false    235            �           0    0    prets_id_pret_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.prets_id_pret_seq OWNED BY public.prets.id_pret;
          public               postgres    false    236            �           0    0    SEQUENCE prets_id_pret_seq    ACL     B   GRANT SELECT,USAGE ON SEQUENCE public.prets_id_pret_seq TO admin;
          public               postgres    false    236            �            1259    24987    reservations    TABLE     �   CREATE TABLE public.reservations (
    id_reservation integer NOT NULL,
    id_abonne integer,
    id_ouvrage integer,
    date_reservation date,
    etat_reservation character varying(50) DEFAULT 'en attente'::character varying
);
     DROP TABLE public.reservations;
       public         heap r       postgres    false            �           0    0    TABLE reservations    ACL     �   GRANT ALL ON TABLE public.reservations TO admin;
GRANT SELECT ON TABLE public.reservations TO abonne;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.reservations TO accueil;
          public               postgres    false    237            �            1259    24991    reservations_id_reservation_seq    SEQUENCE     �   CREATE SEQUENCE public.reservations_id_reservation_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.reservations_id_reservation_seq;
       public               postgres    false    237            �           0    0    reservations_id_reservation_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.reservations_id_reservation_seq OWNED BY public.reservations.id_reservation;
          public               postgres    false    238            �           0    0 (   SEQUENCE reservations_id_reservation_seq    ACL     P   GRANT SELECT,USAGE ON SEQUENCE public.reservations_id_reservation_seq TO admin;
          public               postgres    false    238            �            1259    24992 
   transferts    TABLE     )  CREATE TABLE public.transferts (
    id_transfert integer NOT NULL,
    id_ouvrage integer,
    bibliotheque_origine integer,
    bibliotheque_destination integer,
    date_emission date,
    date_reception date,
    etat_transfert character varying(50) DEFAULT 'en attente'::character varying
);
    DROP TABLE public.transferts;
       public         heap r       postgres    false            �           0    0    TABLE transferts    ACL     �   GRANT ALL ON TABLE public.transferts TO admin;
GRANT SELECT ON TABLE public.transferts TO abonne;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.transferts TO accueil;
          public               postgres    false    239            �            1259    24996    transferts_id_transfert_seq    SEQUENCE     �   CREATE SEQUENCE public.transferts_id_transfert_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.transferts_id_transfert_seq;
       public               postgres    false    239            �           0    0    transferts_id_transfert_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.transferts_id_transfert_seq OWNED BY public.transferts.id_transfert;
          public               postgres    false    240            �           0    0 $   SEQUENCE transferts_id_transfert_seq    ACL     L   GRANT SELECT,USAGE ON SEQUENCE public.transferts_id_transfert_seq TO admin;
          public               postgres    false    240            �           2604    24997    abonnes id_abonne    DEFAULT     v   ALTER TABLE ONLY public.abonnes ALTER COLUMN id_abonne SET DEFAULT nextval('public.abonnes_id_abonne_seq'::regclass);
 @   ALTER TABLE public.abonnes ALTER COLUMN id_abonne DROP DEFAULT;
       public               postgres    false    218    217            �           2604    24998    adresses id_adresse    DEFAULT     z   ALTER TABLE ONLY public.adresses ALTER COLUMN id_adresse SET DEFAULT nextval('public.adresses_id_adresse_seq'::regclass);
 B   ALTER TABLE public.adresses ALTER COLUMN id_adresse DROP DEFAULT;
       public               postgres    false    220    219            �           2604    24999    bibliotheques id_bibliotheque    DEFAULT     �   ALTER TABLE ONLY public.bibliotheques ALTER COLUMN id_bibliotheque SET DEFAULT nextval('public.bibliotheques_id_bibliotheque_seq'::regclass);
 L   ALTER TABLE public.bibliotheques ALTER COLUMN id_bibliotheque DROP DEFAULT;
       public               postgres    false    222    221            �           2604    25000    collections id_collection    DEFAULT     �   ALTER TABLE ONLY public.collections ALTER COLUMN id_collection SET DEFAULT nextval('public.collections_id_collection_seq'::regclass);
 H   ALTER TABLE public.collections ALTER COLUMN id_collection DROP DEFAULT;
       public               postgres    false    224    223            �           2604    25001    evenements id_evenement    DEFAULT     �   ALTER TABLE ONLY public.evenements ALTER COLUMN id_evenement SET DEFAULT nextval('public.evenements_id_evenement_seq'::regclass);
 F   ALTER TABLE public.evenements ALTER COLUMN id_evenement DROP DEFAULT;
       public               postgres    false    227    226            �           2604    25002    genres id_genre    DEFAULT     r   ALTER TABLE ONLY public.genres ALTER COLUMN id_genre SET DEFAULT nextval('public.genres_id_genre_seq'::regclass);
 >   ALTER TABLE public.genres ALTER COLUMN id_genre DROP DEFAULT;
       public               postgres    false    229    228            �           2604    25003    ouvrages id_ouvrage    DEFAULT     z   ALTER TABLE ONLY public.ouvrages ALTER COLUMN id_ouvrage SET DEFAULT nextval('public.ouvrages_id_ouvrage_seq'::regclass);
 B   ALTER TABLE public.ouvrages ALTER COLUMN id_ouvrage DROP DEFAULT;
       public               postgres    false    232    231            �           2604    25004 )   participation_evenements id_participation    DEFAULT     �   ALTER TABLE ONLY public.participation_evenements ALTER COLUMN id_participation SET DEFAULT nextval('public.participation_evenements_id_participation_seq'::regclass);
 X   ALTER TABLE public.participation_evenements ALTER COLUMN id_participation DROP DEFAULT;
       public               postgres    false    234    233            �           2604    25005    prets id_pret    DEFAULT     n   ALTER TABLE ONLY public.prets ALTER COLUMN id_pret SET DEFAULT nextval('public.prets_id_pret_seq'::regclass);
 <   ALTER TABLE public.prets ALTER COLUMN id_pret DROP DEFAULT;
       public               postgres    false    236    235            �           2604    25006    reservations id_reservation    DEFAULT     �   ALTER TABLE ONLY public.reservations ALTER COLUMN id_reservation SET DEFAULT nextval('public.reservations_id_reservation_seq'::regclass);
 J   ALTER TABLE public.reservations ALTER COLUMN id_reservation DROP DEFAULT;
       public               postgres    false    238    237            �           2604    25007    transferts id_transfert    DEFAULT     �   ALTER TABLE ONLY public.transferts ALTER COLUMN id_transfert SET DEFAULT nextval('public.transferts_id_transfert_seq'::regclass);
 F   ALTER TABLE public.transferts ALTER COLUMN id_transfert DROP DEFAULT;
       public               postgres    false    240    239            b          0    24941    abonnes 
   TABLE DATA           W   COPY public.abonnes (id_abonne, nom, prenom, email, telephone, id_adresse) FROM stdin;
    public               postgres    false    217   �       d          0    24945    adresses 
   TABLE DATA           ?   COPY public.adresses (id_adresse, adresse, region) FROM stdin;
    public               postgres    false    219   �       f          0    24949    bibliotheques 
   TABLE DATA           I   COPY public.bibliotheques (id_bibliotheque, nom, id_adresse) FROM stdin;
    public               postgres    false    221   �       h          0    24953    collections 
   TABLE DATA           Q   COPY public.collections (id_collection, nom, editeur, annee_edition) FROM stdin;
    public               postgres    false    223   ��       j          0    24957    emplacements 
   TABLE DATA           S   COPY public.emplacements (id_emplacement, id_localisation, id_ouvrage) FROM stdin;
    public               postgres    false    225   ̫       k          0    24960 
   evenements 
   TABLE DATA           g   COPY public.evenements (id_evenement, titre, description, date_evenement, id_bibliotheque) FROM stdin;
    public               postgres    false    226   S�       m          0    24966    genres 
   TABLE DATA           7   COPY public.genres (id_genre, isbn, genre) FROM stdin;
    public               postgres    false    228   ��       o          0    24970    localisations 
   TABLE DATA           [   COPY public.localisations (id_localisation, id_bibliotheque, nom_localisation) FROM stdin;
    public               postgres    false    230   ��       p          0    24975    ouvrages 
   TABLE DATA           o   COPY public.ouvrages (id_ouvrage, titre, auteur, categorie, date_publication, isbn, id_collection) FROM stdin;
    public               postgres    false    231   ?�       r          0    24979    participation_evenements 
   TABLE DATA           ]   COPY public.participation_evenements (id_participation, id_abonne, id_evenement) FROM stdin;
    public               postgres    false    233   ޲       t          0    24983    prets 
   TABLE DATA           q   COPY public.prets (id_pret, id_abonne, id_ouvrage, date_emprunt, date_retour, date_retour_effective) FROM stdin;
    public               postgres    false    235   :�       v          0    24987    reservations 
   TABLE DATA           q   COPY public.reservations (id_reservation, id_abonne, id_ouvrage, date_reservation, etat_reservation) FROM stdin;
    public               postgres    false    237    �       x          0    24992 
   transferts 
   TABLE DATA           �   COPY public.transferts (id_transfert, id_ouvrage, bibliotheque_origine, bibliotheque_destination, date_emission, date_reception, etat_transfert) FROM stdin;
    public               postgres    false    239   ��       �           0    0    abonnes_id_abonne_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.abonnes_id_abonne_seq', 1, false);
          public               postgres    false    218            �           0    0    adresses_id_adresse_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.adresses_id_adresse_seq', 1, false);
          public               postgres    false    220            �           0    0 !   bibliotheques_id_bibliotheque_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.bibliotheques_id_bibliotheque_seq', 1, false);
          public               postgres    false    222            �           0    0    collections_id_collection_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.collections_id_collection_seq', 10, true);
          public               postgres    false    224            �           0    0    evenements_id_evenement_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.evenements_id_evenement_seq', 1, false);
          public               postgres    false    227            �           0    0    genres_id_genre_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.genres_id_genre_seq', 40, true);
          public               postgres    false    229            �           0    0    ouvrages_id_ouvrage_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.ouvrages_id_ouvrage_seq', 78, true);
          public               postgres    false    232            �           0    0 -   participation_evenements_id_participation_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.participation_evenements_id_participation_seq', 1, false);
          public               postgres    false    234            �           0    0    prets_id_pret_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.prets_id_pret_seq', 1, false);
          public               postgres    false    236            �           0    0    reservations_id_reservation_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.reservations_id_reservation_seq', 1, false);
          public               postgres    false    238            �           0    0    transferts_id_transfert_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.transferts_id_transfert_seq', 3, true);
          public               postgres    false    240            �           2606    25009    abonnes abonnes_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.abonnes
    ADD CONSTRAINT abonnes_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.abonnes DROP CONSTRAINT abonnes_email_key;
       public                 postgres    false    217            �           2606    25011    abonnes abonnes_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.abonnes
    ADD CONSTRAINT abonnes_pkey PRIMARY KEY (id_abonne);
 >   ALTER TABLE ONLY public.abonnes DROP CONSTRAINT abonnes_pkey;
       public                 postgres    false    217            �           2606    25013    adresses adresses_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.adresses
    ADD CONSTRAINT adresses_pkey PRIMARY KEY (id_adresse);
 @   ALTER TABLE ONLY public.adresses DROP CONSTRAINT adresses_pkey;
       public                 postgres    false    219            �           2606    25015     bibliotheques bibliotheques_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.bibliotheques
    ADD CONSTRAINT bibliotheques_pkey PRIMARY KEY (id_bibliotheque);
 J   ALTER TABLE ONLY public.bibliotheques DROP CONSTRAINT bibliotheques_pkey;
       public                 postgres    false    221            �           2606    25017    collections collections_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.collections
    ADD CONSTRAINT collections_pkey PRIMARY KEY (id_collection);
 F   ALTER TABLE ONLY public.collections DROP CONSTRAINT collections_pkey;
       public                 postgres    false    223            �           2606    25019    emplacements emplacements_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.emplacements
    ADD CONSTRAINT emplacements_pkey PRIMARY KEY (id_emplacement);
 H   ALTER TABLE ONLY public.emplacements DROP CONSTRAINT emplacements_pkey;
       public                 postgres    false    225            �           2606    25021    evenements evenements_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.evenements
    ADD CONSTRAINT evenements_pkey PRIMARY KEY (id_evenement);
 D   ALTER TABLE ONLY public.evenements DROP CONSTRAINT evenements_pkey;
       public                 postgres    false    226            �           2606    25023    genres genres_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (id_genre);
 <   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_pkey;
       public                 postgres    false    228            �           2606    25025     localisations localisations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.localisations
    ADD CONSTRAINT localisations_pkey PRIMARY KEY (id_localisation);
 J   ALTER TABLE ONLY public.localisations DROP CONSTRAINT localisations_pkey;
       public                 postgres    false    230            �           2606    25027    ouvrages ouvrages_isbn_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.ouvrages
    ADD CONSTRAINT ouvrages_isbn_key UNIQUE (isbn);
 D   ALTER TABLE ONLY public.ouvrages DROP CONSTRAINT ouvrages_isbn_key;
       public                 postgres    false    231            �           2606    25029    ouvrages ouvrages_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ouvrages
    ADD CONSTRAINT ouvrages_pkey PRIMARY KEY (id_ouvrage);
 @   ALTER TABLE ONLY public.ouvrages DROP CONSTRAINT ouvrages_pkey;
       public                 postgres    false    231            �           2606    25031 6   participation_evenements participation_evenements_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.participation_evenements
    ADD CONSTRAINT participation_evenements_pkey PRIMARY KEY (id_participation);
 `   ALTER TABLE ONLY public.participation_evenements DROP CONSTRAINT participation_evenements_pkey;
       public                 postgres    false    233            �           2606    25033    prets prets_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.prets
    ADD CONSTRAINT prets_pkey PRIMARY KEY (id_pret);
 :   ALTER TABLE ONLY public.prets DROP CONSTRAINT prets_pkey;
       public                 postgres    false    235            �           2606    25035    reservations reservations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_pkey PRIMARY KEY (id_reservation);
 H   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_pkey;
       public                 postgres    false    237            �           2606    25037    transferts transferts_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.transferts
    ADD CONSTRAINT transferts_pkey PRIMARY KEY (id_transfert);
 D   ALTER TABLE ONLY public.transferts DROP CONSTRAINT transferts_pkey;
       public                 postgres    false    239            �           2606    25141 5   participation_evenements unique_abonne_evenement_date 
   CONSTRAINT     �   ALTER TABLE ONLY public.participation_evenements
    ADD CONSTRAINT unique_abonne_evenement_date UNIQUE (id_abonne, id_evenement);
 _   ALTER TABLE ONLY public.participation_evenements DROP CONSTRAINT unique_abonne_evenement_date;
       public                 postgres    false    233    233            �           2606    25039    ouvrages unique_isbn 
   CONSTRAINT     O   ALTER TABLE ONLY public.ouvrages
    ADD CONSTRAINT unique_isbn UNIQUE (isbn);
 >   ALTER TABLE ONLY public.ouvrages DROP CONSTRAINT unique_isbn;
       public                 postgres    false    231            �           2606    25040    abonnes abonnes_id_adresse_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.abonnes
    ADD CONSTRAINT abonnes_id_adresse_fkey FOREIGN KEY (id_adresse) REFERENCES public.adresses(id_adresse) ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.abonnes DROP CONSTRAINT abonnes_id_adresse_fkey;
       public               postgres    false    219    217    4771            �           2606    25045 +   bibliotheques bibliotheques_id_adresse_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.bibliotheques
    ADD CONSTRAINT bibliotheques_id_adresse_fkey FOREIGN KEY (id_adresse) REFERENCES public.adresses(id_adresse) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.bibliotheques DROP CONSTRAINT bibliotheques_id_adresse_fkey;
       public               postgres    false    221    4771    219            �           2606    25050 .   emplacements emplacements_id_localisation_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.emplacements
    ADD CONSTRAINT emplacements_id_localisation_fkey FOREIGN KEY (id_localisation) REFERENCES public.localisations(id_localisation);
 X   ALTER TABLE ONLY public.emplacements DROP CONSTRAINT emplacements_id_localisation_fkey;
       public               postgres    false    4783    225    230            �           2606    25055 )   emplacements emplacements_id_ouvrage_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.emplacements
    ADD CONSTRAINT emplacements_id_ouvrage_fkey FOREIGN KEY (id_ouvrage) REFERENCES public.ouvrages(id_ouvrage);
 S   ALTER TABLE ONLY public.emplacements DROP CONSTRAINT emplacements_id_ouvrage_fkey;
       public               postgres    false    4787    225    231            �           2606    25060 *   evenements evenements_id_bibliotheque_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.evenements
    ADD CONSTRAINT evenements_id_bibliotheque_fkey FOREIGN KEY (id_bibliotheque) REFERENCES public.bibliotheques(id_bibliotheque) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.evenements DROP CONSTRAINT evenements_id_bibliotheque_fkey;
       public               postgres    false    226    4773    221            �           2606    25065    genres genres_isbn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_isbn_fkey FOREIGN KEY (isbn) REFERENCES public.ouvrages(isbn) ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.genres DROP CONSTRAINT genres_isbn_fkey;
       public               postgres    false    231    4785    228            �           2606    25070 0   localisations localisations_id_bibliotheque_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.localisations
    ADD CONSTRAINT localisations_id_bibliotheque_fkey FOREIGN KEY (id_bibliotheque) REFERENCES public.bibliotheques(id_bibliotheque);
 Z   ALTER TABLE ONLY public.localisations DROP CONSTRAINT localisations_id_bibliotheque_fkey;
       public               postgres    false    221    230    4773            �           2606    25075 $   ouvrages ouvrages_id_collection_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ouvrages
    ADD CONSTRAINT ouvrages_id_collection_fkey FOREIGN KEY (id_collection) REFERENCES public.collections(id_collection) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.ouvrages DROP CONSTRAINT ouvrages_id_collection_fkey;
       public               postgres    false    4775    223    231            �           2606    25080 @   participation_evenements participation_evenements_id_abonne_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.participation_evenements
    ADD CONSTRAINT participation_evenements_id_abonne_fkey FOREIGN KEY (id_abonne) REFERENCES public.abonnes(id_abonne) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.participation_evenements DROP CONSTRAINT participation_evenements_id_abonne_fkey;
       public               postgres    false    4769    233    217            �           2606    25085 C   participation_evenements participation_evenements_id_evenement_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.participation_evenements
    ADD CONSTRAINT participation_evenements_id_evenement_fkey FOREIGN KEY (id_evenement) REFERENCES public.evenements(id_evenement) ON DELETE CASCADE;
 m   ALTER TABLE ONLY public.participation_evenements DROP CONSTRAINT participation_evenements_id_evenement_fkey;
       public               postgres    false    226    4779    233            �           2606    25090    prets prets_id_abonne_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prets
    ADD CONSTRAINT prets_id_abonne_fkey FOREIGN KEY (id_abonne) REFERENCES public.abonnes(id_abonne) ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.prets DROP CONSTRAINT prets_id_abonne_fkey;
       public               postgres    false    217    235    4769            �           2606    25095    prets prets_id_ouvrage_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prets
    ADD CONSTRAINT prets_id_ouvrage_fkey FOREIGN KEY (id_ouvrage) REFERENCES public.ouvrages(id_ouvrage) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.prets DROP CONSTRAINT prets_id_ouvrage_fkey;
       public               postgres    false    231    235    4787            �           2606    25100 (   reservations reservations_id_abonne_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_id_abonne_fkey FOREIGN KEY (id_abonne) REFERENCES public.abonnes(id_abonne) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_id_abonne_fkey;
       public               postgres    false    237    217    4769            �           2606    25105 )   reservations reservations_id_ouvrage_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_id_ouvrage_fkey FOREIGN KEY (id_ouvrage) REFERENCES public.ouvrages(id_ouvrage) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_id_ouvrage_fkey;
       public               postgres    false    231    4787    237            �           2606    25110 3   transferts transferts_bibliotheque_destination_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transferts
    ADD CONSTRAINT transferts_bibliotheque_destination_fkey FOREIGN KEY (bibliotheque_destination) REFERENCES public.bibliotheques(id_bibliotheque) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.transferts DROP CONSTRAINT transferts_bibliotheque_destination_fkey;
       public               postgres    false    4773    221    239            �           2606    25115 /   transferts transferts_bibliotheque_origine_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transferts
    ADD CONSTRAINT transferts_bibliotheque_origine_fkey FOREIGN KEY (bibliotheque_origine) REFERENCES public.bibliotheques(id_bibliotheque) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.transferts DROP CONSTRAINT transferts_bibliotheque_origine_fkey;
       public               postgres    false    4773    239    221            �           2606    25120 %   transferts transferts_id_ouvrage_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transferts
    ADD CONSTRAINT transferts_id_ouvrage_fkey FOREIGN KEY (id_ouvrage) REFERENCES public.ouvrages(id_ouvrage) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.transferts DROP CONSTRAINT transferts_id_ouvrage_fkey;
       public               postgres    false    231    239    4787            b   �  x�m�K��0D������e~�``F�e6m�cs��AK�\)���Ҥ�̦*�AbUI��|qv���h�1
_�A����(��i�D!X	;���pp���p���(f�Jm+Y[i���Jz/�׋��+WX��GxШ���E���֬��M�����}|̀�|I@�Z��IM�d���/�9��-��=�v�o������Y�����dë��5�$`�dB�2l��z����R����
:Ln��!+�ƜDe���YSLoa�kP�l�%�����K*�ϳ3x�).�5�W�VT�,|V>��FiM1-�����[�b�LT!�)�xg�X\v�x��g]�v4LԩWO7J톟6��S1Z&B3�w����v�ԏ�=�I��h�+�^���AK䯫�ަ��Lt�p��"�=�q�p���Z�y��B�p���Z
҄ɏ��ߧ�P�xFo��75�&?-Z�&�be��<��3\�����ij��3��уI_      d   �   x�-�1N�0E��)�AqB`[giaii�3J,9N��܀�{��r1&�j�7��/
��s$�(�ɬ�lߖ��{���L%�5ʕ��E|U�d<ȸ����a��v��t�V�݉V��=A�'V�0?n�������5����U�.�پ���&�\I~D�(��J5����%�U=��Z3��N�@U��v��w�F�<�����-��8�*��+͇�Ӣ�r Q�KT&	�n�4ƦR�u'�]eY���k�      f   �   x�}�=�0��>�O�H�gث"��X�Za����H:�����l��\��1~��qϽS�����t;F��^ެ/q�7��Dx;� �w�O��A��r(������riZ�[h%T�6}'TP�Nl-�c����Z�      h   0  x�-�KN�0���S��$h���v�JU+vlL2jGr<�T��IP�1|1&K����Vք@	��Q[��-���4�CU����2Z�&��[�	񪁍��#B�\.�l(D&/n�6O't�`�5��~���=��q}�M�����3�
p�DV��P54.RG�5yvlSL������V�z�F�5���t�������Z�aK1�IVȿ^��8�2�B˖xά��g�x<ΑG�(O���k;3���=�'	�q����ƾ��;�{\�W�,����b�{��3�k�?ݓ7'��$_�G�v����$��      j   w   x�αD1B���1���^~�u�����B���ypЇ�\�0�zxqї���𢄰�B����j��2¦&��fߗz	�c��b%��|1�ډ��:����dL����60f      k   $  x�}P�m�0=KSh��P�-z녑i��>�>>w���9�I')��/-���}���.T��V�)�	s/��Ө&~�L��Lj��s���Q�� 9e��}׏�n�:q��xHh���?��۔�W&�..>�C>�1*������x��H*�Z�7B��� N�͵��Q�)�SL�V=��s�l�Y�f�L���N�.�wb�Gq2�ܚ1��,��Rrji�������z��e愳w��-�(�rO�0_#iMq���٢K@��<��ǖ��B�M-gHw���|�K) 
:��      m     x�m��j�0��s�.[���KK饰�{	!ŀk��|��G_��������ďT��ibSVuA��\����r������ۏ�6{M-cԳ�M��CY���T�z��0~�LX�z�&��4�z��U���z]R���?Pb�:�R�s��I��QQ�o�,t���Br�����z�!���a�)N}��:t�cP�D�<���d׊B$B��M��A"��E�d�A%�����VЈ�h+��8qXpv�r�� "�R�H,H����N��a��������      o   �   x�U�;
A����@�z;�T11X��Kx��D�7�?�jA߯�c�<�Y/�� ���������\˘=����>��>;$���R�D6F	��,;�<�*��p
T����&�
�Be}�mN��FT�      p   �  x����n�6�ל��.+�$�g9���v�A�p$�bL�*&Qޠo���b��La)c��4���|��Qt+,�'�?�j=v�-�|�[?���_)�F$�qR(%�&�H(CuY�f9+���X�>�?
�=n����������n��[>	3����>Ҫ�J�t���(]�ݾ鴑���GaZ�nx�R9(���	�:�R'��%�e+��[���P��Fﴳ���k+{�?�֌$$Kh>��s�������hX�����F૷x%�}�TJЪYB�$]�2l�
��V4F�X�M�
�6J��xk�Qu�'�%�̥�"_�.Gm��Jbx��7878|�}{xF[���`�2��~W��w!6�ýhÍ��{�������	���*�^�ޤ
ƞ�Ⱦ�Pٵ�r�Ç����I���킄�/��ټdy�����
h/M �9J^Pt��i ��G��Ȣ2��/�i�W�2�N�~��{�F�7�����ş��A�G:ݩ�:Z� �Fȋ,�yC����{���`�;γ�p	/"�����)~+��ycP|ͨ,�����,H��EZх�֊KX
��Vj��l������H�#�r������%�e�ŭ�1�I4�]���^�q�&��s[�V{�����z�Ve�U%�B+�]TJ#�	@*g��	_��YH0�~��z.�.�8��Jh{��*�����s5?a.	��`�_�gmT���t9�iD��!ȣ��4:��8��x^Y�yHhaJ!.ĸ���=��_;��4]fh�a�_B�O�:��3���R ]�q�=��5{Z%�cX���F�K��3��e��ҙ	_)���}��m]�G�p5�ǩ�X|j���߮V��6��      r   L   x���	�0ľuÔ����t�9z!c��$��H5mCi��ͦu8���(n������(L)ӊ����^�K�3)�      t   �   x�e��!C��]Z�@,�	n�9���?|z&F�p�5�Wӗ��ڠ51ܘ��������N�i�8'��[˯3Ǒ�ln��$�('$�3gb���2����ȝ�i�Ɔ�z��3'KE�mމ'�H�����,5���N�gVG*�sg?	Nb l��_��|�Tx}��:��"�At]M      v   �   x�u�AJ1���Sx�'M�t:Ko����V��P��]���KRpۏ$%%pf�d�d�S�{9ϣ�Gb0���������s$A�������I�Ũ���
UC�M+�V_��2t3�ld��6������t�}GW�P�ǃ+f�;�#��^}�L��/s�V��Ը�1�O��J��-nj��p�?�V���S�9�T�C �S���UB�������!������d�V���}�O)�@��>      x   �   x�U�AN�0E�?���b'v�p�l�v��s&���NlK]|��J�%����r�|�������y��.1�_�J����s+��Ѱ���C�Q+�)�=�hXq�L!jԈ��)�aȌ�7�M�4�������ҢaA�2+h����X�O�54O@�y����q��c/�Ѽy�5��� o�Hh��9�[<j{�Q��j�?'�6Jޅ�QN��uh8�:�y ����n�<m���r��Cqu4�������)��     