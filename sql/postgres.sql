PGDMP     :    1    
            x           sweater    12.2    12.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24577    sweater    DATABASE     �   CREATE DATABASE sweater WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE sweater;
                postgres    false                       0    0    DATABASE sweater    ACL     )   GRANT ALL ON DATABASE sweater TO dbuser;
                   postgres    false    2838            �            1259    40973    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          dbuser    false            �            1259    40975    message    TABLE     �   CREATE TABLE public.message (
    id integer NOT NULL,
    filename character varying(255),
    tag character varying(255),
    text character varying(255),
    user_id bigint
);
    DROP TABLE public.message;
       public         heap    dbuser    false            �            1259    40983 	   user_role    TABLE     a   CREATE TABLE public.user_role (
    user_id bigint NOT NULL,
    roles character varying(255)
);
    DROP TABLE public.user_role;
       public         heap    dbuser    false            �            1259    40986    usr    TABLE     �   CREATE TABLE public.usr (
    id bigint NOT NULL,
    activation_code character varying(255),
    active boolean NOT NULL,
    email character varying(255),
    password character varying(255),
    username character varying(255)
);
    DROP TABLE public.usr;
       public         heap    dbuser    false                      0    40975    message 
   TABLE DATA           C   COPY public.message (id, filename, tag, text, user_id) FROM stdin;
    public          dbuser    false    203   �                 0    40983 	   user_role 
   TABLE DATA           3   COPY public.user_role (user_id, roles) FROM stdin;
    public          dbuser    false    204   �                 0    40986    usr 
   TABLE DATA           U   COPY public.usr (id, activation_code, active, email, password, username) FROM stdin;
    public          dbuser    false    205   �                  0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
          public          dbuser    false    202            �
           2606    40982    message message_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.message DROP CONSTRAINT message_pkey;
       public            dbuser    false    203            �
           2606    40993    usr usr_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.usr
    ADD CONSTRAINT usr_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.usr DROP CONSTRAINT usr_pkey;
       public            dbuser    false    205            �
           2606    40994 #   message fk70bv6o4exfe3fbrho7nuotopf    FK CONSTRAINT     �   ALTER TABLE ONLY public.message
    ADD CONSTRAINT fk70bv6o4exfe3fbrho7nuotopf FOREIGN KEY (user_id) REFERENCES public.usr(id);
 M   ALTER TABLE ONLY public.message DROP CONSTRAINT fk70bv6o4exfe3fbrho7nuotopf;
       public          dbuser    false    203    2700    205            �
           2606    40999 $   user_role fkfpm8swft53ulq2hl11yplpr5    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT fkfpm8swft53ulq2hl11yplpr5 FOREIGN KEY (user_id) REFERENCES public.usr(id);
 N   ALTER TABLE ONLY public.user_role DROP CONSTRAINT fkfpm8swft53ulq2hl11yplpr5;
       public          dbuser    false    2700    204    205                  x������ � �            x������ � �            x������ � �     