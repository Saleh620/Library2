PGDMP                         y         	   Database4    13.0    13.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16882 	   Database4    DATABASE     o   CREATE DATABASE "Database4" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "Database4";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    16906    book    TABLE     �   CREATE TABLE public.book (
    book_id integer NOT NULL,
    author character varying(50) NOT NULL,
    title character varying(50),
    price double precision NOT NULL,
    availability boolean NOT NULL,
    publisher_id integer NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false    3            �            1259    16898    member_    TABLE     �   CREATE TABLE public.member_ (
    address text NOT NULL,
    register_date date NOT NULL,
    name character varying NOT NULL,
    member_id integer NOT NULL
);
    DROP TABLE public.member_;
       public         heap    postgres    false    3            �            1259    16931    member_book    TABLE     �   CREATE TABLE public.member_book (
    member_id integer NOT NULL,
    book_id integer NOT NULL,
    due_date date NOT NULL,
    return_date date NOT NULL
);
    DROP TABLE public.member_book;
       public         heap    postgres    false    3            �            1259    16890 	   publisher    TABLE     �   CREATE TABLE public.publisher (
    address text NOT NULL,
    name character varying NOT NULL,
    publisher_id integer NOT NULL
);
    DROP TABLE public.publisher;
       public         heap    postgres    false    3            �          0    16906    book 
   TABLE DATA           Y   COPY public.book (book_id, author, title, price, availability, publisher_id) FROM stdin;
    public          postgres    false    202          �          0    16898    member_ 
   TABLE DATA           J   COPY public.member_ (address, register_date, name, member_id) FROM stdin;
    public          postgres    false    201   �       �          0    16931    member_book 
   TABLE DATA           P   COPY public.member_book (member_id, book_id, due_date, return_date) FROM stdin;
    public          postgres    false    203   �       �          0    16890 	   publisher 
   TABLE DATA           @   COPY public.publisher (address, name, publisher_id) FROM stdin;
    public          postgres    false    200   �       3           2606    16910    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    202            5           2606    16912    book book_title_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_title_key UNIQUE (title);
 =   ALTER TABLE ONLY public.book DROP CONSTRAINT book_title_key;
       public            postgres    false    202            1           2606    16905    member_ member__pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.member_
    ADD CONSTRAINT member__pkey PRIMARY KEY (member_id);
 >   ALTER TABLE ONLY public.member_ DROP CONSTRAINT member__pkey;
       public            postgres    false    201            7           2606    16935    member_book member_book_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.member_book
    ADD CONSTRAINT member_book_pkey PRIMARY KEY (member_id, book_id);
 F   ALTER TABLE ONLY public.member_book DROP CONSTRAINT member_book_pkey;
       public            postgres    false    203    203            /           2606    16897    publisher publisher_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (publisher_id);
 B   ALTER TABLE ONLY public.publisher DROP CONSTRAINT publisher_pkey;
       public            postgres    false    200            8           2606    16913    book book_publisher_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_publisher_id_fkey FOREIGN KEY (publisher_id) REFERENCES public.publisher(publisher_id);
 E   ALTER TABLE ONLY public.book DROP CONSTRAINT book_publisher_id_fkey;
       public          postgres    false    202    200    2863            9           2606    16936 $   member_book member_book_book_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_book
    ADD CONSTRAINT member_book_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book(book_id);
 N   ALTER TABLE ONLY public.member_book DROP CONSTRAINT member_book_book_id_fkey;
       public          postgres    false    2867    202    203            :           2606    16941 &   member_book member_book_member_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_book
    ADD CONSTRAINT member_book_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.member_(member_id);
 P   ALTER TABLE ONLY public.member_book DROP CONSTRAINT member_book_member_id_fkey;
       public          postgres    false    2865    203    201            �   �  x�]QAn�0<�_��oA�XnzT"b�@�^
_��*ژ"�������4Vx����pF^��Wbg�����%Q�Á�	 #a1^���4��*�fsD��d���ʉ���7���5P����V�H�w��I��5k�����dB��/�8 t'�d����wp�	]݂}#����d&#��jټ2d!��@��57��s��(NM��G�[&�shE��\���n�;�+6�C��ˇ�OyVn�vٶ?�&���T���)��Vpg⑜�����DC��w�9�d�I���Jj�q6�v�ݠVޚ���z֔��i�A�9��s�Npﱃ{�F�L�	�j5u�H�$�(C��W�
PE��3���Q������e�X,��,��      �   �   x�e��
�0���S����Sw�EDЃ��x�kJ�
�|{3�9�|�G&F�Yh�ځ��k�^�{�*����E��J��L�.��g���Ɔ��+<��F�(Sr�*�Ey�L�梨��By��#nR�ѽ��T����`M���7u7��oв0�殏��p�0ڈ�ҏP�l`:Gw����#��N�8�'�SV      �   B   x�-���0C��x*�}(�t�9�HH\8��H��4K*ze�LB9�_�,��O2���������q�      �   �   x�M�KjC1E��*������a
� �I!t"����G�v��n�rɠp���pu�����w���皱Dt��h8��Q$��6�4�K�)�jHZп�1}�#&��3�4�Z%Sf�h�gNؖ�����6��:��t!�k��4��0��S�?pBji��)\�[ %� ����w��X7m��܏_w]��/B,|1�8�k ���X8     