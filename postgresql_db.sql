PGDMP         %                x            sch2o    12.3    12.3 3   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    31241    sch2o    DATABASE     �   CREATE DATABASE sch2o WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
    DROP DATABASE sch2o;
                postgres    false            �            1259    31273 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    31271    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    31283    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    31281    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    31265    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    31263    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    31291 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    31301    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    31299    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    31289    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    31309    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    31307 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    31498    catastro_abonado    TABLE     �  CREATE TABLE public.catastro_abonado (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    identificacion character varying(13) NOT NULL,
    apellidos character varying(50) NOT NULL,
    nombres character varying(50) NOT NULL,
    direccion character varying(50),
    email character varying(254),
    web character varying(200),
    telefono character varying(15),
    celular character varying(15),
    fecha_nacimiento date,
    sexo character varying(50) NOT NULL,
    foto character varying(100),
    barrio_id integer NOT NULL,
    uc_id integer NOT NULL
);
 $   DROP TABLE public.catastro_abonado;
       public         heap    postgres    false            �            1259    31496    catastro_abonado_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catastro_abonado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.catastro_abonado_id_seq;
       public          postgres    false    233            �           0    0    catastro_abonado_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.catastro_abonado_id_seq OWNED BY public.catastro_abonado.id;
          public          postgres    false    232            �            1259    31583    catastro_barrio    TABLE       CREATE TABLE public.catastro_barrio (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    descripcion character varying(254) NOT NULL,
    uc_id integer NOT NULL
);
 #   DROP TABLE public.catastro_barrio;
       public         heap    postgres    false            �            1259    31581    catastro_barrio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catastro_barrio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.catastro_barrio_id_seq;
       public          postgres    false    245            �           0    0    catastro_barrio_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.catastro_barrio_id_seq OWNED BY public.catastro_barrio.id;
          public          postgres    false    244            �            1259    31511    catastro_catastro    TABLE     �  CREATE TABLE public.catastro_catastro (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    numero integer NOT NULL,
    fecha timestamp with time zone NOT NULL,
    descripcion character varying(254),
    suspender boolean NOT NULL,
    peticionario character varying(7) NOT NULL,
    derecho_conexion boolean NOT NULL,
    alcantarillado boolean NOT NULL,
    abonado_id integer NOT NULL,
    descuento_id integer NOT NULL,
    medidor_id integer NOT NULL,
    pago_id integer NOT NULL,
    servicio_id integer NOT NULL,
    uc_id integer NOT NULL
);
 %   DROP TABLE public.catastro_catastro;
       public         heap    postgres    false            �            1259    31509    catastro_catastro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catastro_catastro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.catastro_catastro_id_seq;
       public          postgres    false    235            �           0    0    catastro_catastro_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.catastro_catastro_id_seq OWNED BY public.catastro_catastro.id;
          public          postgres    false    234            �            1259    31521    catastro_lectura    TABLE     ;  CREATE TABLE public.catastro_lectura (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    periodo date NOT NULL,
    descripcion character varying(150) NOT NULL,
    consumo_total integer NOT NULL,
    total_base numeric(10,2) NOT NULL,
    total_base_reserva numeric(10,2) NOT NULL,
    total_excedente numeric(10,2) NOT NULL,
    total_consumo_maximo numeric(10,2) NOT NULL,
    total_administracion numeric(10,2) NOT NULL,
    total_alcantarillado numeric(10,2) NOT NULL,
    total_derecho_conexion numeric(10,2) NOT NULL,
    total_otros numeric(10,2) NOT NULL,
    total_general numeric(10,2) NOT NULL,
    uc_id integer NOT NULL,
    CONSTRAINT catastro_lectura_consumo_total_check CHECK ((consumo_total >= 0))
);
 $   DROP TABLE public.catastro_lectura;
       public         heap    postgres    false            �            1259    31519    catastro_lectura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catastro_lectura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.catastro_lectura_id_seq;
       public          postgres    false    237            �           0    0    catastro_lectura_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.catastro_lectura_id_seq OWNED BY public.catastro_lectura.id;
          public          postgres    false    236            �            1259    31550    catastro_lecturadetalle    TABLE     Q  CREATE TABLE public.catastro_lecturadetalle (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    lectura_anterior integer NOT NULL,
    lectura_actual integer NOT NULL,
    consumo integer NOT NULL,
    base numeric(4,2) NOT NULL,
    base_reserva numeric(4,2) NOT NULL,
    valor_consumo_maximo numeric(10,2) NOT NULL,
    valor_excedente numeric(10,2) NOT NULL,
    administracion numeric(10,2) NOT NULL,
    alcantarillado numeric(10,2) NOT NULL,
    derecho_conexion numeric(10,2) NOT NULL,
    peticionario character varying(7),
    total numeric(10,2) NOT NULL,
    catastro_id integer NOT NULL,
    lectura_id integer NOT NULL,
    tarifa_id integer NOT NULL,
    tipo_lectura_id integer NOT NULL,
    uc_id integer NOT NULL,
    CONSTRAINT catastro_lecturadetalle_consumo_check CHECK ((consumo >= 0)),
    CONSTRAINT catastro_lecturadetalle_lectura_actual_check CHECK ((lectura_actual >= 0)),
    CONSTRAINT catastro_lecturadetalle_lectura_anterior_check CHECK ((lectura_anterior >= 0))
);
 +   DROP TABLE public.catastro_lecturadetalle;
       public         heap    postgres    false            �            1259    31548    catastro_lecturadetalle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catastro_lecturadetalle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.catastro_lecturadetalle_id_seq;
       public          postgres    false    243            �           0    0    catastro_lecturadetalle_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.catastro_lecturadetalle_id_seq OWNED BY public.catastro_lecturadetalle.id;
          public          postgres    false    242            �            1259    31540    catastro_medidor    TABLE     �  CREATE TABLE public.catastro_medidor (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    numero character varying(50) NOT NULL,
    descripcion character varying(254),
    modelo character varying(30),
    lectura_inicial integer NOT NULL,
    asignar boolean NOT NULL,
    uc_id integer NOT NULL
);
 $   DROP TABLE public.catastro_medidor;
       public         heap    postgres    false            �            1259    31538    catastro_medidor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catastro_medidor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.catastro_medidor_id_seq;
       public          postgres    false    241            �           0    0    catastro_medidor_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.catastro_medidor_id_seq OWNED BY public.catastro_medidor.id;
          public          postgres    false    240            �            1259    31601    catastro_multadetalle    TABLE       CREATE TABLE public.catastro_multadetalle (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    lectura integer NOT NULL,
    catastro integer NOT NULL,
    cantidad integer NOT NULL,
    valor numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    lectura_detalle_id integer NOT NULL,
    multa_id integer NOT NULL,
    uc_id integer NOT NULL,
    CONSTRAINT catastro_multadetalle_cantidad_check CHECK ((cantidad >= 0))
);
 )   DROP TABLE public.catastro_multadetalle;
       public         heap    postgres    false            �            1259    31599    catastro_multadetalle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catastro_multadetalle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.catastro_multadetalle_id_seq;
       public          postgres    false    247            �           0    0    catastro_multadetalle_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.catastro_multadetalle_id_seq OWNED BY public.catastro_multadetalle.id;
          public          postgres    false    246            �            1259    31532    catastro_tipolectura    TABLE       CREATE TABLE public.catastro_tipolectura (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    descripcion character varying(50) NOT NULL,
    uc_id integer NOT NULL
);
 (   DROP TABLE public.catastro_tipolectura;
       public         heap    postgres    false            �            1259    31530    catastro_tipolectura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catastro_tipolectura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.catastro_tipolectura_id_seq;
       public          postgres    false    239            �           0    0    catastro_tipolectura_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.catastro_tipolectura_id_seq OWNED BY public.catastro_tipolectura.id;
          public          postgres    false    238            �            1259    31369    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    31367    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    31255    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    31253    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    31244    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    31242    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    31800    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    31451    parametro_descuento    TABLE     3  CREATE TABLE public.parametro_descuento (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    descripcion character varying(50) NOT NULL,
    valor numeric(4,2) NOT NULL,
    uc_id integer NOT NULL
);
 '   DROP TABLE public.parametro_descuento;
       public         heap    postgres    false            �            1259    31449    parametro_descuento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parametro_descuento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.parametro_descuento_id_seq;
       public          postgres    false    231            �           0    0    parametro_descuento_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.parametro_descuento_id_seq OWNED BY public.parametro_descuento.id;
          public          postgres    false    230            �            1259    31434    parametro_entidad    TABLE     
  CREATE TABLE public.parametro_entidad (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    ruc character varying(13) NOT NULL,
    descripcion character varying(150) NOT NULL,
    direccion character varying(150),
    telefono character varying(15),
    celular character varying(15),
    correo character varying(254),
    web character varying(200),
    logo character varying(100),
    uc_id integer NOT NULL
);
 %   DROP TABLE public.parametro_entidad;
       public         heap    postgres    false            �            1259    31432    parametro_entidad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parametro_entidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.parametro_entidad_id_seq;
       public          postgres    false    229            �           0    0    parametro_entidad_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.parametro_entidad_id_seq OWNED BY public.parametro_entidad.id;
          public          postgres    false    228            �            1259    31426    parametro_multa    TABLE     /  CREATE TABLE public.parametro_multa (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    descripcion character varying(50) NOT NULL,
    valor numeric(5,2) NOT NULL,
    uc_id integer NOT NULL
);
 #   DROP TABLE public.parametro_multa;
       public         heap    postgres    false            �            1259    31424    parametro_multa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parametro_multa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.parametro_multa_id_seq;
       public          postgres    false    227            �           0    0    parametro_multa_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.parametro_multa_id_seq OWNED BY public.parametro_multa.id;
          public          postgres    false    226            �            1259    31418    parametro_pago    TABLE       CREATE TABLE public.parametro_pago (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    descripcion character varying(50) NOT NULL,
    uc_id integer NOT NULL
);
 "   DROP TABLE public.parametro_pago;
       public         heap    postgres    false            �            1259    31416    parametro_pago_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parametro_pago_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.parametro_pago_id_seq;
       public          postgres    false    225            �           0    0    parametro_pago_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.parametro_pago_id_seq OWNED BY public.parametro_pago.id;
          public          postgres    false    224            �            1259    31410    parametro_servicio    TABLE     �  CREATE TABLE public.parametro_servicio (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    descripcion character varying(50) NOT NULL,
    base numeric(4,2) NOT NULL,
    base_reserva numeric(4,2) NOT NULL,
    base_consumo integer NOT NULL,
    consumo_maximo integer NOT NULL,
    valor_consumo_maximo numeric(5,2) NOT NULL,
    administracion numeric(5,2) NOT NULL,
    alcantarillado numeric(5,2) NOT NULL,
    derecho_conexion numeric(5,2) NOT NULL,
    derecho_conexion_nuevo_comunidad numeric(5,2) NOT NULL,
    uc_id integer NOT NULL
);
 &   DROP TABLE public.parametro_servicio;
       public         heap    postgres    false            �            1259    31408    parametro_servicio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parametro_servicio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.parametro_servicio_id_seq;
       public          postgres    false    223            �           0    0    parametro_servicio_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.parametro_servicio_id_seq OWNED BY public.parametro_servicio.id;
          public          postgres    false    222            �            1259    31402    parametro_tarifa    TABLE     �  CREATE TABLE public.parametro_tarifa (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    descripcion character varying(50) NOT NULL,
    rango_inicial integer NOT NULL,
    rango_superior integer NOT NULL,
    valor_excedente numeric(5,2) NOT NULL,
    uc_id integer NOT NULL
);
 $   DROP TABLE public.parametro_tarifa;
       public         heap    postgres    false            �            1259    31400    parametro_tarifa_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parametro_tarifa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.parametro_tarifa_id_seq;
       public          postgres    false    221            �           0    0    parametro_tarifa_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.parametro_tarifa_id_seq OWNED BY public.parametro_tarifa.id;
          public          postgres    false    220            �            1259    31705    recaudacion_recaudacion    TABLE     �  CREATE TABLE public.recaudacion_recaudacion (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    fecha date NOT NULL,
    descripcion character varying(150) NOT NULL,
    total_consumo integer,
    total_base numeric(10,2),
    total_base_reserva numeric(10,2),
    total_excedente numeric(10,2),
    total_consumo_maximo numeric(10,2),
    total_administracion numeric(10,2) NOT NULL,
    total_alcantarillado numeric(10,2) NOT NULL,
    total_derecho_conexion numeric(10,2) NOT NULL,
    total_otros numeric(10,2) NOT NULL,
    subtotal numeric(10,2),
    total_descuento numeric(10,2),
    total_general numeric(10,2),
    abonado_id integer NOT NULL,
    descuento_id integer NOT NULL,
    pago_id integer NOT NULL,
    uc_id integer NOT NULL,
    CONSTRAINT recaudacion_recaudacion_total_consumo_check CHECK ((total_consumo >= 0))
);
 +   DROP TABLE public.recaudacion_recaudacion;
       public         heap    postgres    false            �            1259    31703    recaudacion_recaudacion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recaudacion_recaudacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.recaudacion_recaudacion_id_seq;
       public          postgres    false    249            �           0    0    recaudacion_recaudacion_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.recaudacion_recaudacion_id_seq OWNED BY public.recaudacion_recaudacion.id;
          public          postgres    false    248            �            1259    31714    recaudacion_recaudaciondetalle    TABLE     *  CREATE TABLE public.recaudacion_recaudaciondetalle (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    catastro integer NOT NULL,
    lectura_anterior integer NOT NULL,
    lectura_actual integer NOT NULL,
    consumo integer NOT NULL,
    base numeric(4,2) NOT NULL,
    base_reserva numeric(4,2) NOT NULL,
    valor_consumo_maximo numeric(10,2) NOT NULL,
    valor_excedente numeric(10,2) NOT NULL,
    administracion numeric(10,2) NOT NULL,
    alcantarillado numeric(10,2) NOT NULL,
    derecho_conexion numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    lectura_detalle_id integer NOT NULL,
    recaudacion_id integer NOT NULL,
    uc_id integer NOT NULL,
    CONSTRAINT recaudacion_recaudaciondetalle_consumo_check CHECK ((consumo >= 0)),
    CONSTRAINT recaudacion_recaudaciondetalle_lectura_actual_check CHECK ((lectura_actual >= 0)),
    CONSTRAINT recaudacion_recaudaciondetalle_lectura_anterior_check CHECK ((lectura_anterior >= 0))
);
 2   DROP TABLE public.recaudacion_recaudaciondetalle;
       public         heap    postgres    false            �            1259    31712 %   recaudacion_recaudaciondetalle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recaudacion_recaudaciondetalle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.recaudacion_recaudaciondetalle_id_seq;
       public          postgres    false    251            �           0    0 %   recaudacion_recaudaciondetalle_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.recaudacion_recaudaciondetalle_id_seq OWNED BY public.recaudacion_recaudaciondetalle.id;
          public          postgres    false    250            �            1259    31725 #   recaudacion_recaudacionmultadetalle    TABLE     �  CREATE TABLE public.recaudacion_recaudacionmultadetalle (
    id integer NOT NULL,
    estado boolean NOT NULL,
    fc timestamp with time zone NOT NULL,
    fm timestamp with time zone NOT NULL,
    um integer,
    recaudacion integer NOT NULL,
    catastro integer NOT NULL,
    lectura integer NOT NULL,
    cantidad integer NOT NULL,
    valor numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    multa_id integer NOT NULL,
    multa_detalle_id integer NOT NULL,
    recaudacion_detalle_id integer NOT NULL,
    uc_id integer NOT NULL,
    CONSTRAINT recaudacion_recaudacionmultadetalle_cantidad_check CHECK ((cantidad >= 0))
);
 7   DROP TABLE public.recaudacion_recaudacionmultadetalle;
       public         heap    postgres    false            �            1259    31723 *   recaudacion_recaudacionmultadetalle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recaudacion_recaudacionmultadetalle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.recaudacion_recaudacionmultadetalle_id_seq;
       public          postgres    false    253            �           0    0 *   recaudacion_recaudacionmultadetalle_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.recaudacion_recaudacionmultadetalle_id_seq OWNED BY public.recaudacion_recaudacionmultadetalle.id;
          public          postgres    false    252            "           2604    31276    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            #           2604    31286    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            !           2604    31268    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            $           2604    31294    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            %           2604    31304    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            &           2604    31312    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            /           2604    31501    catastro_abonado id    DEFAULT     z   ALTER TABLE ONLY public.catastro_abonado ALTER COLUMN id SET DEFAULT nextval('public.catastro_abonado_id_seq'::regclass);
 B   ALTER TABLE public.catastro_abonado ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            9           2604    31586    catastro_barrio id    DEFAULT     x   ALTER TABLE ONLY public.catastro_barrio ALTER COLUMN id SET DEFAULT nextval('public.catastro_barrio_id_seq'::regclass);
 A   ALTER TABLE public.catastro_barrio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245            0           2604    31514    catastro_catastro id    DEFAULT     |   ALTER TABLE ONLY public.catastro_catastro ALTER COLUMN id SET DEFAULT nextval('public.catastro_catastro_id_seq'::regclass);
 C   ALTER TABLE public.catastro_catastro ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            1           2604    31524    catastro_lectura id    DEFAULT     z   ALTER TABLE ONLY public.catastro_lectura ALTER COLUMN id SET DEFAULT nextval('public.catastro_lectura_id_seq'::regclass);
 B   ALTER TABLE public.catastro_lectura ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237            5           2604    31553    catastro_lecturadetalle id    DEFAULT     �   ALTER TABLE ONLY public.catastro_lecturadetalle ALTER COLUMN id SET DEFAULT nextval('public.catastro_lecturadetalle_id_seq'::regclass);
 I   ALTER TABLE public.catastro_lecturadetalle ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243            4           2604    31543    catastro_medidor id    DEFAULT     z   ALTER TABLE ONLY public.catastro_medidor ALTER COLUMN id SET DEFAULT nextval('public.catastro_medidor_id_seq'::regclass);
 B   ALTER TABLE public.catastro_medidor ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            :           2604    31604    catastro_multadetalle id    DEFAULT     �   ALTER TABLE ONLY public.catastro_multadetalle ALTER COLUMN id SET DEFAULT nextval('public.catastro_multadetalle_id_seq'::regclass);
 G   ALTER TABLE public.catastro_multadetalle ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247            3           2604    31535    catastro_tipolectura id    DEFAULT     �   ALTER TABLE ONLY public.catastro_tipolectura ALTER COLUMN id SET DEFAULT nextval('public.catastro_tipolectura_id_seq'::regclass);
 F   ALTER TABLE public.catastro_tipolectura ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            '           2604    31372    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                        2604    31258    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205                       2604    31247    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            .           2604    31454    parametro_descuento id    DEFAULT     �   ALTER TABLE ONLY public.parametro_descuento ALTER COLUMN id SET DEFAULT nextval('public.parametro_descuento_id_seq'::regclass);
 E   ALTER TABLE public.parametro_descuento ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            -           2604    31437    parametro_entidad id    DEFAULT     |   ALTER TABLE ONLY public.parametro_entidad ALTER COLUMN id SET DEFAULT nextval('public.parametro_entidad_id_seq'::regclass);
 C   ALTER TABLE public.parametro_entidad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            ,           2604    31429    parametro_multa id    DEFAULT     x   ALTER TABLE ONLY public.parametro_multa ALTER COLUMN id SET DEFAULT nextval('public.parametro_multa_id_seq'::regclass);
 A   ALTER TABLE public.parametro_multa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            +           2604    31421    parametro_pago id    DEFAULT     v   ALTER TABLE ONLY public.parametro_pago ALTER COLUMN id SET DEFAULT nextval('public.parametro_pago_id_seq'::regclass);
 @   ALTER TABLE public.parametro_pago ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            *           2604    31413    parametro_servicio id    DEFAULT     ~   ALTER TABLE ONLY public.parametro_servicio ALTER COLUMN id SET DEFAULT nextval('public.parametro_servicio_id_seq'::regclass);
 D   ALTER TABLE public.parametro_servicio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            )           2604    31405    parametro_tarifa id    DEFAULT     z   ALTER TABLE ONLY public.parametro_tarifa ALTER COLUMN id SET DEFAULT nextval('public.parametro_tarifa_id_seq'::regclass);
 B   ALTER TABLE public.parametro_tarifa ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            <           2604    31708    recaudacion_recaudacion id    DEFAULT     �   ALTER TABLE ONLY public.recaudacion_recaudacion ALTER COLUMN id SET DEFAULT nextval('public.recaudacion_recaudacion_id_seq'::regclass);
 I   ALTER TABLE public.recaudacion_recaudacion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248    249            >           2604    31717 !   recaudacion_recaudaciondetalle id    DEFAULT     �   ALTER TABLE ONLY public.recaudacion_recaudaciondetalle ALTER COLUMN id SET DEFAULT nextval('public.recaudacion_recaudaciondetalle_id_seq'::regclass);
 P   ALTER TABLE public.recaudacion_recaudaciondetalle ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    250    251            B           2604    31728 &   recaudacion_recaudacionmultadetalle id    DEFAULT     �   ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle ALTER COLUMN id SET DEFAULT nextval('public.recaudacion_recaudacionmultadetalle_id_seq'::regclass);
 U   ALTER TABLE public.recaudacion_recaudacionmultadetalle ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    252    253            �          0    31273 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   g�      �          0    31283    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   ��      �          0    31265    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ��      �          0    31291 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   B�      �          0    31301    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   U�      �          0    31309    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   r�      �          0    31498    catastro_abonado 
   TABLE DATA           �   COPY public.catastro_abonado (id, estado, fc, fm, um, identificacion, apellidos, nombres, direccion, email, web, telefono, celular, fecha_nacimiento, sexo, foto, barrio_id, uc_id) FROM stdin;
    public          postgres    false    233   ��      �          0    31583    catastro_barrio 
   TABLE DATA           U   COPY public.catastro_barrio (id, estado, fc, fm, um, descripcion, uc_id) FROM stdin;
    public          postgres    false    245   �      �          0    31511    catastro_catastro 
   TABLE DATA           �   COPY public.catastro_catastro (id, estado, fc, fm, um, numero, fecha, descripcion, suspender, peticionario, derecho_conexion, alcantarillado, abonado_id, descuento_id, medidor_id, pago_id, servicio_id, uc_id) FROM stdin;
    public          postgres    false    235   ��      �          0    31521    catastro_lectura 
   TABLE DATA             COPY public.catastro_lectura (id, estado, fc, fm, um, periodo, descripcion, consumo_total, total_base, total_base_reserva, total_excedente, total_consumo_maximo, total_administracion, total_alcantarillado, total_derecho_conexion, total_otros, total_general, uc_id) FROM stdin;
    public          postgres    false    237   ��      �          0    31550    catastro_lecturadetalle 
   TABLE DATA           2  COPY public.catastro_lecturadetalle (id, estado, fc, fm, um, lectura_anterior, lectura_actual, consumo, base, base_reserva, valor_consumo_maximo, valor_excedente, administracion, alcantarillado, derecho_conexion, peticionario, total, catastro_id, lectura_id, tarifa_id, tipo_lectura_id, uc_id) FROM stdin;
    public          postgres    false    243   �      �          0    31540    catastro_medidor 
   TABLE DATA           �   COPY public.catastro_medidor (id, estado, fc, fm, um, numero, descripcion, modelo, lectura_inicial, asignar, uc_id) FROM stdin;
    public          postgres    false    241   �I      �          0    31601    catastro_multadetalle 
   TABLE DATA           �   COPY public.catastro_multadetalle (id, estado, fc, fm, um, lectura, catastro, cantidad, valor, total, lectura_detalle_id, multa_id, uc_id) FROM stdin;
    public          postgres    false    247   JT      �          0    31532    catastro_tipolectura 
   TABLE DATA           Z   COPY public.catastro_tipolectura (id, estado, fc, fm, um, descripcion, uc_id) FROM stdin;
    public          postgres    false    239   �T      �          0    31369    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   *U      �          0    31255    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   �U      �          0    31244    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �V      �          0    31800    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    254   �X      �          0    31451    parametro_descuento 
   TABLE DATA           `   COPY public.parametro_descuento (id, estado, fc, fm, um, descripcion, valor, uc_id) FROM stdin;
    public          postgres    false    231   �Y      �          0    31434    parametro_entidad 
   TABLE DATA           �   COPY public.parametro_entidad (id, estado, fc, fm, um, ruc, descripcion, direccion, telefono, celular, correo, web, logo, uc_id) FROM stdin;
    public          postgres    false    229   yZ      �          0    31426    parametro_multa 
   TABLE DATA           \   COPY public.parametro_multa (id, estado, fc, fm, um, descripcion, valor, uc_id) FROM stdin;
    public          postgres    false    227   ![      �          0    31418    parametro_pago 
   TABLE DATA           T   COPY public.parametro_pago (id, estado, fc, fm, um, descripcion, uc_id) FROM stdin;
    public          postgres    false    225   \\      �          0    31410    parametro_servicio 
   TABLE DATA           �   COPY public.parametro_servicio (id, estado, fc, fm, um, descripcion, base, base_reserva, base_consumo, consumo_maximo, valor_consumo_maximo, administracion, alcantarillado, derecho_conexion, derecho_conexion_nuevo_comunidad, uc_id) FROM stdin;
    public          postgres    false    223   �\      �          0    31402    parametro_tarifa 
   TABLE DATA           �   COPY public.parametro_tarifa (id, estado, fc, fm, um, descripcion, rango_inicial, rango_superior, valor_excedente, uc_id) FROM stdin;
    public          postgres    false    221   1]      �          0    31705    recaudacion_recaudacion 
   TABLE DATA           X  COPY public.recaudacion_recaudacion (id, estado, fc, fm, um, fecha, descripcion, total_consumo, total_base, total_base_reserva, total_excedente, total_consumo_maximo, total_administracion, total_alcantarillado, total_derecho_conexion, total_otros, subtotal, total_descuento, total_general, abonado_id, descuento_id, pago_id, uc_id) FROM stdin;
    public          postgres    false    249   �]      �          0    31714    recaudacion_recaudaciondetalle 
   TABLE DATA           $  COPY public.recaudacion_recaudaciondetalle (id, estado, fc, fm, um, catastro, lectura_anterior, lectura_actual, consumo, base, base_reserva, valor_consumo_maximo, valor_excedente, administracion, alcantarillado, derecho_conexion, total, lectura_detalle_id, recaudacion_id, uc_id) FROM stdin;
    public          postgres    false    251   Rw      �          0    31725 #   recaudacion_recaudacionmultadetalle 
   TABLE DATA           �   COPY public.recaudacion_recaudacionmultadetalle (id, estado, fc, fm, um, recaudacion, catastro, lectura, cantidad, valor, total, multa_id, multa_detalle_id, recaudacion_detalle_id, uc_id) FROM stdin;
    public          postgres    false    253   /�      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 92, true);
          public          postgres    false    206            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    212            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            �           0    0    catastro_abonado_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.catastro_abonado_id_seq', 1, false);
          public          postgres    false    232            �           0    0    catastro_barrio_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.catastro_barrio_id_seq', 1, false);
          public          postgres    false    244            �           0    0    catastro_catastro_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.catastro_catastro_id_seq', 1, false);
          public          postgres    false    234            �           0    0    catastro_lectura_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.catastro_lectura_id_seq', 1, false);
          public          postgres    false    236            �           0    0    catastro_lecturadetalle_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.catastro_lecturadetalle_id_seq', 1, false);
          public          postgres    false    242            �           0    0    catastro_medidor_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.catastro_medidor_id_seq', 1, false);
          public          postgres    false    240            �           0    0    catastro_multadetalle_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.catastro_multadetalle_id_seq', 1, false);
          public          postgres    false    246            �           0    0    catastro_tipolectura_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.catastro_tipolectura_id_seq', 1, false);
          public          postgres    false    238            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3, true);
          public          postgres    false    218            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 23, true);
          public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          postgres    false    202            �           0    0    parametro_descuento_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.parametro_descuento_id_seq', 1, false);
          public          postgres    false    230            �           0    0    parametro_entidad_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.parametro_entidad_id_seq', 1, false);
          public          postgres    false    228            �           0    0    parametro_multa_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.parametro_multa_id_seq', 1, false);
          public          postgres    false    226            �           0    0    parametro_pago_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.parametro_pago_id_seq', 1, false);
          public          postgres    false    224            �           0    0    parametro_servicio_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.parametro_servicio_id_seq', 1, false);
          public          postgres    false    222            �           0    0    parametro_tarifa_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.parametro_tarifa_id_seq', 1, false);
          public          postgres    false    220            �           0    0    recaudacion_recaudacion_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.recaudacion_recaudacion_id_seq', 1, false);
          public          postgres    false    248            �           0    0 %   recaudacion_recaudaciondetalle_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.recaudacion_recaudaciondetalle_id_seq', 1, false);
          public          postgres    false    250            �           0    0 *   recaudacion_recaudacionmultadetalle_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.recaudacion_recaudacionmultadetalle_id_seq', 1, false);
          public          postgres    false    252            Q           2606    31398    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            V           2606    31325 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            Y           2606    31288 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            S           2606    31278    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            L           2606    31316 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            N           2606    31270 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            a           2606    31306 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            d           2606    31340 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            [           2606    31296    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            g           2606    31314 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            j           2606    31354 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            ^           2606    31392     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            �           2606    31508 4   catastro_abonado catastro_abonado_identificacion_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.catastro_abonado
    ADD CONSTRAINT catastro_abonado_identificacion_key UNIQUE (identificacion);
 ^   ALTER TABLE ONLY public.catastro_abonado DROP CONSTRAINT catastro_abonado_identificacion_key;
       public            postgres    false    233            �           2606    31506 &   catastro_abonado catastro_abonado_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.catastro_abonado
    ADD CONSTRAINT catastro_abonado_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.catastro_abonado DROP CONSTRAINT catastro_abonado_pkey;
       public            postgres    false    233            �           2606    31588 $   catastro_barrio catastro_barrio_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.catastro_barrio
    ADD CONSTRAINT catastro_barrio_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.catastro_barrio DROP CONSTRAINT catastro_barrio_pkey;
       public            postgres    false    245            �           2606    31560 2   catastro_catastro catastro_catastro_medidor_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.catastro_catastro
    ADD CONSTRAINT catastro_catastro_medidor_id_key UNIQUE (medidor_id);
 \   ALTER TABLE ONLY public.catastro_catastro DROP CONSTRAINT catastro_catastro_medidor_id_key;
       public            postgres    false    235            �           2606    31518 .   catastro_catastro catastro_catastro_numero_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.catastro_catastro
    ADD CONSTRAINT catastro_catastro_numero_key UNIQUE (numero);
 X   ALTER TABLE ONLY public.catastro_catastro DROP CONSTRAINT catastro_catastro_numero_key;
       public            postgres    false    235            �           2606    31516 (   catastro_catastro catastro_catastro_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.catastro_catastro
    ADD CONSTRAINT catastro_catastro_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.catastro_catastro DROP CONSTRAINT catastro_catastro_pkey;
       public            postgres    false    235            �           2606    31529 -   catastro_lectura catastro_lectura_periodo_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.catastro_lectura
    ADD CONSTRAINT catastro_lectura_periodo_key UNIQUE (periodo);
 W   ALTER TABLE ONLY public.catastro_lectura DROP CONSTRAINT catastro_lectura_periodo_key;
       public            postgres    false    237            �           2606    31527 &   catastro_lectura catastro_lectura_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.catastro_lectura
    ADD CONSTRAINT catastro_lectura_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.catastro_lectura DROP CONSTRAINT catastro_lectura_pkey;
       public            postgres    false    237            �           2606    31641 T   catastro_lecturadetalle catastro_lecturadetalle_lectura_id_catastro_id_06f4a9f5_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catastro_lecturadetalle
    ADD CONSTRAINT catastro_lecturadetalle_lectura_id_catastro_id_06f4a9f5_uniq UNIQUE (lectura_id, catastro_id);
 ~   ALTER TABLE ONLY public.catastro_lecturadetalle DROP CONSTRAINT catastro_lecturadetalle_lectura_id_catastro_id_06f4a9f5_uniq;
       public            postgres    false    243    243            �           2606    31558 4   catastro_lecturadetalle catastro_lecturadetalle_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.catastro_lecturadetalle
    ADD CONSTRAINT catastro_lecturadetalle_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.catastro_lecturadetalle DROP CONSTRAINT catastro_lecturadetalle_pkey;
       public            postgres    false    243            �           2606    31547 ,   catastro_medidor catastro_medidor_numero_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.catastro_medidor
    ADD CONSTRAINT catastro_medidor_numero_key UNIQUE (numero);
 V   ALTER TABLE ONLY public.catastro_medidor DROP CONSTRAINT catastro_medidor_numero_key;
       public            postgres    false    241            �           2606    31545 &   catastro_medidor catastro_medidor_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.catastro_medidor
    ADD CONSTRAINT catastro_medidor_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.catastro_medidor DROP CONSTRAINT catastro_medidor_pkey;
       public            postgres    false    241            �           2606    31684 U   catastro_multadetalle catastro_multadetalle_lectura_detalle_id_multa_id_e585fd75_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.catastro_multadetalle
    ADD CONSTRAINT catastro_multadetalle_lectura_detalle_id_multa_id_e585fd75_uniq UNIQUE (lectura_detalle_id, multa_id);
    ALTER TABLE ONLY public.catastro_multadetalle DROP CONSTRAINT catastro_multadetalle_lectura_detalle_id_multa_id_e585fd75_uniq;
       public            postgres    false    247    247            �           2606    31607 0   catastro_multadetalle catastro_multadetalle_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.catastro_multadetalle
    ADD CONSTRAINT catastro_multadetalle_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.catastro_multadetalle DROP CONSTRAINT catastro_multadetalle_pkey;
       public            postgres    false    247            �           2606    31537 .   catastro_tipolectura catastro_tipolectura_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.catastro_tipolectura
    ADD CONSTRAINT catastro_tipolectura_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.catastro_tipolectura DROP CONSTRAINT catastro_tipolectura_pkey;
       public            postgres    false    239            m           2606    31378 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            G           2606    31262 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            I           2606    31260 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            E           2606    31252 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            �           2606    31807 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    254            �           2606    31456 ,   parametro_descuento parametro_descuento_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.parametro_descuento
    ADD CONSTRAINT parametro_descuento_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.parametro_descuento DROP CONSTRAINT parametro_descuento_pkey;
       public            postgres    false    231            }           2606    31448 .   parametro_entidad parametro_entidad_correo_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.parametro_entidad
    ADD CONSTRAINT parametro_entidad_correo_key UNIQUE (correo);
 X   ALTER TABLE ONLY public.parametro_entidad DROP CONSTRAINT parametro_entidad_correo_key;
       public            postgres    false    229            �           2606    31446 3   parametro_entidad parametro_entidad_descripcion_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.parametro_entidad
    ADD CONSTRAINT parametro_entidad_descripcion_key UNIQUE (descripcion);
 ]   ALTER TABLE ONLY public.parametro_entidad DROP CONSTRAINT parametro_entidad_descripcion_key;
       public            postgres    false    229            �           2606    31442 (   parametro_entidad parametro_entidad_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.parametro_entidad
    ADD CONSTRAINT parametro_entidad_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.parametro_entidad DROP CONSTRAINT parametro_entidad_pkey;
       public            postgres    false    229            �           2606    31444 +   parametro_entidad parametro_entidad_ruc_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.parametro_entidad
    ADD CONSTRAINT parametro_entidad_ruc_key UNIQUE (ruc);
 U   ALTER TABLE ONLY public.parametro_entidad DROP CONSTRAINT parametro_entidad_ruc_key;
       public            postgres    false    229            y           2606    31431 $   parametro_multa parametro_multa_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.parametro_multa
    ADD CONSTRAINT parametro_multa_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.parametro_multa DROP CONSTRAINT parametro_multa_pkey;
       public            postgres    false    227            v           2606    31423 "   parametro_pago parametro_pago_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.parametro_pago
    ADD CONSTRAINT parametro_pago_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.parametro_pago DROP CONSTRAINT parametro_pago_pkey;
       public            postgres    false    225            s           2606    31415 *   parametro_servicio parametro_servicio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.parametro_servicio
    ADD CONSTRAINT parametro_servicio_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.parametro_servicio DROP CONSTRAINT parametro_servicio_pkey;
       public            postgres    false    223            p           2606    31407 &   parametro_tarifa parametro_tarifa_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.parametro_tarifa
    ADD CONSTRAINT parametro_tarifa_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.parametro_tarifa DROP CONSTRAINT parametro_tarifa_pkey;
       public            postgres    false    221            �           2606    31711 4   recaudacion_recaudacion recaudacion_recaudacion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.recaudacion_recaudacion
    ADD CONSTRAINT recaudacion_recaudacion_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.recaudacion_recaudacion DROP CONSTRAINT recaudacion_recaudacion_pkey;
       public            postgres    false    249            �           2606    31722 B   recaudacion_recaudaciondetalle recaudacion_recaudaciondetalle_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudaciondetalle
    ADD CONSTRAINT recaudacion_recaudaciondetalle_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.recaudacion_recaudaciondetalle DROP CONSTRAINT recaudacion_recaudaciondetalle_pkey;
       public            postgres    false    251            �           2606    31775 c   recaudacion_recaudacionmultadetalle recaudacion_recaudacionm_multa_detalle_id_multa_i_6c43949b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle
    ADD CONSTRAINT recaudacion_recaudacionm_multa_detalle_id_multa_i_6c43949b_uniq UNIQUE (multa_detalle_id, multa_id);
 �   ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle DROP CONSTRAINT recaudacion_recaudacionm_multa_detalle_id_multa_i_6c43949b_uniq;
       public            postgres    false    253    253            �           2606    31731 L   recaudacion_recaudacionmultadetalle recaudacion_recaudacionmultadetalle_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle
    ADD CONSTRAINT recaudacion_recaudacionmultadetalle_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle DROP CONSTRAINT recaudacion_recaudacionmultadetalle_pkey;
       public            postgres    false    253            O           1259    31399    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            T           1259    31336 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            W           1259    31337 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            J           1259    31322 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            _           1259    31352 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            b           1259    31351 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            e           1259    31366 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            h           1259    31365 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            \           1259    31393     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            �           1259    31681 #   catastro_abonado_barrio_id_ece94236    INDEX     e   CREATE INDEX catastro_abonado_barrio_id_ece94236 ON public.catastro_abonado USING btree (barrio_id);
 7   DROP INDEX public.catastro_abonado_barrio_id_ece94236;
       public            postgres    false    233            �           1259    31608 -   catastro_abonado_identificacion_de748723_like    INDEX     �   CREATE INDEX catastro_abonado_identificacion_de748723_like ON public.catastro_abonado USING btree (identificacion varchar_pattern_ops);
 A   DROP INDEX public.catastro_abonado_identificacion_de748723_like;
       public            postgres    false    233            �           1259    31682    catastro_abonado_uc_id_67fc881d    INDEX     ]   CREATE INDEX catastro_abonado_uc_id_67fc881d ON public.catastro_abonado USING btree (uc_id);
 3   DROP INDEX public.catastro_abonado_uc_id_67fc881d;
       public            postgres    false    233            �           1259    31680    catastro_barrio_uc_id_5a539a88    INDEX     [   CREATE INDEX catastro_barrio_uc_id_5a539a88 ON public.catastro_barrio USING btree (uc_id);
 2   DROP INDEX public.catastro_barrio_uc_id_5a539a88;
       public            postgres    false    245            �           1259    31619 %   catastro_catastro_abonado_id_625113b8    INDEX     i   CREATE INDEX catastro_catastro_abonado_id_625113b8 ON public.catastro_catastro USING btree (abonado_id);
 9   DROP INDEX public.catastro_catastro_abonado_id_625113b8;
       public            postgres    false    235            �           1259    31620 '   catastro_catastro_descuento_id_1065cfad    INDEX     m   CREATE INDEX catastro_catastro_descuento_id_1065cfad ON public.catastro_catastro USING btree (descuento_id);
 ;   DROP INDEX public.catastro_catastro_descuento_id_1065cfad;
       public            postgres    false    235            �           1259    31672 "   catastro_catastro_pago_id_28153f1e    INDEX     c   CREATE INDEX catastro_catastro_pago_id_28153f1e ON public.catastro_catastro USING btree (pago_id);
 6   DROP INDEX public.catastro_catastro_pago_id_28153f1e;
       public            postgres    false    235            �           1259    31673 &   catastro_catastro_servicio_id_1803683f    INDEX     k   CREATE INDEX catastro_catastro_servicio_id_1803683f ON public.catastro_catastro USING btree (servicio_id);
 :   DROP INDEX public.catastro_catastro_servicio_id_1803683f;
       public            postgres    false    235            �           1259    31674     catastro_catastro_uc_id_aab3a501    INDEX     _   CREATE INDEX catastro_catastro_uc_id_aab3a501 ON public.catastro_catastro USING btree (uc_id);
 4   DROP INDEX public.catastro_catastro_uc_id_aab3a501;
       public            postgres    false    235            �           1259    31626    catastro_lectura_uc_id_9ba35cf4    INDEX     ]   CREATE INDEX catastro_lectura_uc_id_9ba35cf4 ON public.catastro_lectura USING btree (uc_id);
 3   DROP INDEX public.catastro_lectura_uc_id_9ba35cf4;
       public            postgres    false    237            �           1259    31667 ,   catastro_lecturadetalle_catastro_id_06f1312e    INDEX     w   CREATE INDEX catastro_lecturadetalle_catastro_id_06f1312e ON public.catastro_lecturadetalle USING btree (catastro_id);
 @   DROP INDEX public.catastro_lecturadetalle_catastro_id_06f1312e;
       public            postgres    false    243            �           1259    31668 +   catastro_lecturadetalle_lectura_id_5d5ce925    INDEX     u   CREATE INDEX catastro_lecturadetalle_lectura_id_5d5ce925 ON public.catastro_lecturadetalle USING btree (lectura_id);
 ?   DROP INDEX public.catastro_lecturadetalle_lectura_id_5d5ce925;
       public            postgres    false    243            �           1259    31669 *   catastro_lecturadetalle_tarifa_id_c4efa8b9    INDEX     s   CREATE INDEX catastro_lecturadetalle_tarifa_id_c4efa8b9 ON public.catastro_lecturadetalle USING btree (tarifa_id);
 >   DROP INDEX public.catastro_lecturadetalle_tarifa_id_c4efa8b9;
       public            postgres    false    243            �           1259    31670 0   catastro_lecturadetalle_tipo_lectura_id_ab7869ca    INDEX        CREATE INDEX catastro_lecturadetalle_tipo_lectura_id_ab7869ca ON public.catastro_lecturadetalle USING btree (tipo_lectura_id);
 D   DROP INDEX public.catastro_lecturadetalle_tipo_lectura_id_ab7869ca;
       public            postgres    false    243            �           1259    31671 &   catastro_lecturadetalle_uc_id_33ee0318    INDEX     k   CREATE INDEX catastro_lecturadetalle_uc_id_33ee0318 ON public.catastro_lecturadetalle USING btree (uc_id);
 :   DROP INDEX public.catastro_lecturadetalle_uc_id_33ee0318;
       public            postgres    false    243            �           1259    31638 %   catastro_medidor_numero_cb75c17c_like    INDEX     x   CREATE INDEX catastro_medidor_numero_cb75c17c_like ON public.catastro_medidor USING btree (numero varchar_pattern_ops);
 9   DROP INDEX public.catastro_medidor_numero_cb75c17c_like;
       public            postgres    false    241            �           1259    31639    catastro_medidor_uc_id_7dbd0d14    INDEX     ]   CREATE INDEX catastro_medidor_uc_id_7dbd0d14 ON public.catastro_medidor USING btree (uc_id);
 3   DROP INDEX public.catastro_medidor_uc_id_7dbd0d14;
       public            postgres    false    241            �           1259    31700 1   catastro_multadetalle_lectura_detalle_id_a2a0742c    INDEX     �   CREATE INDEX catastro_multadetalle_lectura_detalle_id_a2a0742c ON public.catastro_multadetalle USING btree (lectura_detalle_id);
 E   DROP INDEX public.catastro_multadetalle_lectura_detalle_id_a2a0742c;
       public            postgres    false    247            �           1259    31701 '   catastro_multadetalle_multa_id_15a3124d    INDEX     m   CREATE INDEX catastro_multadetalle_multa_id_15a3124d ON public.catastro_multadetalle USING btree (multa_id);
 ;   DROP INDEX public.catastro_multadetalle_multa_id_15a3124d;
       public            postgres    false    247            �           1259    31702 $   catastro_multadetalle_uc_id_0e4969df    INDEX     g   CREATE INDEX catastro_multadetalle_uc_id_0e4969df ON public.catastro_multadetalle USING btree (uc_id);
 8   DROP INDEX public.catastro_multadetalle_uc_id_0e4969df;
       public            postgres    false    247            �           1259    31632 #   catastro_tipolectura_uc_id_f5ea5421    INDEX     e   CREATE INDEX catastro_tipolectura_uc_id_f5ea5421 ON public.catastro_tipolectura USING btree (uc_id);
 7   DROP INDEX public.catastro_tipolectura_uc_id_f5ea5421;
       public            postgres    false    239            k           1259    31389 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            n           1259    31390 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            �           1259    31809 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    254            �           1259    31808 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    254            �           1259    31495 "   parametro_descuento_uc_id_ee9aebcf    INDEX     c   CREATE INDEX parametro_descuento_uc_id_ee9aebcf ON public.parametro_descuento USING btree (uc_id);
 6   DROP INDEX public.parametro_descuento_uc_id_ee9aebcf;
       public            postgres    false    231            {           1259    31488 &   parametro_entidad_correo_2f9c6f1f_like    INDEX     z   CREATE INDEX parametro_entidad_correo_2f9c6f1f_like ON public.parametro_entidad USING btree (correo varchar_pattern_ops);
 :   DROP INDEX public.parametro_entidad_correo_2f9c6f1f_like;
       public            postgres    false    229            ~           1259    31487 +   parametro_entidad_descripcion_65d9c50e_like    INDEX     �   CREATE INDEX parametro_entidad_descripcion_65d9c50e_like ON public.parametro_entidad USING btree (descripcion varchar_pattern_ops);
 ?   DROP INDEX public.parametro_entidad_descripcion_65d9c50e_like;
       public            postgres    false    229            �           1259    31486 #   parametro_entidad_ruc_10b538f9_like    INDEX     t   CREATE INDEX parametro_entidad_ruc_10b538f9_like ON public.parametro_entidad USING btree (ruc varchar_pattern_ops);
 7   DROP INDEX public.parametro_entidad_ruc_10b538f9_like;
       public            postgres    false    229            �           1259    31489     parametro_entidad_uc_id_b1a511ba    INDEX     _   CREATE INDEX parametro_entidad_uc_id_b1a511ba ON public.parametro_entidad USING btree (uc_id);
 4   DROP INDEX public.parametro_entidad_uc_id_b1a511ba;
       public            postgres    false    229            z           1259    31480    parametro_multa_uc_id_c125be14    INDEX     [   CREATE INDEX parametro_multa_uc_id_c125be14 ON public.parametro_multa USING btree (uc_id);
 2   DROP INDEX public.parametro_multa_uc_id_c125be14;
       public            postgres    false    227            w           1259    31474    parametro_pago_uc_id_75124597    INDEX     Y   CREATE INDEX parametro_pago_uc_id_75124597 ON public.parametro_pago USING btree (uc_id);
 1   DROP INDEX public.parametro_pago_uc_id_75124597;
       public            postgres    false    225            t           1259    31468 !   parametro_servicio_uc_id_fc275363    INDEX     a   CREATE INDEX parametro_servicio_uc_id_fc275363 ON public.parametro_servicio USING btree (uc_id);
 5   DROP INDEX public.parametro_servicio_uc_id_fc275363;
       public            postgres    false    223            q           1259    31462    parametro_tarifa_uc_id_7b43f660    INDEX     ]   CREATE INDEX parametro_tarifa_uc_id_7b43f660 ON public.parametro_tarifa USING btree (uc_id);
 3   DROP INDEX public.parametro_tarifa_uc_id_7b43f660;
       public            postgres    false    221            �           1259    31752 +   recaudacion_recaudacion_abonado_id_677cc784    INDEX     u   CREATE INDEX recaudacion_recaudacion_abonado_id_677cc784 ON public.recaudacion_recaudacion USING btree (abonado_id);
 ?   DROP INDEX public.recaudacion_recaudacion_abonado_id_677cc784;
       public            postgres    false    249            �           1259    31753 -   recaudacion_recaudacion_descuento_id_3a945c00    INDEX     y   CREATE INDEX recaudacion_recaudacion_descuento_id_3a945c00 ON public.recaudacion_recaudacion USING btree (descuento_id);
 A   DROP INDEX public.recaudacion_recaudacion_descuento_id_3a945c00;
       public            postgres    false    249            �           1259    31754 (   recaudacion_recaudacion_pago_id_344abf61    INDEX     o   CREATE INDEX recaudacion_recaudacion_pago_id_344abf61 ON public.recaudacion_recaudacion USING btree (pago_id);
 <   DROP INDEX public.recaudacion_recaudacion_pago_id_344abf61;
       public            postgres    false    249            �           1259    31755 &   recaudacion_recaudacion_uc_id_3112547e    INDEX     k   CREATE INDEX recaudacion_recaudacion_uc_id_3112547e ON public.recaudacion_recaudacion USING btree (uc_id);
 :   DROP INDEX public.recaudacion_recaudacion_uc_id_3112547e;
       public            postgres    false    249            �           1259    31771 :   recaudacion_recaudaciondetalle_lectura_detalle_id_1e92bcfe    INDEX     �   CREATE INDEX recaudacion_recaudaciondetalle_lectura_detalle_id_1e92bcfe ON public.recaudacion_recaudaciondetalle USING btree (lectura_detalle_id);
 N   DROP INDEX public.recaudacion_recaudaciondetalle_lectura_detalle_id_1e92bcfe;
       public            postgres    false    251            �           1259    31772 6   recaudacion_recaudaciondetalle_recaudacion_id_547ec64f    INDEX     �   CREATE INDEX recaudacion_recaudaciondetalle_recaudacion_id_547ec64f ON public.recaudacion_recaudaciondetalle USING btree (recaudacion_id);
 J   DROP INDEX public.recaudacion_recaudaciondetalle_recaudacion_id_547ec64f;
       public            postgres    false    251            �           1259    31773 -   recaudacion_recaudaciondetalle_uc_id_3a16aefc    INDEX     y   CREATE INDEX recaudacion_recaudaciondetalle_uc_id_3a16aefc ON public.recaudacion_recaudaciondetalle USING btree (uc_id);
 A   DROP INDEX public.recaudacion_recaudaciondetalle_uc_id_3a16aefc;
       public            postgres    false    251            �           1259    31798 :   recaudacion_recaudacionmul_recaudacion_detalle_id_1b9916ec    INDEX     �   CREATE INDEX recaudacion_recaudacionmul_recaudacion_detalle_id_1b9916ec ON public.recaudacion_recaudacionmultadetalle USING btree (recaudacion_detalle_id);
 N   DROP INDEX public.recaudacion_recaudacionmul_recaudacion_detalle_id_1b9916ec;
       public            postgres    false    253            �           1259    31797 =   recaudacion_recaudacionmultadetalle_multa_detalle_id_4ed0f421    INDEX     �   CREATE INDEX recaudacion_recaudacionmultadetalle_multa_detalle_id_4ed0f421 ON public.recaudacion_recaudacionmultadetalle USING btree (multa_detalle_id);
 Q   DROP INDEX public.recaudacion_recaudacionmultadetalle_multa_detalle_id_4ed0f421;
       public            postgres    false    253            �           1259    31796 5   recaudacion_recaudacionmultadetalle_multa_id_e3013e24    INDEX     �   CREATE INDEX recaudacion_recaudacionmultadetalle_multa_id_e3013e24 ON public.recaudacion_recaudacionmultadetalle USING btree (multa_id);
 I   DROP INDEX public.recaudacion_recaudacionmultadetalle_multa_id_e3013e24;
       public            postgres    false    253            �           1259    31799 2   recaudacion_recaudacionmultadetalle_uc_id_91b33d5f    INDEX     �   CREATE INDEX recaudacion_recaudacionmultadetalle_uc_id_91b33d5f ON public.recaudacion_recaudacionmultadetalle USING btree (uc_id);
 F   DROP INDEX public.recaudacion_recaudacionmultadetalle_uc_id_91b33d5f;
       public            postgres    false    253            �           2606    31331 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    211    2894    207            �           2606    31326 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2899    209    211            �           2606    31317 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    2889    205            �           2606    31346 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    2899    209            �           2606    31341 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2907    215    213            �           2606    31360 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2894    207    217            �           2606    31355 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2907    213    217            �           2606    31589 J   catastro_abonado catastro_abonado_barrio_id_ece94236_fk_catastro_barrio_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_abonado
    ADD CONSTRAINT catastro_abonado_barrio_id_ece94236_fk_catastro_barrio_id FOREIGN KEY (barrio_id) REFERENCES public.catastro_barrio(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.catastro_abonado DROP CONSTRAINT catastro_abonado_barrio_id_ece94236_fk_catastro_barrio_id;
       public          postgres    false    233    2996    245            �           2606    31594 @   catastro_abonado catastro_abonado_uc_id_67fc881d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_abonado
    ADD CONSTRAINT catastro_abonado_uc_id_67fc881d_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.catastro_abonado DROP CONSTRAINT catastro_abonado_uc_id_67fc881d_fk_auth_user_id;
       public          postgres    false    2907    213    233            �           2606    31675 >   catastro_barrio catastro_barrio_uc_id_5a539a88_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_barrio
    ADD CONSTRAINT catastro_barrio_uc_id_5a539a88_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.catastro_barrio DROP CONSTRAINT catastro_barrio_uc_id_5a539a88_fk_auth_user_id;
       public          postgres    false    245    213    2907            �           2606    31609 N   catastro_catastro catastro_catastro_abonado_id_625113b8_fk_catastro_abonado_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_catastro
    ADD CONSTRAINT catastro_catastro_abonado_id_625113b8_fk_catastro_abonado_id FOREIGN KEY (abonado_id) REFERENCES public.catastro_abonado(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.catastro_catastro DROP CONSTRAINT catastro_catastro_abonado_id_625113b8_fk_catastro_abonado_id;
       public          postgres    false    2959    233    235            �           2606    31614 F   catastro_catastro catastro_catastro_descuento_id_1065cfad_fk_parametro    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_catastro
    ADD CONSTRAINT catastro_catastro_descuento_id_1065cfad_fk_parametro FOREIGN KEY (descuento_id) REFERENCES public.parametro_descuento(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.catastro_catastro DROP CONSTRAINT catastro_catastro_descuento_id_1065cfad_fk_parametro;
       public          postgres    false    231    235    2952            �           2606    31561 N   catastro_catastro catastro_catastro_medidor_id_f8393c10_fk_catastro_medidor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_catastro
    ADD CONSTRAINT catastro_catastro_medidor_id_f8393c10_fk_catastro_medidor_id FOREIGN KEY (medidor_id) REFERENCES public.catastro_medidor(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.catastro_catastro DROP CONSTRAINT catastro_catastro_medidor_id_f8393c10_fk_catastro_medidor_id;
       public          postgres    false    241    2984    235            �           2606    31566 I   catastro_catastro catastro_catastro_pago_id_28153f1e_fk_parametro_pago_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_catastro
    ADD CONSTRAINT catastro_catastro_pago_id_28153f1e_fk_parametro_pago_id FOREIGN KEY (pago_id) REFERENCES public.parametro_pago(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.catastro_catastro DROP CONSTRAINT catastro_catastro_pago_id_28153f1e_fk_parametro_pago_id;
       public          postgres    false    2934    235    225            �           2606    31571 Q   catastro_catastro catastro_catastro_servicio_id_1803683f_fk_parametro_servicio_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_catastro
    ADD CONSTRAINT catastro_catastro_servicio_id_1803683f_fk_parametro_servicio_id FOREIGN KEY (servicio_id) REFERENCES public.parametro_servicio(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.catastro_catastro DROP CONSTRAINT catastro_catastro_servicio_id_1803683f_fk_parametro_servicio_id;
       public          postgres    false    223    2931    235            �           2606    31576 B   catastro_catastro catastro_catastro_uc_id_aab3a501_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_catastro
    ADD CONSTRAINT catastro_catastro_uc_id_aab3a501_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.catastro_catastro DROP CONSTRAINT catastro_catastro_uc_id_aab3a501_fk_auth_user_id;
       public          postgres    false    213    235    2907            �           2606    31621 @   catastro_lectura catastro_lectura_uc_id_9ba35cf4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_lectura
    ADD CONSTRAINT catastro_lectura_uc_id_9ba35cf4_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.catastro_lectura DROP CONSTRAINT catastro_lectura_uc_id_9ba35cf4_fk_auth_user_id;
       public          postgres    false    237    2907    213            �           2606    31642 N   catastro_lecturadetalle catastro_lecturadeta_catastro_id_06f1312e_fk_catastro_    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_lecturadetalle
    ADD CONSTRAINT catastro_lecturadeta_catastro_id_06f1312e_fk_catastro_ FOREIGN KEY (catastro_id) REFERENCES public.catastro_catastro(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.catastro_lecturadetalle DROP CONSTRAINT catastro_lecturadeta_catastro_id_06f1312e_fk_catastro_;
       public          postgres    false    235    2969    243            �           2606    31647 M   catastro_lecturadetalle catastro_lecturadeta_lectura_id_5d5ce925_fk_catastro_    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_lecturadetalle
    ADD CONSTRAINT catastro_lecturadeta_lectura_id_5d5ce925_fk_catastro_ FOREIGN KEY (lectura_id) REFERENCES public.catastro_lectura(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.catastro_lecturadetalle DROP CONSTRAINT catastro_lecturadeta_lectura_id_5d5ce925_fk_catastro_;
       public          postgres    false    237    2975    243            �           2606    31652 L   catastro_lecturadetalle catastro_lecturadeta_tarifa_id_c4efa8b9_fk_parametro    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_lecturadetalle
    ADD CONSTRAINT catastro_lecturadeta_tarifa_id_c4efa8b9_fk_parametro FOREIGN KEY (tarifa_id) REFERENCES public.parametro_tarifa(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.catastro_lecturadetalle DROP CONSTRAINT catastro_lecturadeta_tarifa_id_c4efa8b9_fk_parametro;
       public          postgres    false    2928    221    243            �           2606    31657 R   catastro_lecturadetalle catastro_lecturadeta_tipo_lectura_id_ab7869ca_fk_catastro_    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_lecturadetalle
    ADD CONSTRAINT catastro_lecturadeta_tipo_lectura_id_ab7869ca_fk_catastro_ FOREIGN KEY (tipo_lectura_id) REFERENCES public.catastro_tipolectura(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.catastro_lecturadetalle DROP CONSTRAINT catastro_lecturadeta_tipo_lectura_id_ab7869ca_fk_catastro_;
       public          postgres    false    243    239    2978            �           2606    31662 N   catastro_lecturadetalle catastro_lecturadetalle_uc_id_33ee0318_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_lecturadetalle
    ADD CONSTRAINT catastro_lecturadetalle_uc_id_33ee0318_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.catastro_lecturadetalle DROP CONSTRAINT catastro_lecturadetalle_uc_id_33ee0318_fk_auth_user_id;
       public          postgres    false    213    2907    243            �           2606    31633 @   catastro_medidor catastro_medidor_uc_id_7dbd0d14_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_medidor
    ADD CONSTRAINT catastro_medidor_uc_id_7dbd0d14_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.catastro_medidor DROP CONSTRAINT catastro_medidor_uc_id_7dbd0d14_fk_auth_user_id;
       public          postgres    false    2907    241    213            �           2606    31685 S   catastro_multadetalle catastro_multadetall_lectura_detalle_id_a2a0742c_fk_catastro_    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_multadetalle
    ADD CONSTRAINT catastro_multadetall_lectura_detalle_id_a2a0742c_fk_catastro_ FOREIGN KEY (lectura_detalle_id) REFERENCES public.catastro_lecturadetalle(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.catastro_multadetalle DROP CONSTRAINT catastro_multadetall_lectura_detalle_id_a2a0742c_fk_catastro_;
       public          postgres    false    243    2991    247            �           2606    31690 S   catastro_multadetalle catastro_multadetalle_multa_id_15a3124d_fk_parametro_multa_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_multadetalle
    ADD CONSTRAINT catastro_multadetalle_multa_id_15a3124d_fk_parametro_multa_id FOREIGN KEY (multa_id) REFERENCES public.parametro_multa(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.catastro_multadetalle DROP CONSTRAINT catastro_multadetalle_multa_id_15a3124d_fk_parametro_multa_id;
       public          postgres    false    247    227    2937            �           2606    31695 J   catastro_multadetalle catastro_multadetalle_uc_id_0e4969df_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_multadetalle
    ADD CONSTRAINT catastro_multadetalle_uc_id_0e4969df_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.catastro_multadetalle DROP CONSTRAINT catastro_multadetalle_uc_id_0e4969df_fk_auth_user_id;
       public          postgres    false    213    247    2907            �           2606    31627 H   catastro_tipolectura catastro_tipolectura_uc_id_f5ea5421_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.catastro_tipolectura
    ADD CONSTRAINT catastro_tipolectura_uc_id_f5ea5421_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.catastro_tipolectura DROP CONSTRAINT catastro_tipolectura_uc_id_f5ea5421_fk_auth_user_id;
       public          postgres    false    213    239    2907            �           2606    31379 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    219    205    2889            �           2606    31384 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    2907    219            �           2606    31490 F   parametro_descuento parametro_descuento_uc_id_ee9aebcf_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.parametro_descuento
    ADD CONSTRAINT parametro_descuento_uc_id_ee9aebcf_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.parametro_descuento DROP CONSTRAINT parametro_descuento_uc_id_ee9aebcf_fk_auth_user_id;
       public          postgres    false    231    213    2907            �           2606    31481 B   parametro_entidad parametro_entidad_uc_id_b1a511ba_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.parametro_entidad
    ADD CONSTRAINT parametro_entidad_uc_id_b1a511ba_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.parametro_entidad DROP CONSTRAINT parametro_entidad_uc_id_b1a511ba_fk_auth_user_id;
       public          postgres    false    213    229    2907            �           2606    31475 >   parametro_multa parametro_multa_uc_id_c125be14_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.parametro_multa
    ADD CONSTRAINT parametro_multa_uc_id_c125be14_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.parametro_multa DROP CONSTRAINT parametro_multa_uc_id_c125be14_fk_auth_user_id;
       public          postgres    false    2907    213    227            �           2606    31469 <   parametro_pago parametro_pago_uc_id_75124597_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.parametro_pago
    ADD CONSTRAINT parametro_pago_uc_id_75124597_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.parametro_pago DROP CONSTRAINT parametro_pago_uc_id_75124597_fk_auth_user_id;
       public          postgres    false    2907    225    213            �           2606    31463 D   parametro_servicio parametro_servicio_uc_id_fc275363_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.parametro_servicio
    ADD CONSTRAINT parametro_servicio_uc_id_fc275363_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.parametro_servicio DROP CONSTRAINT parametro_servicio_uc_id_fc275363_fk_auth_user_id;
       public          postgres    false    223    213    2907            �           2606    31457 @   parametro_tarifa parametro_tarifa_uc_id_7b43f660_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.parametro_tarifa
    ADD CONSTRAINT parametro_tarifa_uc_id_7b43f660_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.parametro_tarifa DROP CONSTRAINT parametro_tarifa_uc_id_7b43f660_fk_auth_user_id;
       public          postgres    false    213    2907    221            �           2606    31732 M   recaudacion_recaudacion recaudacion_recaudac_abonado_id_677cc784_fk_catastro_    FK CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudacion
    ADD CONSTRAINT recaudacion_recaudac_abonado_id_677cc784_fk_catastro_ FOREIGN KEY (abonado_id) REFERENCES public.catastro_abonado(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.recaudacion_recaudacion DROP CONSTRAINT recaudacion_recaudac_abonado_id_677cc784_fk_catastro_;
       public          postgres    false    2959    249    233            �           2606    31737 O   recaudacion_recaudacion recaudacion_recaudac_descuento_id_3a945c00_fk_parametro    FK CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudacion
    ADD CONSTRAINT recaudacion_recaudac_descuento_id_3a945c00_fk_parametro FOREIGN KEY (descuento_id) REFERENCES public.parametro_descuento(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.recaudacion_recaudacion DROP CONSTRAINT recaudacion_recaudac_descuento_id_3a945c00_fk_parametro;
       public          postgres    false    231    249    2952            �           2606    31756 \   recaudacion_recaudaciondetalle recaudacion_recaudac_lectura_detalle_id_1e92bcfe_fk_catastro_    FK CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudaciondetalle
    ADD CONSTRAINT recaudacion_recaudac_lectura_detalle_id_1e92bcfe_fk_catastro_ FOREIGN KEY (lectura_detalle_id) REFERENCES public.catastro_lecturadetalle(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.recaudacion_recaudaciondetalle DROP CONSTRAINT recaudacion_recaudac_lectura_detalle_id_1e92bcfe_fk_catastro_;
       public          postgres    false    251    2991    243            �           2606    31781 _   recaudacion_recaudacionmultadetalle recaudacion_recaudac_multa_detalle_id_4ed0f421_fk_catastro_    FK CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle
    ADD CONSTRAINT recaudacion_recaudac_multa_detalle_id_4ed0f421_fk_catastro_ FOREIGN KEY (multa_detalle_id) REFERENCES public.catastro_multadetalle(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle DROP CONSTRAINT recaudacion_recaudac_multa_detalle_id_4ed0f421_fk_catastro_;
       public          postgres    false    247    3003    253            �           2606    31776 W   recaudacion_recaudacionmultadetalle recaudacion_recaudac_multa_id_e3013e24_fk_parametro    FK CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle
    ADD CONSTRAINT recaudacion_recaudac_multa_id_e3013e24_fk_parametro FOREIGN KEY (multa_id) REFERENCES public.parametro_multa(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle DROP CONSTRAINT recaudacion_recaudac_multa_id_e3013e24_fk_parametro;
       public          postgres    false    253    2937    227                        2606    31786 c   recaudacion_recaudacionmultadetalle recaudacion_recaudac_recaudacion_detalle__1b9916ec_fk_recaudaci    FK CONSTRAINT       ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle
    ADD CONSTRAINT recaudacion_recaudac_recaudacion_detalle__1b9916ec_fk_recaudaci FOREIGN KEY (recaudacion_detalle_id) REFERENCES public.recaudacion_recaudaciondetalle(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle DROP CONSTRAINT recaudacion_recaudac_recaudacion_detalle__1b9916ec_fk_recaudaci;
       public          postgres    false    251    3013    253            �           2606    31761 X   recaudacion_recaudaciondetalle recaudacion_recaudac_recaudacion_id_547ec64f_fk_recaudaci    FK CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudaciondetalle
    ADD CONSTRAINT recaudacion_recaudac_recaudacion_id_547ec64f_fk_recaudaci FOREIGN KEY (recaudacion_id) REFERENCES public.recaudacion_recaudacion(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.recaudacion_recaudaciondetalle DROP CONSTRAINT recaudacion_recaudac_recaudacion_id_547ec64f_fk_recaudaci;
       public          postgres    false    249    3009    251                       2606    31791 T   recaudacion_recaudacionmultadetalle recaudacion_recaudac_uc_id_91b33d5f_fk_auth_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle
    ADD CONSTRAINT recaudacion_recaudac_uc_id_91b33d5f_fk_auth_user FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.recaudacion_recaudacionmultadetalle DROP CONSTRAINT recaudacion_recaudac_uc_id_91b33d5f_fk_auth_user;
       public          postgres    false    253    213    2907            �           2606    31742 U   recaudacion_recaudacion recaudacion_recaudacion_pago_id_344abf61_fk_parametro_pago_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudacion
    ADD CONSTRAINT recaudacion_recaudacion_pago_id_344abf61_fk_parametro_pago_id FOREIGN KEY (pago_id) REFERENCES public.parametro_pago(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.recaudacion_recaudacion DROP CONSTRAINT recaudacion_recaudacion_pago_id_344abf61_fk_parametro_pago_id;
       public          postgres    false    225    249    2934            �           2606    31747 N   recaudacion_recaudacion recaudacion_recaudacion_uc_id_3112547e_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudacion
    ADD CONSTRAINT recaudacion_recaudacion_uc_id_3112547e_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.recaudacion_recaudacion DROP CONSTRAINT recaudacion_recaudacion_uc_id_3112547e_fk_auth_user_id;
       public          postgres    false    249    213    2907            �           2606    31766 \   recaudacion_recaudaciondetalle recaudacion_recaudaciondetalle_uc_id_3a16aefc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.recaudacion_recaudaciondetalle
    ADD CONSTRAINT recaudacion_recaudaciondetalle_uc_id_3a16aefc_fk_auth_user_id FOREIGN KEY (uc_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.recaudacion_recaudaciondetalle DROP CONSTRAINT recaudacion_recaudaciondetalle_uc_id_3a16aefc_fk_auth_user_id;
       public          postgres    false    251    2907    213            �      x������ � �      �      x������ � �      �   �  x�u�ˮ�0���S�	��\ �^W]t�e����@Dȩ����`�.6��g�ߎ3�}��M���.���f��ǿ�1mH���נ�8���&ta�`�b��k�)l�`�Df�0��ǣzS�Oس�S �	��~�EA�V��Hp܅,����o��R.]G/D�tJ� R�J�/����9���Ӻ�|>^��G�$�� ><g~6^�Gǋ%=��i�j����	pj����"+��^+�$_�YsE��bY?B��gƑ-T�3����ng���X��e�}3��|�B593hD��o�Ј0���!��?:߷]�w���c}g��}�x���|��T��~�$}e*)�,��pN��PO�ћK����T6�I{Z�TBK;Z�DN��YB8-?��0�r��̼O,j�<M�J�Fz������5G���
