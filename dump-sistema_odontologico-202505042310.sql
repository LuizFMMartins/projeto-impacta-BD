PGDMP      
                }            sistema_odontologico    17.2    17.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            	           1262    16578    sistema_odontologico    DATABASE     �   CREATE DATABASE sistema_odontologico WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 $   DROP DATABASE sistema_odontologico;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    65747    agendamentos    TABLE     �   CREATE TABLE public.agendamentos (
    id integer NOT NULL,
    pacientecpf character varying(14) NOT NULL,
    data date NOT NULL,
    horario time without time zone NOT NULL,
    motivo text NOT NULL
);
     DROP TABLE public.agendamentos;
       public         heap r       postgres    false    4            �            1259    65746    agendamentos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.agendamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.agendamentos_id_seq;
       public               postgres    false    4    220                       0    0    agendamentos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.agendamentos_id_seq OWNED BY public.agendamentos.id;
          public               postgres    false    219            �            1259    65756    contato    TABLE     �   CREATE TABLE public.contato (
    id integer NOT NULL,
    endereco text NOT NULL,
    telefone character varying(155) NOT NULL,
    whatsapp character varying(155) NOT NULL,
    email text NOT NULL,
    informacoes text NOT NULL
);
    DROP TABLE public.contato;
       public         heap r       postgres    false    4            �            1259    65755    contato_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contato_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.contato_id_seq;
       public               postgres    false    4    222                       0    0    contato_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.contato_id_seq OWNED BY public.contato.id;
          public               postgres    false    221            �            1259    16603    users    TABLE     �  CREATE TABLE public.users (
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
       public               postgres    false    218    4                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    217            c           2604    65750    agendamentos id    DEFAULT     r   ALTER TABLE ONLY public.agendamentos ALTER COLUMN id SET DEFAULT nextval('public.agendamentos_id_seq'::regclass);
 >   ALTER TABLE public.agendamentos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            d           2604    65759 
   contato id    DEFAULT     h   ALTER TABLE ONLY public.contato ALTER COLUMN id SET DEFAULT nextval('public.contato_id_seq'::regclass);
 9   ALTER TABLE public.contato ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            a           2604    16606    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218                      0    65747    agendamentos 
   TABLE DATA           N   COPY public.agendamentos (id, pacientecpf, data, horario, motivo) FROM stdin;
    public               postgres    false    220   �                 0    65756    contato 
   TABLE DATA           W   COPY public.contato (id, endereco, telefone, whatsapp, email, informacoes) FROM stdin;
    public               postgres    false    222   \       �          0    16603    users 
   TABLE DATA           l   COPY public.users (id, nome, email, senha, telefone, cpf, datanascimento, endereco, sexo, role) FROM stdin;
    public               postgres    false    218   4                   0    0    agendamentos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.agendamentos_id_seq', 10, true);
          public               postgres    false    219                       0    0    contato_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.contato_id_seq', 1, false);
          public               postgres    false    221                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 18, true);
          public               postgres    false    217            j           2606    65754    agendamentos agendamentos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.agendamentos
    ADD CONSTRAINT agendamentos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.agendamentos DROP CONSTRAINT agendamentos_pkey;
       public                 postgres    false    220            l           2606    65763    contato contato_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.contato
    ADD CONSTRAINT contato_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.contato DROP CONSTRAINT contato_pkey;
       public                 postgres    false    222            f           2606    16612    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 postgres    false    218            h           2606    16610    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    218               �   x�}�A�0����)�@��i�����ib�D.<�`"�����9�,qe�'CB�����c"��<��~�z#X��L�ܾ�Ҏ��ݝP�5,��ܒ����i�s�
�V���5��V��!9]iܣ"3�m&���lL�؜�������/�[���_�4Ww         �   x�U�=n�0Fg����a2�3u�=k&fm�	HL��&���C+m�C5=��G�Q����0�".
F��G�n�a�l̋mls�����C�Z�m+Q���&�n..�#���U
-��d�4^�i5}	B��e	i�`Z�Ni=���g
�GI?`�>zg�����PT�L
O��7{N��o�?�+�j7=�T+�E���TS      �   �  x���[��0���)|�@�򶫠��VEW��7	�r��O_�6u�i�pf΁L��� u9��-X�Rw�@G�;u�|�����_u�������Ei�[��Y�2'a
7s�����~�ߪY୅zŚ�$	�w9<��$L҆&-L��ΨӦq�N�M��2���>~�V��O�'Y��d��o������=�f�qa���f�mA9�ג�jfxk㚦���KNs��]�	YR��i�*U"�@B��wت��a��qO<��`���>-wj���3s��Tw�+��mKXzˊ��^_ﭿH�����m7m[4�G�G�
x+�3 �e�BIS"=2���y�+��<|,�:��|�Y���hJ~R���h�;�<Ѿ��O���S�-�f�����4����֛f�}p\��WX}�n����tu޾1k���uZz�٦��l���{
Ԉe	��� ���j��>�y     