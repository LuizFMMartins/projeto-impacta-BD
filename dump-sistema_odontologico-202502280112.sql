PGDMP  4                    }            sistema_odontologico    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16578    sistema_odontologico    DATABASE     �   CREATE DATABASE sistema_odontologico WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 $   DROP DATABASE sistema_odontologico;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    16603    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    senha text NOT NULL,
    telefone character varying(15),
    cpf character varying(14),
    datanascimento date,
    endereco text,
    sexo character varying(10),
    role character varying(10) DEFAULT 'paciente'::character varying NOT NULL
);
    DROP TABLE public.users;
       public         heap r       postgres    false    4            �            1259    16602    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    218    4            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    217            W           2604    16606    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �          0    16603    users 
   TABLE DATA           l   COPY public.users (id, nome, email, senha, telefone, cpf, datanascimento, endereco, sexo, role) FROM stdin;
    public               postgres    false    218   �       �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 7, true);
          public               postgres    false    217            Z           2606    16612    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 postgres    false    218            \           2606    16610    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    218            �     x�e��n�0 Eg�+<�bl'$�V*� "��P���8�U? qh����Jw:W��'�2���K@Y�0IP�1&`D��#�ߥ�ʴg��.v�{�l�h�R}N��^�d���U���hݻ,����xOC���Σ1�C�C�Q	X9�+���QVYw��l@��SW8�Z%̤v0�W�z(�Onl��ݫ�F(�Jg~��}l�,��=5�C"��n�|�Of������}53y6۸鲺�nI	Da�b�P��8
���� !4F�e�oGQ*i�^PRm"     