X��9=�д�0�ڣ���И8���%q"@�3b8A(:�w�]�+�g�Y{T�ڨ�m@e*ae�-�L$n�H�	�p?�ql����#{R�c��r�j&JD��J����&aO�L�'���Om�JTʲ���D$.+�͡p�>?�����#{�y#$�)�0�R�"u��"&F		����4}m�彧�(���ȶ�ґ��C�H����W�0Q	�}���ww��xT-��Y�*��2@U�24�T�'��1�.�G���7m�Ϛrd3��e]�0��lY��n!��l�I��Om�����Ж*B�T&�>ĉ 
������s�LO�&M�Re@��&X�Ţ��ȃ"�Qp��1�����s��EL�J�b���U.V<�*^cE��bO[ִ��>mI���E��|1T^��&Y���ʫ�%���R����b�����~|ٿ���6�+�wrｇ�N���w*�_Iv���Qw���Z�5
-      �     x�m�Mn�@ F��)\�k�3Lb�H�*�F�Ƥq���z���+.�0�zɷx��!;F��R��D��~b�\7��]KW��8��(�L�;�P�ed2�	-�q�F�{�]��e��1�{�EY��W��{�Ҳa9�� Qc���C�Ј�:Q����ڹ�Ԋ��e���>�]VU���
�!�L���q:u�c��<m�L>��D���J2R���g�iκ��GOqA�\
���3����i��V��A��"Z�      �      x������ � �      �      x������ � �      �      x���ˎ�ȱ���SpwV*��R�ê���`�mVW��l�/��e��0���Gҋ�H2�d3��J�0�A
R�̌�""/���K���}OMN͞�=�;e���=��(%�	ˉ�3��r'��n�f�0��6";��-��۬�U׼+nu������ӗO�?���O������O�y��Ͽd���������?>���O?���ӗL3ƍf$�V!���Z�'�=��C��&�}G��n�;i��r4�N����K�h�e]dEs.k���*vK,� �Д�WH���FG�n�]��6E~,.O�Kٝ���v}n�թ��'�`�J��@w�rmU� -5�d����m^��E֕��֜ڥ�"����iM��fǬ�,�`�f�V|���_���Z+gi�Lc='ۭ�jǌs�`=%���-,�SW^�u��O1��|�q�^؝TRP�3é
�7�KY�ٵ<�e�:":��U�������)�	P�Hj@A]�zi��k����ŭk�h��{��L�s�z+��za=e{.��q�_=4� 믰vZp��LQߞ���p�賋ퟝ��&Z�0�dB����U]C|,���yU~芪��E	�h���r���툥���n��ĸu��OS]��Iіc������(7�N���rk��Cu9��m�{du"�r�ZH#b�9�S�3�x��SA`�y����|��!�?��K�4#� �Q�Zh8`�)�)$g���	b��n��-� �=��TԠ�8zV��@"�r���0���PI%12�̐ �8y�5Ǫ��.�N�R��Ŭ�{�w��
�����z�ݣXI���t���H�M0�?���� ��$;ޚ��ne�\�y�X^o񢹏���ï?M0�~G ���� f5W<;ݞ�f���`���7���H�ԁ�v���tHÔ�Yy�Ծ�K�o�6Ϡ`)f���"LL)��E��*�h�2��L��[@��&����X�P��pM��(87Om�A��1i���^�!��q�.��:u�K���9e]E`f��,00�%|k�OcB*���z�?B"�g�|Ϗuy)!;���>J/�C�Q�|Q�Q��Rͨ噏TC�͊�C�\�X�}�^H�`m$�T�����i	�y+2S`���H�}�^����Y��P./D���B_%r_��V��ؽuAYE,�M����c�'e%N�W-/��0�TU�NF�A���HtR���ȱ2))�.Q�oB�`��Pv����8/�C'f�$%�%��-J(�E
�W24O}��weVR]�@�VZ���踼���"���et����������)�.Q�o�B�U:p���\Oe{,B��zL+Q��G���|��Ql��%��}^�T�Cx,��w�1[xJ�K���� /�$\�wqeS��6�դĽ�p�uj��b� OeW��a���CN����Ĩo9�h4�FǸl]d����+�����)q�0�/�wS��ͩ�7��K�}G?�&�Dq��}���n{"X�\6�ŵg��:�pW��Ʋ��SRq=�KHM�ފx��*p��T��j�߇�I�_[E��a�x� ��B%��	H�#W�s���k	�jͲ�
ȫ���\�h~)�Uu�DJ�+�V1J� F� +�v�b]���t�������=Ɣ�V(�7j���F�k �R!E�� R�[a��(�m�)
2�G(���z�}�0)��Pno���-O��R<ڊ��V(����F���P�H?%ae��qpeա�d��F��E���Cp&�~,����eL�n���G�]��"dh�	f�p���zzte��iei��FAn9�h�}K�
��on��)07ٱ���k)�t���ǅ��G6�}?�P��]���&>3!R��������59}%Z\2%�5J�-�˝ �rMF�B�[�/����LIw�Nw�#@:��d>�v,�D���=���no?��8tɔt��t�.�CF�R�8�ۦ�E�ĺ^�z$bJݭ;h5v��?F(\n_�Ӿ��xjk��k�����g�ב�lA�|4�pJ��.���j�Юn�c[�%�RAJ��u�o��,D�g���D�]-S2ݬ3}��@8�X(	��ַeJ��u����0���Ѱ�r��RfKl�H�L�s��s�RJ�m<�G:��֌Ǝ�4!����aV"VJ��u�o�C$!J���!c�':���)�n֑�}m1I����M�=V���6%�h%	��?�I�t�"}�ʌv@\r-���P"5)�nP�C
h�&���]hÂ��37mQ�%I�%e�nP�o�zƕs�X�Sy�Z�T�T�XIJ�[���f◰Z̕���<�`�e���E!�Q���y$�;	�JIy�R�p�W������Q�KU׃�a>��JIy�R~�|P�wM4�^�
~�4���S��b|��i)1!��(D��=�;�x|�|Kh�Ǣ��q��)	o1�o�B�4�X
�4�)�nQ����P$
��l�Sl�{��,E���HE�����;�+!R��i����5�9�H��7�(�g1��fG �����q��s{Z�̤S2�bL����ʶ�`��b��Y��I�\���4�?W�[|�O��S�`
8��hV2���A4d%���������	I&
�ZGDTW(D�ۦjc��(���ck
�� 壘�\�?_�O+%�NuF0�/�f��g
���N딸��|f~��\3�"i6�AA����3
� ��l��+1w���sW�ە�����~��[����?
x}���jh���	H�nF0vCާN�0�C�Ң��_���\��5{q�J�;(n�`ߦDC��!��������Sޠ6_��LB�3�2����������)��h��Q�X7��W��4��A��$�N^�G���c��b�2�~��߆Z�n�ጢ�~+"�|����n�쎚�G��+/��9xGqqש���m�C[W/E�Hs��Q�?>n/�P�v���+P�	����X�z-D�d6E��e=�~���1I8�]۸�C��tELJ`S���D��Q�KI�n/\]�
^���6�ۦ��멬?T�i}��g%�[5��tח��Q�-�����M� տ�;��.r,}����.���8�(
�-�� ����������5���?��"�<�$�D8En�BAu��!�
+�LG؃������]�ȭl����&-�T	(`C�p����	HIo��{� �絢�WÖy���MX~�F��;R2��JI�Y��i_�.]G\�����&�1�g*�k����VnyؔU8�p�m6��%�H�xm������9�pΘ��ӧQ�sH	��@�ry��k�.m��<�ٔLg�z�|]��w,s�Ŧ"�JM���>�k���	f'���
q�a|ۄp���ِ���Y��En��G�7`�����*����4:��՜�}���+�uy^�>(I�t���R���e�&)�$2�/@IJ�#��mU�)�V���"VW��d�������LGdC�%(��ప�u{��0�����s���OJR"y�m�wiBZ��f�}[9�
�3���m۬� k�h}H�����H�p�6�Q��F�\D
%�;�����B`:9L����F^iۨ�
fݕ����ާou���)��<ضI� V�����a�s�󿷋LI�2y�ͽ�H���F}�D,gb�_��*�u�����B
J�-R `E� ey,�5@c)ٍ��fv�=���t�۽P;w\G�]���j��d�m�&�fG�!o�m]S�K�ߊ���Ub)��<��:�w���rT1��U�B����B��M�|��0vv&��E�$7���	��7D��a >��[ý'�¸�鷥����@e��o���8�u��5CS>ǐG��N�)���|t<�@�)��ٙ��M�"%��'�6�����QŔ��(��塈�BL��C�~[%�����.n�O��s� X+�_�>�E�;�{��p�0�� ��>������m-����Gi�E�{�I����һC82�X~l�9�.��7�<���%��{��)�S�SFI3�+�S�`������+Wr�;�}�T��~d�;��
���U�BC���� y   c웜<��j������r���p!�������uS���̬��k�^o_y\v�P�c��rP������c��67��}/�'\� ���]�o��:��Lw��y�џ�Z�1Z�����޽{���{zM      �   h   x�3�,�420��5��5�P00�#]S\�^����
.�>
�A�~
�.�A��\F���������4Ø3}B@f��aF����s�Bh�3Ȅ=... �7f      �   �  x��[I�$7<W�B�0�\�6�i�:���6 D�2��ԦCgvx��"��_�C���l/h/��ac�ߠ�)�o�����_LW��Ƨh�}��k�������������B�ߕ��?�_tf)Z>����r�u���O��4�to74�;�<����_�!r���Z
����rC�	Z��������bfT��^���/��YO��-�ao|�\���_���$���/W�M�N(4^�朽���iٻ��[A��S�K�%ܙ��tJ\a X�n�Xe�j�/(��jO�$t��������+}B�,��R`����R"©�8��7�%�?��f;7���$�]�ۼ�mz�6w�����\�U˲y͝=��ĹO��-���*<��pU�i����F�����i��űO�֋�&Ҍ�X�
@|֓|��guA�mm�C4U#����o���|t��0���z���2�,^�B��B<e��0���zW�]�(V6/�a�dr9�h�S����F��ٻ.>�9'T�^|�{B��J���¬���[&�YX�{F;a���zY�h�!ypW*�V*{F3���e��Jg��T���/3؜�����B{��<�/�Vd�}aE�$����ia�)Ͱ�x���\��"�؜��=�{�i�͖��H7a*h�m����$��e㰹����v�&|�\��:,r�之����{^3l+s������a��2׆�+�hOl�]����S-�Ew�K��5�3�D�Ӟ��Y�ܔO����*��Cr�.�|Y�,������m(�n����

<���
J'j#0u����R��i)K.�\�y��k|"62��#�y�`֍X!����s��׹�DlV���K���Bm%xO������س�_d6�l=ynr�8���,*�9f�R^d�I[S�S_©C1�8��֨�:�йA[�����J�$�qq��K����Nئ�M�^W�%�=���'Z�j�|#\Tƌ�H�3��ښqX��O��ʡ�B�'R#�b}t�gF�����4Lon�_�x��N����!��՛�z���|"5�����d��)�9$ON.[�:��h��D�N,���sl�k�����1��hm>u��5�*L�[rZ�T]eLN�Ƃ��A���<�E���x�ӊt9��������s�򮠒<v�cs��k'l1J5��M�{��$�v����EN���r�m���.k1T�ɓB�i܈aA�X�m�eLaj�yI
��BQ�X��qk��3Ө�.kYtM��W5�Dk\x�,2��5	ZKv�>��dʉ��ೊ�HU��X2�ţ<4��XM��N��/�U�[#�Ilul
��	K{hT�:Q�ޡ�N�d��FSYa�'N�Bω�A[;D1M��"]��i�����NM�Zr#/��놰���LO�&�@e���~�u��xE�R�<*K��Ӕ�ʮ����P����J7z면J��HMͦe3j�H#5��R�t'�z$�e����j&�{�u4�k�6dJ�ӹ���Lh�x������\�I��YJ\�h�]^b�bZ-�yMz�/�,���Y,����{_K%�����+�ˉ�
r�;J��b._���Y��%��>��	��mZ�4(�JIM��ZV���Y/&�s�9MS�QJ��A]:�b�rb�"ϦĐ�V]aE9'��z�Ƹ�<�Z)PiC�L^^Ad��&��[\��'^;a[�Y��.��0Wi��a'Z31ƺ�5�c�J�
N��b���Zʉ�,�{�9���G_��2:%��~O�a��U��Q�(&p�f�p�$4���v>��is��]�舮1l�� �j�~�VO�Vy�zo�F�]�7�� 7�B��S]��z"��"ms�j)f�A�3�P�$vsl	������!\�Y�&屻Y˒���i���ۖ�<�Ɩ����S�)O=�Zm{�&�Ee���}�N�������i�r��)��I�c���cW?�ıO����Rm���1��V�W��8Ѱ�������>��-8�^��|*� ��_���5��ۭh�V
�Kno+�:��Dα�rb�&�^#x�zh�^G�Lj�ꚁW��������jUKܸcr�F\�*`�Di��u����Fq�ۓ�ԥ�����Di'l+���R^U����i�"��8�վ[^*��w�""��vBQ^��N�ֺ��������YJ2��Vƚ˅}�6��W3�XUK�mi)��O�f�Tw�K��`FPֹ9�^��"�O�v����a����W���Z�j�DiƖB;h1n�,�4.IJ2Ԛ���P�'R�"��0�>H�ɸ�^���V��_W��O�����VehjI���]P��RC�6�a�*c���_�nmK���d�����8#�"��%�:?��%���o�ܢ���-�R��p�s�:�J�.O�9�W��\���j�#�����$��#G��r�5�&Z�~�V�E(���l�ޞ����KS{�'�_VK��Q�=���L���N��O칬�cv�_ѳ�	`Qן=���K�����֒�0��6aF��H��-�Ю�b��4M��Y�n�ת6��U@���氽p).R1Y��q�n���R>n	�UL�E�J�ۻ>%l|`[Y������F�2nG�S�%�8�o_�U�=T���>jUn�ק�Ӭ���bIZ����m�OV룩�b��>Z�Y>�6un�d�W��O^�#�-܌�A6�S�X��y֒o.D�Im�S1�����ƦܷaCˁ;���.<�M�^P���m��X_2ʅ��-��Ģ��Or�yэ�u�hZ����cv�rf'���6���t��C��~ύo�(������!	�S5q��n�p�#��r͊,X�S+���W����g��VE� ���b�Y0sC}����)��@�䮍�����<�)����y�=�0p[}E�g!^�	>�	��o��nRS��>z.��[1���*��>�g]����c�1���wf���(O�:;>���d���+j��"Jz�_�����>Ї<�!���]�sVP,޿_H渝\��o��	΃d,�7/ǌ����w�$#��KA2X��c�fR�N��ȥ�[��s�������;�?(n�Rw��"zW��΁�x(����#�z[3�?8�~��T��L�I��l�b������0;}��gY���P�,���^�I������q���z�t�0�X*�8yO���i�E��'���M�����`UM����V��V���?��J���¶ve��T�����X���`8�d8B��q�'�-������U�zK�<{{������|	�ƒ���8_δv��^(�m�~F�_��/���_ׯ_��R�>/      �   x  x�}�KN1�u�s�q�J�d� 6	Ċcp�L�Q�6�D�$_~��Ob��`]�g�ֈ�\�l���j̔�J��Ť/��g_����qG5I�ĆP0�E}���?"5�K4�BqϤM�eeG�E�꺺]D0}޻ńo-Y��S���I6�=���Xy�Z,_e��l�����="�':���O�qx!��9 ��t�z=eG�]"���ך��N1xh8zQm�܃�#�N�+x�+���h?����e�A8
�,D���<���pb��pB��G�b��lʆ���̽O-;�������9�$0���.�Pη��+���]Yg��$Z��F�1��S����5=;�O\
�C�Q�y9i̢���i�~���      �      x���K�,;�$:�\Em ]H��Yo�Go�^A�_
s'����U?��8�aF*Pğ��B������Ol���O�W��{�oț��?̯B�
����)�J?�O_)��W��W�_����Ϫ�۟x�����|���z~C�^�S�ǝ@��n ĞJ���~#h�����~���ZC���[k@�i=�/u!��v�j͑� ��O{�}�� Q�@PH�v5V�5�7���~� ���@��t!R�N�n�tC���A�k��Pz�!rK?YVC;���~!�t��.�R}dM$>ܓ1�o@1�z����s������c:C�B]��%��5Yb��y1􈿚��#�$�ϒC�F�}�5Y��u��a�~�F&MF�'�,��͑si�"5�9۝q2e���^���s��򇩮%v`�d�R �Z�-S� f��J91e��pb�d�R@�.�@pmu�T�G��᫘L}��շ�6
������!S�I���J���r� (�AT���1L��>W���o�RH)7d-�?;�Ӥ��S�`Ȳ-njrb��M~`�C#�=�'�;����vK����� xf��д��wTY�83�k�R��RE�Nβ�G1�2�qe�G�o�(����QdY����l��ز��^oA����?�G*�駋s2f�c�­�Sv����cqV����I��2K��߮����
W\$9�� L�Lw�YĻ���4�cG�`+�<ʧ�c2f�c�,;��1c����
�C�*μ�493�qf������p��ڕ*�v�MҤ;����=;�Hd��(�xe�$M�#M��b��<�+�I�c�&ݑ&����e�i�&Ѻ�sG �0��3%����aYt���a2&�1&!��]�!�<!����1��S��-W��9�*"�JǇ9MƤ;�$q2���@\$�0�@�j8�L��Iw�IB��ƽBTk���x�=�MΤ;Τ�c���,Y�ϢHr��㳜&g�g�J�>?�j�<��xr&�qf�Y�[���j$z�t��$L�#̔J��O"�� rş�t�dK�c�儺�U����P���|���ɖ|ǖ�v���Pŵ���K��a �K��.c����A�WU��~���AL��;��$���@�,��Y���i��'[�[�(�=�&D�Qde#�~�:&[�[J@��-Q�K�BRO�D<ْ}�L/��㝇I���s�ȃ8�fxr%�\)�8)7)T��T�X�r
�sFyre��R@pM�/#��G�U3��r��I��'KAA��[�ι�}�'�����s� ���r�)�̗U�>�I�٧J�gx�4�Coe[E����ɕ��J�3��n\KD���cT>�0a��k�+ӫ �=���Y?��cre��R@0�|�:X��O7���C�*�O��!�n��C���H��xoL��wT�{�S��O7x���z�*'U�;��%�|K�$��GR"���a;�2ٲܱe�!�[���h^��t�0�$�rG�9����B���ӎA����wR&e�;��A��-e��y^H�m�tm�ə�3��{�0s�"M)��0�>1�Q&�����>L��j�ԟ)���er��6���w�'�~����29�Wu�Q���$J��N��\��q&u���D~�k�"Sŧ�]��]�H��?
�>�ܣ)���e��q� �݉��K ��8$�.
<ǟ��XQ�;¤ ��E����KNT�KL֮w��J���pȅ��ą^8΍����0�l�~�$BB�wD�A?� &k�;����Dz�.;t�V$��qz�N֮w��=O��[x���ɖ��-#�s� �w��A���I���*cL9�lA +%?��O�7uRe����K����Z-u\B
?�rb�e�c�Pd�>����|1L��wL)~�z@����8�S8K����;�ʩw��S��Y#��s�(�$��e|u�o�C�-�<�0�~AL�l>M
q���I���A��i$�&I6�$B_��͗�,S�i2�y常�M�l>I
����9��F�V,T���2�I�ͧ�����ݹ!6��3��쎳;�6ٲ�l) B�����Y,�%t�Sm�e��2��=ܞ9�>v���~�TmRe�R P/t�?Yv�X��eE��8|K�O��;�!<EcA�+!|a)���2�o*����r�g���(�}�e�#Ka��5I���"�,GF>--�,{�������ߐ�'F93����%� n�X�W=���~#����>���%�ի2 �%�E�-��O�r{��z����?!�R�k*]�H���&<�����Ú�!{�PTKa�n{?��˟&k�j�[}�@P<�kʮl�{�D�[��G�pe���o��j0p�'��ɹ/%��!�B�EO+g5��Q�s� �D�6�������[�[���A]�Â����� ^M~�`�c9PGKv�H
�}��0_F������6�?DxW%s�
?ǁ7/ ����U�B��Y�)ɲ�S�[�s�?Q$EFIgm�A���X���㢏w�Э�(,O2�����U�EG����x\8�����´��Dɬ�ߕ�r�ɓ�u�9������vof�$��X֪�ȇ���Hn�*��ꫥ�Cq֥�ey�Th�r��?�d�U�BF�~�8�A^�X{Jï~\�5A4���%�2 dA�BA��Ϫ�lm,�Gfl'
�,e��E�:.D/�H�t�T��4��e٠�a˦D�/ِ����%Sjo�|s�eYF�.�l�^
�G��.e\��s9��Ή¡Kql�]�u�ݗA�d��Ʃ�;�&o�l���eK�"�#Q>��I,��,�ʹ�S��9|���O'�#���8��t]���v-.$-.<��ewDKV�BV^�B��QEAQsxe���G|�3g���%�,�(L%��r�3$*�q����Ki}��2�.Pf�T��"D=<r��4�N���l�P?��8E٥��r��E^�H�|%($��-�5S �w��K�a9.j[��dKN���W$g�C��k�������IX�D׽�}X�U�p>J�) �=;KW�o%��>�k�ͳ��C4�����u� �e�����W	�T�XI��^{
#)A�NÎ�K;a)�, $�k΃�
��SFRM�r��E\���SV�6��?w�����L`���8��s��J�"%g�
!nYH-�Xs��[D�%D��b#�]�utj_��tJV�¤�<��I�3��0y�(����C����x���P��F\��f�#�ny�6o߿N�el�F�Y�.�ɓD�g�<��g/��5��	p2���w��[�0>gO�/����A�����A��ł�\~׌! V����V�q�~F�}mo+e&��9=2��-%�lQ�,�S��KǸl���pĲQn_�n}tڗ�q9z�$��\�f}�`��h����B�y ���������9m�K�8'�{�>q�ײLJ!$_;j�������X�ƙ,�&~5jЃuv3֥��$��]�s�a�g6�f1��xr�;!
q�w��ų�~�I��儑-�I\�qӲ�z�GSb#"��h8�2���0��!gXx���uv�G��J<��$r��a-,�ɖ73k��-w���QK�SV%]�wY�	�2'� h+D�`��WȕG�H���?��Pg�wS�tq劥�����/ZG�B|�+�i�7�TYx��u�OkգN��B�y'/܂�y�˸�e�xN�{�JB�8k�l�A�Ih^�W	��Yf��N���]䝸�:�(�⯜��IPqUq������	a'�G/��0���K�騳49��2�c�\�.b�iK�d�n$,�6[�4.m�ru�,���}���	��U���������앤��;aɗ8���ݾ0���Ӌ�ő���aՌ���h�m��Au\N�B�[�N�vA�#.�8�	���eɭ	�� ��s�}8��_�|��F����������R�㐃�k�rl%��@�n�c��U9�X���;���k��������Ь���Qe���f�x�aٯ0zmƳ�E    鸯>�R�{���#]��������~]��И�?Dhֽ{��[#q0�<R���v�O�t�,���+
o[�*�,O���v]�ղ�}�ԈDNy�	nȌ�v��(c'%���ƴn�fVE�zt����*v�_R#�Q,���H����ϑfSԨ��E��!�%�[��G�D����&�b�J[����7c��כ�<�n�U���(�ٗ�Z���F�| _�g�dV�$��� LK�q�$X�m֏�!^�8,KH��E{��K���L��핿ʂN�">���.�sB aܐ=�Lvo��z�<����St0D*�{�D��w���(K�'�,�+i@N�Y���O����4��dͰ��j�lI��F
�J�q4�0f�~�̅�������s$���v|z���ٰ�����IZP�ë�Zf�O�T�E�&
�YO���S�t��q:��Z���a5����E�fx5.\�}�z�-|W�ȭ!�}|��n�1p��Lٻ�i8�"Q�����X��-�ѷ�*.7�,Q�!_�:��*t�xvd����:z�P�N�:�Γ(�|R�~W���k�/��ɢ��(��^N-k�$�ޖ��i����� UʶI���
���d��*xƝiY�=[I+�(D�N�^3K=�G/��|
�r��fa\�,�J=Z-��M9�iR-���{PTRiU��׆�;���
���ƄD
v�J< �W��,Z�/�X�}��E��Ұ�v�

\��l�j*Q�\�4o���rZ�]	�0uZ�Zf�Y��Pcg��cұ�����;
tL�CE[��*���?�b�����Z���-����Z�yZyS�C��"����"ظU~0alN�`���#�B!k�C�B�T%ߒP��hM���zi�ķ��*���s�V��t�U�/FW��n��ȲCOM_y��;��,O#:|���-�އ���Z��:d��vYd�ȥ"^�~1�X��Ǿ@Hރ�ӣ��ʠ�סg��3&��9,6_@8�Y��C|��t��V�H@\��7&p9�z�(�,Z�����ܻ����i�K�2P\B�+J��M��U��W�'�j0�uY:�Y���sZ�F��� ���(齮�R=κ�\�D�O	Ʋ���e��#q����杭��CY����K[�������a�����e
���Zzݓ�����La��8WH��J�'nj�h��_�o��6t2㩣��J�*dp��l�N�_���\`k3�琯��a�"i�����3�f�.L:��oL�
���4���X� rRI�U�i&R��r�zHL�.ID��◠�����r�s�.�aݛ��ĺTJ΁�Y���>�|U�*^e��(Ⱥ��d�V��{SͲ�K#,��1>�Q��,ȺI;dB��&cm�g��C��z�=��96�B�qL���%��P�*JN3J&�<_��~��1������Z�+.D
N��u�,A�TX�5��پ4�'rC�ۊr��{�p���G`}]N�E߼8:d"�����E!����4[�=�S�N����NC�����ܦ�*1�Y�uY�*;�Qp�u4:�^dS�<J��PN�����Q�Эcr�Üp̄��8H R��HgO��e�W�^(�{R���oo%`���:㡼�D�l���'2�B[ХRi�K#0�ӧQݫJ/E�7�<x\����uPY��d�a�p����P�7h��Z�\�8�$:짳NҊ��=kM"���k�C� }V$��;G��/����y�-�p<��qja��@���8�\`�w�pT����]0��ZiN+I������N�,�ٍ�'��iVd�?��A	/@��5ٟ�{I��>2�<� ��5�M�0��J܄�,�rV��m�`m0�[��3@�FY`���p�r�_f���+ͮ2h�Wh���M�}`d�5O!A���j�Hh}�J!D>}}})_�D���2�l�g�}�#�o�q����Y��W~è�i�66�ѩpe�2��ǅ.��Z� p I���n����G[~#iI֖��ו��PQ��4}�z��Ď��ڕ��KcYk�Jn����ip-��N؜P�f�ʍ�k��+/�Q,{�0Bi�y5�P�Zk���:�4��>�y$Q���u�.r��X��?�h���?��	�����O��朋wo'��۱d����&�U޺�\�zbA+!�>�r�P�>�e���D�k[�6ZA��>*�*�0�6��^���L�N9�ˤ|��=Q�K(�&�J�K��"a:Պ��b�&`�700 I�+N��G�H���⃣�����HN���k��,�4�9�x��Q/1b{�j���7o�H����I�ZsQ4��:P�+�K��\]�d_L]`�`a�k7+8%gP���Jx����~|�3F �3�DD�v�c�N�\O�W�|�0Ee6��qDR� IH�"�]�����Z�Т<�QW&nj���#T��(��(^��h�Ŭ�VP椰�gu�K.��I�-���ǖ�ҝK��{N�Sa
[�I#|�������0z�(�Idv2ʇ�.ϫ0��Ӭ�?,��Lϩӂ�y(r}�DVH��(Qͬ���8!t/�U���h�#f�y�c<15!,�
݋�غ�Gg�6�Ydk�k۟�X��R~���� ʓ�0Og$�g�̥�x:3��E���i"X���.X��&�'�|��+�e@�<����$��Hп[�*�/��9T�r5�S�&�`�O��'��!`T��MG�Ӛ���u[��T��7)���>���ǥ��wE]���P
 �s̭5GS����8�:9�)'���C=)vO��,hl����@�w�R�D���*�SV�Ǟ��)O%�Ӳ)��S�XN|�K�������rz�&�'z� ��^ЕR���DS#��vF]P���;Ɋ8<�������Vt�,ڂbw��[-8�_嶧�J�1s��[j&���@z b.��K�Jdbf���L�sb�=*ŀ���%���Yr�L�tN_�;�0	�7s�tb�H+��&g�yea��&]�dٽ��d:��3��JO:m")+]9�IpY��vy���n��5�(�|�h��8���D"�h@\�V��ُ�ͳ>�	�!�K_�֑�Zi������� a2�Oc��f?j�1 9�ٝ��j8Մl����KO�����G�4'�O�������XQ8���T�jY㮑���Og�|}�+=�)��p���c���⼑���p
