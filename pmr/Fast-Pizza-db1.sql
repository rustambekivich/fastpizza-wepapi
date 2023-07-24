PGDMP     #                    {            Fast-Pizza-db    15.3    15.3 2    N           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            O           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            P           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Q           1262    25772    Fast-Pizza-db    DATABASE     �   CREATE DATABASE "Fast-Pizza-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1252';
    DROP DATABASE "Fast-Pizza-db";
                postgres    false            �            1259    25829    branch    TABLE     &  CREATE TABLE public.branch (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.branch;
       public         heap    postgres    false            �            1259    25828    branch_id_seq    SEQUENCE     �   ALTER TABLE public.branch ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.branch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    25774 
   categories    TABLE       CREATE TABLE public.categories (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    description text,
    image_path text NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    25773    categories_id_seq    SEQUENCE     �   ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    25799 	   customers    TABLE     <  CREATE TABLE public.customers (
    id bigint NOT NULL,
    full_name character varying(200),
    phone_number character varying(13),
    image_path_customer text,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    email character varying(200)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    25798    customers_id_seq    SEQUENCE     �   ALTER TABLE public.customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    25819 
   deliveries    TABLE     C  CREATE TABLE public.deliveries (
    id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    middle_name character varying(50),
    phone_number character varying(13) NOT NULL,
    passport_seria_number character varying(9),
    is_male boolean NOT NULL,
    birth_date date NOT NULL,
    was_born text NOT NULL,
    password_hash text NOT NULL,
    salt text NOT NULL,
    image_path text NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.deliveries;
       public         heap    postgres    false            �            1259    25818    deliveries_id_seq    SEQUENCE     �   ALTER TABLE public.deliveries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.deliveries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    25862    order_items    TABLE       CREATE TABLE public.order_items (
    id bigint NOT NULL,
    order_id bigint,
    product_id bigint,
    quantity bigint NOT NULL,
    total_price double precision NOT NULL,
    discount_price double precision NOT NULL,
    result_price double precision NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.order_items;
       public         heap    postgres    false            �            1259    25861    order_items_id_seq    SEQUENCE     �   ALTER TABLE public.order_items ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    25837    orders    TABLE        CREATE TABLE public.orders (
    id bigint NOT NULL,
    customer_id bigint,
    delivery_id bigint,
    status text NOT NULL,
    products_price double precision NOT NULL,
    delivery_price double precision,
    result_price double precision NOT NULL,
    latitude double precision,
    longitude double precision,
    payment_type text,
    is_paid boolean,
    description text,
    order_type text,
    branch_id bigint,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    25836    orders_id_seq    SEQUENCE     �   ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            �            1259    25784    products    TABLE     L  CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    image_path text NOT NULL,
    unit_price double precision NOT NULL,
    category_id bigint,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    25783    products_id_seq    SEQUENCE     �   ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    25809    users    TABLE     _  CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    middle_name character varying(50),
    phone_number character varying(13) NOT NULL,
    passport_seria_number character varying(9),
    is_male boolean NOT NULL,
    birth_date date NOT NULL,
    was_born text NOT NULL,
    password_hash text NOT NULL,
    salt text NOT NULL,
    image_path text NOT NULL,
    identity_role text NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    25808    users_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            G          0    25829    branch 
   TABLE DATA           W   COPY public.branch (id, name, latitude, longitude, created_at, updated_at) FROM stdin;
    public          postgres    false    225   �B       =          0    25774 
   categories 
   TABLE DATA           _   COPY public.categories (id, name, description, image_path, created_at, updated_at) FROM stdin;
    public          postgres    false    215   �B       A          0    25799 	   customers 
   TABLE DATA           t   COPY public.customers (id, full_name, phone_number, image_path_customer, created_at, updated_at, email) FROM stdin;
    public          postgres    false    219   �C       E          0    25819 
   deliveries 
   TABLE DATA           �   COPY public.deliveries (id, first_name, last_name, middle_name, phone_number, passport_seria_number, is_male, birth_date, was_born, password_hash, salt, image_path, created_at, updated_at) FROM stdin;
    public          postgres    false    223   cD       K          0    25862    order_items 
   TABLE DATA           �   COPY public.order_items (id, order_id, product_id, quantity, total_price, discount_price, result_price, created_at, updated_at) FROM stdin;
    public          postgres    false    229   �D       I          0    25837    orders 
   TABLE DATA           �   COPY public.orders (id, customer_id, delivery_id, status, products_price, delivery_price, result_price, latitude, longitude, payment_type, is_paid, description, order_type, branch_id, created_at, updated_at) FROM stdin;
    public          postgres    false    227   �D       ?          0    25784    products 
   TABLE DATA           v   COPY public.products (id, name, description, image_path, unit_price, category_id, created_at, updated_at) FROM stdin;
    public          postgres    false    217   �D       C          0    25809    users 
   TABLE DATA           �   COPY public.users (id, first_name, last_name, middle_name, phone_number, passport_seria_number, is_male, birth_date, was_born, password_hash, salt, image_path, identity_role, created_at, updated_at) FROM stdin;
    public          postgres    false    221   $F       R           0    0    branch_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.branch_id_seq', 1, false);
          public          postgres    false    224            S           0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 10, true);
          public          postgres    false    214            T           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 3, true);
          public          postgres    false    218            U           0    0    deliveries_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.deliveries_id_seq', 1, false);
          public          postgres    false    222            V           0    0    order_items_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.order_items_id_seq', 1, false);
          public          postgres    false    228            W           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 1, false);
          public          postgres    false    226            X           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 8, true);
          public          postgres    false    216            Y           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    220            �           2606    25835    branch branch_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.branch
    ADD CONSTRAINT branch_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.branch DROP CONSTRAINT branch_pkey;
       public            postgres    false    225            �           2606    25782    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    215            �           2606    25807    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    219            �           2606    25827    deliveries deliveries_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.deliveries
    ADD CONSTRAINT deliveries_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.deliveries DROP CONSTRAINT deliveries_pkey;
       public            postgres    false    223            �           2606    25868    order_items order_items_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_pkey;
       public            postgres    false    229            �           2606    25845    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    227            �           2606    25792    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    217            �           2606    25817    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    221            �           2606    25869 %   order_items order_items_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id);
 O   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_order_id_fkey;
       public          postgres    false    229    3237    227            �           2606    25874 '   order_items order_items_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);
 Q   ALTER TABLE ONLY public.order_items DROP CONSTRAINT order_items_product_id_fkey;
       public          postgres    false    229    217    3227            �           2606    25856    orders orders_branch_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.branch(id);
 F   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_branch_id_fkey;
       public          postgres    false    225    227    3235            �           2606    25846    orders orders_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);
 H   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_customer_id_fkey;
       public          postgres    false    227    3229    219            �           2606    25851    orders orders_delivery_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_delivery_id_fkey FOREIGN KEY (delivery_id) REFERENCES public.deliveries(id);
 H   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_delivery_id_fkey;
       public          postgres    false    3233    223    227            �           2606    25793 "   products products_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_category_id_fkey;
       public          postgres    false    3225    217    215            G      x������ � �      =   �   x���;n! k8 ��gY�Q
 R����ț8Y��OR���t#M1��p]iۈ??x|���i_�M��P�u�K�/bk<(�ѱ�9?�^'�����k��Ď���Xk�%���QX�NC�����`�9o�5��%��-��4�N����S�f�5A����u�t��R))x��۹ݷ-(H��K��>RQf#���td      A   �   x�}�K
� �ᱮ"�ѫ�ר�
�H5M �]};�f���� ��9�8OqX��6ư���T¼�.-�+8Ȗ���֣�L:@U+�k���ȑ__9#{N�B��]y�1U���B2��h�7#9����^��N	���/��,(0�7!2�5p���(�ĸi@      E      x������ � �      K      x������ � �      I      x������ � �      ?   Z  x�u��n�0E��W�"C���.Pt�UW������f��_gV-��.	�si��k����������7�Z���r�6K�����s������/��%'-�#SY� "s�)!y�I��y�(m��
�nD#�Ə;�q3h7p������{��[{�`����W:�ҭ�T�Je���ڽQ�o㲦R�+�c�K� #��3�a
�l���Ϲ���� �Q6���^��� �w��{���Żɧ2��r���mM��=�mS�˼�<�iOT��Rh��%���R�k�^?S�B�d� &`0�aȭd<M����`��M�c	��]���ݓ��v�۶� {J��      C      x������ � �     