�#�*����{a���D� 4���s�±0p{�0����7/0���#]�Z�z+�9���N�'iRt�⊿zm��/�[�,*9|)uaX�*:Tq���ª�Z���CW��Yk+�<�euF�/Tn��6�׭zklm��Qo�8��y�Z����34P�c�jShD���Ms��4��q�W�-g��v�M���4/�'��ߋ�ᬍp�3�<"nw��[���֕uG��@>*�%P�;C���<S^��-A��\�B��ƽZ �׋����9���Ry �ą;���c�kp��dQ#A#8�?��+i٬��V�oQ�`�K?B����n��2�a"q�0�孨Z�������(�]��z���\pm°�/��\��K�V2�eh���=
K[h��K�!Oj�ҳ-�%�z�c������ @�J��p�1\}�K�1*A��N�� 
��Y�Dz���9�6��^G����G���'�H�a-�F�1��K:�<=O��K|q�ܿ0W��!��pkYCr�HW�N豆���1��� �����$�[��쒫@'%���✞��P����d����ث-�Ԏ������1j���$�=�����N��¬�2:��2|�3���Ч*��=���2t)ZiV4A���04Z�pr��j�홒W-�-�� O��ǲ��Þ��{�D��'HӋ���0�q��2��Nr���ԝ�K���Nj������PZ؂թ��Z�����<�6d�P���Ϟĺ6���	u�T���R����S�~q��l��t���X6���vH��*k�x�/&��*j���ӜDN~K-�d�`@�OE���>�a,��QBAݹ��/$D    ̣�� IӖG(���ƺ�x�������⨮������Psm�p8�iA��Q�u=���!{.�1���ZM;�l���%�*��?�C�u�j��e���ZZ�z�n�O,�x����,ǅټ��Ж�gr/��h�S�������R�/��B����I��s>e��#PD�����^�vx����b{3�Ə-בKy�H218�VKzInIJ�s�H@S��EպA,y&�~��/T�IX��j$�N���eK��B|}q��u�>�$r�����</�M�ĉVU�0�$����8��6��P'Q�i�Ǌ�'¯
g/�PY�Q0���l`F�����ò&�eљ8���#�3�M
�L�3߳-#�f���KE|�e����5G�T=�$�Ue��2g�f���펦Uy������:�|"{͉�@LJ����n�}��2AX�L��[*�����"��t;U%�~�i�l�3�v����F��]��r�M5W��TI)�O�aOR� �����G����|��2P�`�T"��5\��g�q9ˊC�uD��`��G%�Z۷>�i���Z�;Yk�3��ѽ�Q"�2��	��C�*ٚ�rqZ�/}Y��V����;��99��0�裔�ې�6
>�0�e�&
]08�ŷ>Jjqv7�4
�l=�G�@�˙T�y�^W�
��ԧ�륍r�ӊ��,�JؓCu���B������縷r�E��_�n��h1��{/@ܭ{ʗ�:�^�3%����B
Sjsp�*�_�.�UƂ� �{Ȏ���U�μ���	������1�P�:�U�6~"�M�jI��SR����-�´!(
�'7��b7�%�R�>4��p�F���u��1��G������^R-YH�Lͱ�R-��\:�I"��h.'�PF���j9}%_�ġ��@��Eo���8����{v���:_�Z�dGz�g��	�EG������S�W�,ou���K��s�:2���+���تE��jʮ?�5%sZ-�n�i�//�9��L������ݚ���'n���t6��ѭ�5�Y��n�b��t��WC��9�+��"S!?~2�X
 �)��b[�тi0#Ǉ?��O&K���+{�y��nu4ŪbM:�Y��f�SP��@�/�=K�d(�Ms���0p��2~4�Ć̤W�rjE�l�և�κ<-}^�Y���Nf��2���7�ÚN�&���z���ѷ�ˉK��2D4�Z0'-iQ�Yzk�.ˠX�����	�t|����p�F�Ӿ����N���J��+*�;��8Ϛ-�	�VmѲO��ҺA�W"t���;6o<��(�L:4T�]����>"?Z��+��WB��p&H����.�Y����H�#���ӱT`Yv��1AZ��#������GG�s1�	��~��w�D���/1!�z��&~�wIZ18��:8���yI	Q�����yv�/G��0A]����h�eu���05����|dX�եcbd��7����|�Re��|���˞F����-�BS��t�X>L�Mт�:R ^����<۫�2��i}PN�u��ɠ@���`+�6M���/��Is�C?&��� �BS��#[-�+Շ�e��X���&60 �!t��� X/���cc����v'�X�-n^o��d�[�=.r�zmuZ�Vբ�9q��++�m��x�5?!4*�儫Ί��0�x{�O]���*Bj�%�3x$�UXܯF� E:��:�i�����ΜLnɚ��3O� \q�S�B�g��T��#9�r��PF)�d�Q�y�q�a%�(,U	
Uݓ�I�U1H�G�0�51X�Q^����*�΋*�����=ZQ8\Ր�g.�-@��vJ��I
'-��ҭ1@t�_���4�P�J�#8}ܸ>Q8����=P�Nѫ��FN�%���uݤ�/Y/���.UhA��s��
$q�tv����X���۷^��Z|�Bsx-9	�m,�U���Z���oQr�k�I0W'�i�u[�D���z%��M��w�ngt�|n��5(�LGL����r���u
eRv���qK��$f�u}�:��<픩v�N@��4�����B�_� zx~,Gi�YS�P��{�G�g_UA���<�ِ���0�bJ��)�T�7����=C;�[X$��W���)�{�T����tU4g��Ѯ/+&a��r��������L�������$���0����P<8���n�#���\5A�� �����.	ⴳV�}��&�ܖ~����γ���ɼ�EZ�J;s]5���a��#�j�T�
����T�r�S�~�^^��M '����2n�V�O;y�w�@h��(�q�_�}�����5\��#� �Uϓ���`����[׳���,?n4R{����J3��d��"��E��]e��+H�Ϣ�����w@b�@�v�O�5�D�`)��jFs/\�˃^�s&U�b�T�S����sg:��(+��L�����,����O��"Zn��N�����eRt�b2)�˭���<�\��c{2�a�D
�|~�{�IE�kC5��ۏC��aiTBs��Z�{�U�hN�����!��$��ҨDb��<M��٦Ӕ�\3QX���LK ��T���:�	��[v��.iK.�-�^�Y1��=W�Fk�lA�zu��3QX
E,���؎:�4"V�4�%�QG��;W;{^e@�E��x�t ����B�����U�ٳ�����l�
!����[Җ����8�a��Sa`�dI�w�Wr��҃����#.!<�ZU�>^&�~
 XP�tƧ ����Π�P��V��[�E��4��^#N;�V܂P��2�U���}��ˉk���JF�I����0u� �)K�n+HC�Ƿh�1h�׹H4�8�ġ�٬��l]���4�(��n��Y�e��YԯQBha$��s(y��x��G���ɳ卤2��6��R�z!^���7QX�H:[��#/�O��<Rҏ��&KI%�W;��j'hh��3����}�K 8ǻZe�����p	~�ô_YΒl�"�����j��k�T�Q\�J�7�iY�ew���s(��L�E��FY�V����i��N��r�w�m��%"�Xѧ�`���|ȝkj�X�D%]�Є�������?��V	���t�hK��
�A8Ʌ�
�5�0�<�4��8��h�'��?��(����$L���w����&�7��D���5i�_����6����&���lo�p��򔧇^|���8[��&�k��g
��<�J[��t����iy�bɓuJb!9�����)��Ck�0�.���&���.����Xe�j.!��#S�v�Jc4?	�Ze���8��j���q\�\���tƚE��?������"�e@=�y86y-��[��K �C�)��\uJ�>@��ʸ4 �&�� C��T��r(�P�);���R̟c��&��Uˠ:��s��ņz��[WwMBu��+�틩��g3�ugӦb��D�l埆���|&h&���l9U�Χ�����v�Z�B��y����i���������>�0�$\�a��'�/^�3O^w:m�W�^)��E�7P�i��5 9�3����Υ�E����4��)MY?��\K��\�4�ݝj���]&{�ejȀ5�8�TW;��1&/�!_MK�1ɝZ{��P��ƶ��"��#<ٲ�W�. ,:�4�
�M;��w�~�mB��@����x��D���NA@�Is����;a�_`�>���늰�I��^��SeN5��y��G�S����r'��_���2lZR�U�Qe�P�eb��	�+!D�ޙ�a}r��4�n�<M�6qi��}"[���>%q��8d4���UT���fi3k�@K=:tu��F�;@�2�%�	IF�lm����&�^S�mj���$R����
�qc��0������U��%̣�B�5G�m�/��Y]�Fp�]���v\�I��Y#j}��=1쌥�"�L�w�:�*;H"�8�t�l8-�^�~��e1��3\���o��?��(.�ھ'���s����`D����d���E]�f�̻����+A�y    :�K\0yy,�g���sh�m腲���)��7�;�����!�Id9?z�@�����e�}b>N���7����E���wk}�\�� ���X?���f}��,h[�:)(,���-��:O2n�t`�q���&آH'��͛�Z�����d�%:���~�.(v��F���^fQZ+�%��V�6��r؉�jq��B�����?�H���Mz8)h>����Ζ��nx�3���`&׮����c�<h�#ga��T���g�i&��A��B�=y�Bg�Ĉ��w������{�#��F���6�����_�ML ��zg&[ ;�_t���kS�
jU��ix m]�|�]o��C�4�� U��VU��[��Knq*�G�FlU��Q�~<����vc����@���ͪ׺U�A������x��� )����o��;���f�q�k��L[�]�'��6���������RX�N�B͞��4߬��ۗ�S���x!�hY��%�R*�8���./���bC a�^K3B5=��&q�g�c�$�i�pYqX&�Z�(���_��I?����c��	#�MU�1�����[��GN�C1^�	]�/�m����iL2G_�ޢ��.T2��@�����ō��H�����bO<�P$D�u�����`B�}4����Y�������t	��ɲ7�#�_��V�Q�s��]��ц,���sX�4sڣ�ٺ�����V���O��F��e���ּ���9l��?h;Ma!��J���緀�c��X�{b9���K/s&���5\;Q7��>\w��W���=/X��s��ϪG��S�j
KV� �H��dZ����g�bA���7y$B��ɲ�{6P�Y����#�r��W� �e�8L�9����������?��Fqu�h�g�\"��N��Pv�(�;��W��XI�ޣ��3�Z|��غX�x%��j�2ŕ�dY�utj��ݚ�ߺ�ھaX�J�0�3b�*�܁*͒�$>��ð�jjWE���^�U	
K@7��� ��`�*�6DE#�C�W�����$:F�4��@pȪ_��5�����
����g��Ӌ���*��@�����ݪ�����_PX�
W�a��N�
�)���\��p|q���dE��[	���V�a�2ʱ���$l8�����	���kg��ܫDE�|��r���3;��Vj~�&n�s����*��J���1����q��n�rʙ���Fb�J�9˳`�!ˉz��k�V�j@��̱A��|�,�n�.�uv^H�,cm��W�*��u�e����G{H5���eL��Re}'KУ�����,�>�K��_��u�2�\e��h=�Or�K>��t>���.��Q�M4v�L��6'�<O�e�=�@KP���I��D�/Z���,;]h�A��Լ��5�ZF6}���=g��)��vA�8{+����%�'?��4m���qP��F,�7�U����O-M�}���X�=�d]V/��TLUܛQ��&-\؝q.۴윥ߔ��!��<�+&-��׈!!w�4bg-����P�G�v{Y�C���*iq�E� v�*:�U6bD��AZ�N���U�T�1�	ĲVT�̐��� Q���Z�)���N�����p��VyO�&���+K���"k2�,��9�eN�u1�!z���eХ(��q��Da��Hx��-��� ׻:�g�ߕEU�z_QUˡ4A�A�Wh^����~Xe0�J���G�:�����\음Z��0�7]�c��uITˠĚ(��=�=*�on���X�m���IWbs2�j��k�>%
�KTNg��%��>��(�����*��.���6%,�g����^�/�	�P��޹�¨k��i�����I7P���uy��^�ͪ \�2�*���a�S"�mN�q�H��\�*(�$�@�&�h9G�eO��W�峴4�'Y����y�A�R�eOƬ����l���!%�]���6��S}&���Y�d� ��&�,a�
|�!�Qcp*i���Y�do��k���2�p���V���$�/��CG�E�4�UKTzJi� R�)��L�����V�C4~�����()E3 >��T�q�,o�J��؛���vqƆh�Æ����:&qsX2K��G��v+w����*翯���-�"�>g��5cE��{Q�z���q���9B�\�=�" ����P�vXi�l�nY�Ż�a�j�G�0dd/��6��3��0,ie-ew�g��I�>��P�U������X�ʚmL��xC�,�zs�(
ɮ�g��ga��E�S=���c#����q���	q��c���_Na��W��'���eN����8�K�!�^U�s� �p��ٓg����D�:�\�M�o��QX�)5�&
˝�i	������ZhΘxVt<1�ĩbR�e���T����'G����4TT��lUλ�d֘�YN��XI���3(^�vL�󍔰�VՒ9TUE'`V+�".���N��:���_��5����j����F�b���C\�G��V�\\����h9�K��2��"8�\-������rA1�M%�qP:c��('���.լ&����U��6�h]��tڢ������TP��=Uo�h("�yq�HO'��"�<�����DS���=�,��/%Iy�`K�DI�e#�O�^�<�pW����5�(����H:�	#�����8ݤ���W��elCcU�"q���%�������M�FƵ�U�X�e*#>��7AX���g�^GW�fE����.�����/GH����#=��U�jk�c1���r&���!�ƽI�w�Y?���a�`Y3]�_����B[S�y*b�/������W����=�B�F�!�yB���;7�Lg����QXҼf�R�l�N��$F�v���}YK�1�7vm�'�����,�;��Etq+NEq>D��
Bo�{����֜F��nZ>��D7 �x,�y�lA�V%����T�D��:��Q��Y<��ج�O����'���k�D�i-���R�˰ҠS1�igD���G�ptm�K/�=�V͍.7����,PR�εpR\��r��1~U<)�h�RCL�\�p}3�����\V��Y֪ѡ0X�m��-��y���.Sk�}<�ib(\~$�ը��� cݮ;}v�*C_a�d��Zu����I��Ο]�B��f��Zuu��x���hכ��RZ�;��H���S1Y^6�ڵ=c��+�vgź��;�h��NER�my��;����a�QπAF�	��,�ݪ>���x�t��H �%-?�x��7s�[+`db;5rx�ʀaIҡ��"�;�ތ������6,o�5e�q��k�j�j=��>ɋ�Ö�H�8eᄵ;��������2�u�����p�n�2����$��F,s]z�5sK��ܭȂk�uZT�7�-s]}���W�26�ߺ�'�hQ$���M�>��
��9UJ�� ���Y��o����
��%Μ.�9����[e��r�d˙Y��#�+���[5^�z�HݵO��gB&?�q3Z]w������a���0;M8��?�Nբ���AhDpPlVݢ�S�۫��em�!�I�0�*w�f�4c��!�e��`Q��Ψ�q��f��Ӻ����-
���SI��U�Q,�x���<	��1gƗ�Y
<,�Q�B�s��f}��+�=�=/^�9��3eA���t|��2K-��4i_5Srp�0�������֕�׺��c����?P��0�}:\��m~�q<�y�"A(�<ınRKX1���Nq�C��ܟ��sv����<+� !���9��P�n����2	�<WZpTK���F��n�c�}�;2^K��I:�#�M��X?
ϧ��1,����*%VQ����c�s�$�k��G�c�|��b�t�8�ڒà�U�)���K�%X����ʸ�˽9�Qo/
��4N�L�(��Y�i��W��]�}��v٬�}�~N��r�VK�t�z���j�}��9��:~(�    F�F&��X��k��Z�*�B9�Ǌ������Pg�mڙ�U�c}aI16�5u��l�B�Sج�~�+�<�l�fYSBqٜ���D�Ue.�~N�U����pe�KV\����[��t1QX��Ξ�D�VqkF�8�%ڱ�I��%)&Tgd�{�>���,C�*drj!xOb�>���,K�u�_������>'����V���%*֒�PPj�ج�om��z�B��X�Ԫ�щDv����[���E:q�8{�jɞl�z*��l�F]1P��͊�!�Z����(��V�uPsH&��X����u��V��s'on֧��D�p���,:S��X�=N��u!�ny2���g)�ֿ�N�)s����'�ح��M�,�1�,��JǪ��A>�C���i���x蔾D��O�&K��@�ʭ'�9lV�!����v9�:P�S�(�����:�;������+���呚���Ua�z�]W�]oq�p>OM�-1",���Oq�j�>� �,_b:�J�k ���V���rf֪^�yY�ݪ� A�pʂb�ͨ�ӫ	)u��Z�%e9E;cE�_��'�h�����L;]a����q+ַ���Ǌ@�NX�-迕�f���e�e{Ɲ��;pT����m��ĆC�t94ZP�~�~O�\��Uwg�;�*�~~g=Q�Tu^��3;�߭@�q�i�y��NV�'��a	�ql�� �O;t2<�􆱳U|w+%�{%�U�G����i:5,Ocu�R����dR�-��[G�{;mo\H3V�L��jZ����}"h���B��Z�U{c�б^��6��"�+b$mqQ|Y��`6���x7�P�)��eP�F&U�"��N��r��h��^n��{�lV�r2R9��s�� ��[��.٭��f�rZ0�Š��q-�@�6jw:���҃��=�"9�oc�^w�g�O�&K[�m���?���g��h�`IK����߷��D�O��]$�����;s�1|Y���1a8�-�W)�7u`lֿtC_��{��Rϝ�ŹY��aMYi��{r|Y�R�4Q8d�AG\GoQl�߷�K=�����c竨� ��-WX�6Y�jX;��p�| l�\r��[�Zq��Sg�p���H��;�[`���89֪���zء��BZ�g|O�nH�6�b���Q������N��]�6K�Rs�|Y����>/��0v
�/I���Zv�fd�ҩ�YYr�3hԡ���R����֪I?����8��߃Ѽ�����z7&O�;:�F�E�[�S���]w��Gl����4xgѨ:	�k��m��*�&�����M�
�9��n�Uk�K��Da�3�`�dn�}�6\"�=���jړ�"5s�Z�>�$>/�(�j�&Xk"o�nֿ�EOc�Q����47���ȳȏ����gu�D���.6�ߚ��Ȗ��.��L��q4v+BD�jħ�/i�%ٲVJh��5輓o���
ߋ���v�&B���w�{3�>Vr�����;����YG�e=|q]�+�����[���7QX�@�^z喪�Kw�h$/�y�<��Q%�
�U�g�U?]�e�ay���C�������Q??UPH��(K@��s��ج��j�b}�TtTe�/�m����K펀2��Yn�?�OS��ioܚ�76�u?�����NS��4��C�U��h�<����p�
=b�(��w���?5�L��M/�u�s�[׭N���K(�b�w���ϥ=&KW8�^!Rd��ޭ�j�!V��E�tE�Լ����n}�"4!X�����Y�{���A%k�H�MBN�K*N��[�]��>�FL�׆q%�j��5�$Ȱw ֪�����Tx�V�<� 5���U�0�INo�Ї1aX�D��R��y�[���t"Ǚo�ߢZ�$���[��s�>�t��d��'���_V?�A�,��+H}�'W�;;�T�U{sh��KHE8�qT�fPX-{r@�)�f,�.٭�v�n=��Y�Eۯ/�{���l��&�"��D�?(R=Ͷ��N�Y�<��!��p��>������:�*�ң�4v���o&
K��=��2e�4٭�kA���Y�d��{,{��߷xp:=�i}%�<�偩4/Ѻ[G�3�XAX��lQ� F��͊7�y��\�u]X�D��؇ֽ�Y� -2QX��}���s�^-����1��������-ߺt�����E��8��q�w��s=�	¡O�-zG*x�d�~R�t���#ܭ���$��b����J�<,!�U���3>^����b����=ګ]k}�U7�C�Yu�1���)�y̥=�.Z�kw��haZ��x�d�����	�\��s	ݻC^Uǝ�PmQ��b�`���	r��t�*��\3��k����D�0�^��ܲ�VuuX?���<NZ��NVE,����f�V�?1�.����R v��WAcZ<��,��:���s�+�]�ꥱ���l��z�'�*:L��(�����8
^��[�N駞^+��F���3j�C��n����!y���I+�!�ْ�Ҧ���=���N�5���ON�l���(�v�&Uͯ��x"���{��+����{4���4���H1A��CrV��+	������f��ݣw�y1��z��
���A7�v����lk�����$܋�#�op�w{t�c�O����f{�Z����4�N��-�DD�N>�/����	a�M��\_�U�����겨�9�;m&TA�P<\�^X+n2���zv����M�bɿ�hԆ$�����	�2�U�E��=A�U�����푖�a�u�*�m�r�/Dv���i�e��(vOK���RW{}f�O���H{p��EX�s;a�O�'K���|���&6�6H�*Յ"LO�~G"\=�����/����xu���6L�ֿ4HO�.1���n�(�*�ȁ���M�g^��R��h��):�Nk}� =8T��/5��X����V��GOS�b���F�֪�*�����mJ�o�J�8VQSUHt'�8)ִ�����p�R�D�Cw�y���}Z���	j:�[μt*���Z��=Q8�����=�|��j��<Y����ܦ=A��49������ϱ��D��yM9�mհ�?�HOm�������w�t<�XצC�z*,/�ui6����!�r�x�d��U[�e�i��Ez�phc4걽޷Vm��A�O�B��4��u�"J���o��à��0�l��䔫mG�V�k�g��Q��ӈ�8r�Q��HЯ�h`̶Z�5G�~26�i%��d����Im��U��`k�K�P.�ǭ*K�ȴ$��g�4�0c�� ȺHO�",���IH����A���ح������c9DLO�~OB9Bκ،��S��-�͖7�K�#r�2�U3Bި4>sy��j�"Ѕ���s�l�l�0�q�0D0���M�xW2��D����e���'K��W(�S9y��[�� kU础�r�����(�s�N�d���NO1���D����_Z�6��๟�*�&]�����!�Kɋ�v��s�$�7)g�qqڲC�:d*�ڍ���[C j�ȓ֧�gA<B��{�U�"m�6<���Іi�o��㈜�|k�}6ҐV�V�!S�֪�H��n���4�"�5I~ē���Y��@?aX�S���Ei��>6�h�?4���cF�{X��ޝZ�����!Ϊ�"9�G�e�K�@aZE��x���Y��2�绶��d��_��ѧ�[,y�N"����k�
l4��v�'���D,}��^���Z��T�|NU���e���� ��fw���Ⱥ���L�</�e�W
�#��l���*��w�y�b	��5"d/ѷ[5�#���%�d�W�{� �ۀ2�::�OS�u!PӼ�����۔ܝ�Y��2�=�y]��A1!����ͪu�M?����n�,*ߣsM
{��n��u4y�a=/���`IZ|�_\����f�K��D�P(�M]�y�Z���%�f:G��ߵ	7y�Y�C _�ϧ�LB��'�u$A�J<�u[�o�����ء�y���L�W�s	����Yum�|N+���B��k� �  <�"k���Sz��m��̐��W�m�}�[�F9N8-�A;��<��&���ջ�ڭk��ò�	ZJ`[8g��[X>�����F�����&�.�s��V�7�?�<�u��?����_��Q彔ͪ;��Os	�������5�G`�u�n���g]
�L	�N��1��K��V}]苜 �_wJ]R���D��U�X�
wy|������B�V'Pڭ��&K�Wy����9��ݪuAr&hB��uA�Ч��%�n�T��N�S����=/������-Uģ���T�a"ph�"����0ۭ��6(�7����H�Ƒ�����Ϝ�U�w�~}�兘���T^��V}jm3��P�ab�|uR9���lFml�)���L*����k$�r��Z�K9�Vmx��U��(7y��<0�eUX��ڛR�pHs3�I�b��XY�SrL�R���A�b���UΎIy��ܭW�: XtX��Wb9����;���ͪ�z����X��-�b�,����O�=X��N�l�꾕��X�bB��%_�:���f�P�� �����ʸ;�A|Y52�C�\eE�0gՉ�w������ÛMy�d�Li��E�b�phSg�%��w�vI0�^^����p���{�ʯw��M!�~���Ý�]8t��ٌz�\�s��I�6����\�%'&�3U��D�Ab�������4}���w�$�箣�̚1�1QH��O=�8��ng����,ys���y��N˚�{��~�W�88�L��I�1�a�Y����ggȲ2L�A������z�Μ�@B��ČƯ��ߧ*��1�3�=��k� ���u"{r�B�4�3�E�����SY���B��7�����7I�� 7��ݫ�U�%P}zI��؉S�&�x���9C�U۔��Sa^��Ν�=�֓�j��������4Р��e���f��&��[#� �\|�A��UrⓌ秊F������f�Z�Qb)��t~�������,!q������ɉ	�aP�:�p�f�Q�zPuZ[ȋ��'���5���]�A���Z�O��1�K�nZj	4���<��Xpb>�A3`����YUpB~ �k�:J��i�!4
S�M�c�^�N���I	#�����V`�)�S�g�S�@��Cǫ�em8L��b��->�Vq ?/�D�ݩqI t�\C�rl��<�ݪ��,��Z��i��#�3s����11X�D+n{I������V����6h9aMW�y&va��<�k���Iƃ�T�uw7�-�U�l��1�;ɪ�w|��<_M
mQ��u[�l��a�n�|=���0.�}
�zwn��Us	��CW4�)��_D����~�Z�طZ�Qx�����j_YNQ�[+N�wb��h[��B�-u�	c�z���ꭸ�s������?���      �   ]
  x��ZɎ$�=�|��@'�[,u3,��`�>�h	6`k^ ��_d%�K'��` Mv�d1��GI�x���e�S�J�Q�Cu)\��{1<��^��W҇�Cx�ʦ6����[+R�������?���M� M_HG��AT�ݼC�/��h�W�*<������	��2��=T�⩐�N /�Y(��v����(cҫ��i��oཇ��yp�E*Y��L/R�ن����\�1L]�f?d,2X��+�6ÇC�硭/ܙU�vW7i�^?�N��e�2����h�O�-�S�����J���Y��Ѿ�i�ހ_i�Zou1����7�m����{��@����lgt�<ѭ��%�օ��ǆN�}�ӗ��K3�O���=I�]^���!��h��)��:�=E_B�,fc0]��PW	�S���Jˀ�B�6����S�����f�n��D��n��T��6�n[��$u�z=Δ�)4ӂb�:��+G����N�b#w)ZO��܏e��Sv����C
j)!��9B�cC����}�1�-VM��"7*(���̧��9��@D�S���������ϷC�PJ��k%mZQK����sX=d(�i.��˃�2&\/����Ը~ �<hL�
���yDg��#��r����Q�P`����}s��o����@�TD�5��/����96���i$�3��;z��yZC�,�Hw-�OI��.%���p�����l��r6��߽�^��j�j�����٠�sJ=k�'xc�:�|M��T��C�?�	2VPK�7/M���Z����CǔE�o*�-w�������8�0�+����z`� ���/�M�&��I���$ᗌ�)����N�]Lw�̊�gD��~�-I�5dp�i'�[q������W���(����1S�X]�Hm��8�@A�د9>
��KF�|fyd��tr<��c�E�KF�n��7-���ë�_Ԓ7IF2��@��m�3��]vt/~�R5GGPt{}ݎ�=p8&�j�f��H*[U�F�U�Z�iJU$7� �̋���^�8�����9��t����~�ѽ{vßDW� |��4J��GII�C��{�ty�,���,e���A�a��E:)I�n���4ei.}�2�i�s~qA?�隲�;u&G<E�e*��s0FQ*��5%in:jenV/'�]������~�3{U�Ģk���4_k5k�cz��"�D�kJ�;��<�2s�&{IJo���٨)A���6��s���Y�83~��lr���Xˀ$���q�Q4E_���Y�z9��EE_��^��|E��[#-��t�C�t��_��1�5�rG"E���R�^W�/Z=1ZF����ԋ�
=�E�2���}M]:g=����(��143֛�����������2�� G��h�2��ѹ�ⵌ�(��nګH�}��>�n!����)Is����V��碑"�S�f�kb�r�f�AU����KI��s_�P��ӑr�"Ԕ��Z���Jǔ����p�֔�98�5���CM-�����5�&授��ŚR4�nsceJ�c�t�g����yr�5�u(_f$� �8є�9��ҡ��5�;��ŚR4Ǟ��V�]�_{�H�5%i�ާ�M_g�!u#�Ԕ��"��r�B�KC�L��r47���
Ol�Z��4]������ �.u!�1���;M5\�R�f�ۼ"D�� �]6:x��:fL߂C��*�,b\M�Φ�q5E���c��9ܢ��3-c�l��T���E9��S+��if����n����$�LmS3lks�є��gb�~:�G-c�t䘦z��{�|wzF���$ut�
�k,^X�xZ�C.�}m`�����G'@�y{��xL�dNx���+��z���Es�U��z�0������zO)j�����\��/49�Hc�����R4G�)J�9��3^�˰�r4G��9f@b�L��\⥧�-GsgRj;]nV������b��q��*�N�`��"\�E=�h�Ͳ om]�<A�D1�`L9zA�X�^p����&O/�"%�H�g����9��^�I���`7�?�quf�=n~�ܼ���<\��U�S�O����4�����n��p<5-�Z������%Y@z��3y$);�6u�(2�x��{H/ށ���rۃ[�C�t	�Dw"��0�}}m�ًK_�Af���!�L0f����G��1�5GW�-��tQ�-�'J�t)��2������8Ό��d��2��$�a�e�N}xT��+�g��!7�V�u�&	��KH�Ư�]�e��,�Ϲf�t	��k��/6�rJ�s�@��F�ۻ��!�3�P�dn���	���yz����5]Cz���sC�4��؟aO��C���R���Y��"^R�*��&i�
ڢ���#m�7�����4GGĳ�n�3���;v���f���<U�(ݧG�)Kyn��4@ok�S>8��WV���w������滹�⇛�$ݿgݧ���^��VB�m��C�oH)�|��s�h�+��_��t��<��i[��KcM~cR�u��]Ѽ�FT0p܀Ӝi���y����p"k �;!��ѹ�ӵ_�2��0a!Q�y���o�}���~���o�������|���/_����Y      �   p   x�]̹�0C�xY�� ry�
��$ي� ��y��	���,c���ʈ�j�΁��SϏU#���[Q�_I?^�`F=�� ;���[|���چG��U:=�tIm"      �   P   x�3�,�420��5��5�P0��2 "K=33#3]S��1~�A��9��\F�̱0��0�i\h�kqIfnbJ"д=... `�      �   �   x����� E��WfK�T���k"�Mlc
�����ht�M����#�B�B(*k��U[^aUJ�+@臤Hhf��Y:/KH�ߴ��pS���I�>]�py��܅��96l׍1����m(ۻ�iWI�+)k�Q��Wr��a�biL.M�~䄐@B�      �   �   x�u�Mn� ���a����]��"%�4�/�(�������g��k���̱�-P-��Xאs��ӓ�*5��Y�̊'pK+��y,�������B�� �%��v��u��+U	͡���r���>xQ4�߼�B��h�n�I5��P��{O�Hi�m'i�h��k��qh����@�T4��?
�<�� =gW�#h(;��Z|5Z����m�W�{C�oM��      �   �  x����n� ���������g9	!J-����}�:�$��7^���k��v�[�Yc�n&t  ��j��s� �@<���/ �B`ӛ�����'��wz\�z&�=�X��@jvS��ʛŽ��;�Ǳ���s�2����H:��hݪ^g=����!��d	�p�ž��nn��OԪ�D��(-(^�CJ��x������W��P�Y��U�HDf��(|���f�v>�0D0�Y)䑒Ŏ�b;�9A,# ��Șu�9z�:���̅���B���R��w�k�%w�CkB$ ��]���䇕w=�QG�C����y������%䘕p �8�L�$f)e�T����9���$_������۷�a��L���-Ed�����a#[��B����y�i��F���7K�@0YV�n�1�~.=��fYv�z��̝)e/9��]0GK�� ��:DK���r�`�m�      �     x�=��n�0���)���X'&�������B��F��
�9�>���;9���[��hե-�Gr�RM{��4��T��n�b�j(#+׉+,V؎JFfP�l����R9�"��kX��I���I���lM���p���Z�
��#2�ȌVa��>�����[�$�!O�aN�9�Q�IR��Hr�s�3�ytzr� +�v�h��ןCY[aE�{�U(f����,܇ݲ=��3W[��b����"h��C��`���1�x�&�!�����_�h�      �   �   x��̻
�0 �9���@½y�dI�.Uںu)�Ap��"Z]���F$���9:�.�	�V�z�`��ؒ�iY.}ڗv� ���F*i��˛�>�]LM�����*��ց��_]ޡt�t���W^�C�F��Cg��Vuy��<�Ӊ�|��}~��%��	0I�      �   �   x�E�9�0 k���]��G��� ��H4�)R��'(E�)f4$N��� ���6�P��N��w	Z �Dk*���uI��am�J��N}근r;�߼�e�܌<`����w)��Ss	�0�X�,���~�!�7�����{%�� ��),      �   +  x���AN�0 ��+��vm�Iss�r���IQ�!��Z�H|���^BRHT��4��%vdi�$�(/P��+�cL�íc�&��.=������˛���������4@�v�{a��(��9��R���J��K�+�g�^�
f���!Y�`f���cS���Z/k��;���1J����M<&��
���J���}����hӅ�հ}�Ώr�'9�)F	�
Ă�I&���O]��Żc�-����G���\R$�qyn��/��]�60o��S�������ذ1�M�(�s���      �   >   x�3�,�420��5��5�P0��20�25�371�01�50% ���������i����� �w>      �   w   x�3�,�420��5��5�P0��20�25�3�4501�50% k�����������i�gd�i�g
7�46 ��3 	�0e���(�=Ə���7��3�1���"������\1z\\\ w>.Y      �   �   x��б�0���BH�'EY��#�#��3R8���E��`-�cCߌui�e���x	r�d�M ��bޤ�aj�2U�nA��]�n�ot�����Ozݞ�ʠ��JQ^�?б����� v�GM)} �S�      �      x��]m�$���}{o�x+x�lb����"mȚK2=R�*T�v�)0�����8_�v�o����Õ��+�����������\�����܏����s�p%��f��~<���?�/8L����x_	1%\Q�L.,)uTSr���~�R
�)��(y��(���(�(�6qqE�CN����s�Ƚ(�Ô~��n�R���RI��@5��k� �e��0�m�ْw+N���:j8�6�R)�Tڟ;x͝_)��@�+8�qZIx�T�r����w�+����q�q
}�V"��a\�՜��ܹn�+�崭���^�W2�0���񎞓����or�'���MN��S��_6K!������Yw���k�`)令��7NK!w�z��uS�Lm��J�I�7��R�79�{㥩��<��r����w������v� ��i%�1�r���6����|��/ݺ��w#_Iy����zέͭÕ�os��7h�+)����5����J�KN՜�j�qZ)�.��-/6_WJ���SG��.]�p�䛜��W�c�K%w|_:�=���|(\*�&�}��>���J�n����S��i�仜��[*�����sl�VBN)��\x=�j�uVBN�:26�s�f���]N�A_�h������M�J�)�㶶���摇���r�b�t��GX:=�O��R�=�uj���}�-u|���Ɖ�:����KN=���-�|�Ծ�9��<�������ĀVB��i_4S��i%�!��F>�s�Vj��|������������9�s���G+!���źk�&��<��@��=��|��'<l/��<����F�уG��i%仜�'\�1X
��������	y\
�&���멠�r,��rs��q�VB��p1�(��ݞVB��s
M��JȑJr�����o����c.�%���K�SK�Ǖ�osz���^�nO�A���#�u�s����k��!�d=��o��䩴TBZ��?�)wN+����Bd��$��^Z�8d>.�i��8��oZ��.�/�mN+�(A�%��F���i%����0���d����9Ѓ�~}ݭd|��~P,��.�T����1�9}J���J��yN���t|q�3�@V��cK^������/+lo�D���R�79��Ubӧ��q�S^g�z.K�["!�t|�Ӿ�S�����~�9���y_w+������qZ�8��D˖��L�4/+���Ey�ӕ����X�xGϵ���R��{6���@�W���G�D��_��+	4��? �P\���/ň�?|�0b�E�����~�%k����߹=���YN�_�� �7kZ����	r����@�����k�}��Ӛ�S���#�+%�5Y��V�ǜ��T$kݻ[�u�jNp'���� ���c��cZ��"Ǧ|!�䌕[����P��U{Ȝ��Hl�
N8)Ts
w;O�*�2�}�-�啟oF��jԌU�V��'^�·ǖ�^��*��Jv!�x)Ԙ;�Nb"
+-�����v���b�kYaL��t~��TgC�Pz��0�mF���0Қ�o��U� M��Zu#��0iQ�����+���-zn�老��k�# rv0#�PM�V~S�Ww��ҲίM"�9a�3+W蹑�#�E=�G�J���u�jRi���kU�v�xy9�2L]��v�V ̤��t~-�5K�a�̞�M^��JZ�����73s��ۑo���{����7�E�Jmz�>uA�V́�(]>�As��4�t���%��|>�������^F�d�e`����ڃ��ttvYU�OHi��_�f��DVV�d#��&���s:��X�[EG�/�=��Ĭ4�I���c���c�ג�����B�y	�]HYEG�GIH�LwJ��=u���c⽄}f�8#�Џ�?&eY��c�P^Vֱ�f�\���ռ��O� XYN^�]���F�綿����`W�7
���S�ŗ���U�|cb}�pR�v~q�c��U���.>�4�;��<�#e=D�P�3R
5#���yX�U��Y!/��Nӄ�B��Ź=S���d�>o��'ާF�{�LRV�%��W�%��~j��N���Vԉ]�r%�<�^h(ퟑo�������x�
�C8�U�nT��5�	+���|<�3R����ۍ�HZI����\�ٹF5�����1jQO�<GrƦ,z0��b����kA�
9F��Q�ڤ����a�Z��a��/�;cS5�	�<h��L�VI"����M�b���B�m�#�Zғ��D����˳�9�ju��Jkz}/�+PibV=�UQ?�����,�����k��Vu_!hU����ޅ̑ԢǴ�u\
)-�I�>|��)NV�F�����k����������+M�Uu~-;M����kԤ��G�h��ABӎr��H)�X��TQ�Ճ�u���fC�Ѓ���T��:�z��]�Wݢ#�c�YQ����1`��45#��-�����Cy ;�)��((�XH��:YQG'I�J�&Nl�s�����t�5���H)�\�54++����W#N�J��B�EHYQG�P�}�8���(�u~��2��­%zPԻ�@VԑO�r��3��#T�.CV�1ˎ�K��G-zN:s?���s~-���t7'��N��݀��YA^�["Mbg=�ȃ��� v�lђE'Ǭ1T8f�z����h%�|]_	&ދF��U��L��ί���BL��4���W�E��гqR�Aץ��h��G)�qu�y��9[����B%�%2�͞���#�A+Z�j��'��F5���}RdI%1����'p�jRe���}�?��j�9A�I���~������V���"���i�N��¦<U.�Q�'�3�:������_x�w?}��[:y4���֤�#�{�v���xM���ܕ ��ji�jR�,Ko%��g���'�_K�҅�"L�J���f]z�GdG��x��sp���d�4j�W�K`-~�hW�)��T�<��i�T=G�u������;����?�ȂF�����kU��N$ɽB�;
+���!y�>��kߗf�j��˫���UuJ�Z�<�1NH��L4��_vA�W_��LV�������D�4zLn��d��D�]ɱ�H)��T����JP�����U��N5]��%�L=jw���{�����gIu����`��~i��1�%=�4Z��s�ΟEϹ	��2kI��������d[�_Z�m�F�8kI��%�� �M�B�����s�J�
ݞn1�5�U{w�'`6�K��R�~�Z�#���J.2{�E�w��7���җ�U��0��ݜ��F��M�P��V�(Y4'�Y� ,j���GV�O`|��1TZ֟E̙Sy6R
Ԝ����r5�%+)�� ��\KÓY��%��^&�f*��s�_��P�%���`�	���o�Ŋ;��W��l�;U������D��s��J��1���'�lX%	��.QfewJ����ʪ;��n�2�e��4��+V�Cm�\���5~�UqX��9�_�`g�}Ȭȇ$���g[�F5���FΦX���hF�ͣB����0��j|��(�#�5��+0FE�/�paLΞ-:�f���ؼ,)�ּD�])���,zΨzo8��2���UCy�����FBʊ;���#���k�˰�M�`��x���E)��I��A[#e���mF���F���"D�u���$�I%����a>X� -j�/�X}��Xכ��|l�E/�����9:{ ������1tVZ����X7���W=����pZ��k%4��`N�=x��HലKhJJ����o�ʢv�B��`y-�I��l9��,��J���|a��j�/^)�I�Ģf���:D�K�~��^�Z���.Mܗ��$�Y=x���������^WH)��E����,��i��Ũ.>��dvC�\���"�y�7�U���/���I��g�|f�|b�=�G�7x+� �}H1�`"F�>����I�����	v��Ħxn�zf�Uw��\�h�]=����� V� t	  A�׼F����%z.^����C�3;��VR�B���h����f>�מB���hI���N�
)��Jit��}�E3ae�7�+��e�J�w�<L�*:����L�v�Z�j�;��Ut��`y|���R���O��.7��R�I���8c�YE�c�Ibעf���Y��v���z>��� ��K���"���58.���j;b�ev�Q��]��=@�V։爏U�d�pҨ!��.{���G���a����,@>�!fc�53�� �j\a�}��%Ҁ��~d�y9ȨE>KҍG�{	b[z51����C�����S��/�j�̎���N���8x���h6k�������Z�s��)�?�U��,z,�,�h#��>�я�,�$�-Ztrd�x�>Ѣ"l��H�aB�M���,M�Ң�c�AR�Z��n����>�iF��M�4���to�� ���1>[b���c])�}��k
�\���	9��pR?a-��zVp��}2;�E�{z�;+�X�5���݉,z�Tߊ��T|Vǔ2I�Y��A�uRVIQ*���a���-��vP{�-X%4J��%�=��n��UR,uW))�T�E�M_���U�P�6���<)����Ǳ"~�\�Ҕ./N����t��R*i.�3��m�
4�ޔ�>���_��|l��-�8K�T��|6���K���3 ��ϪG��+�V��ҋnXde�_+���L�5zp��݌@Z�K�'���g�ʢ�z������ dネ*�����b	��OpK�c��$(oLεP�'��j���F�,�z{*�~���KJ��dxu~��|�k�µ�QM�@��:?�^[��Br~JJ����8�'��>��閒{u~��7�,���I��Y�2Bz�rW���k�V<��s��R���ЇW���ko�����Ө5�]K�/�j����jk.�M1L�J����_������b8W���Ħ4jG�u��\��V���s�=���9�\�륻��xMˀ��/���x����J�z}1I��/iN��ƾ����*--����1��>�_j�m5�Ok@����h]����1w�jR�EX8�J{�h����yF�;'
������%��{3�'�X�_äE=Jo�\xo��R象-����K����g�OHi��%�}�%��Q��e���#�P��G��P��Q���Q iY��r�Gbf����X}}�>$+����J�fP��v��
 �j�|I��|��B��z�J�d%]�����B5��oo�J�d%��F\,c�~�O藲p#5*Q��t�,�WD�^��	դ�$a�0���K��ʔ�����bYqG��_�%�h�F5��"�4�j;=٧�����O�9�꽖����%��wB�?�zno���K�59F�qz�M^o��lukE6�3[W�9��ᐭ�?���ɥ�0)T�ڮ�󐭨c3N9N��w�����d��X��d"�PR�=9|_����')�L	�G�?��Ŀ�.����kv��O�I�F���//<w�C�b�1*���c>���|ܰيy�z�;�G��R�y��+�u�g���	=��E(V��c���9F7�)��;����b�<�7u.G�D�4zl�ny�b=��W��#�s5�l�ʹ|�7[�\[�Xԝ��z�{�'���Đ�f&��c�>z�XM''�WxǝȧF�E{�"���6"$�Y�L���{@�?�/꼬�S=����Q��9��W@��N������m4=�P�{+�YM�H����B��R�9o�B���N�����B'����0�YQ�Z?�C�6#bѣAb괬��'^��J���F��5���vz��A�
��X�z\��N�z�_-M��Q�dD,j�����*�,���4��iY�݉��l\u���kzq=:-�I∼�C�%Y���4�������6�(_Y��R�a��Ł~�9z-���=N�JR1΂E�������֗�]���-z0q�;)���-Q�� -:���j�?.��`}��C��~��A�r��R�A�j����'	�G׌6De�/�����H�V@�MR�q����������	��|H4��Z�D���vR�-~~�#�=���C,����:ZF�u@�.�P�X����K��[M�/�*!��~BϝJ{1��t��Xoz�x
=G�ם!XI�z���m�Ţ��]��J:�k�<���Fz/�O��P/���)��`�sA�Q�`%k��'�!&F��s��NF����R��+���4}�vR�rM�,$�����SXz���Q�j�m1�h��4�@D�{�+T3�Z���� �|�&�F,b���\�%�Д�ɿ�ɥ=(F�=F�&�T>��F,[b���b�00�hm��\��hC+���9ǉ�iTs��z�0/t��b�X����y�7Ӈ������(߃}2����_��SE}      �      x��]k�����m�b6p�ī1+�2f�1J��(�=mw̍�S������#8_�s�?_�Ǘr?̯R8��\�|���;��#q|����_�=�+F�˹�_�����3�̧Rj\�?�N�\�|���O	�㟴"@9���v��(��q�?��+�.Q)K�'��G���:���`��qA ��ie���������y����٧%��$��������ϼ"�����v��A��v�@�?�YR�e=/���X�#�((�Q+�@J����B�9�|ycV���.ײ����C&ƃ���9�<�^�p�i���I�����W�������ӯ1�"Cn��B;Q�(M�Fg�:4ѯD1�T�Év���g�X���W�ه�T��Ğ.4�g�<�J���-�h��$�SQۏ9��ӯ��s�ka���A� zB������+q�D2ȗN�s(�$?:��� d�<�J�|Y�Ӆv���V(�y��@��ĲT�m��c���b�gXI$�q�
�9@f�L
_U�>v�>Bc%�)�eS\h�!����v6��pXI$��ky��΁I�F������F�K%��D;	�2����@���J�c]���D��[7ƥ��B�+����U�B;Lv�y��:C?Bb%�!�T��q���x#����΃XʰJ_3S^1���@�GO�w�E�G8��ҋ����B;�dCE��>��pXI��"�KO�B;�Ȕ�[vڡ�#[��T���Z�.�s�~H���֠���'��ҋ���Mq��F�;����CH%���忤�B��@�6�*;��9|��J){��
q����8]�7Z��+���08����J���h`|��\'�U+��'uG;�V���M�s�3Ⱝ\�;�IȾU�Gv;J)�A�Is�+��J!�h� ��tD�aC��6A)i��bE\��V�62�,�ak�����R�K֤�+�����OJl���J)V���sG;�����lθp��$��f8�΀1��y?�]�D�\"	�\�/	\hg���2/��!\�G8�%R�����m��� +�xe�ll6�2�I�\"ň�Hi9+/�sH�(��V+0>�a%�I�$����9�$��vΡX?�a������9�h� ^]8�苄�pX)d/i����[M~�Hl3�W
�|+��62�4Î�"���+}L��刼���?��}�nhC��?�J�/��l��d����ik���d\	d�)�r8\h'A�gah9d\	d���t��:ܠ�ߍ���<�xGk��B;윓.U���؎ȸH�%���B;����S�y�$LlG��Y	$s��\�.�s�~�ߍ�ЏpX	$����t����M�}78$|��J �'�9�v_vj��f���a%�$�Z�.�qH��N��5"����J IĮ.GÅvz"Xp"X����i��D��B;�=�~7.�p�+�������v���W���pʴʐ#�.��hg��"�UI;�Rl��i%��9�΀�h�L�8%��Fo>�a%�!�X�7w����q��㿈m�}ϴ�J_3�wx�9��������#VR��[\ ���A�Y��;�m�� �i%�^|�5��
�%ΠxǓ�	R�VR	�Y]d��΢n:0b̟i%��Q�K�B��,K��Xk�;JC�	��C�'�d^ɤ˾�7X�IȮ����)�3d2�dұ[�Z���
��1�u�!�3d2�d҅���p���L�I|78|��\&ëV�{���v�E�o�^l��y.�b%Ų��h�{ǝqR�s��q1 o`�.�K|��U����<�	_�*��v�|�Gu;����?sy�RrZm��h� J#������p�ˣX�I6�K'�9�ʣ�͐�<�G� �~�<��f��si�Ϗ<�v�:��:�'z�n��D�������,su��KXL���Avw��w���G8̵1�".��p��=���m(cY)��: �����a���^4�#Vʘ�[�����]�A���m��[�gY�cD��Ņv���{g�U>�������vpAD�m��X.PȲR�R]��mdೣOm��>�|',��B;��2�/6�A�z��J#Y���B;����;Q�R�͕B�oY�R�.�3����?~��h�'V
I!�ʑ����̆(�D܉�=�z*$���<�p��$�	e�8,Q�5VZ܈��!�ó���O����v�D����������g�@�a��Ӌd-�/QtB��K���-��fP�
I��vȰD��l�҂BE�W]Q�Я)�޸SȖ�|�����
-q`�#dR�ea�j 7�=��8K5v��Z/?\�%�����e!@�;0<���SDdf>�?��ܜ�/����Ho)ԟq�Tr�PP��P��x�� =�1jBa����t2�(\h�����'r���8�@�è�QZD�E%�4�#���mF���pS��U�fD'�F�N���Q����~B�t�<тՕ1����H��S����V�q�[��Г�W"�)�(6+��ʓY1�\���%�dLR�� a�1mo\��b@�FcK$�H��8sJ�*d3���ez ;iO��/�6R�@n�oU2V��N9����'��o��D ���d�r�K
'���[X�Y�^��#�Q%ӏs?$��D�,��H_\��f�0��a%�_��%�-=��F�+���+s��x�E_h�aBDjښ�E9R�T6CI�]��.�NC�+������,F�;�C"$%M��o���r݉PVEs�F�l6�!@ٺP�Q�9�	���(�2)F�//f��I/Qʠg�;>�S���Q!I�����z��f�FqI/|%�L���4���o8.�'�!�(��� {�<k��s[�K:9L�1�M��e�4�0�X��s�wN]�0G��p��,���ԑ�`"��*�XV�	���(��T6fCѥ
&�����h6�s��<6RX\=9XU�E���Z&�8�%��ڽl0P�-XYl6B
.NZaD;������:��▸�J2�h�#
�L�P[l?8XelVJ��� K�[��Y}#.����E�M��u�v�hu�Ȫc���O����@Ill�q>�Xm��ÜҤFTw3ᑙ��!����~Yylfd��A�EO��Ƭ(	���Ld��������PyDDw
V �����U��vP!�e!nO�%gC�qR��m$+��
�{��
��S�x�"#�By�/��t
V!C�a�9��:����-�����#Y�lVB.�'*=��N]���]�+��F����%���0�¡<���;KB�W��D6#Tr�9.#�)8���
�\:���Mv�r>�(N�Q�D�a'�pG�Ճd���J%����>xl������$�����i��Qp���������C�^$[����i�b�h�Xy|���c����$1~Ә���Q(��*�v<(B҆W/��H6+���g}1�w;����9X�$�]9�cc�Z=��|wm��z�l���`rMiу+��j6��u���0˂"���Àb<��)�;���$,�A��8�H��|�Yq���Im�q.��ILD��a�e��P5�� �e�J�f�|p���Z����v���a��عӾHv�i�-��eD������)g:���<�&2�g[���A;'l�8r���Չ,�(�`���$;$Ɓ�oъc�R!+
'�h���R�����J#�w�L�NfÈ�ykuS
pl,�-��<6+Es&�N#z簳��#���GF��8h�vPx���Ph��HP.Y�lvrq<[�G�{����*$'�$����uQ]�č.���;U"tz���D63%������I�+��ف��Nb��b&�E��=Hd�D6.I�4,&ZYp�k�����bg�#-7 x��`/�5*�,h�7�&����+�Ϧ�4�gR.f`�5��]�(�4&�Ye"���2��P��2�l�n��H��R��n����d�3�'ר|>I�&y��ʉ3�*u�X_�`��    �r��ԱLV9���r�M��s�q�qy�9d��Q�����n2OGG�GY:�hR�2[�lVj�d�,�8��	xl\d�p�s��I�b�����,�l6v!4L�Է�V3��,{�8��\㱡U�'$�dF��7<s�FT#IsJ�����e�rٌp	n�S#�)D�l�p�pt
V*��,k��vD
,6V�t����X~��q�T�����~�VCrI��<�ɢ�o$���bDOܩl\��Ũ��a�����E�"��_a�9h%9�PF�<�0go}	��9�]2��aTJ�]j�6Xբ8@I
�̝=G@j��[F�lV��F��=88��y_���F��2�\� Y��(�}d�ͮ�8�A�@Rײ�:yX	%e{nn��:�7/1�IbTJ1C2_l���Erz@��;YF�<,d.�^$Y�K
�nu�Df��zD�H��¢���mSO;2�s4�ހ�(����½���ps.<6*]#ޠs��(V�ʒX�u^,
�("�%�(��%n��C��ج�eW��p��<6nq��9Xy�E�Ņ��ZXTO̓voػnG�9�'i2k3Dur�cу��ng;W��d1�H��W�=Y��dÅ�'��FV�5�RlH��PP+����T��͚��HΥ�c���ب7�-j�`u28�Ԉ��3#
A�R6Y]I�bsب�����f_v�i�������F���#�DZk���bC@�,�i2m+9�$����r@�t�k�	������Ƣ���#����<�&�����f�R����Pk�B*�OV #��U��¢8�&ޅp;H,�f�<6+��ɱ�ENyl�1kO4Vr�^)��i�
A�{�������U�f�$7u��B/{���d0�ƬfQ\��b9�Ц��6��B�2�hc�]���$VӢ�1@���`��ivTQ�b��
"�8����\(r���d�Vd���ıh��Wŭ��&�F��r��R��PU��{ᨍk$\[pU
u�H!����6�#zPP���:��<�ʱ��k����J�I��#9�U��L�FT)d�}��FWԖV��²Y����D@�E'af��F�3-qGOԈlt�E$y��~��7��n_�"(�ܗ��&��0�.{�iуE���;��'+�b�ӫx��ɲ=�`�5qD�N}g�A��J%��^���=88�{@�t��䥽�2���M���ƒ�C��άI�9�$Y��#b@�<6�A_vj�V�Yd���lQpȨCPw��͈���TF��Zm�v$66W��v�L��w�7����:���8N���&��R2MOF����ǆJ"7�s��d�����K?���+wo�Xx	!�3k�n��@3?n ���C���D�l�_���i6Tc.\φ�[;+G�fM��a&��6@΢'�Fd�@%�	�t��ȼs!��6�ARw�c�� a�=~�ZS�M�ŀ�Z񊷊�"�a�`V�cM2�&1�wnkX^�Dr@����d���0䇬��;�jU���ެɹ9l����V.�s��p�vnj�I�*$��˕RW�pGQ��Hr�
������dzD1��	�I}Y�vӬ��˹�\�~�q?��b��K<��v���(��&l�7�kRn�7�bG�����M�M����5L"6-�>�_�g��W�f���f��τiD������%��?O(��t1�5����
�U"믅��6��$hAbL~Z�ߓ�	^����_�]�_����A".H�J�^I`�~M���D2$|�
�|�v���+i��-'u�o97���2o套�-���68h��r(�C��	�y��w+8��ܝ#����-��B=^��È�x��IƕvR�ts7�_$bz���B�"@�"�"�k2�#����B6Y���;�	l�/VY+]��~��Z���̝Wف���ъc��w�r��8�-=�[��
�BN�E+�((◊��t���T`���16vY��h�1:�l���i�#z��y��=#F�4�7��(�r��Èb<��s�rY}�h����(�=��#�� �3���l�䲟L������de1j��}O����-�h ]��U�f�\v4���~�AS�oE�Y���u��~c�0�}���G�|�W��
�DY�'�wr�ٓ�.VaG(p������+�����OV���g�p@;}���-@J;��(F��Ho�,�#��	�V�p�/dM�ꫥ�(��D�O�y@Iy��E=9LdQ�f_g�<�w;�,8�;8L�1���JӾ��W��P1�� O��ED�i�����Y�y�Q%Y=�<QG�=�W��f.ۈ�SBw�sncV�)O�j�<=S��i�lJ;EEW�Y]�<QI�"{�\f�b@;�w.M9�&*�Vb��f*9���x3 �(�ZO�Ԍ�ĲE�M��㑠7C���0�I�R�l�g�r@�v&'���&2Y��O�_I+�[��88�2��rf��T�t[�� D�VD�8�2�4C��I"��2��(G�dc3����,�JjQN�븘�m�{��N*}·�UF�T+��d�bʢ=�4���͈�-�;�Q%�"�w/�f��:X��̃���	���YF�Lb�'Ȏ�d�8!1�G���ռRKc�v�'�Q)����
��Q�7m����j�Q$�������~c��@&D�;��ߢg�Bm�ߟ'��^�X�b��V���&����-�n�n�M�F��w��͋2�!��Ż�U�N��],���za�3�	t���L�Ǫr]�T�
�-D?�!,��8����a�
�¡Z�lVd��q)/P<k�SH����O
V,��T��`=88�����:8X�$���U��\���e:��y}�&T���4�P�LV��ڙ���a�G�Ш���Zi<�X2i�c�dϠ,�x��<~�Nc�V1Y����Z�m�E;	����ch�:��}'B9"V:9k�aʮLFƈ�b��~�>b�N���4f��\Ңߥ�0�s���P�br���H�2��ޒ������Ն+���!�����Za@uë�B�����g+�Y�l��l�i�_��E�5.�x��Ӱ���,~�L-���%�|N#��h4�p��\%g�^�h���s�78hX�A���Z�}/|[�&)�s��lFҬ����'Z�}+|�8T�d�`U32����݌[���3?��W� g3"p���/��ŀ�{5"}!%�������d�Va797�)�P�	뼕���H�w�Y�lFdgҬ/���ǎkUOV2����lL��N΋z����2��;��SK�"�@N�(��	�(��?ɏjy��>x�`���ʊ���9�R٬��Ug��E;Y��a�H���Pj!B{�`OG,
��tkT�:�[�G�<���S�uƀ���H���Q)�iB���â���;UW��k�0*�X�:?%G�g�}�*��ܬ0�ǚ��G�T+z���Y�������������G�Ľ�!~?gߢJ"<��$��ݎbK;��G�<EF	��hl�$���F#LSe�=�>Т�@C�4:��d�!�N(�Fƀ����4&��!�R��}�&�<C٠0͊�i���ǹզ�]5���2&��
�T3�r�.az�ؖM\?v��Gv�ד��AZ"�Έ���h�r�F<&ҩ�d�Z쁮E���VF�z�j'���+������`R�*7<����mP�ک�ӯ�ir�e�F�رyj�|A}���O"��h��y��VX�|!�w��MY�zH�%�b�}�/#�L���"������
�ؠN���|��>�$���Y��~��/�V1���}"+�A��+��6V�Bk���]�Oҗ��Z���⋽q���V�*�� +I+�Y��s}�i�֌��V�e�`��QA�.�B���/�!�ki��{�E<�R�i	,�Z֞�*e�JHI���">��^�3>���Z (X�Ļ��UdSQ'�1��+��Q�Z$HX�� k�K�u�#���?AU���ZQ�؊$    �zo<���
��;��ZŜ�Jd���E{�l�f_/�>wlq��[yl�"V,z���t�}+�������wDa?�gk���@�|��Fͩ�Y��`g�",ԝ��FR�=8&{0e���Tg`��=*�Xfn� �i�U�6;oc���*i2qr6���������S���jןƛ��7���� b���˧�2O<�}�g�e�-��7#AK����Aڑnle��\�E�P��ݺ�B���&��sX��'1��s��\kD�`呵豫srD;�3���F���Jd����.�<�Ź�� ��V_P��}���iV���2:;���A�xl�I�X^;	���L��8Q��$d���	���N��e3�#��7��Fe���:�Q0Q^g��}��]���0"}kHk��[M�͑{{p;�z�I�9�Ŕ��
�\P�X	}~�Nٟ4F�<e.O¢���:�(�N�IB�5�fdj���e�ςX:��^֨`�ˢ�oS��ٺ������VU�.�s���D�25�Q���7��O&�����?�Q�v&�܋a�{�NbTQ,��B���E��U{c��iEw2�<E�boV�_ߢ��T=%Gz�F	!�h=u2�<'ap�C�6�Ƣ���)H�Y�<�kk񵴜9�����Č׹��a=x �k�p��ZT�LJ�a��8�=I8%�3Q�I��g�z���M0 ��A�e�V,��V��C�N��s؉Ur�#�i��*dC�Ҭ-J��8�i<LZM�辊���&�bDm
ڻ�Fؾֲ&�WSt��\l����,\��J�d�jԊ���}�s���(¸��:�drj����1}Y����5�����T�HX����Z{����}w8�`kc2)5��"N�d^�������U���)�'���������;+Q8�V�=������@!�AK(�ɧ)x�g���-����-LF҂0&�MS@'�>�K��Ԣ��6��J��N3��Ħ��]0LRM��5zy�IP�E���
`v ~�dxj�Q[p��L^�a(�I��{c�!�JbB�x�U���:+�1�E���iK���z��L-�K&���)��ķB�g-���`�֚�dj�� g^̈�[uN���w��`y-�J&��j��|��,��)��X�"2Q�J�dkԈ�k���v4X��U�PF���(��T�x���J
��^�������F�t;2�2q*+B�X
z�N�s��=r����NK�t�*�=��n���h$�'�������1�gь��'q������>CH�}o�k�������cuP����"f�֤��F�����G����3F��C�_6F�G-I=�旙��lT����P\�A��|E�����h�	Dz\��@�M�'�h	Tik<�^�|����W5\"��ea����Geʻ4a0�=kF+��T.��$�CH�*cĈC��?�>�B�R�z�Y�JO�V������H�/ ��3���l�*>�D�F�;�&j:c_x+=M&È~�@�UtV�� ��b��/�C��Q5��[�˦,�� �����`��AK�e�0TS���q��B^�1�c3����-h����9-��(��!��Y�,�4<B�:�Q'Ր8G��/6�Ӣ8r���ψ�Z�A�e�0raI�B;�hl��Ea���H$>�����(�Uݪ'�Q(#8Pp�a������i���Z�
���QP�Mb��wg4`@F%1�e3S_^\éJ��$*�IL3��9�vݴ軕�@��V�m�ٓ�e?�ˤ/)�\�i��eآV�j���a&`e6'��^N��L~�[����)�ODR��&��4h� Kxlx�@�&
Y�7-�y�a@߽6e���E�:G�`%�{�g�~�ɤ�w+���#��ow�$|�
��J������B?8�=��G7�ˏ�ژ�@6!r��È6بk\	���/Zl*�*��V"�L�p]2�|��#�����灤1���'���
Q	3a��!6����
�'=X��,�8�0ѿ��+�x(!h�HV#=k��0<ސ��1�\�!矟9@�F"+�(]_A�������\�n��DC��*X��%/r|�%��6�?B�2 +�x�OS�l2FT/��F��h؝Ĝ�٩�9X����r�
т�=�h�S��I��iX�l����l�ѓ��ec�@�V5������EO������O�a}D'�� +�͒�L�#)��<|'��#�V�aœ�<rޙ͸E�Z�� q�q����LV;��؅�h�����V�o�FB�hj�D&+�ĺ�G��s7��/�ELm-�du��^�I�Ŭ+�ݪG����ڝ��w�O&���ۃ���8��V�u���Q�2Y�lWɱ�3��/�}�5��|�vk�@&��T� N��'���m��!��󫬈9����dR����������'+�T5�4ɖb"S#ړtI:;e�"楖,d�R���f��u�#�v��|C�^!��I��F�d�уCR���I�hm��3
�A0�Gn��h�Wq���[�luf��w�i��v�Ԩ|~���vV*Y�^R��N��ۓ)zG��6A�Di�Df+�L.b�m}F�}�8���X3J�Q	�����Ĺڋ%��8tY76�32&�j"��J��/��٦cD߭ΒhU_`c�}�r��V+9�˼�?7�z'U���Eҷ���j%g�(��t�	��.8)bJh�@��,xN-p>��B߭F�)�N�Ĳ�mĜ�B�'R��R�~��w��G����#�V�h�2:�X�[��_���K���u׉I�9Z��Q������ �8@�Pe�n91�Z#��U�f&��N��=X T6������d�SE��ĥуB�Ae�4{���
��Aye�2�#z��3�J��=.�4�VF=��7��}k-���r��k�g-���j�X	;̳s�|k%l}f��T��(-��*%�x��!��Ɋ1����X� NM�*���je��Wv����KFV�V�e��5HX����@~���@h����5-�i���EB��3�Я9`��9L�R��Z�/~���F�$X�D��`�����y�g����=�&J���o������R�Yp�a��m[�����ک��i����0�H��1�8�%=�hF�D�V�=${b�#T��pDAw�nLURk�Q}��lD�E߭6��v\���	�pȣ@eܞ�s��n�aD{ڞV���E3ɜ �F�yT(�͸�u�Mn=-��ȏ$�p�;qŸ'%�z�yT��J��쭆E;�|�[�J�/'�Q�2.O2⼷Sâ�v���)>�k%H�_�<��QGK&�q�F6/�eb?H+|q����r���7�����Q��tF{`�sL�軽��/%�νA�6iu1�V��悒�����[��K�G/{��'˴�g+L��G$Q�lQI��H"Z/��e��\Exf�4����3������E.�VZV��DQȭD�߹bL���V���)LF~�!�tr��ج�D��p��r�K����b�R�$V;�9���
"��Ɉ��Y�}+R��>iYp]����^��M�������VƄ� -3�&�E�E�
�f�b@����ƴ�u���d�U����=*�~w8���u��侴Jr�U���2�=	)�� o��m�_Pc�."AyƠ���.�&�E��p��8LDR_1�U<��`ОW���G�i-1�&�Em�ƿ�x&Oړ$C{�o�<4!�HḴ�~�Jv�ۢ�YEWd.�{�+G�0�&�B2�g;��R�q"
��s�TRD��C��*���P��F�U��5�v�i�C�r�e]�'8q��m�EiTٛ�<�G�)�=F4�[Ui�H���7z)_�Q4j|+����.�l\� ��ӨS�j��%�
=i0u.����<�s)�|�;Qʷ��z��:���b��3�iV\�w�/��\'�q&���Ih��'��@���޽CUO[V��#:�o�2��P]�tˈ�4`I[�Q�����(�D;F������,_�a�4h�
%�
 �  W�E�7.Y� �iX%m���Be2FG���g������VH���ĭ\t��ht.%:t]i4��"fϡt��8��=i��'�z�	zwаB�C��we26FT7A�k�:O�:D3hx���Pr�~� /�1���'!����"�� �.L��@c�7׸|�%����J��r��m#z�ȱq٘')�4��6C���{\�׸|N#�?�hXE���w��¿;���ec�\�a5�R��A�y66T�wʤo�)/x�90B�j(%�{�|��E�s�X؂;iXm���L5���7����键ְ�e:����M�oEѨ��HLT�T���FeD/�hlLW"4a��Ic�e:�Ec�ѓ�����zRΑ&���,u]̓;z�H��F�B�'�����Pk��׈b�׻s��>��8{�`%�ى����`D�g��?YXmv
�&�1�߳H��4V@9473ԙ�7����������$�
���~��n+��NM�����=���ꉸW�]r��;#�,8�,�|�=b���
�gZ��x~Th.8�^���'��g�l�h����+���Ig3�!�2�uF���9�u��j��t������m$p�"�n8k;HL�����%M��$�W"�g.#!��0�M���ϴh�;z㐷j
�kDLTS������w�s�]Qު��q}�$ޯ�������      �   l   x��ͻ�0К��H ������cdD�T)�� AO���Y媾i��i5Şt���^7(w��F#?��.~!f�*cSNj���o�׺gGb|눠q�R���#�     