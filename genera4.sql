--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 14.5 (Ubuntu 14.5-1ubuntu1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: timescaledb; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS timescaledb WITH SCHEMA public;


--
-- Name: EXTENSION timescaledb; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION timescaledb IS 'Enables scalable inserts and complex queries for time-series data';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: action_mailbox_inbound_emails; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.action_mailbox_inbound_emails (
    id bigint NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    message_id character varying NOT NULL,
    message_checksum character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_mailbox_inbound_emails OWNER TO postgres;

--
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.action_mailbox_inbound_emails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_mailbox_inbound_emails_id_seq OWNER TO postgres;

--
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.action_mailbox_inbound_emails_id_seq OWNED BY public.action_mailbox_inbound_emails.id;


--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_admin_comments (
    id integer NOT NULL,
    namespace character varying,
    body text,
    resource_id character varying NOT NULL,
    resource_type character varying NOT NULL,
    author_type character varying,
    author_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_admin_comments OWNER TO postgres;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO postgres;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_admin_comments_id_seq OWNED BY public.active_admin_comments.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_blobs (
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


ALTER TABLE public.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    id integer NOT NULL,
    ruc character varying,
    razon text,
    direccion text,
    obs text,
    tipo integer DEFAULT 1,
    origen integer DEFAULT 1,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clients_id_seq OWNER TO postgres;

--
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;


--
-- Name: details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.details (
    id integer NOT NULL,
    descripcion text,
    cantidad double precision,
    precio double precision,
    monto double precision,
    item_id integer,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_id integer
);


ALTER TABLE public.details OWNER TO postgres;

--
-- Name: details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.details_id_seq OWNER TO postgres;

--
-- Name: details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.details_id_seq OWNED BY public.details.id;


--
-- Name: formulas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.formulas (
    id integer NOT NULL,
    product_id integer,
    material integer,
    cantidad double precision,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    descripcion character varying,
    indicacion character varying,
    orden integer
);


ALTER TABLE public.formulas OWNER TO postgres;

--
-- Name: formulas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.formulas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.formulas_id_seq OWNER TO postgres;

--
-- Name: formulas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.formulas_id_seq OWNED BY public.formulas.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    id integer NOT NULL,
    pfecha date,
    serie character varying,
    nfactu character varying,
    client_id integer DEFAULT 881,
    subtotal double precision,
    origen integer,
    mmes date,
    moneda integer DEFAULT 1,
    tc double precision DEFAULT 0.0,
    user_id integer DEFAULT 3,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    empresa integer,
    sele integer,
    documento integer,
    serie2 character varying,
    ndocu2 character varying,
    ruc character varying,
    razon character varying,
    detalle character varying,
    razon2 character varying,
    nuevo integer DEFAULT 1,
    monto double precision,
    isc double precision,
    bolsas double precision,
    oconceptos double precision
);


ALTER TABLE public.items OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO postgres;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: parameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parameters (
    id integer NOT NULL,
    empresa integer,
    origen integer,
    mes date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    sele integer,
    sele1 integer,
    sele2 character varying,
    sele3 character varying
);


ALTER TABLE public.parameters OWNER TO postgres;

--
-- Name: parameters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.parameters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.parameters_id_seq OWNER TO postgres;

--
-- Name: parameters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.parameters_id_seq OWNED BY public.parameters.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    nombre character varying,
    descripcion character varying,
    precio double precision,
    moneda integer,
    unidad integer,
    client_id integer,
    material character varying,
    lote double precision,
    proceso integer,
    equivalente integer,
    conversion double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    peso double precision,
    activo boolean DEFAULT true,
    user_id integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: tickets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tickets (
    id bigint NOT NULL,
    title character varying,
    body text,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.tickets OWNER TO postgres;

--
-- Name: tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tickets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tickets_id_seq OWNER TO postgres;

--
-- Name: tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    name character varying,
    permission_level character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    admin boolean DEFAULT false,
    categoria integer DEFAULT 1,
    empresa integer,
    periodo integer,
    sele integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: action_mailbox_inbound_emails id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.action_mailbox_inbound_emails ALTER COLUMN id SET DEFAULT nextval('public.action_mailbox_inbound_emails_id_seq'::regclass);


--
-- Name: active_admin_comments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_admin_comments ALTER COLUMN id SET DEFAULT nextval('public.active_admin_comments_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);


--
-- Name: details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.details ALTER COLUMN id SET DEFAULT nextval('public.details_id_seq'::regclass);


--
-- Name: formulas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formulas ALTER COLUMN id SET DEFAULT nextval('public.formulas_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: parameters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameters ALTER COLUMN id SET DEFAULT nextval('public.parameters_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: tickets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: cache_inval_bgw_job; Type: TABLE DATA; Schema: _timescaledb_cache; Owner: postgres
--

COPY _timescaledb_cache.cache_inval_bgw_job  FROM stdin;
\.


--
-- Data for Name: cache_inval_extension; Type: TABLE DATA; Schema: _timescaledb_cache; Owner: postgres
--

COPY _timescaledb_cache.cache_inval_extension  FROM stdin;
\.


--
-- Data for Name: cache_inval_hypertable; Type: TABLE DATA; Schema: _timescaledb_cache; Owner: postgres
--

COPY _timescaledb_cache.cache_inval_hypertable  FROM stdin;
\.


--
-- Data for Name: hypertable; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.hypertable (id, schema_name, table_name, associated_schema_name, associated_table_prefix, num_dimensions, chunk_sizing_func_schema, chunk_sizing_func_name, chunk_target_size, compression_state, compressed_hypertable_id, replication_factor) FROM stdin;
\.


--
-- Data for Name: chunk; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.chunk (id, hypertable_id, schema_name, table_name, compressed_chunk_id, dropped) FROM stdin;
\.


--
-- Data for Name: dimension; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.dimension (id, hypertable_id, column_name, column_type, aligned, num_slices, partitioning_func_schema, partitioning_func, interval_length, integer_now_func_schema, integer_now_func) FROM stdin;
\.


--
-- Data for Name: dimension_slice; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.dimension_slice (id, dimension_id, range_start, range_end) FROM stdin;
\.


--
-- Data for Name: chunk_constraint; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.chunk_constraint (chunk_id, dimension_slice_id, constraint_name, hypertable_constraint_name) FROM stdin;
\.


--
-- Data for Name: chunk_data_node; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.chunk_data_node (chunk_id, node_chunk_id, node_name) FROM stdin;
\.


--
-- Data for Name: chunk_index; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.chunk_index (chunk_id, index_name, hypertable_id, hypertable_index_name) FROM stdin;
\.


--
-- Data for Name: compression_chunk_size; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.compression_chunk_size (chunk_id, compressed_chunk_id, uncompressed_heap_size, uncompressed_toast_size, uncompressed_index_size, compressed_heap_size, compressed_toast_size, compressed_index_size, numrows_pre_compression, numrows_post_compression) FROM stdin;
\.


--
-- Data for Name: continuous_agg; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.continuous_agg (mat_hypertable_id, raw_hypertable_id, user_view_schema, user_view_name, partial_view_schema, partial_view_name, bucket_width, direct_view_schema, direct_view_name, materialized_only) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_hypertable_invalidation_log; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.continuous_aggs_hypertable_invalidation_log (hypertable_id, lowest_modified_value, greatest_modified_value) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_invalidation_threshold; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.continuous_aggs_invalidation_threshold (hypertable_id, watermark) FROM stdin;
\.


--
-- Data for Name: continuous_aggs_materialization_invalidation_log; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.continuous_aggs_materialization_invalidation_log (materialization_id, lowest_modified_value, greatest_modified_value) FROM stdin;
\.


--
-- Data for Name: hypertable_compression; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.hypertable_compression (hypertable_id, attname, compression_algorithm_id, segmentby_column_index, orderby_column_index, orderby_asc, orderby_nullsfirst) FROM stdin;
\.


--
-- Data for Name: hypertable_data_node; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.hypertable_data_node (hypertable_id, node_hypertable_id, node_name, block_chunks) FROM stdin;
\.


--
-- Data for Name: metadata; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.metadata (key, value, include_in_telemetry) FROM stdin;
exported_uuid	9f7d8ccf-2653-48bd-b512-506e2aa28b44	t
\.


--
-- Data for Name: remote_txn; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.remote_txn (data_node_name, remote_transaction_id) FROM stdin;
\.


--
-- Data for Name: tablespace; Type: TABLE DATA; Schema: _timescaledb_catalog; Owner: postgres
--

COPY _timescaledb_catalog.tablespace (id, hypertable_id, tablespace_name) FROM stdin;
\.


--
-- Data for Name: bgw_job; Type: TABLE DATA; Schema: _timescaledb_config; Owner: postgres
--

COPY _timescaledb_config.bgw_job (id, application_name, schedule_interval, max_runtime, max_retries, retry_period, proc_schema, proc_name, owner, scheduled, hypertable_id, config) FROM stdin;
\.


--
-- Data for Name: action_mailbox_inbound_emails; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.action_mailbox_inbound_emails (id, status, message_id, message_checksum, created_at, updated_at) FROM stdin;
41	3	6091f4bd96f4c_18ad2ab7fa18628084726@ubuntu.mail	c12d034823775dfe3ad0aca764375d29cbc9b7f3	2021-05-05 01:28:29.662432	2021-05-05 01:28:30.75296
53	2	6091fe588aab2_1b4f2b0630a3639c632d8@ubuntu.mail	71b897bc4e80fcf5e27b2199732193ea201d170b	2021-05-05 02:09:28.592206	2021-05-05 02:09:30.482479
42	3	6091f5ccb00fc_19882ae7132b387c1654@ubuntu.mail	82ed955c402ef4201148d24dc7f55ebbfb002c0f	2021-05-05 01:33:00.80322	2021-05-05 01:33:01.903689
43	3	6091f6f02b5a3_19882ae7132b387c171d@ubuntu.mail	9100119705c44e0aea16f8b5999d9d29092b4245	2021-05-05 01:37:52.181199	2021-05-05 01:37:52.726637
54	3	6091fe988b56_1b4f2b0630a362ac636d4@ubuntu.mail	b9d8b53edb99b7539790a3cf4c07798cf53a2221	2021-05-05 02:10:32.047339	2021-05-05 02:10:32.666621
44	2	6091f7d83f99a_1b4f2b0630a365cc61416@ubuntu.mail	c9c0442d8923ad1a91a111962a06e923a1b365ee	2021-05-05 01:41:44.308962	2021-05-05 01:41:47.994321
45	2	6091f871423bd_1b4f2b0630a3639c61845@ubuntu.mail	c27dc6f58f9fc3ff999a4f0fa71c3760dbfcb4fc	2021-05-05 01:44:17.288874	2021-05-05 01:44:19.485788
55	3	6091ff7c4b296_1b4f2b0630a3648c6377e@ubuntu.mail	87265ccde60ae4450acc6dfd86ad2dff043737a6	2021-05-05 02:14:20.312973	2021-05-05 02:14:20.866283
46	2	6091f8c67b25e_1b4f2b0630a362ac622f@ubuntu.mail	b83038b539f414aa42c357a22b2842b5b4d7c2f7	2021-05-05 01:45:42.517065	2021-05-05 01:45:44.915706
40	2	6091f4281a299_17642ace6fd03b90742cf@ubuntu.mail	da552d24501d6740b7d108f11b28118771242f4c	2021-05-05 01:26:00.122775	2021-05-05 01:26:03.342042
47	3	6091fa54e6f7_1b4f2b0630a3648c6267a@ubuntu.mail	f1836fa0cbd8ea8f55a7ee77fead124e030784c1	2021-05-05 01:52:20.062502	2021-05-05 01:52:21.109992
56	2	609200733582d_22383fc30600ab7889781@ubuntu.mail	5d223f57ba783bd7c663f8f51729302fd3a8eb41	2021-05-05 02:18:27.263063	2021-05-05 02:18:32.816921
48	3	6091faeb3ac8c_1b4f2b0630a3639c627d6@ubuntu.mail	9776efae386a8c4bebabf8d1fcdd6822e1b98484	2021-05-05 01:54:51.249833	2021-05-05 01:54:51.730822
49	3	6091fb348f6bd_1b4f2b0630a3639c628ec@ubuntu.mail	58819a7462dbaaeea6d2371ff93df347473fb0b5	2021-05-05 01:56:04.59885	2021-05-05 01:56:05.071676
57	2	60920129eb4cb_22ae2aca1b4510a41463c@ubuntu.mail	5817b06fde5ecc5d41d9f70dc7ec96d6071c7bd5	2021-05-05 02:21:30.044925	2021-05-05 02:21:49.629756
50	3	6091fc1fe6ef8_1b4f2b0630a365cc629a5@ubuntu.mail	d0c5b37ac349a956c7215d36319a6098d8a9cfb5	2021-05-05 01:59:59.950235	2021-05-05 02:00:00.476381
51	3	6091fd3dcd5d4_1b4f2b0630a365cc6303d@ubuntu.mail	8c3e7885da0bbd996fce7215e4d0de15c21a7136	2021-05-05 02:04:45.850922	2021-05-05 02:04:46.506454
58	2	60929a9dc8d3b_2d7a3faf1403fdd848754@ubuntu.mail	0bb2067967a4439208c4c431a6bc4efbe8be7357	2021-05-05 13:16:13.930696	2021-05-05 13:16:20.317576
52	3	6091fe06f1aec_1b4f2b0630a3639c6317c@ubuntu.mail	cb073fedc8f5a48021ffa07c45140a9d82d90580	2021-05-05 02:08:06.994435	2021-05-05 02:08:07.546115
\.


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_admin_comments (id, namespace, body, resource_id, resource_type, author_type, author_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
1	images	Item	7932	1	2021-01-27 12:17:19.336428
2	images	Item	7931	2	2021-01-27 13:09:19.292304
3	raw_email	ActionMailbox::InboundEmail	1	3	2021-04-27 19:38:22.142285
4	raw_email	ActionMailbox::InboundEmail	2	4	2021-04-27 19:43:15.812462
5	raw_email	ActionMailbox::InboundEmail	3	5	2021-04-27 19:55:18.602453
6	raw_email	ActionMailbox::InboundEmail	4	6	2021-04-27 20:08:19.399765
7	raw_email	ActionMailbox::InboundEmail	5	7	2021-04-28 03:35:42.119371
8	raw_email	ActionMailbox::InboundEmail	6	8	2021-04-28 03:37:36.478462
9	raw_email	ActionMailbox::InboundEmail	7	9	2021-04-28 03:56:53.936255
10	raw_email	ActionMailbox::InboundEmail	8	10	2021-04-28 04:23:18.20777
11	raw_email	ActionMailbox::InboundEmail	9	11	2021-04-28 04:38:11.76369
12	raw_email	ActionMailbox::InboundEmail	10	12	2021-04-28 04:41:36.053576
13	raw_email	ActionMailbox::InboundEmail	11	13	2021-04-28 13:30:34.88528
14	raw_email	ActionMailbox::InboundEmail	12	14	2021-04-28 13:32:25.376522
15	raw_email	ActionMailbox::InboundEmail	13	15	2021-04-28 13:49:19.777579
16	raw_email	ActionMailbox::InboundEmail	14	16	2021-04-28 13:51:33.310661
17	raw_email	ActionMailbox::InboundEmail	15	17	2021-04-28 14:07:43.851291
18	raw_email	ActionMailbox::InboundEmail	16	18	2021-04-28 14:24:26.372861
19	raw_email	ActionMailbox::InboundEmail	17	19	2021-04-28 14:34:31.490541
20	raw_email	ActionMailbox::InboundEmail	18	20	2021-04-28 14:37:39.141929
21	raw_email	ActionMailbox::InboundEmail	19	21	2021-04-28 14:42:26.889859
22	raw_email	ActionMailbox::InboundEmail	20	22	2021-04-28 15:06:32.47481
23	raw_email	ActionMailbox::InboundEmail	21	23	2021-04-28 15:18:11.42208
24	raw_email	ActionMailbox::InboundEmail	22	24	2021-04-28 23:55:48.767041
25	images	Item	7990	25	2021-04-29 00:32:55.222201
26	raw_email	ActionMailbox::InboundEmail	24	26	2021-04-29 00:46:57.407439
27	raw_email	ActionMailbox::InboundEmail	26	27	2021-04-29 01:19:20.594236
28	raw_email	ActionMailbox::InboundEmail	27	28	2021-04-30 20:02:45.747537
29	raw_email	ActionMailbox::InboundEmail	28	29	2021-05-02 14:19:23.576076
30	raw_email	ActionMailbox::InboundEmail	29	30	2021-05-02 14:21:59.13296
31	raw_email	ActionMailbox::InboundEmail	30	31	2021-05-02 14:54:10.128579
32	raw_email	ActionMailbox::InboundEmail	31	32	2021-05-02 14:56:21.895385
33	raw_email	ActionMailbox::InboundEmail	32	33	2021-05-03 01:57:09.784616
34	raw_email	ActionMailbox::InboundEmail	33	34	2021-05-03 13:46:21.86532
35	raw_email	ActionMailbox::InboundEmail	34	35	2021-05-03 13:47:51.988184
36	raw_email	ActionMailbox::InboundEmail	35	36	2021-05-05 01:12:08.858336
37	raw_email	ActionMailbox::InboundEmail	36	37	2021-05-05 01:16:26.535812
38	raw_email	ActionMailbox::InboundEmail	37	38	2021-05-05 01:19:37.593796
39	raw_email	ActionMailbox::InboundEmail	38	39	2021-05-05 01:20:29.450975
40	raw_email	ActionMailbox::InboundEmail	39	40	2021-05-05 01:22:55.50124
41	raw_email	ActionMailbox::InboundEmail	40	41	2021-05-05 01:26:00.210864
42	raw_email	ActionMailbox::InboundEmail	41	42	2021-05-05 01:28:29.848029
43	raw_email	ActionMailbox::InboundEmail	42	43	2021-05-05 01:33:00.955917
44	raw_email	ActionMailbox::InboundEmail	43	44	2021-05-05 01:37:52.291204
45	raw_email	ActionMailbox::InboundEmail	44	45	2021-05-05 01:41:44.40282
46	raw_email	ActionMailbox::InboundEmail	45	46	2021-05-05 01:44:17.395267
47	raw_email	ActionMailbox::InboundEmail	46	47	2021-05-05 01:45:42.580465
48	raw_email	ActionMailbox::InboundEmail	47	48	2021-05-05 01:52:20.157355
49	raw_email	ActionMailbox::InboundEmail	48	49	2021-05-05 01:54:51.352163
50	raw_email	ActionMailbox::InboundEmail	49	50	2021-05-05 01:56:04.700067
51	raw_email	ActionMailbox::InboundEmail	50	51	2021-05-05 02:00:00.022174
52	raw_email	ActionMailbox::InboundEmail	51	52	2021-05-05 02:04:45.936076
53	raw_email	ActionMailbox::InboundEmail	52	53	2021-05-05 02:08:07.075131
54	raw_email	ActionMailbox::InboundEmail	53	54	2021-05-05 02:09:28.68443
55	raw_email	ActionMailbox::InboundEmail	54	55	2021-05-05 02:10:32.231472
56	raw_email	ActionMailbox::InboundEmail	55	56	2021-05-05 02:14:20.477098
57	raw_email	ActionMailbox::InboundEmail	56	57	2021-05-05 02:18:27.427348
58	raw_email	ActionMailbox::InboundEmail	57	58	2021-05-05 02:21:30.145498
59	raw_email	ActionMailbox::InboundEmail	58	59	2021-05-05 13:16:14.304439
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	fe7en8rhb792wfulcn7q761h6pcp	sample.jpg	image/jpeg	{"identified":true,"width":864,"height":576,"analyzed":true}	cloudinary	120253	gzQFINKLcEyk9LAZ7/sz3A==	2021-01-27 12:17:19.326317
2	1wvql3780qwoak16ox67jfeo95q2	sample.jpg	image/jpeg	{"identified":true,"width":864,"height":576,"analyzed":true}	cloudinary	120253	gzQFINKLcEyk9LAZ7/sz3A==	2021-01-27 13:09:19.281029
3	q3901vxgk2lzzl3fi746rujpcepr	message.eml	message/rfc822	{"identified":true}	cloudinary	328	9Puf5ASWeSJLDH1WVLlcfQ==	2021-04-27 19:38:22.077757
4	f56ek0wxktptl9766wiyup1u6jdx	message.eml	message/rfc822	{"identified":true}	cloudinary	335	9uUi8zOF68iqxRf6CZNs7A==	2021-04-27 19:43:15.786015
5	725dx3ynmbmkx50ee3n7p2w5e2rl	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	366	SLTP/6cJOhrfb5Kfi4tIHg==	2021-04-27 19:55:18.565384
6	y3wp5tgff07cpvv753rbxpso3eud	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	330	EzR+NfdzTHflsr/QKpwRJg==	2021-04-27 20:08:19.38465
7	i2m8guvpi4ydk2467qpuz9da4l9p	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	333	7ALZPjO2B/2RvKgzHpGWag==	2021-04-28 03:35:42.080828
8	pw39io8colds40w6g5ie9d21ix5p	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	323	KAWSHycJ014gL/zIt+Udeg==	2021-04-28 03:37:36.426761
9	71rtfowsprjsc963ljerioqmewup	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	322	WEy4KqTXgFgpmTJi7+BStg==	2021-04-28 03:56:53.880323
10	cp9rf4tbwvl9dndd8sod99hbn28j	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	320	IQVlKi7TPl7nrdk89j3MWw==	2021-04-28 04:23:18.181812
11	prsz3ggn85kz6gwaoo9x8vlkw9gw	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	331	vQMGVFlQ68hk6rghZfOkqQ==	2021-04-28 04:38:11.69157
12	q5vm74ydvzmp8242gmh41ff91trc	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	334	jsji5Ku1Mm/P6N9PTpajGg==	2021-04-28 04:41:36.021185
13	st5aqzwj7um8rkudtfo28jdqpau8	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	333	R33t43tnlokCmbuhCYFBLw==	2021-04-28 13:30:34.863747
14	h2mouipjk8xj1u5c7mfmcka8j14f	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	332	A/oaPH99Dy8d5tF9XqRIdg==	2021-04-28 13:32:25.360748
15	kcykg65nmyb8cgmfwq6s4t8ammlf	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	331	lpsZbtalhWkZyBBn5Kg9AA==	2021-04-28 13:49:19.760384
16	0eburhjtdthvxykruc7v6tvtwo08	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	319	he5twJZvMLiZBPJF0YUdlw==	2021-04-28 13:51:33.289168
17	9rzbsqrl32oqhhinxq5oxhge71qx	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	316	hlbYhRe9FgblmMb26OPA+g==	2021-04-28 14:07:43.840728
18	9i4hn4bmsjhb5ovbdqsghkayvnfw	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	333	8SeQuE3rlK8LWSxCoOvfdQ==	2021-04-28 14:24:26.328212
19	5i4neeovz9r1x71r9hegbqrld6my	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	332	HIT/hkOMrrgqsfM/P4BU2g==	2021-04-28 14:34:31.481569
20	aoakryze804y0n4fzwfl53photmy	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	337	eS2EcMfx4A13fh/03sEfUw==	2021-04-28 14:37:39.134892
21	kt32nlnmoxhjlidzh4faf85xkm0t	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	323	lXR4T2zW2/ypXigT6iMeCw==	2021-04-28 14:42:26.880994
22	l3etgx0vhzf78o6d7w2o8r3wgirm	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	322	nFveDAE21HuT5jLxbcoSAg==	2021-04-28 15:06:32.466394
23	lds1nclzxfexb3mhm974fd1l8vqi	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	317	/wbtxXRitoZ+8NrpxcPc/g==	2021-04-28 15:18:11.385607
24	r7i5d0wsex5huyx1e3850chjkw37	message.eml	message/rfc822	{"identified":true}	cloudinary	2469	j5XmlBvOB3PThzzKCIKUTQ==	2021-04-28 23:55:48.763937
25	hlkwqq34r9v9yr2a0f1z0mg8mzq0	palta.jpeg	image/jpeg	{"identified":true,"width":266,"height":190,"analyzed":true}	cloudinary	6320	4uv3hdBbr8AGEyWLnmkUUQ==	2021-04-29 00:32:55.217006
26	nllqgx0ak7yyftbknatrbyy3k27a	message.eml	message/rfc822	{"identified":true}	cloudinary	2487	60BAUkA4Nwf5/7tJbjMlng==	2021-04-29 00:46:57.405209
27	llds7f0cbihhyns77fdwibcwaf60	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	2474	G47M+xczKnBb+9NZuS7tgg==	2021-04-29 01:19:20.592141
28	v5a4miyogatm30ea1gv2gbkbkgsv	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	322	Z8vzSkXlBJvx+WQA0lR3wQ==	2021-04-30 20:02:45.676231
29	nvhoegsxglmbh4j96zghq8cgvvb3	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	352	vfXTrp0oMllnlEZfNb+JlQ==	2021-05-02 14:19:23.563616
30	tvw03unh8g9qk50ul4z4f1cse7gg	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	356	f3QIlVORfmqGdjLun358UA==	2021-05-02 14:21:59.12839
31	s36i7y1pp0fp6oaoynd9pipzc6w7	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	339	fPJMz5RFK097G6P25HReJA==	2021-05-02 14:54:10.119224
32	lj9dev73n45t7qlb66iabsydwgvu	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	337	+VPO67iP1Jssx2RrqFg6+g==	2021-05-02 14:56:21.884753
33	snxmi81ijcdfgiijuqdv19egujd5	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	329	aU5G9TLFICa77o1vckPavw==	2021-05-03 01:57:09.765367
34	bds1v78woltvmx58x4fogp2csjfl	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	325	d1fhqzzC/TBmydl5cd5rYQ==	2021-05-03 13:46:21.846032
35	lyybn9pdao7p1luguxzrgo0n8fks	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	350	D5cy8JDC32Qjm2dSY2+5Zw==	2021-05-03 13:47:51.974548
36	fxrh38wprhqy5m0o5oq1lotnqr5s	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	333	6rS42ui0iDajk5z4q0qC7Q==	2021-05-05 01:12:08.815227
37	2akrzto5veq8j8hdovctfy210tmw	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	328	3vL06NzT/hpiHOG+L9CSXA==	2021-05-05 01:16:26.529486
38	hh591jijiwkeknuecoo1t6jhqwqj	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	309	ODS8ALRP/pFTDHjaJ5/XLw==	2021-05-05 01:19:37.582074
39	005hojmolie209krsn6ijg5k0w4q	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	326	qDqnl4WJj3nMP/a+mfPo9A==	2021-05-05 01:20:29.437089
40	ntpp77cotyufnaj1nehsdhdf7eee	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	336	gAcp2O5Tmwx/L1/IwV/owA==	2021-05-05 01:22:55.492287
41	r7e3ky2aqlvi7mf7fho8wikikvhd	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	316	IXyD0ZvRL6UuaED/HY2yOQ==	2021-05-05 01:26:00.190447
42	ovopp39x9a14zwqwoi9xx8cdt2us	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	327	TZCQhP1yaVEQMgIxvg30mg==	2021-05-05 01:28:29.834204
43	tq9pr079lzvskdyoqt5sodlkr1q7	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	315	SpO70asY5fGrDgCkLXxaiQ==	2021-05-05 01:33:00.947856
44	s1ospzarzlide6aof4et991xd2fh	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	316	tVVSjWcjAeJ6vXLLud+seA==	2021-05-05 01:37:52.262081
45	xffaobhmpsy8r7g8u8lx7hudj1gd	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	328	DFutGGmk7Rft4RNO3EHE9w==	2021-05-05 01:41:44.393738
46	dh89jvtsejh3h03k8yjyt2bduxwz	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	313	GW8te6OqLXBrzXoYcfRfjA==	2021-05-05 01:44:17.381212
47	1wz9lm1c4d1v3g85knjyfyp37z7w	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	320	mFR1x6r4hCOGYVmeJausew==	2021-05-05 01:45:42.560074
48	kkyhjnzxrbpscjizthgfldbye0kf	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	324	E5bS/bDCcu6D0EpWzR02wg==	2021-05-05 01:52:20.127008
49	5pkuct1y9vx1pwfx90sni5q5vssc	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	319	O+cSAC/x6t4lFvkk/YSqIA==	2021-05-05 01:54:51.335222
50	j4khaid5ek9pct9xlpt274vputiw	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	318	dTe9gn4c0ZlsyB18Ax8axw==	2021-05-05 01:56:04.685274
51	n1ivv2ht6aeudqktyb8q0x0jkawv	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	318	nO9nYfqP69QPODnt49WtAg==	2021-05-05 01:59:59.999138
52	z4xrvdaois3rxjrtxmopi75j03jr	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	334	FfjRY+WUTroCoBpbbUGsnA==	2021-05-05 02:04:45.922646
53	jx0guso5d7zxvf8fbmg3cgt6iyrt	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	320	F12UUysc31LwEaDHIDgp2A==	2021-05-05 02:08:07.064528
54	anfykh6k0pwch10cudi7jwuoirj7	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	317	yy5Ra30y/gZlQgdbGoJ0Uw==	2021-05-05 02:09:28.648976
55	2m5fokj1fe9nh1bb538shsthwylq	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	329	eSFvV/+YwTvBGWmKdGT25g==	2021-05-05 02:10:32.209476
56	jeuonrr9hkukmwoh2c21562w9s7e	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	328	l2xslVSsCUU96XQ2t5bbnA==	2021-05-05 02:14:20.462573
57	8s2ivmso1ycbqsh97o2fa09gpt47	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	319	LqDjDU1KWNe99I/Tut3Trw==	2021-05-05 02:18:27.396363
58	suuk3zchwkz79fecmg0whab6h8jh	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	322	BXzpvTWxuTSeNiOZs0lZEg==	2021-05-05 02:21:30.134147
59	hntdclpwmuqnccvs9putp84ixnhr	message.eml	message/rfc822	{"identified":true,"analyzed":true}	local	329	FWXz7gf1/ooe+r7RnoUh6w==	2021-05-05 13:16:14.277467
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2016-12-13 01:07:57.396037	2021-01-27 12:16:08.223117
\.


--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients (id, ruc, razon, direccion, obs, tipo, origen, created_at, updated_at, user_id) FROM stdin;
1	1	ANULADO			1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
2	10032273845	LIZANA PEÑA MARIA RANULFA	JR. ANDAHUAYLAS NRO. 305 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
3	10040470382	MEZA MALPARTIDA JAVIER DAVID	AV. ARGENTINA NRO. 639 INT. A073 (ALT.CDRA.6 DE AV.ARGENTINA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
4	10054173810	DEL AGUILA GONZALES DE PORTUGAL PILAR FABIOLA	AV. GARCILAZO DE LA VEGA NRO. 1251 INT. 134A(GALERIA COMPUPLAZA)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
5	10060954017	SAN MARTIN CALDERON ALFONSO FELIX	CAL.SAN JACINTO NRO. 149 URB. LA TRINIDAD (CDRA. 17 AV. COLONIAL CRUC CON DUEÑAS)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
6	10061061032	BARREDA BRACKE ISABEL ROSA	JR. INCAHUASI NRO. 219 URB. MARANGA 5T (2DO PISO) LIMA - LIMA - SAN MIGUEL		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
7	10061253080	INGA CASTAÑEDA FLAVIANA DEMETRIA	AV. REPUBLICA DE ARGENTINA NRO. 327 INT. 7 C C LA BELLOTA DE LIMA (PABELLON Z1) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
8	10062968970	CHAMORRO HUAMAN HUGO EMILIO	JR. GUILLERMO DANSEY NRO. 828 DPTO. B INT. 108 (STAND B -108) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
9	10063818343	BARBA SOTO LUIS LUCIO	PJ. LA HUACA NRO. 229 (POQ PQUE DE LA BANDERA) LIMA - LIMA - PUEBLO LIBRE (MAGDALENA VIEJA)		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
10	10067401285	VERGARAY CARRASCO SANTA TEOFILA	AV. GERARDO UNGER NRO. 4499 INT. 34 URB. INDUSTRIAL (ASOC.DE PEQ.COM.02 DE DIC. PSTO.34) LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
11	10067470783	MEZA MALPARTIDA FELICITA	AV. ARGENTINA NRO. 639 INT. A CC UDAMPE CALLE 5 (PSTO 105-106 ALT. CDRA.6 ARGENTINA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
12	10067550230	GALVEZ TRONCOS ADA PEREGRINA	MZA. V-4 LOTE. 66 URB. PRO 1RA ETAPA LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
13	10069931079	CANDELA REYNA JUAN	AV. ARGENTINA NRO. 477 INT. 141 (STAND 141 CONSORCIO DE FERRETEROS 2000) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
14	10071715910	AGUILAR RAMOS ROBERTO	AV. GUILLERMO DANSEY NRO. 828 INT. A177 (ALT.CUADRA 6 AV. ARGENTINA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
15	10073745263	VILCA CRUZ MAGDA ELENA	CAL. DIEGO CORDOVA DE SALINAS NRO. 419 CERC RIMAC (ALT.CDRA 10 DE FRANCISCO PIZARRO) LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
16	10074767325	POLO BRICEÑO YOLANDA ROSA	MZA. H LOTE. 06 P.VIV BRISAS DE MONTECARL (ALT DEL PARQUE DEL REY KM 23.5 T.AMARU) LIMA - LIMA - CARABAYLLO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
17	10075138046	ALCOSER CORDOVA BERTHA ANA	PROLONGACION ANTONIO BAZO NRO. 637 INT. 2 LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
18	10075689387	ZUZUNAGA LAZO RONALD MARINO	AV. ARGENTINA NRO. 327 INT. 3 (C.C LA BELLOTA-PABELLON R-1 STAND 3 Y 10) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
19	10076169557	ALVAREZ MUÑOZ ARMANDO	AV. TOMAS MARSANO NRO. 633 LIMA - LIMA - SURQUILLO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
20	10076514513	RODRIGUEZ GUEVARA MARIA GUILLERMINA	AV. ARGENTINA NRO. 523 INT. A-25 (BOULEVARD PLAZA ACOPROM) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
21	10079998392	DIAZ GUTIERREZ LUISA ROSARIO	CAL. JORGE CHAVEZ NRO. 435 (ALT. CDRA 9 Y 10 DE AV. VENEZUELA.) LIMA - LIMA - BREÑA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
22	10081734181	FERNANDEZ TTITO BENITA	AV. CAQUETA NRO. 1300 INT. A ASOC.COM.MCDO.VIRREY AMAT (1300A,PUESTO 225-226)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
23	10081889339	TORRES DUEÑAS CESAR ANTONIO	AV. ARGENTINA NRO. 339 INT. M110 CENTRO COMERCIAL BELLOTA LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
24	10082350212	DIAZ REYNA CESAR SALVADOR	JR. JUNIN NRO. 752 (JR. JUNIN Nº 752-758) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
25	10084334923	PALOMINO MENDOZA DE YASUOKA MARILDA CONCEPCION	AV. GUILLERMO DANCEY NRO. 596 INT. 5-S1 (C.C.BELLOTA PASAJE 13) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
26	10084627793	RAMIREZ OBESO EUSEBIO	PJ. 2 MZA. C1 LOTE. 06A A.V. LOS PORTALES DE CHILLON (PASANDO EL PTE. ENSENADA)LIMA - LIMA - PUENTE PIEDRA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
27	10085645256	MARIN CRUZ VICTOR	AV. UNIVERSITARIA NRO. 3600 INT. 22 (CENTRO COMERCIAL LOS OLIVOS TIENDA 22)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
28	10086188134	QUIROZ DELGADO DORIS MARLENI	AV. GERARDO UNGER NRO. 4487 URB. NARANJAL INDUSTRIAL LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
29	10086446877	ALVARADO OLIVERA JAIME ROGELIO	AV. ANGELICA GAMARRA MZA. A LOTE. 3 URB. EL TREBOL III ETAPA (CRUCE AV A.GAMARRA CDRA12 Y PDRO GAMARRA)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
30	10086787607	PINEDO ROBLES ELIZABETH SISSI	AV. ARGENTINA NRO. 327 DPTO. G1 INT. 10 (CC BELLOTA - ALT.CDRA. 4 JR. PACASMAYO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
31	10088200760	ARIAS ROJAS EMILIANO	AV. JUAN VELASCO ALVARADO MZA. R LOTE. 8 COO. FORTALEZA ET 1 (VELASCO ALVARADO Y MIGUEL IGLESIAS)LIMA - LIMA - SAN JUAN DE MIRAFLORES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
32	10090335010	ROMAN DURAND JHONY FELIPE	PSJE 36 AV ARGENTINA NRO. 215 INT. BQ15 C.C. NICOLINI (1ER PISO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
33	10090893918	SOTO LOPEZ MAXIMO	MZA. A1 LOTE. 24 COO. VIV RESD LA ENSENADA LTDA (URB RIVERA DE CHILLON) LIMA - LIMA - PUENTE PIEDRA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
34	10091593616	LIZARRAGA LEGUIA JESUS EMILIO	CERVANTES NRO. 450 (ALT.CD.4 Y 5 28 DE JULIO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
35	10092479540	TARAZONA TRUJILLO DIONICIO	AV. FERNANDO WIESSE NRO. P-15 INT. 19 URB. MARISCAL CACERES (CANTO GRANDE) LIMA - LIMA - SAN JUAN DE LURIGANCHO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
36	10092851228	VALERO LAURA CARMEN LUZ	ESQ.AV.ARGENTINAY CARCAMO NRO. E091 C.C. LAS MALVINAS UDAMPE (ALT.CDRA.6 AV.ARGENTINA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
38	10093066001	ROBLES ROMAN ROSA YSABEL	AV. ARGENTINA NRO. 591 INT. M-05 CENTRO COMERCIAL LA CHIME (CENTRO COMERCIAL LA CHIME)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
40	10094638009	AYALA DE LA CRUZ JANETH MIRIAM	JR. MIGUEL ZAMORA NRO. 186 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
41	10094730827	GOMEZ MEDINA SERGIO	JR. EMERITA NRO. 109 COO. HUANCAYO (ALTURA PUENTE NUEVO) LIMA - LIMA - EL AGUSTINO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
42	10094769006	VENTURA PEREZ RUBEN EDUARDO	AV. ARGENTINA NRO. 639 INT. A007 (CALLE 3 CENTRO COMERCIAL UDAMPE) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
43	10095495309	CACERES SILVA MARIA DEL ROSARIO	AV. ARGENTINA NRO. 327 INT. 23 CC LA BELLOTA (PSJE 13 TDA L1-23 CC LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
84	10400349971	HUAMANI HUAMANI SONIA	AV. ARGENTINA NRO. 215 INT. BO18 (CC. NICOLLINI PJE. 38) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
44	10095984156	ANGULO SILVA SEGUNDO MARCIAL	MZA. MZ-H LOTE. LT06 APV. RES.BRISAS DE MONTECARLO (P.VIV.RES BRISAS DE MONTECARLO MZAH LT06) LIMA - LIMA - CARABAYLLO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
45	10097389590	OLAZABAL VALVERDE JAMES MIGUEL	MZA. C LOTE. 1 PORT. JARD. VALLE CHILLON (A 2 CDRAS DE GRIFO PRO) LIMA - LIMA - PUENTE PIEDRA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
46	10099271626	RODRIGUEZ PALACIOS MARITHZA MARLENY	AV. NARANJAL NRO. 456 URB. PQUE NARANJAL I ETAPA LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
47	10099565549	PEZUA TABOADA RAQUEL LILIAM	JR. ANCASH NRO. 777 INT. 106 (ALT. DEL CONGRESO) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
48	10099698611	FLORES MEZA KARIN BEVERLY	AV. ARGENTINA NRO. 301 INT. I-14 C.COMERC. LA BELLOTA (PASAJE SECUNDARIO N 6) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
49	10099736346	Gutierrez Huamani henry Duglas	Mza 146 Lot. 8 A. H San Martin de Porras ( 1 cuadra paq. Bandera) Lima-Lima-Lima		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
50	10099738346	GUTIERREZ HUAMANI HENRRY DUGLAS	MZA. 146 LOTE. 8 A.H. SAN MARTIN DE PORRAS (UNA CUADRA PAQ BANDERA /CALLE 50) LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
51	10099882722	ZEGARRA PUCAHUARANGA ELIZABETH MARIVEL	PROLG.HIPOLITO UNANUE NRO. 427 URB. EL RETABLO (ESPALDA POLLERIA SEÑORIAL) LIMA - LIMA - COMAS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
52	10099906940	PEREZ NAVARRO MARY OLGA	AV. ARGENTINA NRO. 339 INT. J-9 C.COMERC. LA BELLOTA (PUESTO J-9-PASAJE PRINCIPAL 4-MALVINAS) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
53	10101595531	ATACHAGUA TADEO ANICIA	AV. CAQUETA NRO. 1300 INT. 233 (C.C VIRREY AMAT) LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
54	10101798220	LLANOS CRUZ ROLANDO CESAR	JR. RAMON ESPINOZA NRO. 978 (PARQUE DEL TRABAJO) LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
55	10102038661	ESPINOZA FACHING EFRAIN MICHEL	JR. BERNARDO PUMAYALLI NRO. 150 URB. LOS OLIVOS (CRUCE PANAMERICANA NORTE Y TOMAS VALLE) LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
56	10103561936	ROMAN OLIVA CATHERINE SOLEDAD	AV. CAQUETA NRO. 1300 INT. 71 (ES # 1300A PTO 71 ASOC MCDO VIRREY AMAT) LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
57	10103582381	TABRAJ CANCHO OBENDINA EUFEMIA	AV. GERARDO UNGER NRO. 4601 (ALT. PARADERO ESTABLO) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
58	10103737121	GONZALES GOÑI FRANCISCO DE BORJA	AV. PROCERES NRO. 7872 URB. PRO 1ERA ETAPA ((7872-A) 4TO.SECTOR) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
59	10103792946	BELLO RAMIREZ SEGUNDO	AV. CANTA CALLO MZA. A5 LOTE. 17 URB. PRO LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
60	10104787164	VELASQUEZ CUYA ANTONITA	AV. ARGENTINA NRO. 639 INT. A061 (CALLE 4 - C. C. UDAMPE) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
61	10107205000	CONDOR CRISPIN BEATRIZ ESTELA	AV. GUILLERMO DANSEY NRO. 510 INT. 2-XI C.C. LA BELLOTA (ENTRE EL JR. ASCOPE Y GUILLERMO DANSEY)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
62	10107624070	MATEO VICUÑA ARMANDO	AV. CAQUETA NRO. 1300 INT. 209 ASOC. COM.MDO VIRREY AMAT (AV. CAQUETA 1300-A STAND 209)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
63	10108827829	HERNANDEZ LEYVA LUCILA DORALISA	AV. ARGENTINA NRO. 327 INT. Q20 (PASAJE 5 C.C. LA BELLOTA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
64	10161529538	VASQUEZ TORPOCO VENANCIA CLAUDIA	AV. ARGENTINA NRO. 477 INT. 37 CONSORC.FERRET.2000 (ALT.CDRA 5 AV.ARGENTINA)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
65	10166637011	SANCHEZ FLORES MARIA DEL ROSARIO	AV. ARGENTINA NRO. 477 INT. 124 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
66	10167253802	PALOMINO HUAMAN GLADYS NELLY	AV. ARGENTINA,PSJE SECUNDAR17 NRO. 327 INT. 5-H1 CENTRO COMERCI.LA BELLOTA (COSTADO CENTRO COMERCIAL NICOLINI) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
67	10178458120	TAFUR LOPEZ MILTON	AV. PACASMAYO NRO. 0 INT. 15 (PASAJE 15 TIENDA G1-11 C.C. BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
68	10178525943	LOAYZA TELLO ZOILA ESPERANZA	CAR.CRUCE VIA DE EVITAMIENTO NRO. SN VALDIVIA BAJA (OVALO HUANCHACO)LA LIBERTAD - TRUJILLO - HUANCHACO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
69	10180949815	TAFUR LOPEZ ELSYE ELIANITH	AV. ARGENTINA NRO. 327 INT. G 1 (PASAJE PRINCIPAL 5 TIENDA G1-11 CC BELLO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
70	10201023071	MAITA ALVARADO SANDRA	CAL.LOS ROBLES NRO. 941 URB. LA ACHIRANA 2DA ETAPA LIMA - LIMA - SANTA ANITA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
71	10204360869	HERRERA ROJAS CESAR VICENTE	CAL. LOS TALADROS NRO. 103A NARANJAL INDUSTRIAL (ALT.TERMINAL METROPOLITANO NARANJAL) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
72	10206743676	ROJAS SEDANO VILMA JUANA	AV. GUILLERMO DANSEY NRO. 361 (FRANTE AL POLICLINICO RAMON CASTILLA)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
73	10212569297	TORRES MEZA RICARDO JOSE	AV. ARGENTINA-PSJ.PRINCIPAL3 NRO. 327 INT. F-4 (C.C. LA BELLOTA - MALVINAS) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
74	10224863051	NAVARRO MEDRANO HEBIDIA	MZA. H LOTE. 16 URB. LAS MAGNOLIAS (ALT. ÓVALO HUANDOY) LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
75	10225048229	GOMEZ MEDRANO DINA FELICIANA	MZA. G LOTE. 2 A.H. VISTA ALEGRE DEL CARMEN (ALT. PARADERO CORREO) LIMA - LIMA - COMAS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
76	10256823794	PALOMINO MENDOZA GILBERT	AV. ARGENTINA NRO. 339 INT. H1 CC. LA BELLOTA (CC. LA BELLOTA INTERIOR H1-STAND 13) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
77	10257000767	ALTAMIRANO YBAÑEZ MARIO PATRICIO	AV. LOS PINOS MZA. J LOTE. 20 URB. CHILLON (FRENTE A LA PICSCINA LAS TERRAZAS) LIMA - LIMA - PUENTE PIEDRA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
78	10257169834	JIMENEZ PAJUELO GLADYS TOMASA	AV. CORDIALIDAD NRO. 7945 URB. PRO (PRIMERA ENTRADA DE PRO) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
79	10258440965	HUAMAN RAFAEL CARMEN	AV. ARGENTINA INTERIO H1 4 NRO. 327 (C.C. LA BELLOTA _ MALVINAS) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
80	10270578085	ABANTO GOICOCHEA JOSE ARTIDORO	AV. GERARDO UNGER NRO. 4635 INT. 30 NARANJAL INDUSTRIAL LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
81	10294854831	MENDOZA DE CHAMBI JUANA BAUTISTA	PJ. CALLAO NRO. 13 INT. 950 MCDO LA UNION (PTO 950 Y 951) LA LIBERTAD - TRUJILLO - TRUJILLO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
82	10324816149	SANTIAGO TARAZONA ROSAS MIGUEL	JR. HUARUCHIRI S.N. NRO. . INT. BT-4 CENTRO COMERCIAL NICOLINE (C.C NICOLINE PSJE 32 PSTO BT-4)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
83	10329612771	VELASQUEZ LUJAN KARLA ERIKA	CAL. LAS PRENSAS NRO. 160 U. IND. EL NARANJAL (ALT. DEL PARADERO METROPOLITANO NARANJAL) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
85	10400521617	FLORES MONTESINOS BELTRAN FRANCISCO	AV. CAQUETA NRO. 1300 INT. 220 (1300A)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
86	10401113962	HUANCA MAMANI GILBERTO WILINTONG	AV. JESUS NRO. 298 INT. 126 (STAND 126. CENTRO COMERCIAL LAS MALVINAS) AREQUIPA - AREQUIPA - AREQUIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
87	10402491642	ARBIETO BARRIENTOS HECTOR SILVERIO	AV. ARGENTINA NRO. 215 INT. BÑ12 C.C. NICOLINI (PSJE. 38 - COSTADO POLICLINICO CASTILLA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
88	10402539335	AVALOS ROMUCHO WILBER JESUS	AV. GUILLERMO DANSEY NRO. 454 INT. BB20 (PASAJE 5 DEL CENTRO COM. NICOLINE) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
89	10405632506	ZEVALLOS MELENDEZ JUAN DE DIOS	JR. JULIO C. TELLO NRO. 8 URB. SATIPO (NRO 1073 FTE COLEG HIRASOLA)JUNIN - SATIPO - SATIPO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
90	10406053593	PERDOMO CANCINO RENU	AV. ARGENTINA NRO. 327 INT. K1-8 (INTERIOR DEL CENTRO COMERCIAL LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
91	10406147351	DE LA CRUZ APOLIN MARIO	AV. ARGENTINA NRO. 327 INT. E-3 (PSJE 4 SECUNDARIO PSTO E-3 CC LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
92	10406975377	SOTO VALVERDE ANA MARIA	AV. 25 DE ENERO NRO. 181 APV PUEBLO DE INFANTAS (ALT. DEL OVALO INFANTAS)LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
93	10409483548	MENDOZA PICARDO LAURA PATRICIA	AV. PACASMAYO NRO. S/N INT. L1-2 (CDRA. 3 AV. ARGENTINA - C. C. LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
94	10410750355	VILLAFUERTE INGA EDGAR MANUEL	JR. HUAROCHIRI NRO. 215 PASAJE 42 PUESTO BL 9 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
95	10412173649	LAURA JORDAN BLANCA ELENA	ALM. SAN LORENZO MZA. C2 LOTE. 7 URB. CEDROS DE VILLA (ALT BAÑOS TURCOS SENATA) LIMA - LIMA - CHORRILLOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
97	10413565184	URETA MORALES DE GONZALES DEL VALLE SILVIA KARINA	AV. ARGENTINA NRO. 327 INT. Q19 (CENTRO COMERCIAL LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
98	10414275651	PALMER CAVERO MIGUEL ANGEL	AV. ARGENTINA NRO. 327 INT. AT16 (C.C. NICOLINE PASAJE 1) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
99	10414296781	ESPINOZA RUJEL LUISA DEL CARMEN	JR. PACASMAYO NRO. SN INT. H1-9 C.C. LA BELLOTA (CDRA 4 PACASMAYO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
100	10414635828	VALERO OCAÑO ROSA OLGA	AV. ARGENTINA NRO. 327-339 NRO. . INT. M1-5 C.C. LA BELLOTA (LAS MALVINAS) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
101	10415530647	ZEGARRA PUCAHUARANGA DEBORAH KARIN	AV. G.DANSEY 2DO N STAND F7 NRO. 354 INT. 2 C.C ELECTROF. BOULEVARD (COSTADO CLINICA CASTILLA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
102	10415758761	MEZA CHANCO CRISTHIAN WILLIAN	AV. ARGENTINA NRO. 327 INT. G-8 C.C. LA BELLOTA LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
103	10415847616	ZAVALA VEGA DEISY MARY	AV. ALEJANDRO IGLESIAS NRO. 770 (ALT.CDRA 1 DE AV.HUAYLAS) LIMA - LIMA - CHORRILLOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
104	10415888428	POLINARIO CRISPIN ROXANA FRANCISCA	AV. ARGENTINA NRO. 215 INT. BW3 (C.C. NICOLLINI) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
105	10416914287	CHANCA GOMEZ YOSEPH	AV. ARGENTINA NRO. 639 (C.C.UDAMPE STAND A-112 A-113 CALLE 5)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
106	10419360282	AYALA INGA EDWIN	CAL. 9 MZA. 190 LOTE. 19 A.H. SAN MARTIN LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
107	10419660502	CORO PINO OLIVIA RAYME	AV. CAQUETA NRO. 1300 INT. 141 C.C. VIRREY AMAT (CENTRO COMERCIAL VIRREY AMAT) LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
108	10422420555	HUACHACA PEDRAZA ANA LUCIA	AV. UNIVERSITARIA MZA. C LOTE. 01 A.H. SAN JUAN BAUTISTA (ALT.DEL COLEGIO ALBORADA) LIMA - LIMA - COMAS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
109	10422518474	AGREDA LUJAN DELIA ELIZABETH	AV. ARGENTINA NRO. 523 INT. G-17 (CUADRA 5 AV. ARGENTINA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
110	10422558557	VALERO ROBLES ANA MARIA	AV. ARGENTINA NRO. 639 INT. E129(C.C UDAMPE CALLE 12)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
111	10423953026	LLANOS SANGAY JULIO	AV. ARGENTINA NRO. 301 INT. I-15 (C.C BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
112	10426894713	POLINARIO CRISPIN FERMIN FLORENTINO	AV. ARGENTINA NRO. 215 INT. BQ9 (EN CC NICOLINI(FRTE A SEGURO)(PSJE 36)) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
113	10427286474	LOMAS GOMEZ LINDER	JR. RAMON CARCAMO NRO. 481 INT. E067(CTRO. COMER. UDAMPE-CDRA.6 AV. ARGENTINA)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
114	10428107867	HUANCA MAMANI YOLANDA	CAL. MALECON ZOLEZZI NRO. 204 AREQUIPA - AREQUIPA - MARIANO MELGAR		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
115	10428138941	LAVERIAN PONTE JOEL MIGUEL	AV. GUILLERMO DANSEY NRO. 596 INT. 9-R1 PSJE. SECUNDARIO NO 13 (CENTRO COMERCIAL LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
116	10429326015	DURAND RIVERA EVER FERNANDO	AV. ARGENTINA NRO. 315 C.C. LA BELLOTA (PASAJE 17, PABELLON K1 PSTO. 12) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
117	10429386395	VALERO ROBLES LUIS MIGUEL	AV. ARGENTINA NRO. 639 INT. E010 URB. CERCADO (C.C UDAMPE CALLE 8 E010,E008,E007,D195) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
118	10430756023	MESA CUEVA VIOLETA MAURA	AV. ARGENTINA NRO. 327 INT. N-7 (C.C LA BELLOTA PSJ SEC. 10 PSTO N-7) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
119	10432660244	TICLLAS GASPAR GRACIELA	AV. ARGENTINA NRO. 469 INT. 146 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
120	10435386411	OCAÑA JABEL CONO CESAR	AV. ARGENTINA NRO. 327 INT. N-7 (C.C LA BELLOTA PSJ SEC 10 PST N7)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
122	10435399857	ESPIRITU CRISPIN ZOSIMO	AV. ARGENTINA NRO. 327 INT. 21 CC.LA BELLOTA K1 PASAJE17 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
123	10435774861	TRUJILLO CASTILLO LUZ MERY	AV. ARGENTINA NRO. 215 INT. BM10(PASAJE 40 - C.C.NICOLINI)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
124	10440158078	LOPEZ DE LA CRUZ BLANCA	AV. AV. ARGENTINA 215 NRO. BL-4 INT. 41 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
125	10441238687	ZUZUNAGA FUENTES FARIA	AV. ARGENTINA NRO. 327 INT. 3R1 (PABELLON R-1 3 Y 10) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
126	10443221307	HERNANDEZ HUAMAN RONALD CONCEPCION	AV. ARGENTINA NRO. 315 INT. K 12 URB. C. COMERCIAL LA BELLOTA (ALTURA DE LA CUADRA 4 DE LA AV PACASMAYO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
169	20100025915	ALFREDO PIMENTEL SEVILLA S A	AV. ANGAMOS ESTE NRO. 1795 LIMA - LIMA - SURQUILLO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
127	10445223803	TINEO ALVAREZ MARIA ALEXANDRA	AV. GUILLERMO DANSEY NRO. 524 INT. 7-B2 C.C. LA BELLOTA (PJE. 2 SECUNDARIO)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
128	10449913031	SAYAGO CARDENAS JUAN CARLOS	AV. ARGENTINA - PASAJE 35 NRO. 215 INT. BQ10 C.C. NICOLINI LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
129	10450286970	NUÑEZ ALCANTARA JUAN ISAAC	CAL. LAS PRENSAS NRO. 174 URB. INDUSTRIAL NARANJAL (ALT. PARADERO LA 50) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
130	10450498489	CANAHUIRE RAMOS DANY MAGALY	AV. CAQUETA NRO. 1400 INT. 41 C.C.SAN PEDRO DE ICHU (PARQUE TRABAJO, PUESTO METAL)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
131	10451360812	ROMERO GARCIA AMY JIULISSA JUDITH	PROLG HOPOLITO UNANUE NRO. 424 URB. RETABLO 1ETP (ALT BOULEVAR DEL RETABLO)LIMA - LIMA - COMAS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
132	10451896755	AGUILAR DELGADO ANDREA	AV. ARGENTINA-PSJ.10 NRO. 397 INT. N-4 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
133	10455681567	LAVERIAN PONTE JACSON EDUARDO	AV. ARTGENTINA NRO. 301 INT. 08 PSJE. 8-1Q 9-1Q (ALTURA DE LA DRA. 5 DE AV. G. DANSEY) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
134	10455889176	TOLENTINO TRUJILLO YUDI	AV. ARGENTINA-PASAJE 38 NRO. 215 INT. BÑ10 CENTRO COMERCIAL NICOLINI (PASAJE 38- PUESTO BÑ10)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
135	10455984365	JARAMILLO TAFUR LUCIA CARMELA	AV. PACASMAYO CDRA.4 NRO. S/N INT. G1 C. C. LA BELLOTA PSJE.15 (PSJE.15 TDA. G1-11) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
136	10459226040	MORI SILVA SUSAN LISSET	AV. REPUBLICA DE ARGENTINA NRO. 327 INT. 7 (PABELLON I1 PJE PRINCIPAL 4 1ER PISO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
137	10459473446	VENTURA CARDENAS RUBEN EMILIO	AV. ARGENTINA NRO. 639 DPTO. C034 INT. C035(CALLE 3)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
138	10459865581	CURO CORONADO ZONIA	AV. ARGENTINA NRO. 327 INT. S1 (CC LA BELLOTA PASAJE 3) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
139	10460605771	GUTIERREZ HUANCA JOSE LUIS	AV. JESUS NRO. 298 INT. 102 C.C.LAS MALVINAS AREQUIPA - AREQUIPA - AREQUIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
140	10461004917	SURCO PHUYO JOEL ARMANDO	AV. HUAYRUROPATA NRO. 1247(NRO 1247-B ALT ESALUD C4P VERDE 1ER PIS)CUSCO - CUSCO - WANCHAQ		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
141	10465292607	OCAÑA JAVEL CIRILO ALBERTO	AV. REP. ARGENTINA NRO. 301 INT. N-2 (C.C LA BELLOTA-PASAJE 10) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
142	10465741975	CALDAS POLINARIO AZALIA RICARDINA	AV. GUILLERMO DANSEY NRO. 596 INT. 9-R1 PSJE. SECUNDARIO N 13 (C.C. LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
143	10466682921	ASENCIOS ARELLAN YHONI JUVENCIO	AV. REPUBLICA ARGENTINA NRO. 339 INT. G113 C.C. LA BELLOTA-PASAJE 5 (INTERIOR G1-13) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
144	10470368115	SANCHEZ LOPEZ ROCIO HILDA	AV. ARGENTINA NRO. 301 INT. 9E PASJ SECUNDARIO 3 (C.C LAS BELLOTAS) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
145	10471768559	CRISPIN APOLIN DORIS	AV. ARGENTINA NRO. 215 INT. BN7 C.C. NICOLINI (C.C. NICOLINI PASAJE 40 PTO BN7)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
146	10472618950	BARRANZUELA NIMA SINDY LUCERO	JR. PARURO NRO. 1365 DPTO. 153 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
147	10476881566	SALINAS MANRIQUE RENZO FEDERICO	JR. ANTONIO GARLAND NRO. 1046 DPTO. 2PIS URB. SOL DE LIMA (ALT 1ERA CDRA DE NICOLI CON LA UNI) LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
148	10477760762	DIAZ RONCAL SAMIR BENJAMIN	JR. RIO CHOTANO NRO. 5315 URB. VILLA DEL NORTE LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
149	10481314653	CAMARENA HUAMAN JUNIOR	AV. ARGENTINA NRO. 327 INT. K-1 (PUESTO 6-17 PSJE 17 C.COMERCIAL BELLOTA)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
150	10481942778	CHAMBE AREVALO JORGE LUIS	MZA. F LOTE. 03 A.H. 20 DE ENRO LIMA - LIMA - COMAS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
151	10484894731	CANCHARI GARCIA MARIBEL ROSARIO	AV. SAN JUAN NRO. 1535 INT. 22 LIMA - LIMA - SAN JUAN DE MIRAFLORES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
152	10486709974	CARHUALLANQUI GOMEZ HECTOR LUIS	AV. CAQUETA NRO. 1400 INT. 275 C.C SAN PEDRO DE ICHU LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
153	10486929907	LÓPEZ MUCHA REENZO FRANSHESCO	AV. ARGENTINA NRO. 339 INT. 8 C.C. LA BELLOTA LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
154	10488393559	LINARES ARI GIAN CARLO	PRO.PARINACOCHAS NRO. 1024 URB. SAN PABLO LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
155	10625928198	REVATTA SANCHEZ LUZ MARIA	AV. AV. ARGENTINA NRO. 327 INT. H1-A C.C. LA BELLOTA PJ-17 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
156	10701384488	ESPIRITU CRISPIN VIKY	AV. ARGENTINA NRO. 327 INT. M1-5(C.C. LA BELLOTA LAS MALVINAS)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
157	10706760313	CELIS DEL AGUILA GADI GABRIEL	MZA. 105 LOTE. 22 ASO PO LAS LOMAS DE ANCON  LIMA - LIMA - ANCON		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
158	10708438486	ORTEGA TARAZONA WILLIAM	AV. GLLERMO DANSEY NRO. 520 INT. C2-9 (CENTRO COMERCIAL LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
159	10729158939	ACHA ZAMBRANO BRAYAN ROSSO	AV. PARQUE MZA. J LOTE. 1 LOS PARQUES DE AGUSTINO (EDIFICIO 13) LIMA - LIMA - EL AGUSTINO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
160	10743740071	ARRATIA CALISAYA YANETH MARILUZ	JR. MONTEVIDEO NRO. 785 INT. 159A(CC.UNIVERSAL 1ER PISO)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
161	10764720224	AGREDA BENITES STEPHANY BRYSSET	JR. LOS OLIVOS NRO. 168 URB. VALDIVIEZO (...)LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
162	10768259785	BUITANO MORI CARLOS ALBERTO	AV. ARGENTINA NRO. 523 INT. D-19(C.C. ACOPROM)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
163	10804958491	ZEGARRA PUCAHUARANGA LUZ ELIZABETH	AV. G. DANSEY STAND H9 2DO N NRO. 354 INT. 2 C.C ELECTROFERRETERO BOUL (COSTADO CLINICA CASTILLA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
164	20100009472	CONSORCIO METALURGICO S A	AV. MAQUINARIAS NRO. 3150(ALT CUADRA 31 AV. ARGENTINA )LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
165	20100015014	ZINC INDUSTRIAS NACIONALES S A	AV. NESTOR GAMBETA NRO. 9053 (CARRETERA A VENTANILLA) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
166	20100016681	IMPORTACIONES HIRAOKA S.A.C.	AV. ABANCAY NRO. 594 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
167	20100017491	TELEFONICA DEL PERU SAA	CAL. SCHELL NRO. 310 LIMA - LIMA - MIRAFLORES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
168	20100019940	DELCROSA S.A.	AV. ARGENTINA NRO. 1515 Z.I. -.- LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
170	20100030676	DISTRIBUIDORA NAVARRETE S A	AV. NICOLAS DE PIEROLA NRO. 1463 (CRUCE ABANCAY NICOLAS DE PIEROLA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
925	07813482	EDUARDO ARNILLAS		\N	1	1	2017-06-16 23:17:27.024087	2017-06-16 23:17:27.024087	\N
171	20100036101	ACEROS BOEHLER DEL PERU S A	CAL. LUIS CASTRO RONCEROS NRO. 777 INT. 3 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
172	20100049181	TAI LOY S.A.	JR. MONTEVIDEO NRO. 1111(CERCADO DE LIMA)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
173	20100054001	M. ELECTRO S.A.	JR. VICTOR REYNEL NRO. 797 Z.I. CONDE DE LAS TORRES LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
174	20100070970	SUPERMERCADOS PERUANOS SOCIEDAD ANONIMA 'O ' S.P.S.A.	CAL.MORELLI NRO. 181 INT. P-2 LIMA - LIMA - SAN BORJA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
175	20100073723	CORPORACION PERUANA DE PRODUCTOS QUIMICOS S.A. - CPPQ S.A.	AV. CESAR VALLEJO NRO. 1851 ZONA CERENZA (PUENTE LA ATARJEA) LIMA - LIMA - EL AGUSTINO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
176	20100087198	TRADI S A	JR. PROLONGACION HUAMANGA NRO. 1500 LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
177	20100111838	GRIFOS ESPINOZA S A	AV. LA ENCALADA NRO. 1388 (A MEDIA CDRA. EMBAJADA DE E.E.U.U.) LIMA - LIMA - SANTIAGO DE SURCO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
178	20100413681	BLONDAS Y ELASTICOS S A BLONDESA	CAL. CALLE DELTA NRO. 237 Z.I. PQUE INT DE LA I Y C PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - BELLAVISTA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
179	20100490324	TRAELSA COMERCIAL S.A.C.	AV. MRCAL. OSCAR R BENAVIDES NRO. 1280 (EX. AV. COLONIAL) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
180	20101026265	INDUSTRIAL BETA S.A.	AV. PASEO DE LA REPUBLICA NRO. 2147 (FRENTE AL COLEGIO MELITON CARBAJAL) LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
181	20101312519	LIMABANDA S.A.C.	AV. MARISCAL ORBEGOSO NRO. 120 URB. EL PINO LIMA - LIMA - SAN LUIS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
182	20101356729	FERRETERIA COMERCIAL A EIRL	AV. LOS PLATINOS NRO. 324 URB. INDUSTRIAL INFANTAS LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
183	20101560504	CIA COMRC IND PERUANO SUECA SA	AV. OSCAR R BENAVIDES NRO. 2066 URB. LA TRINIDAD (ALTURA CDRA. 20 DE LA AVENIDA COLONIAL)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
184	20101579272	COMPANIA IMPORTADORA DE REPUESTOS S.A.C.	JR. RAMON CARCAMO NRO. 514 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
185	20101733298	INVERSIONES CUATRO CHICOS S A	AV. GENERAL TRINIDAD MORAN NRO. 821 URB. GENERAL TRINIDAD MORAN (ALTURA DEL TOURING) LIMA - LIMA - LINCE		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
186	20102167296	CODIZA S.A.	AV. LOS PLATINOS NRO. 300 LOT.IND INFANTAS IET 1SEC (ALT. PARADERO NISSAN P.NORTE) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
1103	20492787052	INVERSIONES CANAAN E.I.R.L.	JR. CUSCO NRO. 720 CERCADO (ENTRE PARURO Y ADAHUAYLAS) LIMA - LIMA - LIMA	\N	1	1	2020-04-06 18:44:45.582375	2020-04-06 18:44:45.582375	1
188	20107008099	IMPORTACIONES J. VIVANCO S.A.C.	AV. MARISCAL DOMINGO NIETO NRO. 272 URB. LOS SAUCES (MZ. B LOTE 11) LIMA - LIMA - ATE		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
189	20109072177	CENCOSUD RETAIL PERU S.A.	CAL. AUGUSTO ANGULO NRO. 130 URB. SAN ANTONIO LIMA - LIMA - MIRAFLORES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
190	20109119157	INDUPLASAN S.R.L.	JR. LOS YUNQUES NRO. 5236 (ALT OVALO NARANJAL-URB IND. INFANTAS) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
191	20109980855	GRIFO DENNIS S.A.C.	AV. DEL PINAR NRO. 180 INT. 1002 URB. CHACARILLA DEL ESTANQUE (AV. PRIMAVERA, ENTRE CUADRAS 3 Y 4) LIMA - LIMA - SANTIAGO DE SURCO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
192	20112034774	INDUSTRIAS CHACON E I R LTDA	CAL. B NRO. D INT. 40 URB. IND.PANAMERICANA NORTE (ALT ENTRE SENATI Y METRO) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
194	20122667741	SAK S.A.C.	AV. PASEO DE LA REPUBLICA NRO. 1735 URB. BALCONCILLO (VIA EXPRESA PISTA AUXILIAR) LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
195	20122837506	FULL S.A.C.	JR. LAMBDA NRO. 145 PARQUE INDUSTRIAL (ALT. CDA. 50 AV. COLONIAL) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
196	20127765279	COESTI S.A.	AV. NICOLAS ARRIOLA NRO. 740 URB. SANTA CATALINA (ESQUINA CANADA CON ARRIOLA) LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
197	20130459090	SOCIEDAD LAS CASUARINAS S.R.L. SOLASCA	JR. LAS CUCARDAS NRO. 114 URB. LAS CASUARINAS (ENTRADA PRINCIPAL: 2DA CDRA A LA DERECHA) LIMA - LIMA - SANTIAGO DE SURCO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
198	20131379944	MINISTERIO DE TRANSPORTES Y COMUNICACIONES - OFICINA GENERAL ADM.	JR. ZORRITOS NRO. 1203(POR TINGO MARIA)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
199	20134092263	EMPRESA GRUPO QUINTO S.A.	AV. UNIVERSITARIA NRO. S/N AS CAJABAMBA (ESQUINA CARLOS IZAGUIRRE)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
200	20134226642	FAXIMPORT MACHINERY S.A.C.	JR. PACHITEA NRO. 185 (ALT CINE REPUBLICA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
201	20160404796	INVERSIONES Y COMERCIALIZACION MAKA SAC	AV. JAVIER PRADO ESTE NRO. 4885 URB. CAMACHO (ALT. UNIVERSIDAD DE LIMA) LIMA - LIMA - LA MOLINA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
202	20177064972	PETROCENTRO UNIVERSITARIO S.A.C.	AV. UNIVERSITARIA NORTE MZA. C LOTE. 1 URB. RESIDENCIAL COMERCIAL (CRUCE AV. ANTUNEZ DE MAYOLO-GRIFO-)LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
203	20193386220	GRIFO TRAPICHE S.R.L.	AV. HEROES DEL ALTO CENEPA NRO. 697 (EX AVENIDA TRAPICHE)LIMA - LIMA - COMAS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
204	20210975862	OPERACIONES Y SERVICIOS GENERALES S A	AV. CAMINOS DEL INCA MZA. N LOTE. 19 URB. SAN JUAN BAUTISTA DE V. (URB.SAN JUAN BAUTISTA DE VILLA) LIMA - LIMA - CHORRILLOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
205	20215702813	REPRESENTACIONES GENERALES PERU S.A.	AV. LAS PRENSAS NRO. 287 URB. EL NARANJAL (ESPALDA DE PURINA) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
206	20220015743	ESTACION LOS JARDINES EIRL	AV. PROCERES INDEPENDENCIA NRO. G INT. 15 URB. LOS JARDINES DE SAN JUAN LIMA - LIMA - SAN JUAN DE LURIGANCHO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
207	20228707261	MUNICIPALIDAD DISTRITAL DE HUABAL	CAL.PRINCIPAL NRO. S/N PLAZA DE ARMAS (CDRA 1 )CAJAMARCA - JAEN - HUABAL		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
208	20264870721	GC. MULTIGAS EIRL	NRO. A INT. 8 URB. CHILLON (CAMINO A LA ENSENADA) LIMA - LIMA - PUENTE PIEDRA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
209	20268908707	SEKERO S.R.L.	JR. ANCASH NRO. 773 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
210	20295388596	PERUVIAN SCREW E.I.R.L	JR. YAHUAR HUACA NRO. 151 URB. TAHUANTINSUYO (AV.TUPAC AMARU PARADERO INCA KOLA) LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
211	20295723646	GENOVA STAR EIRL	JR. ANCASH NRO. 639 (COSTADO DE LA ESCUELA BELLAS ARTES) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
950	20602262341	INDUSTRIAS ADAR E.I.R.L.	AV. AV. ARGENTINA Y/CON PACASMAYO NRO. 327 INT. L1-4 OTR. CENTRO COMERCIAL LA BELLOTA LIMA - LIMA - LIMA	\N	1	1	2017-09-19 00:55:48.954429	2017-09-19 00:55:48.954429	3
212	20308794734	TRANSE`T CHICKEN EIRL.	AV. CARLOS ALBERTO IZAGUIRRE NRO. 600 URB. LAS PALMERAS (HOTEL LAS ORQUIDEAS) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
213	20310552021	ESTACION DE SERVICIO SAN CRISTOBAL S.A.C	CAR.PANAMERICANA SUR NRO. 193 ICA - CHINCHA - GROCIO PRADO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
214	20330033313	PERUANA DE ESTACIONES DE SERVICIOS S.A.C	CAL. CORONEL ANDRES REYES NRO. 360 DPTO. 205 URB. JARDIN (PISO 2 A UNA CUADRA DE RIVERA NAVARRETE) LIMA - LIMA - SAN ISIDRO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
215	20330511827	AMAZON CORPORATION S.A.	AV. NICOLAS ARRIOLA NRO. 905 URB. SANTA CATALINA (ALT. CRUCE CON CANADA) LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
216	20332870387	COMERCIAL FERRETERA R. E.I.R.L.	CAL.3 MZA. A LOTE. 5 APV EL SAUCE (ALT CDRA 10 AV LOS JARDINES ESTE)LIMA - LIMA - SAN JUAN DE LURIGANCHO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
217	20333606063	MANUFACTURAS DE SEGURIDAD Y FILTROS S.A	AV. GERARDO UNGER NRO. 1053 INT. A URB. SOL DE LIMA (DPTO. 301) LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
218	20333712505	POLO SERVICE SAC	AV. LA ENCALADA NRO. 1515 LIMA - LIMA - SANTIAGO DE SURCO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
219	20337564373	TIENDAS POR DEPARTAMENTO RIPLEY S.A.	AV. LAS BEGONIAS NRO. 545 URB. JARDIN LIMA - LIMA - SAN ISIDRO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
220	20337679430	CIA. INDUSTRIAL CLAN S.A.C.	LOTE. 127C FND. CHACRA CERRO (ALT. CDRA. 17 AV. TRAPICHE) LIMA - LIMA - COMAS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
221	20339179451	DINPLAST LIMA EIRL	JR. UCAYALI NRO. 649 INT. 814 (MCADO CENTRAL) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
222	20340319169	CO ESTRELLA DEL PERÚ SAC	CAL. CRISTOBAL DE PERALTA NRO. 1505 URB. VALLE HERMOSO (1 CUADRA DE CASINELLI - PANAMERICANA SUR) LIMA - LIMA - SANTIAGO DE SURCO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
223	20371826727	ESTACION DE SERVICIOS GRIFO MASTER SRL	AV. ALFREDO MENDIOLA MZA. E LOTE. 16 ASOC. RIO SANTA (KM 21 PANAMERICANA NORTE) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
224	20372554089	REPRESENTACIONES SANFLOR SRLTDA	AV. GERARDO UNGER MZA. A LOTE. 1 URB. INDUSTRIAL INFANTAS (ALT DE CDRA 57 AV GERARDO UNGER)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
225	20383206457	REFUGIOS & ARTICULOS DE EXPLORACION EIRL	AV. ALEJANDRO VELASCO ASTETE NRO. 1953 (ALT.CDRA 48 AV.ALFREDO BENAVIDES) LIMA - LIMA - SANTIAGO DE SURCO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
226	20386362603	P.A.DESARROLLOS INMOBILIAR.Y CONST.S.A.C	AV. CAMINO REAL NRO. 493 DPTO. 701 RES. SAN ISIDRO (CRDA. 4 DE AV. CAMINO REAL) LIMA - LIMA - SAN ISIDRO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
227	20387366475	BAC PETROL S.A.C	AV. V. RAUL HAYA DE LA TORRE NRO. 2237 (HOSPITAL SAN JUAN DE DIOS) LIMA - LIMA - ATE		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
228	20389568172	M & S SEGURIDAD S.R.L.	CAL.HUANTAR NRO. 5092 PARQUE NARANJAL (ALT.CDRA 16 DE LA AV. NARANJAL)LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
229	20391039829	EMIAL S.R.L.	JR. LOS TALADROS NRO. 130 URB. IND.NARANJAL (ESPALDA FABRICA PURINA)LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
230	20392605143	SATELLITAL PATROL SAC	AV. NICOLAS ARRIOLA NRO. 587 URB. SANTA CATALINA LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
231	20392813927	KINGS SOLUTIONS AND SERVICES E.I.R.L	CAL. CARLOS AGUIRRE NRO. 144 URB. PROLONGACION BENAVIDES (ESPALDA DE WONG DE MARSANO) LIMA - LIMA - SANTIAGO DE SURCO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
232	20392949233	FERRETERIA INDUSTRIAL PERUMAC S.A.C.	AV. ARGENTINA NRO. 469 INT. 135 CERCADO DE LIMA (CRA 4 AV. ARGENTINA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
233	20416849766	SUDAMERIS PERU SOCIEDAD ANONIMA CERRADA	CAL.PACASMAYO NRO. 867 URB. LIMA INDUSTRIAL LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
234	20418140551	ALBIS S.A.	CAL. LOS NEGOCIOS NRO. 185 URB. JARDIN LIMA - LIMA - SURQUILLO		1	2	2016-10-26 00:00:00	2016-10-26 00:00:00	1
235	20422251261	ELECTRICOS GENERALES IMPORT EXPORT S.R.L	JR. AZANGARO NRO. 1028 (ESQUINA AV ROOSEVELT 299) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
236	20434196257	IM SUMINISTROS S.R.L.	CAL. PONTEVEDRA NRO. 161 INT. 301 URB. RESID. HIGUERETA (ALT. CDRA 3 AV. PEDRO VENTURO) LIMA - LIMA - SANTIAGO DE SURCO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
237	20454587929	DV SEGURIDAD E.I.R.L.	MZA. C LOTE. 6 URB. LAS ORQUIDEAS (COSTADO COLEGIO DE PSICOLOGOS AREQUIPA) AREQUIPA - AREQUIPA - AREQUIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
238	20466453162	INVERSIONES SANTA FELICIA S.A.C	JR. HUANCABAMBA NRO. 1426 (ALT 7 MARIANO CORNEJO/ESQ CON ORBEGOSO) LIMA - LIMA - BREÑA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
239	20471254305	BOUBY S.A.C	AV. LA MAR NRO. 267 COO. DE VIV. 27 DE ABRIL (A UNA CDRA DEL OVALO STA ANITA) LIMA - LIMA - ATE		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
240	20477805940	MICKVAL TRADE AND INVESTMENT E.I.R.L - MICKVAL E.I.R.L.	CAL. LAS GALAXIAS NRO. 191 URB. LA ALBORADA (ALT.CDRA.43 DE BENAVIDES) LIMA - LIMA - SANTIAGO DE SURCO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
241	20478100869	SKY IMPULSE S.A.C.	CAL. FRAY ANGELICO NRO. 100 (ALTURA CDRA 27 DE LA AV. AVIACION) LIMA - LIMA - SAN BORJA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
242	20478158948	INDUSTRIAL YALE DEL PERU S.A.C.	AV. CIRCUNVALACION NRO. 617 FND. SANTA MARIA DE HUACHIPA (FUNDO HUACHIPA -ALTURA CEMENTERIO MAPFRE)LIMA - LIMA - LURIGANCHO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
243	20478162201	MELECSA S.A.C.	MZA. G LOTE. 5 PROVIV BUENA VISTA II ETP (FUNDO OQUENDO)PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
244	20479110523	IMRE SILVA S.R.L.	JR. LAS PRENSAS NRO. 118 URB. NARANJAL LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
245	20480249713	EF INDUSTRIAL SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA	AV. TUPAC AMARU NRO. 1195 INT. A URB. PRIMAVERA LA LIBERTAD - TRUJILLO - TRUJILLO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
246	20482172815	AMERICA TEXTIL PERU S.R.L.	AV. SANTA ANA LOTE. 95B FND. CHACRA CERRO (ALT. COLEGIO YDEO NOGUCHI - AV. TRAPICHE) LIMA - LIMA - COMAS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
247	20483813831	INDUSTRIA MADERERA ALTO MARAÑON S.A.C	JR. COMERCIOMZA. 231 LOTE. 2-B Z.I. ZONA INDUSTRIAL PIURA - PIURA - PIURA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
248	20486255171	CORPORACION RIO BRANCO S A	CAR.PANAMERICANA NORTE KM. 92.5 C.P. CHANCAYLLO (BARRIO SAN JUAN PASANDO EL PUENTE)LIMA - HUARAL - CHANCAY		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
249	20486714116	SICSA PERU S.A.C.	CAL. REAL NRO. 1412 (ENT. CALL.REAL Y JR. ARICA) JUNIN - HUANCAYO - HUANCAYO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
250	20490286871	GRUPO PUNTO AZUL Y DISTRIBUCIONES CUSCO S.R.L.	AV. JAVIER PRADO ESTE NRO. 1174 DPTO. 301 URB. CORPAC LIMA - LIMA - SAN ISIDRO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
251	20492331083	FERRETERIA INDUSTRIAL JHULINO S.A.C.	AV. ARGENTINA NRO. 477 INT. 10 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
1088	20392594869	Wasicor SAC\r\n		\N	1	1	2020-02-19 01:06:07.039567	2020-02-19 01:06:07.039567	1
252	20492507891	GIVA IMPORT E.I.R.L.	CAL.EL NARANJALMZA. N1 LOTE. 12 A.H. CARLOS CUETO FERNANDINI (CDRA 9 AV. LOS ALISOS, PALMERAS Y UNIVE)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
253	20492531767	QUIMICA 3HLP S.A.C.	SECTOR EL PALOMAR MZA. DH LOTE. 14 ANEXO 22 C.C. JICAMARCA (ULTIMO PARADERO LINEA 57) LIMA - HUAROCHIRI - SAN ANTONIO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
254	20492624340	DITTO PERÚ S.A.C.	CAL. ATENAS MZA. P LOTE. 30 URB. SAN ROQUE LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
255	20493089570	ESTACION DE SERVICIOS H & A S.A.C.	AV. UNIVERSITARIA MZA. A LOTE. 06 (ALT CDRA 51 AV UNIVERSITARIA) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
256	20494517338	MULTINEGOCIACIONES LA FORTALEZA S.A.C.	AV. RAMON CASTILLA N° 136 NRO. 138 (POR EL OVALO DE PUENTE NUEVO) AYACUCHO - HUAMANGA - SAN JUAN BAUTISTA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
257	20498456856	EMPRESA DE TRANSPORTES Y SERVICIOS GENERALES TRANSMOTAR S.A.C.	AV. DANIEL ALCIDES CARRION NRO. 215 (LA PAMPILLA)AREQUIPA - AREQUIPA - JOSE LUIS BUSTAMANTE Y RIVERO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
258	20500409925	REFIMETAL SAC	CAL. LA HUACA NRO. 229 URB. EL MILAGRO (ALT. DEL HOSPITAL STA.ROSA) LIMA - LIMA - PUEBLO LIBRE (MAGDALENA VIEJA)		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
259	20500968746	REPRESENTACIONES BEROMADA E.I.R.L.	AV. CAQUETA NRO. 1300 DPTO. 194 (ASOC COM MCDO VIRREY AMAT)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
260	20501683109	CONSORCIO KINZUKO SAC	MZA. J LOTE. 19 URB. BRISAS DE STA ROSA (GRIFO REPSOL)LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
261	20501688593	CABLE VIDEO PERU S.A.C.	JR. CONRAY GRANDE NRO. 4901 URB. PARQUE NARANJAL (CDRA 13 AV.NARANJAL)LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
262	20501767540	MIRALDI Y CIA. S.A.C.	AV. CIRCUNVALACION MZA. K LOTE. 28 URB. SAN IGNACIO DE MONTERRICO (ENTRE LA PANAMERICANA Y AV.BENAVIDES) LIMA - LIMA - SANTIAGO DE SURCO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
263	20501838587	AUTO IMPORT ROMERO S.A.C.	JR. LAS PRENSAS NRO. 115 NARANJAL (ZONA INDUSTRIAL NARANJAL)LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
264	20502163061	ELEMENTOS DE SUJECION Y FIJACION S.A.C.	AV. LOS PLATINOS NRO. 104 Z.I. INFANTAS (ALT PARAD NISSAN PANAM NORTE) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
265	20502324927	TRANSPORTES EL PINO S.A.C.	AV. MANUEL ECHEANDIA NRO. 303 URB. EL PINO (1 CDRA DE ALMACEN DE SUNAT/SAN LUIS) LIMA - LIMA - SAN LUIS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
266	20502336771	CGS BUZOS PORTUARIOS S.R.L.	MZA. G LOTE. 5 ASC.LAS PRADERAS DEL SOL (ALT.CDRA.DE PACASMAYO Y CANTA CALLAO)LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
267	20502822102	INDUSTRIA PLASTICEAL S.A.C.	JR. ANCASH NRO. 777 INT. 141 (GALERIA EXITOS-A 1/2 CDRA DE PARURO)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
269	20503396026	FERRETERIA JUPESCO HERMANOS S.A.C	AV. GERARDO UNGER NRO. 1053 URB. SOL DE LIMA (FTE. METRO UNI) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
270	20503491011	IMPORTACIONES Y EXPORTACIONES AMERICAN PLAST S.A.C.	JR. ANDAHUAYLAS NRO. 337 (PISO 1-ESPALDA DEL CONGRESO) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
271	20503840121	REPSOL COMERCIAL SAC	AV. VICTOR ANDRES BELAUNDE NRO. 147 INT. 301 EDIFICIO REAL 5 LIMA - LIMA - SAN ISIDRO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
272	20504039049	IMPORTACIONES & EXPORTACIONES K.A.J. S.R.L.	CAL.ASCOPE NRO. 540 DPTO. 108 URB. LA COLONIAL LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
273	20504347703	INGENIERIA Y SEGURIDAD S.A.C	JR. ASCOPE NRO. 521 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
274	20506151547	ENERGIGAS S.A.C.	AV. CANAVAL Y MOREYRA NRO. 654 INT. 301 LIMA - LIMA - SAN ISIDRO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
275	20506520844	J & P FERRETERA S.A.C.	AV. ARGENTINA NRO. 477 INT. 6 (ASC. COM. CONSOC, DE FERRETEROS 2000) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
276	20506602069	COMPRA Y VENTA DE MATERIALES METALICOS S.A.C.	AV. GRAU NRO. 1472 (FRENTE AL HOSPITAL 2 DE MAYO) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
277	20506808431	IDELECTRIC JOSELYN S.A.C.	JR. AZANGARO NRO. 1001 (Y TAMBIEN BAMBAS # 400) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
278	20507292225	GYN PLAST S.R.L.	MCDO RAMON CASTILLA NRO. 0 INT. 848 (CRUCE JR HUALLAGA Y JR AYACUCHO) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
279	20507341706	LUBRICANTES PREMIUM S.A.C.	CAL. JUANA GORRITI NRO. 2618 URB. ELIO (ALT FABRICA DONOFRIO) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
280	20507465341	ICEIN CONFECCIONES GENERALES E.I.R.L.	PJ. REAL NRO. 199 P.J. SAN GABRIEL SEC. V. BAJO (JC MARIATEGUI-CURVA DEL DIABLO) LIMA - LIMA - VILLA MARIA DEL TRIUNFO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
281	20507581928	G & R INDUSTRIAS PLASTICAS S.R.L.	MZA. E-1 LOTE. 9 ASOC ALAMEDA DEL NORTE (ALT OVALO DE PUENTE PIEDRA) LIMA - LIMA - PUENTE PIEDRA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
282	20507583467	LOGISTIC SERVICES MORCAS S.A.C.	AV. PACASMAYO NRO. 4848 DPTO. 201 URB. JORGE CHÁVEZ (2DO PISO)PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
283	20507870016	INVERSIONES MILDAZA S.C.R.L	AV. LOS POSTES ESTE NRO. 371 COO. LA HUAYRONA (AV. PROCERES DE LA INDEP. CDRA 20) LIMA - LIMA - SAN JUAN DE LURIGANCHO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
284	20509076783	REPRESENTACIONES INDUFER EIRL	AV. ARGENTINA PABELLON Z1 NRO. 327 INT. 5 (UNIDAD INMOB.NRO 251 CC LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
285	20509700789	CORPORACION INFOTEC S.R.L.	AV. GARCILAZO DE LA VEGA NRO. 1251 INT. 159 (ENTRE AV.GARCILAZO Y AV.BOLIVIA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
286	20510266910	SEGURIDAD INDUSTRIAL DEL SUR SAC.	PZA. 2 DE MAYO NRO. 46 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
287	20510314078	ANDES SEGURIDAD S.A.C.	CAL. DEAN SAAVEDRA NRO. 170 URB. MARANGA (AL COSTADO DEL ICPNA DE AV. LA MARINA) LIMA - LIMA - SAN MIGUEL		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
288	20510531923	MERRILL PERU ENTERPRISES S.A.C.	JR. ABTAO NRO. 784 (COSTADO DEL ESTADIO ALIANZA LIMA) LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
289	20510649258	CCMI EIRL	JR. MIGUEL ZAMORA NRO. 117 (PLAZ A2 DE MAYO PISO 1)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
290	20510932910	ALMACEN SANTOS S.A.C.	JR. RAMON ESPINOZA NRO. 978 (PB-FTE. PARQUE DEL TRABAJO) LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
291	20511040486	GRUCHIT S.R.L.	AV. GUILLERMO DANSEY NRO. 354 INT. F16 CC. BOULEVARD ELECTRO FER (CC BOULEVARD ELECTRO FERRETERO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
292	20511322627	INVERSIONES J.A.N SOCIEDAD ANONIMA CERRADA	JR. HUAROCHIRI NRO. 569 (A 1 CDRA PLAZA 2 DE MAYO CDRA 1 COLONIAL)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
623	SIN RUC	SIN RUC	sd		1	1	2016-10-26 00:00:00	2017-12-06 22:07:46.419674	1
293	20511398526	PRODUCTOS ACCESORIOS METALICOS SAC	AV. VENEZUELA NRO. 881 DPTO. 1 (2DO PISO- FRENTE DE SEDAPAL) LIMA - LIMA - BREÑA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
294	20512129910	INDUSTRIAL CALDAS SA	AV. TOMAS VALLE NRO. 1841 URB. SAN PEDRO DE GARAGAY (ALT PARADERO ANTARES) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
295	20512175199	CORPORACION M & K PERU S.A.C.	AV. ALMTE MIGUEL GRAU NRO. 242 (ALTURA DE POLICLINICO GRAU) LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
296	20512308253	ESTACION SANTA RITA S.A.C.	AV. CANTA CALLAO NRO. S/N LOS PORTALES DE STA RITA (ESQUINA CARLOS IZAGUIRRE Y CANTA CALLAO) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
297	20512312013	SUMINISTROS Y ACABADOS S.A	AV. AVIACION NRO. 1020 (CRUCE AV.MEXICO Y AVIACION) LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
298	20512386050	ACEROS CHEGAR S.A.C.	AV. GERARDO UNGER NRO. 4667 URB. SAN MARTIN DE PORRES (PARADERO ESTABLO) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
299	20512410295	3B TEXTIL S.R.L.	JR. ANCASH NRO. 724 INT. 157 (GALERIA BELLAS ARTES TDA 157-158) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
300	20513567139	ALTA VIDDA GAS S.A.C.	FELIPE SANTIAGO SALAVERRY NRO. 341 (ALT DE LA CDRA 18 DE AV CIRCUNVALACION) LIMA - LIMA - SAN LUIS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
301	20513841729	CAIRSA E.I.R.L.	JR. ANDAHUAYLAS NRO. 955 INT. 50 (C.C.LA COCHERA/1CDRA IGLESIA STA.CATALIN) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
302	20514020575	R & H INDUSTRIAL ROJAS S.A.C.	AV. ARGENTINA NRO. 301 C.C.LA BELLOTA (PUESTO Z-10-11 ALT.CDRA.3AV.ARGENTINA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
304	20514599620	E Y G PERU SOCIEDAD ANONIMA CERRADA	AV. BENAVIDES NRO. 1555 DPTO. 604 (ALTURA CDRA 61 REPÚBLICA DE PANAMÁ) LIMA - LIMA - MIRAFLORES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
305	20514600814	FEVICE TRADING SOCIEDAD ANONIMA CERRADA	AV. GERERDO UNGER NRO. 4391 URB. EL NARANJAL (ALT.DEL PRDRO.INCA KOLA DE INDEPENDENCIA) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
306	20515190351	INMOBILIARIA S&F SOCIEDAD ANONIMA CERRADA - INMOBILIARIA S&F S.A.C.	CAL. JORGE CASTRO HARRISON NRO. 125 URB. SAN MIGUELITO (ALT.COLEG.BARTOLOME HERRERA AV.LA MARINA) LIMA - LIMA - SAN MIGUEL		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
307	20515774182	CORPORATION INTHERPHARMA SOCIEDAD ANONIMA CERRADA	AV. COPACABANA NRO. 219 (ALTURA DEL OVALO PUENTE PIEDRA) LIMA - LIMA - PUENTE PIEDRA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
308	20516001772	DFG ARTICULOS DE SEGURIDAD INDUSTRIAL E.I.RL.	AV. ARGENTINA NRO. 215 INT. 22 (C.COM.NICOLINI - PSJE 8 - PABELLON AY) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
309	20516097192	M & R TANQUE SAC	AV. ARGENTINA NRO. 347 C.C. LA BELLOTA (PSJE SECUND.4 TIENDA S13-S14 LIMA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
310	20516175339	TRATAR PERU SAC	AV. ELMER FAUCETT NRO. 3430 URB. BOCANEGRA PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
311	20516450739	COMERCIAL JEAN CARLITOS HERMANOS SAC	JR. TOMAS MOYA NRO. 601 (ALTURA DEL EX CINE ESTRELLA) LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
312	20516724022	SERVICORD J.A. S.A.C.	JR. LOS TORNOS NRO. 180 URB. NARANJAL LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
313	20516903113	GRUPO DE GESTION C S.A.	AV. EL POLO NRO. 397 (4 PISO) LIMA - LIMA - SANTIAGO DE SURCO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
314	20517025730	SEKIARE COMERCIAL S.A.C.	JR. ANCASH NRO. 775 (GALERIA EXITO ESPALDA DEL CONGRESO) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
315	20517660249	SEGURIDAD INDUSTRIAL GABIC E.I.R.L.	AV. GUILLERMO DANSEY NRO. 510 INT. Z1-4 (CC BELLOTA ENTRE JR. ASCOPE Y AV. DANSEY) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
316	20517876098	PLASTICOS MARITE E.I.R.L	JR. UCAYALI NRO. 649 INT. 799 (ENTRE JR.UCAYALI Y JR.AYACUCHO) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
317	20518243692	KARLY'S SOLUTIONS S.A.C.	AV. MRCAL OSCAR R BENAVIDES NRO. 248 INT. 028 (ALT PLAZA DOS DE MAYO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
318	20518267010	MPORT & EXPORT CHING YUNG S.R.L	JR. CUZCO NRO. 724 (GALERIA CUZCO.) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
319	20518566351	CORPORACION MASIDER S.A.C.	JR. LOS TORNOS NRO. 185 URB. INDUSTRIAL EL NARANJAL (A ESPALDA DE LA FABRICA PURINA)LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
320	20520530216	INDUSTRIAL K & M PERU SAC	AV. ARGENTINA NRO. 301 CC LA BELLOTA (TDA Z-10) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
321	20520563068	XEROTEX S.A.C.	AV. ARGENTINA NRO. 523 INT. G-18 (BOULEVARD PLAZA ACOPROM) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
322	20520695720	SEGURIDAD INDUSTRIAL ROCA FUERTE E.I.R.L.	AV. ARGENTINA NRO. 215 INT. BT11 (PASAJE 33 CENTRO COMERCIAL NICOLINI) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
323	20520714457	PROTECH DEL PERU S.A.C	CAL.JOSE MARIA MORELOS NRO. 248 URB. MARANGA (ALT.CUADRA 3 DE AV PIO XII A ESPALDAS)LIMA - LIMA - SAN MIGUEL		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
324	20521041570	FERRETERIA INDUSTRIAL D´LUCIA E.I.R.L.	AV. REP. ARGENTINA NRO. 339 INT. 12,5 (PABELLON A-2, CDRA.5 DE GUILLERMO DANSEY) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
325	20521161982	GRUPO INDUSTRIAL MEEJ SRL	AV. ARGENTINA NRO. 327 INT. L2 (CENTRO COMERCIAL LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
326	20521319799	IMER SOPORTES S.A.C.	AV. AVIACION NRO. 1512 (FRENTE OVALO ARRIOLA) LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
327	20521340305	TEXTILE HOSSANNA TRADING S.R.L	JR. MANUEL PARDO NRO. 435 BARRIOS ALTOS LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
329	20521383969	ARIES EQUIPOS TEXTILES SRL	CAL. ELOY REATEGUI NRO. 536 URB. SAN AMADEO DE GARAGAY (TOMA VALLE CON GERMAN AGUIRRE) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
330	20521405369	SERVICENTRO GREEN PLACE S.A.C.	AV. PERU NRO. 3398 URB. PERU LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
331	20521710323	GRUPO TELECOM S.A.C.	JR. CONRAY GRANDE NRO. 4909 INT. PI 2 URB. EL PARQUE NARANJAL ET 2 LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
332	20521730197	NEGOCIACIONES CHUP EIRL	AV. HUANUCO NRO. 1389 DPTO. 10 URB. LA VICTORIA LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
333	20521833247	CRISANGEL S.R.L.	AV. REPÚBLICA ARGENTINA NRO. 327 INT. 16 UNIDAD INMOBILIARIA NRO 7 (C.C. LA BELLOTA, PASAJE 5, PAB H) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
334	20522330541	G Y B METALES S.A.C.	AV. GUILLERMO DANSEY NRO. 1171 URB. ZONA INDUSTRIAL LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
378	20543123936	PASAMANERIA ALICIA E.I.R.L.	R. ANTONIO BAZO NRO. 754 INT. 6 LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
335	20522529207	DIMARI TOTAL SECURITY E.I.R.L.	AV. PROCERES DE LA INDEPENDEN NRO. 3000 INT. H-5 URB. CANTO REY (CENTRO COMERCIAL MULTIPLAZA PROCERES) LIMA - LIMA - SAN JUAN DE LURIGANCHO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
336	20522544001	Grupo Forte S.A.C	JR. BAJADA BALTA NRO. 169 (PISO 13) LIMA - LIMA - MIRAFLORES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
337	20522869644	FERRETERIA GUDISA EIRL	AV. GERARDO UNGER NRO. 4499 INT. 69 LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
338	20522949320	PLASTIMAX PERU S.A.C.	JR. HUALLAGA NRO. 650 INT. 820 URB. CERCADO DE LIMA (MERCADO CENTRAL RAMON CASTILLA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
339	20523115945	ENERGIA Y SERVICIOS PERU S.A.C.	AV. MICAELA BASTIDAS MZA. C-5 LOTE. 12 GRU. 31 (TERCER SECTOR) LIMA - LIMA - VILLA EL SALVADOR		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
340	20523211821	CORPORACION ERICK S.R.L.	CAL.DUBLIN NRO. 167 URB. LOS PORTALES JAVIER PRADO (ETAPA Y)LIMA - LIMA - ATE		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
341	20523339975	MPORTACIONES A & V MOTOR S.A.C	AV. ARGENTINA NRO. 501 INT. F-08(ALT CUADRA 5 AV ARGENTINA)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
342	20523482000	INVERSIONES HNOS. FERNANDEZ S.A.C.	AV. LOS PROCERES NRO. 7659 URB. PRO 5TO SECTOR I ETAPA (ALT KM 22 PANAMERICANA NORTE) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
343	20523706803	PETRO EXPLORIUM S.A.C.	CAL.MARCOS NICOLINI NRO. 251 URB. SANTA CATALINA (CRUCE AV AVIACION Y AV DEL AIRE)LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
344	20523728521	SAFEWORK PERU S.A.C.	AV. PRINCIPAL NRO. 377 DPTO. 201 (CDRA 23 ANGAMOS ESTE)LIMA - LIMA - SURQUILLO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
345	20523785169	CONFECCIONES GENERALES ZEGARRA S.A.C.	AV. ARGENTINA NRO. 523 INT. A09 (C.C. BOULEVARD PLAZA ACOPROM) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
346	20523786483	TRANSPORTES QULLA S.A.C.	UNIDAD CATASTRAL 10041 NRO. S/N AGROPECUARIA VILLA RICA LIMA - LIMA - VILLA EL SALVADOR		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
347	20523832698	HALCO S.A.C.	MLC. DE LA MARINA NRO. 538 DPTO. 1101 LIMA - LIMA - MIRAFLORES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
348	20524280419	GRUPO ALMONACID S.A.C	AV. PROCERES MZA. NN2 LOTE. 5 URB. PUERTA DE PRO (ENTRE AV HUANDOY Y AV 2 DE OCTUBRE) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
349	20524388376	C & E GRIFOS S.A.C.	AV. UNIVERSITARIA CDR. 52 MZA. P LOTE. 1 URB. VILLA UNIVERSITARIA (CRUCE AVS. MARAñON Y UNIVERSITARIA)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
350	20525036635	INVERSIONES DAR YAC MOTOR S.R.L.	AV. GERARDO UNGER NRO. 4567 URB. NARANJAL INDUSTRIAL (FRENTE ESTACION METROPOLITANO.Nª4567 C)LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
351	20525150331	PROSEPACK S.A.C.	CAL. I MZA. Q LOTE. 1O URB. ZARATE INDUSTRIAL (AV.LOMAS 780) LIMA - LIMA - SAN JUAN DE LURIGANCHO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
352	20525150683	ESTACION DE SERVICIOS OTOÑO S.A.C	AV. PROCERES MZA. A LOTE. 40 A.H. LOS JAZMINES (OVALO DE HUANDOY) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
353	20527292035	GASAL INGENIEROS SRL	AV. MANCO CAPAC NRO. 574 (LADO DE COMERCIAL TELLO VENTA DE MOTOS)APURIMAC - ANDAHUAYLAS - TALAVERA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
354	20530682197	ESTACION DE SERVICIOS GRIFO SANTA EULALIA S.R.L.	AV. UNIVERSITARIA SN-1-3 MZA. A LOTE. 24 A.H. 19 DE MAYO (LTES.24-26 - CRUCE AV.NARANJAL Y AV.UNIV) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
355	20535646407	INVERSIONES JIMELU S.A.C.	AV. ARGENTINA NRO. 327 INT. 7-H1 C.C. LA BELLOTA (PJE.SECUNDARIO 17) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
357	20536190610	TARWEX IMPORT S.A.C.	JR. CUZCO NRO. 716 INT. 320 (ESQ. CON ANDAHUAYLAS)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
358	20536557858	HOMECENTERS PERUANOS S.A.	AV. AVIACION NRO. 2405(PISO 5)LIMA - LIMA - SAN BORJA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
359	20536606573	TRAILER GAS S.A.C.	AV. PROLONGACION PRIMAVERA NRO. 120 DPTO. A316 LIMA - LIMA - SANTIAGO DE SURCO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
360	20536637371	IMPRENTA & PUBLICIDAD CISNEROS S.R.L	AV. BOLIVIA NRO. 126 (FRENTE AL REAL PLAZA - EX CENTRO CIVICO)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
361	20536644408	INDUSTRIAS STRONG S.A.C.	JR. MANUEL MATTOS NRO. 441 (ALT. CUADRA 10 DE TOMAS VALLE)LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
362	20536783432	DISTRIBUIDORA H & H MIRANDA S.A.C.	JR. LEONCIO PRADO NRO. 723 (ALT DE LA COMISARIA) LIMA - LIMA - SURQUILLO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
363	20536805428	ER INDUSTRIAL TOOLS SAC	AV. ARGENTINA NRO. 523 INT. F-7 (ASOC. DE COMER. PROP. DE LAS MALVINAS) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
364	20536808524	CORPORACION SAKURAZA & ZURICH S.A.C	ZAMORA NRO. 143 (ALT PLAZA DOS DE MAYO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
365	20536905481	MAGUZA SEGURIDAD INDUSTRIAL E.I.R.L.	AV. IQUITOS NRO. 104 DPTO. 108 LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
366	20537433583	AIRES DEL MUNDO PERU S.A.C	JR. GALAXIAS NRO. 2711 URB. GANIMEDES (ALTURA DEL PARADERO SAN CARLOS)LIMA - LIMA - SAN JUAN DE LURIGANCHO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
367	20537569728	TRITON COMBUSTIBLE SOCIEDAD ANONIMA CERRADA - TRITON COMBUSTIBLES S.A.C.	VELASCO ASTETE NRO. 1961 DPTO. 201 URB. LAS GARDENIAS LIMA - LIMA - SANTIAGO DE SURCO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
368	20537850265	ORION UNIVERSE SAC	JR. AYACUCHO NRO. 178 BARRIOS ALTOS (ALT CONGRESO) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
371	20538022811	COMANDO GRUPO INDUSTRIAL SOCIEDAD ANONIMA CERRADA	CAL. MANCO INCA NRO. 999 DPTO. F (EX CALLE MARISCAL CASTILLA) LIMA - LIMA - RIMAC		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
372	20538026213	M & L INDUSTRIAL PEPE E.I.R.L	AV. ARGENTINA NRO. 327 C.C. LA BELLOTA (TDA 13-14 PAB. X1 AV. GUILLERMO DANSEY 4) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
373	20538461904	INVERSIONES Y NEGOCIOS YOLANDA E.I.R.L.	AV. ANGELICA GAMARRA MZA. I LOTE. 11C LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
374	20538525210	APORTECNICA S.A.C.	AV. AV. OSCAR R. BENAVIDES NRO. 1465 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
375	20538708560	POWER AUTOMATISMO INDUSTRIALES E.I.R.L	AV. ARGENTINA NRO. 327 INT. E 7 C.COMERCIAL LA BELLOTA (C.COMERCIAL LA BELLOTA PJE 3 INT E 7)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
376	20538888363	CONFECCIONES Y PRODUCTOS DE SEGURIDAD INDUSTRIAL S.A.C. - CPROSEIN S.A.C.	AV. ARGENTINA NRO. 327 INT. H1-1 (CENTRO COMERCIAL LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
377	20539694376	REPRESENTACIONES Y DISTRIBUCIONES BENSAN EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA	AV. JESUS NRO. 298 INT. 2 (ASC. DE PEQ. MICROEMPRE LAS MALVINAS)AREQUIPA - AREQUIPA - AREQUIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
911	71099406	MARIO MAICOL ALTAMIRANO ORE		\N	1	1	2017-04-24 03:18:38.718919	2017-04-24 03:19:15.959908	\N
379	20543363228	RT SOLUCIONES S.A.C	CAL. LOS TULIPANES NRO. 619 URB. LA PRIMAVERA (CEMENTERIO PADRE ETERNO) LIMA - LIMA - EL AGUSTINO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
380	20543492117	ARGYM SPORT LINE S.A.C	JR. DOLAR MZA. 140A LOTE. 13 A.H. UPIS HUASCAR DE CANTO GRA (ALT COLEGIO FE Y ALEGRIA N 25)LIMA - LIMA - SAN JUAN DE LURIGANCHO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
381	20543935809	M & S SEGURINDUSTRIAS SOCIEDAD ANONIMA CERRADA	AV. ARGENTINA NRO. 327 INT. K9 (PASAJE 9 - CENTRO COMERCIAL LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
382	20544086848	INKATOOLS INDUSTRIAL A & F S.A.C	MZA. H LOTE. 8 URB. SAN HILARION ALTO LIMA - LIMA - SAN JUAN DE LURIGANCHO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
383	20544285298	DISTRIBUIDORA QUIRO S.A.C	MZA. L LOTE. 27 VALLE CHILLON (PTE ENSENADA)LIMA - LIMA - PUENTE PIEDRA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
384	20544289790	SEGURIDAD INDUSTRIAL JREJ SAC	BOLOGNESI NRO. 523 INT. 8 (A MEDIA CDRA DE MUNICIPIO DE BELLAVISTA) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - BELLAVISTA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
385	20544322916	FLORES & HNOS SEGURIDAD INDUSTRIAL S.A.C	CAL. CALLE 39 MZA. R4 LOTE. 8 URB. PUERTA DE PRO (ESPALDA COLEGIO 2025 INM. CONCEPCION) LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
386	20544517504	ARSIDHUNSA S.R.L	AV. ARGENTINA NRO. 215 INT. BE17(C.C. NICOLINI PSJE. 1 - AV. G. DANSEY)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
387	20544631544	DISTRIBUIDORA LEANDRA EIRL	AV. CAQUETA NRO. 1300 INT. 18 AS COMER MER VIRRREY AMAT (AS COMERC. MERC. VIRRREY AMAT) LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
388	20544771397	INDUSTRIAS ERICK S.A.C.	CAL.VIZCARDO Y GUZMAN JUAN P MZA. Z LOTE. 04 A.H. SOL NACIENTE III (COMISARIA EL PROGRESO)LIMA - LIMA - CARABAYLLO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
389	20544795148	SERVICIOS TEDURCON S.R.L.	CAL.S/N MZA. H LOTE. 22 URB. LA PRADERA DE SANTA ANITA (ALT. CHANCAS Y ENCALADA MERCADO PRADERAS)LIMA - LIMA - SANTA ANITA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
390	20544942035	REDES DIGITALES S.A.C. - REDIGITAL S.A.C.	AV. TUPAC AMARU NRO. 7809 URB. SAN JUAN BAUTISTA ETAPA1 (FRENTE AL HOSPITAL SERGIO BERNALES)LIMA - LIMA - COMAS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
391	20545054184	ACERGLA E.I.R.L.	AV. ROSA DE AMERICA NRO. 712 ASOC.ROSA DE AMERICA (ALT.AV.MAESTRO PERUANO) LIMA - LIMA - COMAS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
392	20545129702	DISTRIBUIDORA INDUSTRIAL VELSUR EIRL	AV. ARGENTINA NRO. 327 INT. REF (PABELLON M PUESTO NRO.8) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
393	20545141664	SECURITY WORK BME SRL	AV. ARGENTINA NRO. 327 INT. G1-3 (C.C BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
394	20545229162	CORPORACION HAROLD & SERVICIOS GENERALES S.R.L.	AV. GUILLERMO DANSEY NRO. 524 INT. 16 (PAB. U1, PSJE. 2 PRINCIPAL CC LA BELLOTA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
395	20545521149	C & M PROSEINFER PERU S.A.C	AV. ARGENTINA NRO. 339 INT. 6-G1 (PASAJE 16 C.C. BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
396	20545660343	INVERSIONES Y NEGOCIACIONES CASTRO E.I.R.L.	GRAU NRO. 242 INT. A (CDRA 2 DE GRAU) LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
397	20545687977	CORPORACION J Y F INDUSTRIAS E.I.R.L	AV. ARGENTINA NRO. 301 INT. H1-6 (C.C. LA BELLOTA PASAJE 17) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
398	20545832144	A & G ASOCIADOS GAVINSA S.A.C.	AV. ARGENTINA NRO. 451 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
399	20546285449	INVERSIONES Y NEGOCIACIONES MUNDO REAL E.I.R.L.	CAL. ALEXANDER VON HUMBOLT NRO. 1218 DPTO. 11  LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
400	20546397328	MACROPRODUCTS PERU S.R.L	JR. ALAVA NRO. 245 URB. JAVIER PRADO LIMA - LIMA - SAN LUIS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
401	20546464700	ARAISA INDUSTRIAL S.A.C.	AV. ARGENTINA PSJ.42 NRO. 215 INT. BL11 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
402	20546619088	SANFLOR FARMIN S.A.C.	AV. GERARDO UNGER MZA. A LOTE. 01 URB. IND.INFANTAS (CRUCE DE UNIVERSITARIA Y GERARDO UNGER)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
403	20546759505	F & NMV INVERSIONES S.A.C.	CAL.GENERAL MENDIBURU NRO. 1007 URB. SANTA CRUZ (ESQ.CON CALLE MATEO PUMACAHUA)LIMA - LIMA - MIRAFLORES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
404	20546982751	EPP SEGURIDAD S.A.C.	JR. MANUEL ALANZA NRO. 2508 URB. LAS BRISAS CERCADO DE LIM (ALT. CRUCE AV. ALBORADA Y AV. BERTELLO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
405	20547109504	MORI SECURITY LINE E.I.R.L.	AV. PACASMAYO NRO. S/N INT. G1-5 (C.C. LA BELLOTA CDRA. 4 PASAJE 16) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
406	20547432119	ANZEN S.A.C.	AV. ARGENTINA NRO. 327 INT. M1-6 CTRO COMERCIAL LA BELLOTA LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
407	20547537131	Consorcio Kiafer S.A.C	CAL. 14 MZA. P2 LOTE. 13 URB. SAN DIEGO LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
408	20547902794	SKYNER SAFETY PERU SOCIEDAD ANONIMA CERRADA SKYNER SAFETY PERU S.A.C.	AV. ARGENTINA NRO. 327 INT. 8H C.C. LAS BELLOTAS LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
409	20548010170	INVERSIONES DELUC E.I.R.L.	JR. MIGUEL ZAMORA NRO. 156 INT. 11 ASOC. C.C. INTER-PLAZA (A MEDIA CDRA DE LA PLAZA 2 DE MAYO)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
410	20548386382	INVERSIONES NICOLLE & JASMIN E.I.R.L.	JR. EL CHACO NRO. 1333LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
411	20548619581	CALZAPLASTIC SAC	JR. RAMON ESPINOZA NRO. 980 (ALT.AV.PROCERES CDRA 2) LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
412	20548683913	NUEVO HORIZONTE DEL NORTE SOCIEDAD ANONIMA CERRADA	AV. GERARDO UNGER NRO. 5099 URB. INDUSTRIAL NARANJAL (ALT. COLEGIO APRUEVO)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
413	20548733104	COEGA EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA - COEGA E.I.R.L	JR. LOS TORNOS NRO. 134 INT. 1 CC MEGANORTE (PABELLON B) LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
414	20548980705	MANIOFORT S.A.C.	AV. GENERAL BORGOÑO NRO. 450 (ALT. CDRA. 12 DE LA AV. BRASIL) LIMA - LIMA - PUEBLO LIBRE (MAGDALENA VIEJA)		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
415	20549033165	CORPORACION MAKITO S.A.C	AV. ARGENTINA NRO. 327 INT. N-12 URB. CERCADO DE LIMA (PASAJE 9 CENTRO COMERCIAL BELLOTA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
416	20549132147	GRUPO VIMARSA S.A.C.	SIN VIA MZA. G LOTE. 5 ASOC.SAN JUAN SEÑOR DE LA LIMA - LIMA - PUENTE PIEDRA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
417	20549369741	CAME IMPORTACIONES S.R.L.	AV. ARGENTINA NRO. 215 INT. BK-1(CC NICOLINI PJE 43)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
418	20549410139	INNOVACIONES DE PRODUCTOS METALICOS SOCIEDAD ANONIMA CERRADA	PARCELA II MZA. B1 LOTE. 03 P.IND PARQUE INDUSTRIAL (ALT. 1RA CDRA AV SOLIDARIDAD)LIMA - LIMA - VILLA EL SALVADOR		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
419	20549553240	PRO-TECH SAFETY E.I.R.L. - PROTSA E.I.R.L.	AV. ARGENTINA NRO. 215 DPTO. PS31 INT. BU12 (ALT 4 HUAROCHIRI CON GUILLERMO DANSEY) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
420	20549603794	INVERSIONES H & P SOLUCIONES EN EPI SAC	AV. GUILLERMO DANSEY NRO. 524 INT. A21 CC LAS BELLOTAS LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
421	20549706682	T & L PERU S.A.C.	AV. ARGENTINA NRO. 339 INT. D-6 (C.C. LA BELLOTA LAS MALVINAS) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
422	20549802720	INVERSIONES YIN & MAR PERU E.I.R.L.	CAL. 11 MZA. BBB5 LOTE. 11 URB. PRO 5º SECTOR (2º Y 3º ETAPA) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
423	20549897763	VIDA SEGURA S.A.C	SC 2 MZA. M LOTE. 20 GRU. 26 (SECTOR 2) LIMA - LIMA - VILLA EL SALVADOR		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
424	20550564808	INSEGMEC E.I.R.L.	AV. GUILLERMO DANSEY NRO. 415 INT. M-6 C.C NICOLINI (2DO PISO)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
425	20550656672	BONYPERU E.I.R.L.	JR. HUAROCHIRI NRO. 215 PASAJE 42 PUESTO BL 9 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
426	20550741351	J & S INDUSTRIAL JEANPIERO S.A.C.	AV. ARGENTINA NRO. 327 C.C. LA BELLOTA (JR ASCOPE CDRA. 4 TDA Z-9) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
427	20550759561	JADI IMPORTACIONES E.I.R.L.	AV. ARGENTINA NRO. 215 INT. AY22 CENTRO COMERCIAL NICOLINI (ALTURA POLICLINICO CASTILLA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
428	20551257836	APOYO LOGISTIC S.A.C.	AV. ALEJANDRO IGLESIAS NRO. 770 LIMA - LIMA - CHORRILLOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
429	20551371370	AS PROTECTOR E.I.R.L.	AV. ARGENTINA NRO. 327 (STAND L1-8 CENTRO COMERCIAL LA BELLOTA -) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
430	20551455808	JMSR INGENIEROS CONTRATISTAS GENERALES S.A.C.	MZA. J LOTE. 2A URB. HUERTOS DE NARANJAL (ESP.DE LA AV.CANTA CALLAO LAD OESTE) LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
431	20551615856	INVERSIONES JIARA S.A.C.	AV. ESTEBAN CAMPODONICO NRO. 262 URB. SANTA CATALINA LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
432	20552009631	J & Z CORPORACION DE ARTICULOS DE SEGURIDAD INDUSTRIAL E.I.R.L.	AV. ARGENTINA NRO. 327 INT. S1 Z.I. C.C.LA BELLOTA (PSJ.3 PRINCIPAL OVALO DE LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
433	20552127839	IMPORTADORA EXPORTADORA TAO TAO SOCIEDAD ANONIMA CERRADA	AV. ALMTE MIGUEL GRAU NRO. 218 CERCADO LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
434	20552427395	INDUSTRIAS CYN NAVARRO S.A.C.	JR. RAMON ESPINOZA NRO. 810 (1ER PISO) LIMA - LIMA - RIMAC		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
435	20552430001	FIORELLA Y CIA S.R.L.	AV. ARGENTINA NRO. 327 INT. P14 (PSJ.G CC LA BELLOTA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
436	20552489234	SEGURIDAD INDUSTRIAL MAFE E.I.R.L.	JR. PACASMAYO CDRA. 4 NRO. S/N INT. 11 (C.C. LA BELLOTA - STAND L1- INT. 11) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
437	20552490321	V & C SEGURIDAD INDUSTRIAL E.I.R.L.	JR. PACASMAYO INT. L1 - 19 NRO. S/N (AV. ARGENTINA CDRA. 4 - C.C. LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
438	20552490836	INVERSIONES CHAYANE & H.N. E.I.R.L.	AV. MEJICO NRO. 1720 (CRUSE CON PARINACOCHAS) LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
439	20552532857	FERRESEG E.I.R.L.	AV. ARGENTINA NRO. 327 INT. L1-1 (C.C. LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
440	20552611307	ARCHROMA PERU S.A.	AV. LOS FRUTALES NRO. 111 URB. LOS ARTESANOS (CRUCE DE AV. LOS FRUTALES Y C. CENTRAL) LIMA - LIMA - ATE		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
441	20552636989	T & F RUBBER INDUSTRIAL S.A.C.	CAL.RAMON CARCAMO NRO. 536 INT. A (ALTURA CUADRA 7 AV. COLONIAL)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
442	20553176159	SEGINDABRA E.I.R.L.	CAL.LUIS F. VILLARAN NRO. 293 LIMA - LIMA - SAN ISIDRO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
443	20553269084	SEGURIDAD INDUSTRIAL BETTY E.I.R.L.	AV. GUILLERMO DANSEY NRO. 524 INT. 4-A2 (PJ. 2 CC.LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
444	20553303797	SEGURIDAD INDUSTRIAL FERRETERA ALBERTO & SONIA E.I.R.L. - SIFAS E.I.R.L.	AV. REP.ARGENTINA NRO. 301 INT. N-2 (C.C LA BELLOTA PASAJE 10)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
445	20553438536	CONSORCIO HAROLD & CIA S.R.L.	AV. ARGENTINA NRO. 327 INT. 2-B (PSJ. 1 PRINC. CC LA BELLOTA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
446	20553459886	H & B ELECTRONIC S.A.C.	AV. ARGENTINA NRO. 344 INT. J-70 BL J (BLOCK J)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
447	20553549877	A Y P FERRETERIA EN GENERAL S.A.C.	AV. GUILLERMO DANSEY NRO. 524 INT. 3A-2 (PARALELA A A LA AV. COLONIAL) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
448	20553553122	LONYA E.I.R.L	CAL. LOS TORNOS NRO. 171 URB. INDUSTRIAL NARANJAL (ALT. PURINA) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
449	20553699925	ALIMSEGCOMERCIAL E.I.R.L.	AV. ARGENTINA NRO. 327 C.C LA BELLOTA (TDA 3 L1 JR. PACASMAYO CDRA 4)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
450	20554366903	INDPROPER SAC	PJ. LOS CAPULIES NRO. 135 URB. MICAELA BASTIDAS (ALTURA CDRA 40 ALFREDO MENDIOLA) LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
451	20554389601	CORPORACION RYNHO SUM S.R.L.	AV. ARGENTINA NRO. 327 INT. G1-2 (C.C. BELLOTA-PACASMAYO PASAJE 16) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
452	20554413758	SEGURIDAD INDUSTRIAL RAFAELITO E.I.R.L.	JR. LAS GARDENIAS MZA. B LOTE. 4 URB. SAN JOSE (3ER PISO - ESPALDA DE PARQUE SAN JOSE) LIMA - LIMA - EL AGUSTINO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
453	20554680365	DHINSEG E.I.R.L.	AV. ARGENTINA NRO. 215 INT. M-8 (C.C. NICOLINI 2D0. PISO - AV. G. DANSEY)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
454	20555019395	PROVEEDORES INDUSTRIALES EMANUEL E.I.R.L.	AV. GUILLERMO DANSEY 524 NRO. 8-B2 C.C. LA BELLOTA LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
455	20555100672	DISTRIBUIDORA FERRETERA LIMA IMPORT E.I.R.L.	JR. HUIRACOCHA NRO. 1430 DPTO. 404 LIMA - LIMA - JESUS MARIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
456	20555277254	PROTMASTER EQUIPOS DE PROTECCION Y RESCATE S.A.	JR. MIGUEL ZAMORA NRO. 156 INT. 5 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
457	20555364220	MAXSEGURIDAD S.A.C.	JR. SAN ORLANDO NRO. 915 URB. PALAO II LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
458	20555746262	ARCO WELDING FER E.I.R.L.	AV. ARGENTINA NRO. 327 INT. E1 (INTERIOR E1-1D)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
459	20555807741	SOLUCION EPI Y FERRETERIA S.A.C.	JR. RIO CHOTANO NRO. 5315 URB. VILLA DEL NORTE (ALT. MERCADO VILLA DEL NORTE)LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
905	20601585767	RHINO PLAST S.A.C.	CAL.PARQUE INDUSTRIAL EL ASESOR MZA. N LOTE. 4 LIMA - LIMA - ATE	\N	1	1	2017-04-21 18:13:56.183431	2017-04-21 18:13:56.183431	\N
460	20555901250	TECNOLOGIA MULTIMEDIA PERU E.I.R.L.	CAL.JUAN VOTO BERNALES NRO. 129 (ALT. CDRA. 5 Y 6 DE CANADA)LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
461	20556040029	D'CAMARGO INDUSTRIAL S.A.C.	AV. ARGENTINA NRO. 327 INT. 6-H1 (C.C. LA BELLOTA PSJE. 17 SECUNDARIO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
462	20556096679	GILBERTO SALIRROSAS PEÑA E.I.R.L.	JR. EL ESTAÑO NRO. 5508 URB. INDUSTRIAL INFANTAS LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
463	20556125521	SEGURIDAD INDUSTRIAL MERRIK PERU S.A.C.	AV. ARGENTINA NRO. 639 INT. C016 C.C. UDAMPE CALLE 3 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
464	20556141640	E & G ELECTRONICA INVERSIONES S.A.C.	AV. ARGENTINA NRO. 344 DPTO. J-94LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
465	20556533564	SUMINISTROS INDUSTRIALES MARITA S.R.L.	JR. LA CATOLICA MZA. P LOTE. 36 URB. VILLA UNIVERSITARIA (CDRA.52 AV.UNIVERSITARIA)LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
466	20556608084	INVERSIONES LUIS FABIANO S.A.C.	JR. ASCOPE NRO. S/N PUESTO A -11 C.C. BELLOTA (CUADRA 3 AV. ARGENTINA)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
467	20556707147	LUMA'S IMPORT SOCIEDAD ANONIMA CERRADA - LUMA'S IMPORT S.A.C.	CAL.CAJAMARCA NRO. 3641 DPTO. 3 (ALT. CDRA 36 DE LA AV PERU.)LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
468	20556832715	SEGURIDAD INDUSTRIAL ARPESA E.I.R.L.	AV. REPUBLICA ARGENTINA NRO. 327 INT. 1 CC LA BELLOTA PAB.R1 (GUILLERMO DANSEY CDRA.5 ESQ. PACASMAYO 4)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
469	20557239074	GRUPO FACHING SAC	JR. BERNARDO PUMAYALLI NRO. 150 URB. LOS OLIVOS LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
470	20557451294	INVERSIONES REALIV S.A.C.-REALIV S.A.C.	AV. ARGENTINA NRO. 523 URB. LIMA INDUSTRIAL (C.C ACOPROM)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
471	20557991728	CONSORCIO PAPELERO JS S.A.C.	AV. CAQUETA NRO. 467 INT. 242 (COSTADO MERCADO UNICACHI) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
472	20558251655	SEGUSUR SAFETY E.I.R.L.	CAL.LAS CASUARINAS MZA. B LOTE. 8 P.J. LA RINCONADA ZONA A (A ESPALDAS DEL ESTADIO LAS RINCONADA)AREQUIPA - AREQUIPA - MARIANO MELGAR		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
473	20558326256	R & B SEGURIMAX E.I.R.L.	AV. VIRGEN DEL PILAR MZA. A INT. 5 URB. VIRGEN DEL PILAR (C.C DON MANUEL PUERTA 1) AREQUIPA - AREQUIPA - AREQUIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
474	20559268918	R & B SEGURIDAD E.I.R.L.	AV. VIRGEN DEL PILAR MZA. A URB. VIRGEN DEL PILAR (PUERTA 1, SECT 1. C.C DON MANUEL STAND 6) AREQUIPA - AREQUIPA - AREQUIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
475	20562978128	INDUSTRIAS YE-KAT E.I.R.L.	JR. RAMON ESPINOZA NRO. 810 (2º PISO) LIMA - LIMA - RIMAC		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
476	20563647061	MINA SOL S.A.C.	 AV. ARGENTINA NRO. 327 INT. M1-1(TDA. 1 C.C. LA BELLOTA PSJE SEC. 21)LIMA - LIMA - LIMA 		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
477	20564038688	DISTRIBUCIONES FERRENOR EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA-DISTRIBUCIONES FERRENOR E.I.R	AV. HUAYRUROPATA NRO. 1105(ALTURA DE LA REGION)CUSCO - CUSCO - WANCHAQ		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
478	20564061230	ISO SEGURIDAD INDUSTRIAL SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA-ISO SEGURIDAD INDUSTRIAL S.R	AV. MANCO CCAPAC NRO. 923A(1ER PISO HUAYRUROPATA)CUSCO - CUSCO - WANCHAQ		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
479	20564121232	SEGURIDAD INDUSTRIAL IMPERIAL E.I.R.L.	AV. HUAYRUROPATA NRO. 1202(FRENT INST. LATINO X REGION FERRET IMPER)CUSCO - CUSCO - WANCHAQ		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
480	20565433840	ABASTECEDORES DE EPP S.A.C.	CAL.RIO GRANDE NRO. 254 LOS GERANIOS (AL COSTADO DE POSTA MEDICA LOS GERANIOS)LIMA - LIMA - COMAS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
481	20565559436	INVERSIONES ANTOLEY E.I.R.L.	AV. ARGENTINA NRO. 575 INT. A-6 (PASAJE A CENTRO COMERCIAL LA CHIMENEA)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
482	20565718500	ALBINDU S.A.C.	CAL. LAS DALIAS NRO. 161 INT. A URB. ARMENDARIZ (PARALELA CDRA 11 AV LARCO) LIMA - LIMA - MIRAFLORES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
483	20565804929	MEGA SAFETY E.I.R.L.	JR. MIGUEL ZAMORA NRO. 169 (CRUCE AV GUILLERMO DANSEY CON HUAROCHIRI)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
484	20600017153	JMK FERRETERIA Y EQUIPOS S.A.C.	AV. GUILLERMO DANSEY NRO. 459 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
485	20600024508	CORPORACION RIVADENEYRA S.A.C.	AV. ARGENTINA NRO. 144 INT. AL12 URB. CERCADO DE LIMA (NIVEL A)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
486	20600068530	PROMACEM SOCIEDAD ANONIMA - PROMACEM S.A.	AV. HHUAYRUROPATA NRO. 1032 URB. HUAYRUROPATA CUSCO - CUSCO - WANCHAQ		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
487	20600106890	INVERSIONES Y NEGOCIACIONES ALFAPERU E.I.R.L.	AV. ARGENTINA NRO. 215 INT. BU19 CENTRO C.NICOLINI PSJ. 32 (ALTURA CDRA. 4 DE AV. GUILLERMO DANSEY)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
488	20600107713	DISTRIBUIDORA TILCHE S.R.L.	AV. JESUS NRO. 298 INT. 237 C.C. LAS MALVINAS (INTERSECCION AV. JESUS CON LA AV. LIMA)AREQUIPA - AREQUIPA - AREQUIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
490	20600109597	INVERSIONES SILVA PALOMINO E.I.R.L.	AV. ARGENTINA NRO. 327 INT. 5 H1(CENTRO COMERCIAL LA BELLOTA)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
491	20600188543	MANUFACTURA AMERICANA DE SEGURIDAD Y FILTROS S.A.C.	AV. GERARDO UNGER NRO. 1057(FRENTE A LA PÚERTA 6 DE LA UNI)LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
492	20600243862	IMSEGMET S.A.C.	AV. HUAYRUROPATA NRO. 1011(ALADO D TDA LA PROVEEDORA 1ER P.)CUSCO - CUSCO - WANCHAQ		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
493	20600327888	IMPORTSELU E.I.R.L.	AV. ARGENTINA NRO. 327 INT. X1 (PJE 1 PRINCIPAL TDA X1-11A CC.LA BELLOTA)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
494	20600349229	PERSEO INGENIEROS Y ARQUITECTOS S.A.C.	AV. PRIMAVERA NRO. 120 INT. 424 URB. CHACARILLA DEL ESTANQUE LIMA - LIMA - SANTIAGO DE SURCO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
495	20600583957	MANIOCENTER E.I.R.L.	JR. ASCOPE NRO. 525 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
496	20600590821	BUSINESS MILPLAS E.I.R.L.	----UCAYALI NRO. 649 INT. 821 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
497	20600608127	MULTILLANTAS AQUINO S.A.C.	AV. CORDIALIDAD MZA. VV 2 LOTE. 14 URB. LA FLORESTA DE PRO (ANTES DEL PUENTE ENCENADA)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
498	20600644930	LV REPRESENTACIONES SAFETY S.A.C.	GRAU NRO. 290 INT. 104 LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
499	20600672461	DISTRIBUIDORA COMERCIAL MAXINI E.I.R.L.	CAL.EL CHACO NRO. 1333 URB. PERU (ALT.CDRA.13 AV.PERU)LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
501	20600743113	GRUPO DE INVERSIONES LUNA E.I.R.L.	AV. ARGENTINA NRO. 339 (INT L1-24 GUILLERMO DANSEY CON PACASMAYO)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
502	20600869559	M & S INDUSTRIAL FERRETERO EIRL	CAL.PACASMAYO NRO. 4 INT. L1-2 CC LA BELLOTA LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
503	20600876466	A&J INVERSIONES NAOMI S.A.C.	AV. GUILLERMO DANSEY PSJE.SECUNDARIO 08 NRO. 596 INT. 8-1Q(CENTRO COMERCIAL LA BELLOTA 1ER.PISO)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
504		FUNDICION DIONICIO de Isaac Dionicio Antonio e Hijo	telf: 3750357/138*1155		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
505	10053965534	MOZOMBITE CANAYO MEDER	AV. ARGENTINA NRO. 339 INT. 24 C.C.LA BELLOTA BLOCK L1 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
506	10074085267	PALOMINO MENDOZA ELIZABETH PILAR	AV. ARGENTINA NRO. 339 DPTO. H1 (STAND 8 - CC. LA BELLOTA - LAS MALVINAS) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
507	10084669119	SIFUENTES MONZON DE RAMIREZ REYNERIA DOMINGA	AV. LA CORDIALIDAD MZA. VV2 LOTE. 02 ASOC SANTA MARIA (ALT. DE COLCHONES PARAISO) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
510	10094796607	VENTURA PEREZ MELANIA ELENA	AV. GRAU NRO. 286 INT. 111 URB. PUENTE IQUITOS (HOSPITAL DE SALUD GRAU) LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
511	anular 10101546573	anular PUCAHUARANGA AGUILAR ROCIO FABIOLA	AV. GUILLERMO DANSEY NRO. 354 INT. H-6 (GALERIA FERRETERO EL BOULEVAR) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
512	10106954726	PISCOYA CHIGUALA ROXANA	AV. ARGENTINA NRO. 327 (C.C. LA BELLOTA PJE SECUND.13 PSTO L1-20) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
513	10107313503	LINARES GARCIA JEANS	JR. MIGUEL ZAMORA NRO. 123 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
514	10166637011	SANCHEZ FLORES MARIA DEL ROSARIO	AV. ARGENTINA NRO. 477 INT. 124 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
515	10400539737	PERALTA VELAZCO SAUL	AV. CANTA CALLAO MZA. R1 LOTE. 18 URB. VIRGEN DEL ROSARIO (ALT. PARADERO HOSPEDAJE) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
516	10418920551	FERNANDEZ QUIROZ GIANNI JONEL	AV. GERARDO UNGER NRO. 4499 INT. 21 Z.I. URB. IND. NARANJAL (ASOC. COMERC. 2 DE DICIEMBRE) LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
517	10754368239	LAURA ALVAREZ RAQUEL NOEMI	AV. GUILLERMO DANSEY NRO. 524 INT. 7-B2 C.C. LA BELLOTA (PSJE. 2 SECUNDARIO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
518	20263992629	LIDER GAS E.I.R.L.	AV. LOS CIPRECES MZA. J LOTE. 7 URB. INDUSTRIAL LOTIZ.CHILLON LIMA - LIMA - PUENTE PIEDRA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
923	20600929039	GRUPO RALL SECURITY S.A.C.	AV. GUILLERMO DANSEY NRO. 828 INT. E117 URB. LIMA INDUSTRIAL LIMA - LIMA - LIMA	\N	1	1	2017-06-16 22:08:52.945585	2017-06-16 22:08:52.945585	\N
521	20466453162	INVERSIONES SANTA FELICIA S.A.C	JR. HUANCABAMBA NRO. 1426 (ALT 7 MARIANO CORNEJO/ESQ CON ORBEGOSO) LIMA - LIMA - BREÑA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
523	20482167145	EQUIPROT S.R.L.	AV. AMERICA NORTE NRO. 1525 URB. LAS QUINTANAS LA LIBERTAD - TRUJILLO - TRUJILLO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
524	20511995028	GAZEL PERU S.A.C	AV. JORGE BASADRE NRO. 350 LIMA - LIMA - SAN ISIDRO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
525	20515124218	CEDIVE S.A.C.	CAL. LOS METALES NRO. 120 URB. INDUSTRIAL BOCANEGRA PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
526	20518612566	PROYINDUSTRIAL S.A.C.	JR. CALISTEMO NRO. 940 INT. 01 URB. LAS PALMERAS (ALT TELEFONICA DE LAS PALMERAS X IGLESIA) LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
528	20536210661	DISTRIBUIDORA PAPER MARINA S.A.C.	JR. AZANGARO NRO. 664 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
529	20537991756	IMPORTADOR Y DISTRIBUIDOR V & M S.A.C. - IDV & M S.A.C.	CAL. ASCOPE NRO. 504 (A LA SEGUNDA CDRA. DE LA COLONIAL) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
530	20538236889	SEGURIDAD INDUSTRIAL DIGABI E.I.R.L	AV. ARGENTINA NRO. 215 INT. BI-4 LAS MALVINAS A-1 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
532	20550128145	DASEGUR S.A.C.	PJ. SANTA ROSA MZA. MZ 1 LOTE. 14 A P.J. VILLA HUANTA (AV. SANTA ROSA Y LOS BAMBUES) LIMA - LIMA - SAN JUAN DE LURIGANCHO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
533	20554534466	CORPORACIONES DM & WW S.A.C.	GRAU NRO. 298 INT. 101 LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
535	20563497239	INVERSIONES VALERY PLASTIC E.I.R.L.	JR. UCAYALI NRO. 649 INT. 867 (TERCER NIVEL) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
536	cel:  991695283	PNP PAZ   (POLICIA)			2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
537	cel:  993543138	PNP BERNAOLA   (POLICIA)			2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
580	10086139630	RAMIREZ SOTO CARLOS	MZA. B LOTE. 7 A.H. 19 DE MAYO (ALTURA DE OVALO HUANDOY) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
581	10088427802	QUIROZ SANCHEZ VICTOR RAUL	AV. NUEVA TOMAS MARSANO NRO. 1501 URB. AURORA ESTE, II ETAPA (CEN.COM.TOMAS MARSANO-ALT ROQUE Y BOLOGN)LIMA - LIMA - SURQUILLO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
582	10090245878	LIMACHE PARRA EUSEBIO ADRIAN	AV. ALFREDO MENDIOLA NRO. 3875 URB. PANAMERICANA NORTE LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
583	10092169516	RAMIREZ BUSTAMANTE MOISES	AV. ARGENTINA NRO. 3093 INT. 61 (GALERIA 1, PABELLON 2, LOCAL 61, MINKA.) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
584	10095933667	CANAHUILLE CRUZ ANA YSABEL	AV. CAQUETA NRO. 1300 ---- ASOC MERCD.VIRREY AMAT (EL NUM DE PUERTA ES 1300A.STAND 19)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
586	10096260585	AYMARA SARMIENTO FLORANGEL	AV. CORDIALIDAD NRO. 8185 URB. LA FLORESTA DE PRO (22.5 PANAM.NORTE) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
587	10207260148	BARZOLA ESTEBAN VICER LIDER	AV. ARGENTINA NRO. 215 PJE 10, PSTO AX-11 (C.C. NICOLINI) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
588	10410104186	HERRERA HERRERA EDITH	AV. ABANCAY NRO. 346 INT. 148 (CASONA DE LA VIRREINA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
589	10452257977	HUAMAN TTITO BERNABE	AV. PROCERES NRO. 1098 INT. 3 (CAQUETA) LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
590	20100274621	TAI HENG S A	JR. UCAYALI NRO. 706 ---- CERCADO DE LIMA (MECADO CENTRAL CALLE CAPON)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
591	20108730294	MAYORSA S.A.	AV. EL POLO NRO. 670 DPTO. 803 (C.COMERCIAL EL POLO II, BLOCK C, PISO 8) LIMA - LIMA - SANTIAGO DE SURCO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
592	20111355526	FISHER INT. CO. S.R.L.	AV. MALECON CHECA EGUIGUREN M NRO. 1097 LIMA - LIMA - SAN JUAN DE LURIGANCHO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
593	20131191040	CORPORACION DE SERVICENTROS S.A.C.	AV. ELMER FAUCETT NRO. 2998 PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
594	20250218606	CIA FERRETERA VIRGEN DEL ROSARIO S.R.L	AV. CESAR CANEVARO NRO. 244 (ZONA C) LIMA - LIMA - SAN JUAN DE MIRAFLORES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
595	20267061069	EMP IND COM Y DE SERV MATILDE LEON S.A.	AV. TUPAC AMARU NRO. 4820 COO. VIV SANTA LIGIA LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
596	20267910813	INDUSTRIAL TEXTIL ACUARIO SA	AV. PROLONGACION PARINACOCHA NRO. 1180 LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
597	20297945964	NEGOCIACION JIMMART S.R.L.	AV. SANTA CATALINA NRO. 006 (ALT CDRA 7 DE AV CANADA)LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
598	20398018410	EMPRESA DE SERVICIOS CHAN CHAN S.A.	AV. LA MARINA NRO. 225 URB. SAN VICENTE LA LIBERTAD - TRUJILLO - TRUJILLO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
599	20451828275	JP TIRE S.A.C	MZA. D LOTE. 7 URB. NARANJAL (ALTURA CUADRA 13 AV. NARANJAL) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
600	20459310488	NEGOCIACIONES COMERCIALES SANTA OLGA SAC	MZA. H LOTE. 24 COO. VIV.HUANCAYO LTDA 218 (CDRA 24 AV J.C.MARIATEGUI GRIFO STA OLGA) LIMA - LIMA - EL AGUSTINO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
601	20459743759	INVERSIONES RALU E.I.R.L.	AV. GARCILAZO DE LA VEGA NRO. 1251 INT. 215 GALERIA COMPUPLAZA LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
602	20471584941	COMERCIAL PLASTIMAX S.R.L.	NRO. MZ J INT. LT10 URB. PRO INDUSTRIAL (ALT PUENTE CHILLON-CARRET PANAM NORTE) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
603	20479111091	FIMEDY S.R.L.	JR. QUILLABAMBA NRO. 144 URB. TAHUANTINSUYO (CURVA CHABUCA CON SICUANI) LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
604	20492711668	ADC RODAMIENTOS S.A.C.	CAL. RAMON CARCAMO NRO. 554 COO. NIÑO JESUS (ALT.CDRA.6 AV.R,BENAVIDES) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
605	20502954602	INDUSTRIA DE ALIMENTOS HILDA'S S.A.C.	AV. NARANJAL NRO. 1499 URB. PARQUE NARANJAL LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
606	20508036354	FERRETERIA LEON SAC	AV. ARGENTINA NRO. 477 INT. 116 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
607	20509831531	GRUPO TIZZA SAC	Av. Tomas Valle		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
608	20520840169	IMPORTADORA AUTOMOTRIZ MEDRANO S.A.C	JR. LOS TALLERES NRO. 4630 URB. NARANJAL LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
609	20522958078	BEMCHO S.A.C.	ENRIQUE VILLAR NRO. 316 (ALTURA 12 AV. PETIT THOUARS) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
610	20523634209	W & J EFISERVIS E.I.R.L.	CAL. ASCOPE NRO. 535 INT. 3 PI (3ER PISO - ALT. CUADRA 2 AV. COLONIAL) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
611	20536836498	SANG SANG TEX S.A.C.	JR. ANCASH NRO. 773 (ESP DEL CONGRESO) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
612	20538761703	CONTRUCHOUSE S.A.C.	AV. PIRAMIDE DEL SOL NRO. 432 URB. ZARATE (ALT. 7 AV. GRAN CHIMU) LIMA - LIMA - SAN JUAN DE LURIGANCHO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
613	20544941144	VAL'E ZO'E CORPORACION S.A.C.	JR. ANCASH NRO. 777 INT. 104 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
614	20550358817	CORPORACION PLASTICOS MARITE S.A.C.	JR. UCAYALI NRO. 649 INT. 799 (2DO PISO) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
615	20550372640	RUTAS DE LIMA S.A.C.	AV. VICTOR ANDRES BELAUNDE NRO. 280 LIMA - LIMA - SAN ISIDRO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
616	20555180170	MULTI INDUSTRIAS ATOMPLAST S.A.C	JR. AYACUCHO NRO. 186 URB. CERCADO DE LIMA (ALT. CUADRA 6 DEL JR. ANCASH) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
617	20555824671	CORPORACION SURPLASTIC E.I.R.L	AV. ARGENTINA NRO. 327 INT. B-15 (C.C. LA BELLOTA) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
618	20557375768	PUBLIGARMENT S.A.C.	JR. UNION NRO. 375 A.H. JC MRTG (A 6 CDRAS DE COMISARIA DE VILLA MARIA) LIMA - LIMA - VILLA MARIA DEL TRIUNFO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
619	20557872630	PROMELIN S.A.C.	AV. ARGENTINA NRO. 215 PJE 8, PSTO S-7 (C.C. NICOLINI) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
620	20563497239	INVERSIONES VALERY PLASTIC E.I.R.L.	JR. UCAYALI NRO. 649 INT. 867 (TERCER NIVEL) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
621	20566008506	IMPORT TOOLS PERUMAC E.I.R.L.	AV. REPUBLICA DE ARGENTINA NRO. 469 INT. 105 (ALT. PLAZA UNION) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
622	0	sn2	#N/A		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
1043	10407543241	ALCOSER CORDOVA MIGUEL ZENON		\N	1	1	2018-04-18 18:41:09.046284	2018-04-18 18:41:09.046284	3
625	10079749872	REYES TORRES JOSE ANTONIO	MZA. W LOTE. 14 COO. VIV ALBINO HERRERA (CRUCE DE LA AV. JAPON Y BOCANEGRA) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
626	10097337590	VENTURA PORRAS RICARDO	GRAU NRO. 290 INT. 104 LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
627	10101546573	PUCAHUARANGA AGUILAR ROCIO FABIOLA	AV. GUILLERMO DANSEY NRO. 354 INT. REF (AV.GUILLERMO DANSEY 354 STAND A02 2DO NI) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
628	10105142531	BURNES MEDINA ROGER HUILI	AV. ARGENTINA NRO. 327 INT. Q12 CC BELLOTA (PASAJE 5) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
629	10206770339	MAITA HUAMAN MARIO ALEJANDRO	JR. RAMON ESPINOZA NRO. 810A (AV FCO PIZARRO CDRA 1-MCDO MATERIALES) LIMA - LIMA - RIMAC		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
630	10417470561	TIZON CAMPOS PATRICIA INES	AV. ARGENTINA NRO. 523 INT. E-26 (CENTRO COMERCIAL ACOPROM) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
631	10440302021	DONGO CONDO RAUL ALFRED	AV. ARGENTINA NRO. 639 INT. B157 (B157 Y B158 C.COMERCIAL UDAMPE CALLE 12) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
632	10450950047	CRISPIN GAMARRA VIVIANA VERONICA	AV. ARGENTINA NRO. 327 INT. 9 (CENTRO COMERCIAL LA BELLOTA STAND J-4) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
633	10453493143	URCO HUAMAN ERIKSON ADHERLY	AV. ARGENTINA NRO. 215 INT. BO14 C.C. NICOLINI (PSJE 37 FRENTGE AL SEGURO CASTILLA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
634	10458283694	CASTRO TORRES CRISTIAN ALFREDO	MZA. F17 LOTE. 17 A.H. 10 DE OCTUBRE (ALT PDRO 5 MARISCAL CACERES) LIMA - LIMA - SAN JUAN DE LURIGANCHO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
635	10471991029	RISCO VENTURA WILLIANS ROLANDO	AV. GRAU NRO. 292 LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
636	10475176605	CUADROS ZAVALA LUIS ESTEBAN	AV. ARGENTINA NRO. 301 (PASAJE SEGUNDARIO 3 - NRO. 9E) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
637	10480460885	AGUIRRE VALERO CRISTIAN FERNANDO	AV. GUILLERMO DANSEY NRO. 828 INT. REF CALLE 10 (AV.GUILLERMO DANSEY 828 CA.10 INT.E056B)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
638	10738916366	BORDA DERTEANO MANUEL IGNACIO	CAL. SANTA CRUZ MZA. C1 LOTE. 39 URB. CEDROS DE VILLA LIMA - LIMA - CHORRILLOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
639	20167930868	PTS S.A	AV. LOS FRUTALES NRO. 945 LIMA - LIMA - LA MOLINA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
912	0000000	Bertha Vasquez 		\N	1	1	2017-04-24 03:28:28.880576	2017-04-24 03:28:28.880576	\N
640	20392731106	CABLE NORTE S.A.C.	JR. CONRAY GRANDE NRO. 4909 URB. PARQUE EL NARANJAL (3ER PISO) LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
641	20519141044	D & D INGENIEROS SOCIEDAD ANONIMA CERRADA - D & D INGENIEROS S.A.C.	JR. SALAVERRY NRO. 545B (ALT.CDRA.42 DE PASERO DE LA REPUBLICA) LIMA - LIMA - SURQUILLO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
642	20523962044	INDUSTRIAS DE SEGURIDAD DEL PERU SOCIEDAD ANONIMA CERRADA - INDESPERU S.A.C.	JR. HIPOLITO UNANUE NRO. 140 APV LOS LIBERTADORES (ALT. CDRA. 22 AV. ANG. GAMARRA) LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
643	20538236889	SEGURIDAD INDUSTRIAL DIGABI E.I.R.L	AV. ARGENTINA NRO. 215 INT. BN-9 CENTRO COMERCIAL NICOLINI (C.C. NICOLINI PASAJE 40 PUESTO BN9) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
644	20543928691	CALLUPE CORMAN FRANCISCA EUGENIA	AV. ARGENTINA PSJ 3 PRINCIPAL NRO. 327 INT. R11 C.C LA BELLOTA LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
645	20547253966	SYMA PREVENCIONES S.A.C.	AV. GERARDO UNGER MZA. A LOTE. 19 URB. LOTIZACION IND INFANTAS (AV. EL ZING CON GERARDO UNGER) LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
646	20547531010	INVERSIONES SPARTAKUS S.A.C.	AV. ARGENTINA NRO. 639 INT. A095 C.C. UDAMPE (CALLE 4 DEL C.C. UDAMPE) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
647	20553751862	STAR CONTROL E.I.R.L.	JR. ARIADNA NRO. 382 URB. SANTA MARIA (ALT CDRA 12 DE AV. PROCERES) LIMA - LIMA - SANTIAGO DE SURCO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
648	20554582606	BBAJ SEGURIDAD INDUSTRIAL E.I.R.L.	AV. ARGENTINA NRO. 327 INT. G12 (C.COMERCIAL BELLOTA PASAJE PRINCIPAL 3) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
649	20554893512	MARLED M & R IMPORT E.I.R.L.	ZONA P - UCV 191 LOTE. 29 A.H. HUAYCAN LIMA - LIMA - ATE		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
650	20556805581	GRUPO SEGURA S.A.C.	CAL. GENERAL VARELA NRO. 385B URB. CHACRA COLORADA LIMA - LIMA - BREÑA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
651	20557122398	GRUPO VALERO L & J E.I.R.L.	AV. ARGENTINA NRO. 639 INT. D196 C.C COMERCIAL UDANPE (CALLE 8) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
652	20557167227	CORPORACION INJEZA DEL PERU SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA	NICOLAS DE PIEROLA NRO. 812 (ALT KM 11 AV TUPAC AMARU CDRA 13 AV PUNO) LIMA - LIMA - COMAS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
653	20557572679	T & G PERU INDUSTRIAL E.I.R.L.	CAL. LOS CEDROS MZA. A12 LOTE. 2 URB. BOCANEGRA PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
654	20565670621	TRADING SHOP ARIAN E.I.R.L.	JR. GUILLERMO DANSEY NRO. 524 INT. 3-A2 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
655	20600053575	CORPORACION SILVA DEL PERU E.I.R.L.	PJ. SECUND. 18 AV. ARGENTINA NRO. 301 INT. M10 C.C. LA BELLOTA (CRUCE CON ASCOPE) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
656	20600150287	A & N INDUSTRIAL S.A.C.	AV. ARGENTINA NRO. 327 INT. N-4 (C. COMERCIAL LA BELLOTA PSJ. 10) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
657	20600155688	GEOS CONSULTORES ASESORES Y ASOCIADOS S.A.C.	JR. RAFAEL MUÑOZ NRO. 398 URB. INGENIERIA (CRUCE CON DARIO VALDIZAN)LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
658	6	sn6			1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
659	7	sn7			1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
660	10068785672	GUTIERREZ TERNERO ROBERTO	AV. LOS INCAS CON AV. SINCHI ROCA MZA. A LOTE. 18 URB. SAN JUAN BAUTISTA LIMA - LIMA - COMAS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
661	20467015347	HIPER DEPORTE S.A.C.	AV. LARCO NRO. 1301 DPTO. 301 (EDIF.TORRE PARQUE MAR)LIMA - LIMA - MIRAFLORES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
663	10461744449	VILLALOBOS DIAZ MAGALI	AV. ARGENTINA NRO. 327 INT. F-9 (C.C. BELLOTA - PASAJE 4)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
664	20600467281	SEGURIDAD INDUSTRIAL THIAGO SOCIEDAD ANONIMA CERRADA SEGURIDAD INDUSTRIAL THIAGO S.A.C.	AV. ARGENTINA NRO. 327 PASAJE 17 INT. H1-1 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
665	10467069883	CRISPIN APOLIN GREGORIO	AV. ARGENTINA PASAJE 32 NRO. 215 INT. BU 9 CENTRO COMERCIAL NICOLINI LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
666	10433463183	NUÑEZ GUERRA EDSON EDUARDO	AV. GUILLERMO DANSEY NRO. 596 INT. 8-R1(A LA ESPALDA DE AV. ARGENTINA 300)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
667	20510772297	PANEL SHOCK S.A.C.	JR. ROSARIO DEL SOLAR NRO. 448 URB. SAN JUAN (PARALELA AV CANEVARO POR HOSPIT ESSALUD)LIMA - LIMA - SAN JUAN DE MIRAFLORES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
668	10405488472	VALERO OCAÑO MERCEDES ESTELA	AV. ARGENTINA 327-329 BLOQUE L113 NRO. 327 C.C LA BELLOTA (PSJ 19 L113 PASCAMAYO)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
669	20100016177	CIA.IMPORT.DE RPTOS.EL PROGRESO S.A.C.	AV. MANCO CAPAC NRO. 287 LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
670	20474544924	GRIFO AñO NUEVO S.A.C.	AV. TUPAC AMARU NRO. 4902 URB. SAN HILARION LIMA - LIMA - COMAS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
672	20482247840	SERVICIOS MULTIPLES ACUARIO E.I.R.L.	MZA. A1 LOTE. 01 URB. SANTA TERESITA LA LIBERTAD - ASCOPE - CASA GRANDE		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
673	20439519551	VICENTE DELFIN CABADA S.A.	AV. LA MARINA NRO. 1160 (OVALO GRAU) LA LIBERTAD - TRUJILLO - TRUJILLO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
674	20549799834	ALIMARPE S.A.C	AV. ARGENTINA NRO. 3257 INT. 40 (GALERIA 1 PABELLON 05 MULTIMERCADO MINKA) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
675	10108630235	CARDENAS CISNEROS VIANNEY LIZBET	AV. GERARDO UNGER 4483 NRO. 4493 INT. 14 URB. NARANJAL (ASOC.2 DE DICIEMBRE/PTO.14/KM6.5 T.AMARU) LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
676	10296931972	CASAZOLA LOPEZ TIBURCIA	AV. HEROES DEL ALTO CENEPA MZA. 01 LOTE. 36 URB. EL ALAMO (ALT.AV.TRAPICHE-PARADERO EL ALAMO) LIMA - LIMA - COMAS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
677	20552987005	CAMASCA HIDRAULICOS E.I.R.L.	CAL. TALADROS NRO. 101A URB. NARANJAL INDUSTRIAL (ALT. MERCADO INCA-ESTABLO LA 50) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
678	20296136728	ALTOS ANDES S.A.C	AV. TOMAS MARSANO NRO. 402 LIMA - LIMA - SURQUILLO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
679	20557503278	R & C SERVICE CORPORATIONS S.A.C.	AV. CARLOS IZAGUIRRE MZA. A LOTE. 03 ASOC CAJABAMBA LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
680	20501420949	MULTISERVICIOS SANTA URSULA S.A.C.	AV. CENTRAL / AV. HUANDOY MZA. H LOTE. 13 ASOC. VIV. URB. SAN ROQUE LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
681	20387477463	MIOLENA S.A.	MZA. F LOTE. 19 APV. ASOC. BRISAS DE STA ROSA LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
682	20509496219	INMOBILIARIA SOL INVEST PERU S.A.	AV. AVIACION NRO. 3401 (FRENTE A LA TORRES DE LIMATAMBO) LIMA - LIMA - SAN BORJA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
683	20511433020	ESTACION DE SERVICIOS GRIFO ALAMO E.I.R.L.	MZA. O LOTE. 22A ASOC DE VIV TRAB EL ALAMO (ALT DEL GRUPO 8) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
684	20477914056	IMPORTACIONES MAVEA MOTOR S.A.C.	AV. ARGENTINA NRO. 523 ---- CC BOULEVAR PLAZA ACOPROM LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
685	10097884841	ZUÑIGA RIVERO FLORINDA	AV. GERARDO UNGER NRO. 4499 URB. INDUSTRIAL (ASOC.PEQ.COM.2 DE DIC. 60-61-62)LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
686	20468260515	ANDY COLOR'S E.I.R.L	AV. NARANJAL NRO. 1091 URB. PARQUE NARANJAL (ALT PARQUE ZONAL YOQUE YUPANQUI)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
687	10418920551	FERNANDEZ QUIROZ GIANNI JONEL	AV. GERARDO UNGER NRO. 4487LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
688	15434350198	CUSI ZEBALLOS CASIANA	AV. ARGENTINA NRO. 639 (CALLE 5-GUILLERMO DANSEY 828)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
689	10415212726	ASTO HUARI CINTHIA DEYSI	CAL.LOS TALADROS NRO. 232 URB. INDUSTRIAL EL NARANJAL LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
690	20556053198	GRUPO B & E DEL PERU S.A.C.	AV. ARGENTINA NRO. 327 INT. I 8 C.C LA BELLOTA PAB.6 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
691	10081928539	VEGA VEGA JESUS EDGARDO	AV. ALFREDO MENDIOLA NRO. 3691 URB. PANAMERICANA NORTE (SEGUNDO PISO)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
692	20413719195	GLENOIL E.I.R.L.	AV. AREQUIPA NRO. S/N AREQUIPA - CARAVELI - ATICO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
693	20101286844	PULIDORES LIMA SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA	CAL.LOS TALADROS NRO. 167 URB. INDUSTRIAL NARANJAL (ALT.PARAD.ESTABLO KM 7 AV.TUPAC AMARU)LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
694	20548279039	CORGAS S.A.C.	LAS TORRES NRO. 497 URB. LOS SAUCES LIMA - LIMA - ATE		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
695	20504968058	INVERSIONES SATELITE S.A.C.	AV. PEDRO MIOTTA NRO. 800 ZONA INDUSTRIAL -UNIDAD A (ALTURA OVALO AMAUTA -ALTURA BELISARIO)LIMA - LIMA - SAN JUAN DE MIRAFLORES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
696	20382757981	INDUSTRIAS PLASTICAS CAUTE S.R.L.	CAL.VICTOR REYNEL NRO. 760 (CUADRA 20 AV. ARGENTINA)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
697	20471791068	INDUSTRIA PROCESADORA DEL PLASTICO SAC.	AV. INDUSTRIAL NRO. 3431 ZONA INDUSTRIAL (ESPALDA DE SENATI DE PANAM.NORTE)LIMA - LIMA - INDEPENDENCIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
698	10000874499	SERRUCHE VEGA LINO ENRIQUE	SECTOR 2 MZA. B LOTE. 01 GRU. 9 (ENTRE LA AV VELASCO ALVARADO Y CENTRAL)LIMA - LIMA - VILLA EL SALVADOR		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
699	20509753718	5 LUZ CORP. SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA	AV. ARGENTINA NRO. 215 (PJE. 5 Y 6 - PABELLON AN 1 Y 2)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
700	20550120594	AUTOMATIZACION & CONTRATISTAS GENERALES EDERMAR S.A.C.	AV. REPUBLICA DE ARGENTINA NRO. 215 INT. 12 C.C. NICOLINI (PABELLON BQ PTO 12 PSJE. 35)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
701	10802980821	CHAMBI ITO FELIPE	AV. CAQUETA NRO. 1300 INT. 105 (CENTRO COMERCIAL VIRREY AMAT)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
702	20553378886	CORPORACION ACEROS Y METALES CASTILLO E.I.R.L.	CAL.RICARDO TRENEMANN NRO. 809 URB. LIMA INDUSTRIAL LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
703	20538447405	CORPORACION LEO GLASS S.A.C.	AV. LOS PROCERES NRO. 7649 URB. PRO 5TO SECTOR I ETAPA (PRIMERA ENTRADA DE PRO)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
704	20553957991	ELCIMAQ IMPORT E.I.R.L.	AV. CAQUETA 1300 A NRO. . INT. 161 ASOC.COMMDO.VIRREY AMAT (FRENTE ESTACION DE BOMBEROS-CAQUETA)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
705	20512506721	NVERSIONES GENERALES C & M S.A.C.	AV. LA CORDIALIDAD NRO. 8086 URB. PRO ETAPA II (CRUCE AV LOS PROCERES Y AV CORDIALIDAD)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
706	10093192368	ROMAN OLIVA NERIDA YOLANDA	AV. PROCERES NRO. 1098 INT. 435 FED.DE COM SECT.CAQUETA (FRENTE POSTA MEDICA DE CAQUETA)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
707	20555502398	POLICLINICO LA GRAN FAMILIA S.A.C.	AV. TUPAC AMARU NRO. 174 A.H. LA MERCED (HOSPITAL SOLIDARIDAD DE COMAS)LIMA - LIMA - COMAS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
708	20514772194	HOSPITAL MUNICIPAL LOS OLIVOS	AV. NARANJAL NRO. 318 URB. INDUSTRIAL NARANJAL (CRUCE PANAM.NORT/AV NARANJAL(OVALO))LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
709	20520568370	MAGALLANES DEL PERU S.A.C.	AV. RAMON CARCAMO NRO. 552 INT. 143 URB. CARCAMO (ENTRE CARCAMO Y COLONIAL)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
710	20600702514	DISTRIBUIDOR DE RODAMIENTOS E.I.R.L.	AV. GUILLERMO DANSEY NRO. 354 INT. H6 (NIVEL 1 C.COMERCIAL BOULEVARD FERRETERO)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
711	20555733012	IMDI LA CASA DEL RETEN SOCIEDAD ANONIMA CERRADA	CAL.LAS PRENSAS NRO. 110 URB. IND. NARANJAL LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
712	20331066703	ECKERD PERU S.A.	AV. DEFENSORES DEL MORRO NRO. 1277LIMA - LIMA - CHORRILLOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
713	20555791306	HEBILLAS GIN & JES E.I.R.L.	JR. VIRREY AMAT NRO. 267 INT. 20 ASC. ASOCIACION DE COMERCIANTES DEL MCDO VIRREY AMAT (CUADRA 02 DE JIRÓN VIRREY AMAT)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
714	20545123330	CORPORACION VIAMARKET S.A.C.	JR. VIRREY AMAT NRO. 181 URB. 0508 (PISO 2)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
715	20101920721	COMERCIAL MONT S.A.C.	AV. EL POLO NRO. 706 INT. B127 URB. LIMA POLO HUNT LIMA - LIMA - SANTIAGO DE SURCO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
716	10434755943	CERMEÑO SANCHEZ JESSICA MILAGROS	AV. ELMER FAUCETT NRO. 3453 INT. F1 URB. AEROPUERTO FRENTE DE FEDE PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
717	20518838882	COMERCIAL LIGE EIRL	JR. ANCASH NRO. 777 INT. 101 (102)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
718	20556663930	CONSORCIO ERMEC S.A.C.	PJ. ANTONIO RAIMONDI NRO. 252 URB. VILLA LOS ANGELES (FRENTE A MEGA PLAZA)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
719	20473935407	ESTACION DE SERVICIOS LOS OLIVOS SOCIEDAD ANONIMA CERRADA	AV. UNIVERSITARIA MZA. A LOTE. 06 (ALT. CDRA 51 AV. UNIVERSITARIA)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
720	10439918204	LOPEZ PUICON BALTAZARA TERESA	JR. EL MANGANESO NRO. 260 URB. IND. INFANTAS LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
721	20536210661	DISTRIBUIDORA PAPER MARINA S.A.C.	AV. MANCO CAPAC NRO. 612 INT. TDA1LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
723	20338621214	RODAMIENTOS SALAS SRL	AV. TOMAS VALLE NRO. 2951 URB. EL CONDOR PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
724	20546980546	PARI'S GROUP INVERSIONES E.I.R.L	AV. 28 DE JULIO NRO. 2492 INT. 466 (GALERIA GUIZADO - CUARTO PISO)LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
725	20558681404	PROTECCION TOTAL MDS E.I.R.L.	AV. VIRGEN DEL PILAR MZA. C INT. 3 (CCOMERCIALDONMANUELSECTOR 5 PUERTAPRINC)AREQUIPA - AREQUIPA - AREQUIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
726	10052672240	VELA DE PALACIOS NORA LUZ	AV. LA MARINA NRO. 1099(ENTRE TRUJILLO Y BORJA)LORETO - MAYNAS - PUNCHANA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
727	10297337616	DELGADO SALAS MARIA ANGELA	AV. VIRGEN DEL PILAR MZA. I LOTE. 11 INT. 4 (C.C. DON MANUEL)AREQUIPA - AREQUIPA - AREQUIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
728	20512745637	COMERCIAL EL MOLINO E.I.R.L.	MZA. A LOTE. 17 URB. EL MOLINO DE LOS OLIVOS (FTE AL PARQUE EL NARANJAL)LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
729	10465049494	HINOSTROZA LEON JOSE ANTONIO	AV. ISABEL LA CATOLICA NRO. 1176 INT. 104 URB. EL PORVENIR (PRIMER PISO)LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
730	20563608758	AFC IMPORT S.A.C.	JR. LOS TALADROS NRO. 130 URB. INDUSTRIAL NARANJAL (FAB PURINA EST NARANJAL METROPOLITANO)LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
731	20600534026	R & C HIDRAULICA S.A.C.	JR. LAS CORALINAS NRO. 860 INT. B COO. LAS FLORES (PISO 2 ALT. PDRO. 8 DE LA AV. LAS FLORES)LIMA - LIMA - SAN JUAN DE LURIGANCHO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
732	20547396309	MAKERTI E.I.R.L.	JR. MARISCAL RAMON CASTILLA NRO. 900 INT. B1 (ALT. CUADRA 13 AV. CAQUETA)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
733	10102947032	MAMANI CRUZ MATILDE	AV. CAQUETA NRO. 1400 INT. 183 CAQUETA (ALT.PARQUE DE TRABAJO)LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
734	10020475841	BARRANTES CALLATA ELOY	AV. ARGENTINA NRO. 327 INT. E11C CENTRO COMERCIAL BELLOTA (OVALO BELLOTA PASAJE 19 SECUNDARIO)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
735	20508607106	GASOCENTRO NORTE SOCIEDAD ANONIMA CERRADA	AV. GERARDO UNGER NRO. 3301 URB. HABILIT.INDUST.PAN.NORTE (FTE.A COMISARIA INDEP./EX GRIFO MOSQUITO)LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
736	10081349482	BENVENUTO MURGUIA MARIO GINO	AV. JUAN DE ARONA NRO. 545 URB. JARDIN LIMA - LIMA - SAN ISIDRO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
737	20264921148	DISTRIBUIDORA GUIMARAY SRL	JR. CALLAO NRO. 397 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
738	20101266819	CAMARA DE COMERCIO DE LIMA	AV. GIUSEPPE GARIBALDI NRO. 396 (382,386,398,AV SN. FELIPE 628-630 Y 640)LIMA - LIMA - JESUS MARIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
739	10424619626	VEGA SOLLER JHOEL	JR. HIPOLITO UNANUE NRO. 1571 INT. 602F URB. EL PORVENIR LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
740	20601092591	CORPORACION FERRETERIA ESTIBEN E.I.R.L.	PRO.PARINACOCHAS NRO. 962 URB. EL PORVENIR (A LA ALTURA DEL BC)LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
741	20600819063	COMERCIAL REPUESTERA EL ORIGINAL E.I.R.L.	AV. 28 DE JULIO NRO. 2492 INT. 931B URB. EL PORVENIR LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
742	20600968221	COMERCIAL FERRETERA P & M JHOANSO E.I.R.L.	CAL.LOS ALHELIES NRO. 274 COO. LA PRIMAVERA LIMA - LIMA - EL AGUSTINO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
743	20600805011	TOROINDUSTRIAS E.I.R.L.	DPTO. 101 URB. PARQUES DEL AGUSTINO (CONDOMINIO LOS EUCALIPTOS EDIFICIO 17)LIMA - LIMA - EL AGUSTINO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
744	20601241812	REPRESENTACIONES LLAHUAM E.I.R.L.	AV. LA CATOLICA NRO. 1176 DPTO. 104 LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
745	20600394437	MUNDO FERRETERA KASSANDRITA E.I.R.L.	JR. MONTERREY NRO. 358 (A DOS CUADRAS DE TIENDA ELECTRA)LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
746	20601018081	EDWINTEX E.I.R.L.	AV. ISABEL LA CATOLICA NRO. 1176 DPTO. 104 URB. EL PORVENIR (CRUCE CON LUCANAS)LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
747	20555652951	INVERSIONES Y NEGOCIACIONES EL PRECISO E.I.R.L	MZA. D LOTE. 2 A.H. 20 DE ENERO (ALTURA BENTRADA SAN FELIPE)LIMA - LIMA - COMAS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
748	20550749174	CHEGUITOTEX E.I.R.L.	JR. PROLONGACION HUANUCO NRO. 1773 INT. 143 (ALTURA DEL PARQUE CANEPA)LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
749	20600659368	MONSTER PUBLICITY E.I.R.L.	AV. EL CORTIJO NRO. 595 INT. 304 URB. HUERTOS DE SANTA ROSA (COSTADO CLUB FAP)LIMA - LIMA - SANTIAGO DE SURCO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
750	20544329503	HADVANCER S.A.C	AV. INCA GARCILASO DE LA VEGA NRO. 1250 INT. 206 URB. LIMA CERCADO LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
751	20551591141	DISTRIBUIDORA ACEROS BONI E.I.R.L.	 ALFREDO MENDIOLA NRO. 5794 URB. IND. INFANTAS LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
752	10062645232	PAUCAR CASTELLARES GERTRUDIZ	AV. GERARDO UNGER NRO. 4499 INT. 66 Z.I. NARARNJAL (FRENTE AL MERCADO LOS INCAS)LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
753	10412058092	MARTINEZ REVILLA JESUS ELMER	MZA. MM2 LOTE. 2 ASOC VIV SAN JAVIER (CRUCE DE AV PROCERES CON AV 2 DE OCTUBRE)LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
754	10742380926	GUZMAN CACERES ESTEFANI	JR. LOS TALLERES NRO. 4630 INT. B URB. INDUSTRIAL NARANJAL (ESPALDA DE LA FABRICA PURINA)LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
755	20511780412	SINAPSIS TRADING PERU SAC	AV. ELMER FAUCETT NRO. S/N (OFICINA ME-LC-55, AEROPUERTO J. CHAVEZ)PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
756	08234677	NAPOLEON VALDEZ FERRAND		boleta	1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
757	09186797	VITO RODRIGUEZ		boleta	1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
758	10040748313	CONDOR YACHACHIN REBECA ISABET	AV. REPUBLICA DE ARGENTINA NRO. 215 INT. BW14 (C.C. NICOLLINI - PASAJE 29) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
759	10080517021	FLORES QUISPE CIRILA GABRIELA	AV. AV. GERARDO UNGER NRO. 4499 INT. 64 Z.I. URB. INDUSTRIAL NARANJAL (ASOC. COMERCIANTES 2 DE DICIEMBRE) LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
760	10292401367	MARAZA HUAMANI CESAR JOSE	AV. CAQUETA NRO. 1300 INT. 154 (AV CAQUETA 1300 A STAND 154 Y STAND 91 B) LIMA - LIMA - RIMAC		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
761	10418249647	HUERTA CUSQUI ROXANA	AV. O.R BENAVIDES NRO. 213 (A 2CDRAS D PLAZA 2 DE MAYO) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
762	20372525496	PETROCORP S.A.	AV. ELMER FAUCETT NRO. 6000 (ESQUINA AV GAMBETA Y AV FAUCETT) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
763	20508074281	EXPRESO GRAEL SOCIEDAD ANONIMA CERRADA	AV. PROLONGACION ANDAHUAYLAS NRO. 699 INT. A LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
764	20550802245	SAN FELIPE CIA. INDUSTRIAL DEL PERU S.A.C.	AV. 25 DE ENERO NRO. 230 APV. PUEBLO DE INFANTAS LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
765	20554453466	SEGURIDAD INDUSTRIAL POLINARIO E.I.R.L.	AV. ARGENTINA NRO. 215 INT. 36 C.C NICOLINI PTO BP-4 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
766	20554759891	AUTOMOTRIZ EL ASTRO S.A.C.	AV. EDUARDO DE HABICH NRO. 321 URB. INGENIERIA LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
767	20601335272	IMPORTACIONES RIO SOCIEDAD ANONIMA	AV. AVIACION NRO. 1020 (MZ A- LT 16- CRUCE CON MEXICO) LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
768	20600384539	C & C CORPORACION FERRETERA DEL SUR E.I.R.L.	JR. 8 DE NOVIEMBRE NRO. 852 (MEDIA CDRA DE COMPLEJO LOLO FERNANDEZ) PUNO - SAN ROMAN - JULIACA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
769	20600376731	CONSULTORIA Y NEGOCIOS GENERALES DEL PERU SAC - COYNGE PERU SAC	MZA. B LOTE. 10A A.H. JUAN PABLO II (ALT. DEL PARADERO 19 DE LA AV. PERU) LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
770	20533191496	CORPORACION BARVISUR SOCIEDAD ANONIMA CERRADA - CORPORACION BARVISUR S.A.C.	MZA. 11 LOTE. 31 ASOC. LAS BEGONIAS (2 CDRAS DEL GRIFO SATELITE) TACNA - TACNA - CRL. GREG. ALBARRACIN LANCHIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
771	20448540406	EMPROTEC SUDAMERICANA S.A.C	JR. TUMBES NRO. 1237 BARRIO MANCO CAPAC (CERCADO) PUNO - SAN ROMAN - JULIACA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
772	20601299951	FERREINDUSTRIAS TARAZONA E.I.R.L.	AV. GUILLERMO DANSEY NRO. 520 INT. C2-9 (C.C. LA BELLOTA PSJE 2) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
773	10469196084	FLORES HUACHUVILCA SARAY	JR. ALONSO DE RINCON MZA. 12 LOTE. 28 A.H. EL PLANETA LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
774	10297067520	GARCIA CASTILLO LENIN KIM	MZA. Y LOTE. 6 URB. HOYOS RUBIO (A DOS CUADRAS DE LA IGLESIA CRISTO REY) AREQUIPA - AREQUIPA - ALTO SELVA ALEGRE		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
775	20537682290	IMAWA PERU SOCIEDAD ANONIMA CERRADA - IMAWA PERU S.A.C.	JR. MANUEL QUIMPER NRO. 200 CAQUETA (PARQUE DEL TRABAJO) LIMA - LIMA - SAN MARTIN DE PORRES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
776	20536452169	INTEGRAL PROJECT SRL	CAL.MAGDA PORTAL NRO. 190 URB. PROLONGACIÓN BENAVIDES (CRUCE AV.T. MARSANO Y CAMINO DEL INCA) LIMA - LIMA - SANTIAGO DE SURCO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
777	20601350034	JTS DISTRIBUIDORA COMERCIAL E.I.R.L.	AV. JESUS NRO. 298 INT. 112 MEGA CENTRO LAS MALVINAS (1ER.NIVEL) AREQUIPA - AREQUIPA - AREQUIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
778	20548082162	LIDERSIDSA E.I.R.L.	AV. ARGENTINA NRO. 215 INT. BW13 (C.C. NICOLINI PSJE. 30) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
779	10207203888	LOPEZ SEDANO HILDA ANA	AV. ARGENTINA NRO. 301 INT. 9E PSJ. SECUNDARIO 03 C.C LAS BELLOTAS LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
780	10047445804	MAQUERA QUISPE MALENA DANISA	CAL.A. A. CACERES NRO. 235 (COMERCIAL VICTORIA - TIENDA D 02) MOQUEGUA - MARISCAL NIETO - MOQUEGUA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
781	10447903933	PEREZ ROJAS ERLITA	AV. LUIS GONZALES NRO. 1555 URB. SAN LUIS (AL COSTADO DE IDAT) LAMBAYEQUE - CHICLAYO - CHICLAYO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
782	20601500001	PROVEEDORES ELOHIM E.I.R.L.	AV. ARGENTINA NRO. 523 INT. K 23 (C.C ACOPROM) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
783	10457235793	PUCAHUARANGA MIÑANO ELIANA MARIBEL	JR. 28 DE JULIO NRO. 116 INT. 16A CMT. VEC. TUPAC AMARU (2DO SCT. OVALO 28 DE JULIO.) LIMA - LIMA - INDEPENDENCIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
784	20601073871	SEIPOL SAFETY E.I.R.L.	AV. GUILLERMO DANSEY NRO. 414 INT. BV17 (CENTRO COMERCIAL NICOLINI) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
785	10094348337	VILLANTOY MORENO HUGO ISAAC	AV. NICOLAS DE PIEROLA NRO. 326 URB. LIMA CERCADO LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
786	10068767712	TABOADA ALMORA VICENTE C	AV. UNIVERSITARIA NORTE NRO. 8403 COO. VIV PRIMAVERA (AV JAMAICA Y AV UNIVERSITARIA NORTE) LIMA - LIMA - COMAS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
787	10095077132	ACUÑA CORTEZ DANIEL ALBERTO	JR. PARURO NRO. 1389 INT. B (GALERIAS PARURO) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
788	20100466458	ELECTRO ARTEAGA SRL	AV. ROOSVELT NRO. 389 LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
790	20100652596	COMERCIAL CONTE S.A.C.	AV. SEPARADORA INDUSTRIAL NRO. 1591 URB. INDUSTRIAL SAN FRANCISCO LIMA - LIMA - ATE		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
791	20545488265	CORPORACION INDUSTRIAL G.A.B. S.A.C.	JR. HUALLAGA NRO. 650 INT. PI.1 (MEZANINE) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
792	20555091312	CLAYDA S.A.C.	AV. ARGENTINA NRO. 3093 INT. 64 (LOCAL 64, GALERIA 3, PABELLON 2 CC MINKA) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
793	10068284983	SILVA HORNA MARIA TERESA	AV. ARGENTINA NRO. 327 INT. L1-8 URB. CERCADO DE LIMA (AV. PACASMAYO CDRA. 4 - CC LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
794	10071608072	PACHECO RETUERTO BRENER AMADOR	AV. ARGENTINA 215 TDA BÑ 15-17 KM. 0 INT. PJ39 CENTRO COMERC NICOLINI (COSTADO CLINICA CASTILLA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
795	10095491273	VILLAFANA MEDINA JAVIER MANUEL	MZA. C-1 LOTE. 5 A.H. SEÑOR DE LOS MILAGROS (ALT. CEI 612 SR. DE LOS MILAGROS) LIMA - LIMA - PUENTE PIEDRA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
796	10442825535	ORBEGOSO MONTENEGRO ROSA ARASELY	AV. F MZA. F LOTE. 28 ASC. ALBORADA DE OQUENDO I (AL COSTADO DE LAS PICINAS DE OQUENDO) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
797	10452790977	VILLANTOY MORENO VIRGINIA DEL PILAR	AV. NICOLAS DE PIEROLA NRO. 326 URB. LIMA CERCADO LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
798	10471811390	AGUILAR DELGADO ALFONSINA	AV. ARGENTINA NRO. 327 (PJ. SECUNDARIO 13 PST. L1-23) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
799	10768321413	VENTURA CARDENAS LUCERO PAMELA	AV. ARGENTINA NRO. 639 INT. A007 (CALLE 3 C.C. UDAMPE) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
800	20544241835	CALUMA INVERSIONES S.A.C	AV. LOS TUSILAGOS NRO. 465 URB. LAS VIOLETAS LIMA - LIMA - SAN JUAN DE LURIGANCHO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
801	20600769481	JIREH SEGURIDAD INDUSTRIAL S.A.C.	AV. GUILLERMO DANSEY NRO. 354 INT. H9 (C.C.ELECTROFERRETERO BOULEVARD 2DO.NIVEL) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
802	20601009006	INVERSIONES YE-KAT E.I.R.L.	NRO. 327 INT. L-7 AV. PACASMAYO Y AV. ARGENTINA (C.C LA BELLOTA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
803	20601164133	CORPORACION COMIMSI E.I.R.L.	JR. TUPAC AMARU NRO. 1574 (A ESPALDAS DEL COLEGIO MANCO CAPAC) PUNO - SAN ROMAN - JULIACA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
804	20601317185	DV INVERSIONES GENERALES S.R.L.	CAL.URB. ALVAREZ THOMAS MZA. F LOTE. 4 OTR. MANUEL BELGRANO (1 CUADRA ANTES DE AV. LAMBRAMANI) AREQUIPA - AREQUIPA - AREQUIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
805	20601399483	SWAP SEGURIDAD INDUSTRIAL E.I.R.L.	JR. CHINCHON NRO. 875 DPTO. 202 LIMA - LIMA - SAN ISIDRO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
806	20601458811	HERRAMIENTAS & SEGURIDAD CHICLAYO E.I.R.L.	AV. LUIS GONZALES NRO. 1555 URB. SAN LUIS LAMBAYEQUE - CHICLAYO - CHICLAYO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
807	20601497078	INDUSTRIA KATHY E.I.R.L	AV. GUILLERMO DANSEY NRO. 361 (FRENTE AL POLICLINICO RAMON CASTILLA) LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
808	20601544394	CORPORACION RAFAELITO PERU E.I.R.L.	AV. ARGENTINA NRO. 327 INTERIOR K1-14 PASAJE 17 C.C. BELLOTA LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
809	20601057418	CORPORACION FERRETERA DARIL E.I.R.L.	MZA. A LOTE. 29 ASC. SANTA MARIA VALLE (A UNA CUADRA BANCO DE CREDITO) LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
810	10199138346	HUARCAYA TAPARA JULIA	AV. ARGENTINA NRO. 523 INT. K1K2LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
811	10469983264	ALTAMIRANO CASTAÑEDA LILIANA	AV. ALMIRANTE MIGUEL GRAU NRO. 286 INT. 112 (ALT. POLICLINICO MIGUEL GRAU)LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
812	10747480481	MORI SILVA SAMANTA AIMEE	AV. ARGENTINA NRO. 327 INT. I4 C.C. BELLOTA (PASAJE PRINCIPAL N 4)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
813	20392662457	SERVICIOS DE MANTENIMIENTO DE EQUIPOS DE MINERÍA S.A.C.	JR. JOSE CARLOS MARIATEGUI NRO. 266 URB. REYNOSO (A 1 CDRA DE LA MUNICIPALIDAD DE CARMEN D)PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CARMEN DE LA LEGUA REYNOSO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
814	20548808392	INVERSIONES RICCI E.I.R.L.	CAL.LOS PINOS MZA. G LOTE. 01 APV. LOS ALAMOS DE CARABAYLLO (ALT. KM 18 1/2 DE TUPAC AMARU)LIMA - LIMA - CARABAYLLO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
815	20600375068	DISTRIBUCIONES E IMPORTACIONES DE LA CRUZ E.I.R.L.	AV. ARGENTINA NRO. 215 INT. BL-4 C.C. NICOLINI (PSJE 41 )LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
816	20601123623	DISTRIBUIDORES MAFE E.I.R.L.	JR. PACASMAYO CDRA. 4 NRO. S/N (C.C. LA BELLOTA - STAND L1- INT. 11)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
817	10076489918	LOARTE RUIZ CHRISTIAN ALFREDO	AV. GERARDO UNGER NRO. 4499 INT. 11 ASO.PEQ.COM.02 D DICIEMB. (FTE DE PRDRO ESTABLO)LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
818	10284446599	SULCA ESCRIBA RICHAR	AV. GERARDO UNGER NRO. 4611 INT. 4 C.C.LA VICTORIA LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
819	10424558775	PUMA RAMOS LISARDO	AV. GERARDO UNGER NRO. 4611 INT. 14 CENTRO COMERCIAL VICTORIA (ESTACION DE NARAJAL EN PARADERO ESTABLO)LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
820	10801171007	GOMES GARCIA HIGINIA	AV. GERARDO UNGER NRO. 4635(POR ESTABLO)LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
821	20432420834	IMPORTADORA Y DISTRIBUIDORA DE RETENES RODAMIENTOS Y AFINES SOCIEDAD ANONIMA	AV. RAMON CARCAMO NRO. 506 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
822	20505897812	CORPORACION PERUANA DE RESTAURANTES S.A.	CAL.CAMINO REAL NRO. 1801 INT. A4 (Z.I SAN PEDRITO)LIMA - LIMA - SANTIAGO DE SURCO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
823	10275593911	DAVILA ZAMORA CONSUELO	AV. ARGENTINA -TDA I01 NRO. 523 OTR. C.C. ACOPROM LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
824	10413749803	ALVAREZ VIDAL JUAN CARLOS	AV. ARGENTINA NRO. 339 INT. H4 (PASAJE 6 SECUNDARIO C.C. LA BELLOTA)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
825	20552917139	MANUFACTURAS ROWAL E.I.R.L.	PQ IND. PQ CIUD PACHACUTE MZA. D12 LOTE. 3 Z.I. PQ IND. P.R CIUDAD PACHAC (ALT. AV. N. GAMBETA-FRENT AH. CONFRATERN)PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - VENTANILLA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
826	20601077613	REPRESENTACIONES INDUTEX EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA	PJ. SANTA CATALINA NRO. 108 OTR. PROL.MALECON ZOLEZI SUBL.B (A MEDIA CDRA. DE LA TIENDA EFE)AREQUIPA - AREQUIPA - AREQUIPA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
827	20601092493	DISTRIBUIDORA FERRETERA CASTILLO E.I.R.L.	AV. PORTALES DEL SOL NRO. 350 (AL COSTADO DEL COLEGIO ATENOR OREGOSO) LIMA - LIMA - SAN JUAN DE LURIGANCHO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
828	10018885510	CCALLOMAMANI CCALLOMAMANI LUZ MARINA	PROL. P. MELENDEZ NRO. S/N INT. 1-11 GALERIAS BELEN (ESQUINA CENTENARIO CON P. MELENDEZ)TACNA - TACNA - TACNA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
829	10068533738	DELGADO SALAS MANUEL	AV. ARGENTINA NRO. 301 INT. L15 GRAN CC ELECTROFERRETERO LAS MALVINAS LA BELLOTA (ENTRE JR. PACASMAYO Y AV. ARGENTINA)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
830	10086337504	TUMBA TITO BERTHA	JR. LIMA NRO. 45 URB. CASCO URBANO (FRENTE A PQ STA ROSA-ESQU M.GAMARRA-LIMA)APURIMAC - ABANCAY - ABANCAY		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
831	10094236555	TORRES TOLEDO EDUARDO	AV. LOS INCAS NRO. 626 (FRTE OFICINA FONCODES)AYACUCHO - HUAMANGA - JESUS NAZARENO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
832	10467504938	TERRONES HONORIO LIZ JOANNA	AV. ARGENTINA NRO. 215 INT. BU15 C.C. NICOLINI (C.C. NICOLINI PSJE. 32 PSTO BU-15)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
833	10703773317	VELASQUEZ MACHACA KAREM YESSICA	JR. CANDELARIA NRO. 166 (AL FRENTE DE LA DIREPRO)PUNO - PUNO - PUNO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
834	10754403484	LAURA ALVAREZ DANIEL ZACARIAS	AV. GUILLERMO DANSEY NRO. 524 INT. 8B-2 C.C. LA BELLOTA (PSJE 2 SECUNDARIO)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
835	20123648227	PAITAN SOCIEDAD ANONIMA CERRADA	AV. NESTOR GAMBETTA NRO. 539 URB. LA CHALACA PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
836	20213008022	RIMBO E.I.R.L.	AV. ARGENTINA NRO. 327 INT. 7-H1 C.C. LA BELLOTA (PJE.SECUNDARIO 17)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
837	20323097128	RIVER TOURS EIRL	PJ. YARCASH NRO. B-5 ANCASH - HUARAZ - HUARAZ		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
838	20505958111	CJ TELECOM SAC	CAL.SANTA JUSTINA NRO. 620 URB. PANDO III ETAPA LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
839	20532344370	DISTRIBUCIONES SANTA MONICA EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA	AV. BALTA NRO. 115 URB. CERCADO (COSTADO BANCO AZTECA)MOQUEGUA - MARISCAL NIETO - MOQUEGUA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
840	20532687498	SEGURIDAD INDUSTRIAL COAQUIRA EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA	AV. CENTENARIO PASAJE BRASIL NRO. 103 CENTRO C. CENTENARIO (FRENTE A COMERCIAL BELEN)TACNA - TACNA - TACNA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
841	20542716542	MONKY DISTRIBUCIONES E.I.R.L.	JR. 8 DE NOVIEMBRE NRO. 746 PUNO - SAN ROMAN - JULIACA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
842	20600950950	DISTRIBUIDORA E IMPORTADORA ANDES PERU S.A.C.	AV. ARGENTINA NRO. 301 INT. M10 PASAJE SECUNDARIO 18 C.COMERCIAL LA BELLOTA LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
843	10414367165	ABANTO GOICOCHEA MARIA ISABEL	AV. GERARDO UNGER NRO. 4499 INT. 36 URB. INDUSTRIAL GALERIA 2 DE DICIEMBRE (FRENTE METROPOLITANO) LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
1013	10103893661	FLORES CHAVEZ JOSE SANTOS		\N	1	1	2018-03-15 14:20:25.987741	2018-03-15 14:20:25.987741	3
844	20106876321	ANDINA PLAST S R L	CAL.ISIDRO BONIFAZ NRO. 433 HABILT INDUST PANAM NORTE (Nª 415 Y 433 (COSTADO DEL SENATI)) LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
845	20509252697	AMERICACRAFTS EXPORT & IMPORT SOCIEDAD ANONIMA CERRADA	JR. IGNACIO COSSIO NRO. 1769(ALTURA CUADRA 12 AV AVIACION)LIMA - LIMA - LA VICTORIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
846	20537942381	LIMAUTOS AUTOMOTRIZ DEL PERU S.A.C.	AV. ALFREDO MENDIOLA NRO. 5118 URB. INDUSTRIAL INFANTAS (MZ I SUB-LOTE 9A) LIMA - LIMA - LOS OLIVOS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
847	20601530016	MUNDO FERRETERO CHAPITA E.I.R.L.	CAL.LOS ALHELIES NRO. 566 COO. SAN JOSE (ALTURA MERCADO LAS FLORES) LIMA - LIMA - EL AGUSTINO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
848	20601111960	UNION FLOORING S.A.C.	AV. ROCA Y BOLOGNA NRO. 1045 LIMA - LIMA - MIRAFLORES		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
849	20508832134	ESTACION SANTA MARGHERITA SOCIEDAD ANONIMA CERRADA	AV. VENEZUELA NRO. 2600 (S/R) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
850	20505137427	INDUSTRIA DEL CALZADO SEMPERTEGUI SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA	NRO. MZ62 INT. LT24 A.H. ARMANDO VILLANUEVA (A 2 CDRAS DE LA HUACA NARANJAL) LIMA - LIMA - LOS OLIVOS		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
851	20100113610	CERVECERIAS PERUANAS BACKUS SA	AV. NICOLAS AYLLON NRO. 3986LIMA - LIMA - ATE		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
852	10475756245	PARRAGA TAIPE LUZ KATHIA	AV. ALFONZO UGARTE 204 LOTE. K DPTO. 14 INT. 14 A.H. ALFONZO UGARTE 204 (CENTRO COMERCIAL UNICENTRO -PRIMER NIVEL) LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
853	20492064298	MANIOPERU SAC	AV. GUILLERMO DANSEY NRO. 660 (PARALELA CDRA 4 AV. COLONIAL)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
854	20547615469	GRAINGER PERU S.R.L.	AV. MARIE CURIE NRO. 347 URB. INDUSTRIAL SANTA ROSA LIMA - LIMA - ATE		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
855	20600793561	ENGINE SERVICE S.A.C.	JR. EUSEBIO GALVEZ SILVERA NRO. 242 URB. LA VIÑA LIMA - LIMA - SAN LUIS		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
856	20601056802	CORPORATION FERRETERO AARON E.I.R.L.	AV. CHIMU NRO. 1199 URB. ZARATE (A UNA CUADRA DE SEDAPAL) LIMA - LIMA - SAN JUAN DE LURIGANCHO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
857	20101973922	ASOCIACION AUTOMOTRIZ DEL PERU	AV. JAVIER PRADO OESTE NRO. 278 (JAVIER PRADO OESTE 268-278)LIMA - LIMA - SAN ISIDRO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
858	20513679875	ASIA GRIFOS Y SERVICIOS GENERALES SOCIEDAD ANONIMA CERRADA	CAL.ENRIQUE PALACIOS NRO. 360 DPTO. 507 (PISO 5) LIMA - LIMA - MIRAFLORES		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
859	20566068746	CTP DIGITAL SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA	AV. ARGENTINA NRO. 144 URB. CERCADO DE LIMA (MODULO C NIVEL M PISO 2 LOCAL 1)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
860	10478334759	TORRES BUSTAMANTE ELVIA ROSSY	CAL.NICOLAS CUGLIEVAN NRO. 245 CENTRO LAMBAYEQUE - CHICLAYO - CHICLAYO		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
861	20449248202	SIDERAL E.I.R.L.	MZA. A LOTE. 12 TERMINAL DE CARGA (DETRAS DEL C.C. BELEN)TACNA - TACNA - TACNA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
862	20524073201	YASAN IMPORT SOCIEDAD ANONIMA CERRADA-YASAN IMPORT S.A.C.	AV. ARGENTINA NRO. 327 DPTO. H14 C.C LAS BELLOTAS (PASAJE 5)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
863	20525264778	VESTIMENTA Y SEGURIDAD ASOCIADOS SOCIEDAD ANONIMA CERRADA	NRO. A INT. 09 URB. 4 DE ENERO (MZ A LOTE 9 INT. 01)PIURA - PIURA - PIURA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
864	20546331904	J & M ELECTROMETALMECANICA S.A.C.	CAL.HUAYLAS NRO. 150 URB. TRES MARIAS LIMA - LIMA - LA VICTORIA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
865	20600660927	SEGURIDAD INDUSTRIAL ADONAI JHIRE M & J SOCIEDAD ANONIMA CERRADA	AV. GUILLERMO DANSEY NRO. 354 INT. A02 URB. LIMA INDUSTRIAL (SEGUNDO NIVEL)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
866	20601306621	PRODUCTOS DE SEGURIDAD INDUSTRIAL TAPIA SOCIEDAD ANONIMA CERRADA - PROSIT S.A.C.	JR. MIGUEL ZAMORA NRO. 180 (ALT. PLAZA DOS DE MAYO)LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
867	10060438469	VILLANTOY QUISPE ISAAC	AV. NICOLAS DE PIEROLA NRO. 326 LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
868	10402501486	COBEÑAS CARRANZA MILIXSA LUZ	MZA. J LOTE. 10B LOTIZACION CHILLON (PS 2 ET  A 5 CDRAS DEL PTE CHILLON)LIMA - LIMA - PUENTE PIEDRA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
869	10431687904	SALAZAR VICENTE JUAN DIEGO	AV. ARGENTINA Y/CON PACASMAYO NRO. 327 INT. L1-4 OTR. C.C. LA BELLOTA LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
870	10802685098	ROMERO YUYES OSCAR ENRIQUE	AV. ARGENTINA NRO. 639 INT. A102LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
871	20545108705	LIOI PERU S.A.C.	AV. GALLOS KM. 40 LOTE. 3 URB. LAS PRADERAS DE LURIN (LA CITADELLA LURIN - PUENTE ARICA)LIMA - LIMA - LURIN		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
872	20547590610	SOLUCION INDUSTRIAL MANKEL S.A.C.	AV. ARGENTINA NRO. 523 INT. D-15 C.C.ACROPOM (LAS MALVINAS)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
873	20561319571	PROYECTOS FERRETERIA HOLGUS E.I.R.L.	CAL.TAHUANTISUYO NRO. 970 URB. FRANCISCO BOLOGNESI LAMBAYEQUE - CHICLAYO - JOSE LEONARDO ORTIZ		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
874	20601219060	D' TODO EPP ALEXIS E.I.R.L.	AV. ARGENTINA NRO. 339 INT. D-6 C.C. LA BELLOTA - LAS MALVINAS LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
875	20601338115	ARSIDHUNSA M & D E.I.R.L.	AV. ARGENTINA NRO. 215 INT. BE17(C.C. NICOLINI PSJE 1 AV.G DANSEY)LIMA - LIMA - LIMA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
876	10400110668	VASQUEZ CUEVA DE GUTIERREZ MARGARITA YSABEL	LOS LAURELES OESTE NRO. 139 (PROLONGACION LOS LAURELES OESTE) LIMA - LIMA - CARABAYLLO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
877	20428254687	INVERSIONES PICORP S.A.C.	AV. EL POLO NRO. 670 DPTO. 503 URB. LIMA POLO HUNT LIMA - LIMA - SANTIAGO DE SURCO		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
878	20505069596	FUNDICION CARLOS ALEJANDRO ROBET S.A.C.	CAL.LOS PINOS MZA. E LOTE. 06 LOTIZACION CHILLON (AV. LOS ALAMOS ALT.PISCINA LAS TERRAZAS) LIMA - LIMA - PUENTE PIEDRA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
879	20515589873	EXTINTORES CAPELO PERU G & D EIRL	AV. GERARDO UNGER NRO. 4511 URB. NARANJAL (ALT PARADERO MATROPOLITANO) LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
880	20600129041	ATEL PERU SAC	CAL.LAS PRENSAS NRO. 265 URB. INDEPENDENCIA LIMA - LIMA - INDEPENDENCIA		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
881	12345678901	ZZZZ NO JALADO REVISAR	VERRRR		2	1	2016-10-26 00:00:00	2016-10-26 00:00:00	1
885	10700929821	DURAN DE LA FUENTE JORGE ALEJANDRO	CAL.LOS EUCALIPTOS NRO. 140 LIMA - LIMA - CHACLACAYO		1	2	2017-01-08 19:18:33.394679	2017-01-08 19:18:33.394679	1
886	20601376262	POLYTECH INDUSTRIAL E.I.R.L.	AV. ARGENTINA NRO. 327 INT. 5 (PAB Y1,ENTRE AVGUILLERMO DANSEY Y ASCOPE) LIMA - LIMA - LIMA		1	1	2017-01-11 15:36:34.604256	2017-01-11 15:36:34.604256	1
887	20568291990	EMEL POWER PERU S.A.C	BQ ANTALCOMA NRO. S/N BARR. ANTALCOMA (1CD Y MEDIA ANTES DE POSTA S.71223712) JUNIN - TARMA - ACOBAMBA		1	1	2017-01-11 16:37:46.686556	2017-01-11 16:37:46.686556	1
888	20532915890	GRUPO DALCORP E.I.R.L.	CAL.PATRICIO MELENDEZ NRO. 1050 INT. B (FRENTE COMERCIAL BELEN) TACNA - TACNA - TACNA		1	1	2017-01-11 16:51:00.438549	2017-01-11 16:51:00.438549	1
96	10413364863	CALLUPE CORMAN FRANCISCA EUGENIA 2	AV. ARGENTINA PSJ 3 PRINCIPAL NRO. 327 INT. R11 C.C LA BELLOTA LIMA - LIMA - LIMA		1	1	2016-10-26 00:00:00	2017-01-11 17:12:36.913778	1
889	20600596234	COMERCIAL & INDUSTRIAL MAFER ING. S.R.L.	CAL.LOS ROBLES NRO. 941 URB. LA ACHIRANA 2DA ETAPA LIMA - LIMA - SANTA ANITA		1	1	2017-01-11 17:49:38.416304	2017-01-11 17:49:38.416304	1
890	20601500702	 GRUPO ALMARAY S.A.C.	JR. TUMBES NRO. 1249 (A 2 CDRAS DEL MCDO MANCO CAPAC) PUNO - SAN ROMAN - JULIACA		1	1	2017-02-15 02:53:36.175093	2017-02-15 02:53:36.175093	3
891	20566446872	MEGA PRODUCTOS INDUSTRIALES E.I.R.L	JR. ANGARAES NRO. 564 INT. 008 CERCADO LIMA - LIMA - LIMA		1	1	2017-02-16 01:05:22.594107	2017-02-16 01:05:22.594107	3
892	20600399218	SEGURITAS MD S.A.C.	AV. ARGENTINA NRO. 523 INT. E-18 OTR. CENTRO COMERCIAL ACOPROM (A 3 CDRAS DE POLICLINICO RAMON CASTILLA) LIMA - LIMA - LIMA		1	1	2017-02-16 22:33:12.444444	2017-02-16 22:33:12.444444	3
893	10083669603	CHUQUITARQUI QUISPE RUFINO RAMON	AV. REPUBLICA ARGENTINA NRO. 327 INT. 11 (PABELLON K1 - C.C. LA BELLOTA) LIMA - LIMA - LIMA		1	1	2017-02-16 23:17:58.68522	2017-02-16 23:17:58.68522	3
894	20600981332	SEGURINDUSTRIA PERCAN E.I.R.L.	AV. ARGENTINA NRO. 327 INT. K1-4 C.C LA BELLOTA LIMA - LIMA - LIMA		1	1	2017-02-16 23:36:01.653725	2017-02-16 23:36:01.653725	3
895	10801840481	GRIJALVA QUINTANA JEHNNY PATRICIA	GUILLERMO DANSEY NRO. 701 LIMA - LIMA - LIMA		1	1	2017-02-16 23:43:35.90388	2017-02-16 23:43:35.90388	3
896	20600995678	TEXTIL VIRGEN DEL CARMEN S.A.C.	CAL.LOS LAURELES MZA. E LOTE. 5 URB. SHANGRILA (ALT PANADERIA STA.CLARA DE LOS LAURELES) LIMA - LIMA - PUENTE PIEDRA		1	1	2017-02-17 00:33:37.804315	2017-02-17 00:34:58.156614	3
897	10071593423	ROMAN ATENCIO PAULINA FLORENCIA	AV. ARGENTINA 215 TDA BÑ 14 KM. 0 INT. PJ38 CENTRO C. NICOLINI (COSTADO CLINICA CASTILLA) LIMA - LIMA - LIMA		1	1	2017-02-17 00:38:38.886456	2017-02-17 00:38:38.886456	3
898	20481666016	MULTISERVICIOS CHICAMA E.I.R.L.	AV. ARRIAGA NRO. 604 PUEBO CHICAMA (CARR. PANAMERICANA KM 6) LA LIBERTAD - ASCOPE - CHICAMA		2	1	2017-02-17 01:27:14.371126	2017-02-17 01:27:14.371126	3
899	20600365135	SEPARADORES PERU E.I.R.L.	CAL.LAS PALMERAS MZA. D LOTE. 1 URB. LAS PALMERAS (ESPALDA DEL HOTEL OASIS) LIMA - LIMA - EL AGUSTINO		2	1	2017-02-17 01:29:28.268529	2017-02-17 01:29:28.268529	3
900	20507812598	BEARINGS UNIVERSAL E.I.R.L	AV. GERARDO UNGER NRO. 4391 URB. ALT. DE LA 50 (COSTADO PUENTE TAHUANTINSUYO) LIMA - LIMA - INDEPENDENCIA		2	1	2017-02-17 01:34:43.37076	2017-02-17 01:34:43.37076	3
901	20544979541	LITBUS CARGO S.A.C.	AV. ALFREDO MENDIOLA NRO. 4048 URB. NARANJAL LIMA - LIMA - SAN MARTIN DE PORRES		2	1	2017-02-17 01:47:20.845235	2017-02-17 01:47:20.845235	3
902	20550593654	MERO LOCO INVERSIONES & SERVICIOS E.I.R.L.	AV. HEROES DEL ALTO CENEPA MZA. O1 LOTE. 27 URB. EL ALAMO LIMA - LIMA - COMAS		2	1	2017-02-17 02:08:42.056733	2017-02-17 02:08:42.056733	3
903	10071941600	 CUEVA CASTILLO EUGENIO	AV. CAQUETA NRO. 1300 INT. 224 ASO COM MDO VIRREY AMAT (FRENTE AL PARQUE DEL TRABAJO - 1300-A) LIMA - LIMA - RIMAC		1	1	2017-03-11 23:01:07.677138	2017-03-11 23:01:07.677138	3
904	20451542118	OPERADORA LOGISTICA DE HIDROCARBUROS J & E S.A.C.	AV. TUPAC AMARU NRO. 4902 P.J. AÑO NUEVO (KM 14.5 DE LA TUPAC) LIMA - LIMA - COMAS		1	1	2017-03-12 00:09:59.612815	2017-03-12 00:09:59.612815	3
906	20600519841	COORPORACION ISAAC SERVICIOS GENERALES S.A.C.	CAL.3 MZA. C LOTE. 02 A.V. VALLE CHILLON (ALT. DE GRIFO PRO) LIMA - LIMA - PUENTE PIEDRA	\N	2	1	2017-04-21 22:35:35.239166	2017-04-21 22:35:35.239166	\N
907	10421877373	MARTINEZ PAREDES KARINA EVA	AV. CORDIALIDAD MZA. VV2 LOTE. 5 URB. LA FLORESTA DE PRO LIMA - LIMA - LOS OLIVOS	\N	2	1	2017-04-21 22:39:48.708179	2017-04-21 22:39:48.708179	\N
908	20100032458	GRIFOSA S.A.C.	CAL.MONTERREY NRO. 341 DPTO. 502 URB. CHACARILLA DEL ESTANQUE LIMA - LIMA - SANTIAGO DE SURCO	\N	2	1	2017-04-21 23:38:36.402802	2017-04-21 23:38:36.402802	\N
909	20601337429	INVERSIONES COHIN E.I.R.L.	JR. AMERICA NRO. 722 URB. SAN PABLO LIMA - LIMA - LA VICTORIA	\N	2	1	2017-04-22 00:35:46.773571	2017-04-22 00:35:46.773571	\N
921	20602073476	CORPORACION BRIZUVIC SOLUCIONES EN EPP'S E.I.R.L.	AV. ARGENTINA NRO. 327 OTR. CENTRO COMERCIAL LAS BELLOTAS (PASAJE SECUNDARIO 16 STAND H1 - 13) LIMA - LIMA - LIMA	\N	1	1	2017-06-16 17:16:35.37907	2017-06-16 17:16:35.37907	\N
913	10460820699	OTTINIANO POLO ELA NADIR	\tMZA. H LOTE. 07 PROVIV RES. BRISAS DE MONTECARLO (ALT. KM. 23 DE LA AV. TUPAC AAMARU) LIMA - LIMA - CARABAYLLO	\N	1	1	2017-05-15 19:44:50.600786	2017-05-15 19:44:50.600786	\N
914	10400940253	MARIN BUCHELLI LUIS RUPERTO ALEJANDRO	AV. GERMAN AGUIRRE NRO. 1523 AMA KELLA (AV UNIVERSITARIA CDRA 25) LIMA - LIMA - SAN MARTIN DE PORRES	\N	1	1	2017-05-15 19:57:26.591757	2017-05-15 19:57:26.591757	\N
915	00000000	Maria OSTBERG		\N	1	1	2017-05-15 20:09:03.245402	2017-05-15 20:09:03.245402	\N
916	20515999770	CORPORACION CAMAJEA S.A.C.	AV. CANTA CALLAO ESQ NARANJAL MZA. P3 LOTE. 1 (LOTE 1 Y 2 / ALT OVALO HUANDOY) LIMA - LIMA - LOS OLIVOS	\N	1	1	2017-05-15 21:04:48.297694	2017-05-15 21:04:48.297694	\N
917	20555951273	A. & M. KIDS STAR E.I.R.L.	AV. PROCERES NRO. 1098 INT. 618 MCDO.FEDER.EMPRESARIOS (ALT.CUADRA11 AV.FCO PIZARRO Y MORRO DE A) LIMA - LIMA - RIMAC	\N	1	1	2017-05-15 21:27:39.408024	2017-05-15 21:27:39.408024	\N
918	10407368288	NALVARTE RICO NEHEMIAS	MZA. B LOTE. 10 A.H. 19 DE MAYO (ALT CDRA 13 AV NARANJAL-PARADERO AKIA) LIMA - LIMA - LOS OLIVOS	\N	1	1	2017-05-15 21:40:01.651353	2017-05-15 21:40:01.651353	\N
919	20522501965	KALPU S.A.C.	CAL.13 MZA. L2 LOTE. 26 URB. SANTO DOMINGO (ALT DE ULTIMO PARADERO LINEA SALAMANCA B) LIMA - LIMA - CARABAYLLO	\N	1	1	2017-05-15 22:19:37.767545	2017-05-15 22:19:37.767545	\N
920	20601430780	BUSINESS FERRE SAL-AZAR E.I.R.L.	AV. GRAN CHIMU NRO. 1179 URB. ZARATE LIMA - LIMA - SAN JUAN DE LURIGANCHO	\N	1	1	2017-05-18 00:16:21.690801	2017-05-18 00:16:21.690801	\N
922	20600173643	SEGURIDAD INDUSTRIAL IMPORT GENESIS SQT E.I.R.L.	AV. ARGENTINA NRO. 215 INT. BN-9 (C.C.NICOLINI PSJE 40 TDA. BN-9 LIMA) LIMA - LIMA - LIMA	\N	1	1	2017-06-16 17:39:46.072583	2017-06-16 17:39:46.072583	\N
924	10437617525	SILVA MEDRANO ALBERTO	AV. ARGENTINA NRO. 327 INT. L7 (STAND - 1 C.C. LA BELLOTA) LIMA - LIMA - LIMA	\N	1	1	2017-06-16 22:15:10.483602	2017-06-16 22:15:10.483602	\N
926	10092439751	FLORES IPANAQUE MARIA ISABEL	JR. HUALLAGA NRO. 650 INT. 800 URB. CERCADO DE LIMA (MERCADO CENTRAL 3ER NIVEL) LIMA - LIMA - LIMA	\N	1	1	2017-06-17 00:36:09.644247	2017-06-17 00:36:09.644247	\N
927	20517700640	SIROCO HOLDINGS SAC	AV. VICTOR ANDRES BELAUNDE NRO. 181 (OFICINA 201) LIMA - LIMA - SAN ISIDRO	\N	1	1	2017-06-17 00:47:02.946048	2017-06-17 00:47:02.946048	\N
928	10070842560	LAURENTE MATEO FRANCISCO	JR. HIPOLITO UNANUE NRO. 1571 INT. 109 URB. EL PORVENIR (A UNA CUADRA PARQUE CANEPA) LIMA - LIMA - LA VICTORIA	\N	1	1	2017-06-17 01:27:20.375876	2017-06-17 01:27:20.375876	\N
929	20601651450	SEINVE E.I.R.L.	CAL.LAS ESMERALDAS NRO. 488 URB. BALCONCILLO (ALT. CDRA. 4 AV. CANADA) LIMA - LIMA - LA VICTORIA	\N	1	1	2017-07-18 16:16:30.14925	2017-07-18 16:16:30.14925	\N
930	20600113268	COMERCIAL PERUANA DE SUMINISTROS INDUSTRIALES E.I.R.L.	AV. ARGENTINA NRO. 639 INT. A170 (C.C.UDAMPE ANEXOS : A171 , A172 CALLE 6) LIMA - LIMA - LIMA	\N	1	1	2017-07-18 17:09:12.30599	2017-07-18 17:09:12.30599	\N
931	20535807770	MELGAMOR S.A.C	MZA. D LOTE. 02 INT. B LAS MARGARITAS LIMA - LIMA - SAN MARTIN DE PORRES	\N	1	1	2017-07-18 17:19:58.130898	2017-07-18 17:19:58.130898	\N
932	10413111990	SANCHEZ FLORES JHON	AV. ARGENTINA NRO. 477 INT. 124A OTR. CC.CONSORCIO FERRETEROS 2000 (ALT.CUADRA 4 AV.ARGENTINA) LIMA - LIMA - LIMA	\N	1	1	2017-07-18 17:24:23.837099	2017-07-18 17:24:23.837099	\N
933	20464032071	F Y J CORSER EIRL	AV. SAN BORJA SUR NRO. 474 INT. SS (SEMISOTANO // ALT. CDRA31 AVIACION) LIMA - LIMA - SAN BORJA	\N	1	1	2017-07-18 17:31:20.415474	2017-07-18 17:31:20.415474	\N
934	20345621301	LIBRERÍAS UNIDAS S.A.C.	AV. EL NARANJAL NRO. 1083 URB. PARQUE DEL NARANJAL ET. DOS LIMA - LIMA - LOS OLIVOS	\N	1	1	2017-07-18 18:35:58.231745	2017-07-18 18:35:58.231745	\N
935	20286155317	 JULSA ANGELES TOURS S.A.C.	AV. HEROES DE LA G. DEL PACIF NRO. 269 URB. LOS CHOFERES (SALIDA AREQUIPA) PUNO - SAN ROMAN - JULIACA	\N	1	1	2017-07-18 18:46:35.312541	2017-07-18 18:46:35.312541	\N
187	20106897914	ENTEL PERU S.A.	AV. REPUBLICA DE COLOMBIA NRO. 791 (PISO 14 ESQ. CDRA 34 PASEO D L REPUBLICA) LIMA - LIMA - SAN ISIDRO		2	1	2016-10-26 00:00:00	2017-07-18 18:50:37.928445	1
936	10100521127	CATARI CHOQUE FILOMENA FLORENCIA	AV. CAQUETA NRO. 1400 INT. 67 C.C.SAN PEDRO DE ICHU (PARQUE DEL TRABAJO) LIMA - LIMA - RIMAC	\N	1	1	2017-07-18 19:26:51.916895	2017-07-18 19:26:51.916895	\N
937	10447938320	LIMA HUILLCA EDELMIRA	AV. CAQUETA NRO. 1300 INT. 211 (MCD. VIRREY AMAT) LIMA - LIMA - RIMAC	\N	1	1	2017-07-18 19:38:41.858636	2017-07-18 19:38:41.858636	\N
938	10199252025	TANTAVILCA CHUQUILLANQUI JOSUE RUFO	MZA. A LOTE. 26 ASOC. VIV. OJIHUA (AV OLIVOS CON AUTOPISTA CANTA CALLAO) LIMA - LIMA - SAN MARTIN DE PORRES	\N	1	1	2017-07-18 19:42:07.169795	2017-07-18 19:42:07.169795	\N
939	20601808677	INFOSEGUTEX E.I.R.L.	CAL.MARIANO ANGULO NRO. 1742 P.J. MIRONES ALTO (ALT. CDRA 2 DE AV. NICOLAS DUEÑAS) LIMA - LIMA - LIMA	\N	1	1	2017-08-16 17:26:21.799815	2017-08-16 17:26:21.799815	\N
940	20600476751	GRUPO VALERO JVL S.A.C	AV. GUILLERMO DANSEY NRO. 828 INT. REF CC. UDAMPE (CALLE 8 STAND E-07 E-08 E-09 E-10) LIMA - LIMA - LIMA	\N	1	1	2017-08-16 17:35:53.505587	2017-08-16 17:35:53.505587	\N
941	10095084856	 ESPINOZA CABEZAS RITA ESTHER	AV. BENJAMÍN FRANKLIN NRO. 415 INT. 115 (MICHAEL FARADAY Y MERCADO SANTA ROSA) LIMA - LIMA - ATE	\N	1	1	2017-08-16 17:50:10.93837	2017-08-16 17:50:10.93837	\N
942	10806157967	TAYPE CHAHUAYLA ELENA	CAL.55 MZA. H2 LOTE. 15 INT. 105 URB. SAN AGUSTIN (ALT DE TIENDAS EFE) LIMA - LIMA - COMAS	\N	1	1	2017-08-16 19:47:52.997699	2017-08-16 19:47:52.997699	\N
943	20600177592	REPUESTOS GEORGE E.I.R.L.	JR. CESAR VALLEJO NRO. 110 URB. SAN AGUSTIN (FRENTE A METRO DE COMAS) LIMA - LIMA - COMAS	\N	1	1	2017-08-16 19:53:04.477556	2017-08-16 19:53:04.477556	\N
944	20392487787	MULTISERVICIOS ELECTRIC IMPORT F.V. S.A.C	AV. TUPAC AMARU NRO. 4870 P.J. AÑO NUEVO LIMA - LIMA - LIMA	\N	1	1	2017-08-16 19:57:03.960604	2017-08-16 19:57:03.960604	\N
945	20522902790	REVISIONES TECNICAS DEL PERU S.A.C.	JR. TRINIDAD MORAN NRO. 286 (CDRA.24 AV. AREQUIPA) LIMA - LIMA - LINCE	\N	1	1	2017-08-16 20:00:41.585567	2017-08-16 20:00:41.585567	\N
946	20601039487 	MECANICA INTEGRAL VISAAGAS S.A.C.	AV. UNIVERSITARIA NORTE NRO. 9724 URB. LA ALBORADA 1ERA ETAPA (PARADERO ALBORADA) LIMA - LIMA - COMAS	\N	1	1	2017-08-16 20:03:03.311901	2017-08-16 20:03:03.311901	\N
947	20207949761	FAETCA S.R.LTDA.	AV. GERARDO UNGER NRO. 4463 LIMA - LIMA - SAN MARTIN DE PORRES	\N	1	1	2017-08-16 20:17:46.799467	2017-08-16 20:17:46.799467	\N
948	15414413720	SOLIS CHUPAN YANET JULIANA	AV. CAQUETA NRO. 1300- INT. 240 (AV CAQUETA NRO 1300A INT 240-VIRREY AMAT) LIMA - LIMA - RIMAC	\N	1	1	2017-08-16 21:15:42.623699	2017-08-16 21:15:42.623699	\N
951	20601874343	INCOMTEX BUSINESS S.A.C.	CAL.SIN NOMBRE MZA. A LOTE. 03 URB. DIAGONAL DE OQUENDO II ETAPA (AL COSTADO DEL MERCADO NUEVO NORTE) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO	\N	1	1	2017-09-19 01:00:04.736867	2017-09-19 01:00:04.736867	3
952	20600965167	INVERSIONES CONSUR PERU SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA	JR. JUNIN NRO. 439 INT. D504 (RESIDENCIAL JARDINES DE LA BREÑA) JUNIN - HUANCAYO - HUANCAYO	\N	1	1	2017-09-19 04:14:54.293546	2017-09-19 04:14:54.293546	3
953	20600354451	C & G IMPORTADOR Y DISTRIBUIDOR S.A.C.	AV. GUILLERMO DANSEY NRO. 354 INT. H-14 URB. LIMA INDUSTRIAL (2DO NIVEL) LIMA - LIMA - LIMA	\N	1	1	2017-09-19 12:50:44.633548	2017-09-19 12:50:44.633548	3
954	10423475931	LUNA CARITA LUZ GADDY	AV. ARGENTINA NRO. 327 STAND L1-12 PASAJE 19 C.C. BELLOTA (JR. PACASMAYO CON ARGENTINA) LIMA - LIMA - LIMA	\N	1	1	2017-09-19 13:12:04.175739	2017-09-19 13:12:04.175739	3
955	20514630560	R & A COMERCIALIZADORA Y SERVICIOS S.A.C	JR. UNION NRO. 377 (ALT. AH. STA ROSA BAJA-5 CDRAS COMIS.VMT) LIMA - LIMA - VILLA MARIA DEL TRIUNFO	\N	1	1	2017-09-19 13:18:48.280076	2017-09-19 13:18:48.280076	3
956	10718378830	LUNA CARITA BENY	AV. ARGENTINA NRO. 339 DPTO. H1 INT. 11 (CENTRO COMERCIAL LA BELLOTA) LIMA - LIMA - LIMA	\N	1	1	2017-09-19 13:27:03.351331	2017-09-19 13:27:03.351331	3
957	20601852081	EXPORTACIONES E.M.B. EIRL	JR. HUALLAGA NRO. 656 INT. 815 URB. CERCADO DE LIMA (MERCADO CENTRALRAMON CASTILLA) LIMA - LIMA - LIMA	\N	1	1	2017-09-19 21:24:30.653282	2017-09-19 21:24:30.653282	3
958	20602146244	GRIFO F & R S.A.C.	CAL.SIN NOMBRE MZA. H LOTE. 31 URB. PRO LIMA 3RA ETAPA LIMA - LIMA - LOS OLIVOS	\N	1	1	2017-09-19 21:48:56.858772	2017-09-19 21:48:56.858772	3
959	10094783793	ALVAREZ PEREZ YURI EFRAIN	AV. UNIVERSITARIA MZA. A LOTE. 15 APV. LAS MERCEDES (PARALELA ALT DEL KM 19 AV. TUPAC AMARU) LIMA - LIMA - CARABAYLLO	\N	1	1	2017-09-19 21:51:47.517571	2017-09-19 21:51:47.517571	3
960	10070702075	MELENDEZ PELAEZ VILMA ROSA	AV. EL RETABLO NRO. MZ.C INT. LT.1 URB. EL RETABLO (ALT CDRA 15 DE LA AV UNIVERSITARIA) LIMA - LIMA - COMAS	\N	1	1	2017-09-19 21:59:53.445067	2017-09-19 21:59:53.445067	3
961	20100302421	ARTECOLA PERU S.A.	AV. SANTA ROSA NRO. 410 URB. INDUSTRIAL AURORA (ANTES PTE.S. ANITA-KM.2.5 CARRET.CENTRAL) LIMA - LIMA - ATE	\N	1	1	2017-09-19 22:13:44.951336	2017-09-19 22:13:44.951336	3
962	20600831691	TEDMART INVERSIONES E.I.R.L.	AV. CAQUETA NRO. 1400 INT. B109 (ALTURA PARQUE DE TRABAJO) LIMA - LIMA - RIMAC	\N	1	1	2017-09-19 22:17:22.080254	2017-09-19 22:17:22.080254	3
963	20601630711	GROUP MAVED S.A.C.	AV. TUPAC AMARU NRO. 4638 ASC. QUIÑONEZ LIMA - LIMA - INDEPENDENCIA	\N	1	1	2017-09-19 22:21:05.671429	2017-09-19 22:21:05.671429	3
964	20509264512	FIERRO CENTRO SAC	AV. TUPAC AMARU NRO. 305 URB. SANTA ISABEL (ALT KM 16 AV TUPAC) LIMA - LIMA - CARABAYLLO	\N	1	1	2017-09-19 22:23:32.911679	2017-09-19 22:23:32.911679	3
965	10436279324	VELASQUEZ HUALLANCA ISABEL LUISA	AV. GUILLERMO DANSEY NRO. 498 LIMA - LIMA - LIMA	\N	1	1	2017-09-19 22:28:31.492911	2017-09-19 22:28:31.492911	3
966	20492647633	ESTACION DE SERVICIOS EL TREN S.R.L.	CAR.PANAMERICANA SUR KM. 24.0 (ESQUINA CALLE SAN MARTIN) LIMA - LIMA - LURIN	\N	1	1	2017-09-19 22:55:27.408807	2017-09-19 22:55:27.408807	3
967	20601630681	INDUSTRIAS MAICOL SAC	AV. LOS PINOS MZA. J LOTE. 20 LOT. CHILLON (PASANDO PTE CHILLON PISCINA LAS TERRAZAS) LIMA - LIMA - PUENTE PIEDRA	\N	1	1	2017-09-19 23:00:47.619582	2017-09-19 23:00:47.619582	3
968	20454842112	SEGURIDAD Y FERRETERIA INDUSTRIAL DEL SUR S.A.C.	MLC.ZOLEZZI NRO. 123 (CERCA FERIA ALTIPLANO) AREQUIPA - AREQUIPA - MARIANO MELGAR	\N	1	1	2017-10-17 17:16:38.600822	2017-10-17 17:16:38.600822	3
969	10435357038	CUSACANI BENAVIDES EDSON XAVIER	AV. HUAYRURUPATA NRO. 1036 INT. 8 (COSTADO DEL BANCO BCP) CUSCO - CUSCO - WANCHAQ	\N	1	1	2017-10-17 17:19:39.896899	2017-10-17 17:19:39.896899	3
970	20601627001	3M SOLUCIONES MINERAS E.I.R.L.	AV. ARGENTINA NRO. 327 INT. L1-1 PSJE 21 C.C LA BELLOTA (DOS CDRAS DE LA PLAZA UNION) LIMA - LIMA - LIMA	\N	1	1	2017-10-17 18:26:34.242489	2017-10-17 18:26:34.242489	3
971	20554664246	DISTRIBUCION INFORMATICA RJ S.A.C.	AV. GARCILAZO DE LA VEGA NRO. 1251 INT. 161 LIMA - LIMA - LIMA	\N	1	1	2017-10-17 19:08:19.848722	2017-10-17 19:08:19.848722	3
972	20600904991	EVA MULTISERVICIOS EMPRESA INDIVIDUAL DE RESPONSABILIDAD LIMITADA	AV. PROCERES NRO. 1098 INT. 688 (689) LIMA - LIMA - RIMAC	\N	1	1	2017-10-17 19:15:45.49366	2017-10-17 19:15:45.49366	3
973	20512006834	CORPORACION SAN PEDRO DE ICHU E.I.R.L.	MZA. D LOTE. 26 URB. IND. PAN. NORTE-INDEPENDE (CALLE A - COSTADO DE TOTTUS) LIMA - LIMA - SAN MARTIN DE PORRES	\N	1	1	2017-10-17 19:17:26.749652	2017-10-17 19:17:26.749652	3
974	20500095645	SERVICENTROS CELESTE S.A.	AV. QUILCA MZA. E LOTE. 29 URB. AEROPUERTO (AV QUILCA 2 CDRA FAUCCE) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO	\N	1	1	2017-10-17 19:20:30.665601	2017-10-17 19:20:30.665601	3
975	10476398393	ANTON RITO CARLOS ALBERTO	AV. CAQUETA NRO. 467 INT. 380 (ALT. MERCADO DE FRUTAS CAQUETA) LIMA - LIMA - SAN MARTIN DE PORRES	\N	1	1	2017-10-17 19:26:36.173695	2017-10-17 19:26:36.173695	3
976	10467358125	HURTADO VASQUEZ JUDITH	JR. APURIMAC MZA. J LOTE. 22 P.J. SANTA ROSA (A UNA CUADRA DEL POZO DE AGUA) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO	\N	1	1	2017-10-17 23:16:23.358146	2017-10-17 23:16:23.358146	3
977	10464582521	BARAZORDA FLORES ELIZABETH	CAL.INCA ROCA NRO. 633 URB. TAHUANTINSUYO (ALT. MERCADO CENTRAL TAHUANTINSUYO 3ZONA) LIMA - LIMA - INDEPENDENCIA	\N	1	1	2017-11-20 02:10:10.13096	2017-11-20 02:10:10.13096	3
978	10069211076	SOTO TREBEJO NILA	AV. GUILLERMO DANSEY NRO. 524 INT. B2-8 (PSJ.10 C.C LA BELLOTA) LIMA - LIMA - LIMA	\N	1	1	2017-11-20 02:16:38.348612	2017-11-20 02:16:38.348612	3
979	20493130391	CONFECCIONES ESTHER'S E.I.R.L	JR. MIGUEL ZAMORA NRO. 156 INT. 14 ASOC C (CC.INTERPLAZA 1ER PISO) LIMA - LIMA - LIMA	\N	1	1	2017-11-20 02:20:44.732947	2017-11-20 02:20:44.732947	3
980	10700259728	SHAPIAMA PRADA BRYAN	AV. GUILLERMO DANSEY NRO. 524 INT. A2-1 URB. LA COLONIAL LIMA - LIMA - LIMA	\N	1	1	2017-11-20 02:24:51.828638	2017-11-20 02:24:51.828638	3
981	20502257987	CORPORACION VEGA S.A.C.	JR. BELAUNDE OESTE NRO. 198 URB. HUAQUILLAY (ALT.KM.12 AV.TUPAC AMARU) LIMA - LIMA - COMAS	\N	1	1	2017-11-20 02:43:17.645704	2017-11-20 02:43:17.645704	3
982	20556196207	YAKORI IMPORT E.I.R.L.	AV. PROCERES NRO. 1098 INT. 693 (ALTURA 13 AV. CAQUETÁ) LIMA - LIMA - RIMAC	\N	1	1	2017-11-20 02:57:50.794793	2017-11-20 02:57:50.794793	3
983	20600561597	GROUP A & M RODAMIENTOS EIRL	JR. HUAROCHIRI NRO. 539 URB. LIMA INDUSTRIAL (STAND 127) LIMA - LIMA - LIMA	\N	1	1	2017-12-20 17:04:51.455999	2017-12-20 17:04:51.455999	3
984	20422031147	COEMSUD S.A	CAL.VIA MALECON MZA. H LOTE. 16 ASOC. DE VIVIENDA CHILLON (2 ETAP-ALT. PARADERO 17-FTE A CAMPO FE) LIMA - LIMA - PUENTE PIEDRA	\N	1	1	2018-01-16 17:18:16.386954	2018-01-16 17:18:16.386954	3
985	20600284844	JICARO SERIN E.I.R.L.	CAL.LAS PRENSAS NRO. 103A U.IND EL NARANJAL LIMA - LIMA - INDEPENDENCIA	\N	1	1	2018-01-16 23:00:42.318053	2018-01-16 23:00:42.318053	3
986	20600111150	MILINSER E.I.R.L.	CAL.CORONEL LA TORRE NRO. 17 (COSTADO DEL CENTRO DE SALUD TORATA) MOQUEGUA - MARISCAL NIETO - TORATA	\N	1	1	2018-01-18 00:19:09.784904	2018-01-18 00:19:09.784904	3
987	20602036309	PUBLICIDAD & GRAFICOS JHEAN E.I.R.L.	AV. ARGENTINA NRO. 639 INT. A077 (GAL. UDAMPE CALLE.4 A077 CALLE.5 A114) LIMA - LIMA - LIMA	\N	1	1	2018-01-18 00:53:50.247468	2018-01-18 00:53:50.247468	3
988	20601538424	SEGURIDAD INDUSTRIAL FERRETERA ALBERT E.I.R.L	AV. ARGENTINA NRO. 339 INT. G1 (-13 PSJ. PRINCIPAL 5 C.C LA BELLOTA) LIMA - LIMA - LIMA	\N	1	1	2018-01-18 01:01:07.749075	2018-01-18 01:01:07.749075	3
989	10427294302	CURIPACO SULCA ELENA MARITZA	MZA. A LOTE. 3B ASC. ALTAMIRANO YAÑEZ (ENACE CERCA AL HOSPEDAJE EL SILENCIO) AYACUCHO - HUAMANGA - AYACUCHO	\N	1	1	2018-01-18 16:35:03.449212	2018-01-18 16:35:03.449212	3
990	10722427616	REYES CAMPOMANES DORINA OLIVIA	AV. ARGENTINA NRO. 327 INT. L120 CENTRO COMERCIAL LA BELLOTA (PASAJE SECUNDARIO 13 INT. L1-20) LIMA - LIMA - LIMA	\N	1	1	2018-01-18 16:39:25.71727	2018-01-18 16:39:25.71727	3
991	10450089660	ANTAYHUA PRADO ROSA MARIA	AV. TUPAC AMARU MZA. B LOTE. 16 URB. 9 DE OCTUBRE (FTE A TAHUANTINSUYO POR COCA COLA) LIMA - LIMA - INDEPENDENCIA	\N	1	1	2018-01-18 16:59:36.263877	2018-01-18 16:59:36.263877	3
992	20601674000	AVRIL COMPAÑIA DE ENERGIA Y CONSTRUCCION S.A.C.	MZA. C LOTE. 05 ASC. PROP.CASA HUERTA SAN PEDRO (CARRETERA PANAMERICANA NORTE KM 26.5) LIMA - LIMA - PUENTE PIEDRA	\N	1	1	2018-01-18 17:20:09.921003	2018-01-18 17:20:09.921003	3
993	20451800265	CORPORACION DAVALOS E.I.R.L	JR. ANTONIO BAZO NRO. 792 INT. C109 Z.I. GALERIA LA VICTORIA LIMA - LIMA - LA VICTORIA	\N	1	1	2018-01-18 17:24:01.340526	2018-01-18 17:24:01.340526	3
994	10437011279	ROBLES VENTURA CARINA OLIVIA	JR. ANTONIO BAZO NRO. 796 INT. REF (INT.B104-B - GALERIAS VICTORIA) LIMA - LIMA - LA VICTORIA	\N	1	1	2018-01-18 17:26:31.714447	2018-01-18 17:26:31.714447	3
995	20517567036	UNIVERSAL TEXTIL YENNY S.A.C.	JR. SEBASTIAN BARRANCA NRO. 1565 INT. B004 C.C. LA REYNA (SEMI-SOTANO - ALT.DEL PARQUE CANEPA) LIMA - LIMA - LA VICTORIA	\N	1	1	2018-01-18 17:29:45.872449	2018-01-18 17:29:45.872449	3
996	20566496110	GRUPO BOLIVAR SERVICE S.A.C.	JR. POSEIDON MZA. A32 LOTE. 1 URB. SAGITARIO (ALT CDRA 14 AV LAS GAVIOTAS) LIMA - LIMA - SANTIAGO DE SURCO	\N	1	1	2018-01-18 17:36:37.450998	2018-01-18 17:36:37.450998	3
997	20458378747	AERO GAS DEL NORTE SAC	CAL.LOS CALIBRADORES MZA. 01 LOTE. 5, 7 Z.I. PARQUE INDUSTRIAL ACOMPIA (ALT. BALANZA Y TOLERACIA CERO - ANCON) LIMA - LIMA - ANCON	\N	1	1	2018-01-18 17:41:13.463403	2018-01-18 17:41:13.463403	3
998	20601405181	FD SAFETY GLOBAL S.A.C	AV. GUILLERMO DANSEY NRO. 360 DPTO. PS-1 INT. 16H LIMA - LIMA - LIMA	\N	1	1	2018-02-19 16:40:42.349993	2018-02-19 16:40:42.349993	3
999	20601954118	EPKA SEGURIDAD INDUSTRIAL S.A.C.	AV. ARGENTINA NRO. 523 TDA E.17 PLAZA BOULEVARD ACOPROM LIMA - LIMA - LIMA	\N	1	1	2018-02-19 16:46:22.85612	2018-02-19 16:46:22.85612	3
1000	10201082221	SUAREZ URCO FERNANDO RAUL	AV. ARGENTINA NRO. 327 INT. L114 C.C LA BELLOTA (INT. L1-14) LIMA - LIMA - LIMA	\N	1	1	2018-02-19 16:52:41.951771	2018-02-19 16:52:41.951771	3
1001	20602219454	CONFECCIONES INDUSTRIALES MAJADI E.I.R.L.	AV. REPUBLICA DE ARGENTINA NRO. 523 INT. F14 URB. LIMA INDUSTRIAL (1ER PISO C.C ACOPROM) LIMA - LIMA - LIMA	\N	1	1	2018-02-19 16:57:07.611541	2018-02-19 16:57:07.611541	3
1002	20600617819	RODFRA SAC.	JR. 28 DE JULIO NRO. 288 C.P. IMPERIAL (PARADERO DE AUTOS DE QUILAMANÁ.) LIMA - CAÑETE - IMPERIAL	\N	1	1	2018-02-19 17:03:09.662364	2018-02-19 17:03:09.662364	3
1003	20600985443	GRUPO INDURSEG S.A.C.	AV. CALCA NRO. 158 COO. VEINTISIETE DE ABRIL LIMA - LIMA - ATE	\N	1	1	2018-02-19 17:05:39.298447	2018-02-19 17:05:39.298447	3
1004	10702247166	CONDOR SANTIAGO ROSMEL LUIS	AV. GUILLERMO DANSEY NRO. 360 INT. PIS1 (ALT PLAZA DOS DE MAYO) LIMA - LIMA - LIMA	\N	1	1	2018-02-19 17:09:47.005524	2018-02-19 17:09:47.005524	3
1005	20601942772	D Y J DISTRIBUCIONES E INVERSIONES E.I.R.L.	CAL.ALTO ALIANZA NRO. 450 P.J. MIGUEL GRAU AREQUIPA - AREQUIPA - PAUCARPATA	\N	1	1	2018-02-19 17:27:28.153293	2018-02-19 17:27:28.153293	3
1006	20602794815	Z & L SEGURIDAD INDUSTRIAL ZHARICK E.I.R.L.	AV. ARGENTINA 327 NRO. 339 INT. S 7 OTR. C.C. BELLOTA LIMA - LIMA - LIMA	\N	1	1	2018-02-19 17:31:50.058749	2018-02-19 17:31:50.058749	3
1007	20225471607	PSA INGENIEROS S R LTDA	JR. JOSE OLAYA NRO. 590 (FRENTE AL INSTITUTO BITEC) ANCASH - SANTA - CHIMBOTE	\N	1	1	2018-02-19 17:35:17.077222	2018-02-19 17:35:17.077222	3
1008	10775752471	VIGO VILLAR DEBBY NYCOLLE	JR. HUAROCHIRI NRO. 550 INT. REF (REF. TDA SS114 PSJ A SOTANO CC FERRETERO) LIMA - LIMA - LIMA	\N	1	1	2018-02-19 17:38:50.047896	2018-02-19 17:38:50.047896	3
1009	20601302323	OTTO SERVICIOS GENERALES E.I.R.L.	AV. VENEZUELA TORRE C NRO. 1829 DPTO. 1402 LIMA - LIMA - LIMA	\N	1	1	2018-02-19 17:41:20.651278	2018-02-19 17:41:20.651278	3
1010	10468870733	MARQUEZ CESPEDES AUGUSTO MARINO	AV. ARGENTINA NRO. 327 (PSJE. 21 INT. S1-6 C.C. LA BELLOTA) LIMA - LIMA - LIMA	\N	1	1	2018-02-19 17:49:02.980972	2018-02-19 17:49:02.980972	3
1011	20602512364	IMPORTACIONES CNR ROMERO SAC	CAL.LAS PRENSAS NRO. 115 URB. NARANJAL INDUSTRIAL (ALTURA DE LA CUADRA 50 DE TUPAC AMARU) LIMA - LIMA - INDEPENDENCIA	\N	1	1	2018-02-19 18:17:55.158793	2018-02-19 18:17:55.158793	3
1078	20601017106	Food & Beverage Invest SAC		\N	1	1	2020-02-18 18:05:25.06702	2020-02-18 18:05:25.06702	1
1012	20389230724	SODIMAC PERU S.A.	AV. ANGAMOS ESTE NRO. 1805 INT. 2 (OFICINA 2) LIMA - LIMA - SURQUILLO	\N	1	1	2018-02-19 20:48:46.683715	2018-02-19 20:48:46.683715	3
1027	20602550398	CORPORACION SILVA PALOMINO E.I.R.L.	AV. ARGENTINA NRO. 327 INT. 5-H1 (PASAJE SECUNDARIO 17 C.C. LA BELLOTA) LIMA - LIMA - LIMA	\N	1	1	2018-04-15 14:32:23.160834	2018-04-15 14:32:23.160834	1
1028	20601285712	PROTESAFE S.A.C.	ALM.LOS HORIZONTES MZA. I-1 LOTE. 1 URB. HUERTOS DE VILLA LIMA - LIMA - CHORRILLOS	\N	1	1	2018-04-15 14:33:04.827238	2018-04-15 14:33:04.827238	1
1026	10105581829	CANDELA MESONES EMILIO JOSE	AV. GUILLERMO DANSEY NRO. 524 INT. A2-1 URB. LA COLONIAL LIMA - LIMA - LIMA	\N	1	1	2018-04-15 14:28:28.20691	2018-04-15 14:37:45.048236	1
1029	20569249903	ARGOS SOLUCIONES B Y C S.A.C.	AV. GUILLERMO DANSEY NRO. 524 INT. A2-1 URB. LA COLONIAL LIMA - LIMA - LIMA	\N	1	1	2018-04-15 16:42:54.310004	2018-04-15 16:42:54.310004	1
1030	20516351081	 COMERCIO Y NEGOCIOS POR OBRAS Y SERVICIOS SOCIEDAD COMERCIAL DE RESPONSABILIDAD LIMITADA	AV. ARGENTINA NRO. 327 INT. 7 (PABELLON M CENTRO COM. LA BELLOTA) LIMA - LIMA - LIMA	\N	2	1	2018-04-15 17:08:49.369177	2018-04-15 17:08:49.369177	1
1031	20601806461	ACERIAS TEFOLCA S.A.C	LOS LAURELES OESTE NRO. 139 (CARABAYLL, ALT KM 19.5 DE TUPAC AMARU) LIMA - LIMA - CARABAYLLO	\N	2	1	2018-04-15 17:09:29.411391	2018-04-15 17:09:29.411391	1
1032	20508898402	AMAT INVERSIONES SAC	JR. AMERICA NRO. 308 (2DO. PISO) LIMA - LIMA - LA VICTORIA	\N	2	1	2018-04-15 17:10:08.935343	2018-04-15 17:10:08.935343	1
1033	20601740274	BOBINAS DE ACERO BRODISA E.I.R.L.	CAL.LOS LAURELES OESTE NRO. 139 URB. EL PROGRESO LIMA - LIMA - CARABAYLLO	\N	2	1	2018-04-15 17:10:37.400118	2018-04-15 17:10:37.400118	1
1034	10801866412	MARTINEZ SISLEY GIANNI FARLEY	MZA. C LOTE. 26 APV. PUEBLO INFANTAS (ALT DE KM 21.5 PANAMERICANA NORTE) LIMA - LIMA - SAN MARTIN DE PORRES	\N	2	1	2018-04-15 17:11:10.380429	2018-04-15 17:11:10.380429	1
1035	10086910352	MENDOZA ENCALADA EDOY	JR. ANTONIO BAZO NRO. 657 INT. 101 URB. SAN PABLO LIMA - LIMA - LA VICTORIA	\N	2	1	2018-04-15 17:11:52.714047	2018-04-15 17:11:52.714047	1
1036	20602389902	NGB GROUP SERVICIOS GENERALES S.A.C.	CAL.37 MZA. W LOTE. 14 LIMA - LIMA - VILLA EL SALVADOR	\N	2	1	2018-04-15 17:12:20.146226	2018-04-15 17:12:20.146226	1
1037	20602859062	TOOLS & EPP'S COMINSI SOCIEDAD ANONIMA CERRADA	R. CAHUIDE NRO. 847 URB. SAN JOSE (A 4 CASAS DE ESQ. JR. TUPAC AMARU) PUNO - SAN ROMAN - JULIACA	\N	1	1	2018-04-16 04:06:50.619146	2018-04-16 04:06:50.619146	3
1038	20602540899 	KBE IMPLESEG PERU E.I.R.L.	AV. ARGENTINA NRO. 327 (PASAJE 16 TDA.H1-11 C.C. LA BELLOTA) LIMA - LIMA - LIMA	\N	1	1	2018-04-16 04:45:44.166412	2018-04-16 04:45:44.166412	3
1039	10403144601	GUTIERREZ HUAMANI YULY MARIELA		\N	1	1	2018-04-16 04:50:24.213086	2018-04-16 04:50:24.213086	3
1040	20524744423	P.Z. IMPORTACIONES S.A.C.	CAL.2 MZA. L LOTE. 6 URB. CIUDAD DEL PESCADOR (ALT. CDRA. 32 AV. COLONIAL) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - BELLAVISTA	\N	1	1	2018-04-16 05:05:15.028841	2018-04-16 05:05:15.028841	3
1041	10735108692	RAMOS CUEVA SIRLE YISELA		\N	1	1	2018-04-16 05:17:58.521677	2018-04-16 05:17:58.521677	3
1042	10099343724	VILLANTOY MORENO MARIA CONSUELO		\N	1	1	2018-04-16 05:23:13.75667	2018-04-16 05:23:13.75667	3
1044	20602486134 	COMERCIAL ARCHO E.I.R.L.	JR. ANTONIO BAZO NRO. 790 URB. EL PORVENIR LIMA - LIMA - LA VICTORIA	\N	1	1	2018-04-18 20:49:20.173433	2018-04-18 20:49:20.173433	3
1162	20107271971	ALONSO , HOHAGEN Y ASOCIADOS S. CIVIL DE R. L. 	sin conexion	\N	1	1	2020-08-18 13:57:58.172688	2020-08-18 13:57:58.172688	3
1046	10407106640	LIZARBE TELLO MORIS JAMES		\N	2	1	2019-09-15 19:15:32.089442	2019-09-15 19:15:32.089442	1
1047	20602425674	CORPORACION COPIAS EXPRESS S.R.L.	\tAV. ALFREDO BENAVIDES NRO. 229 COM. SAN MIGUEL DE MIRAFLORES LIMA - LIMA - MIRAFLORES	\N	2	1	2019-09-15 19:20:49.788256	2019-09-15 19:20:49.788256	1
1048	20553501831	BIM GROUP E.I.R.L.	CAL. PASTAZA 119 URB. CHACRA .BREÑA - LIMA - LIMA	\N	2	1	2019-09-15 19:22:00.593957	2019-09-15 19:22:00.593957	1
1049	20565245091	PROMETHEUS INGENIEROS S.A.C.	AV. LAS PALMERAS 5324 URB. VILLA DEL NORTE LOS OLIVOS - LIMA - LIMA	\N	2	1	2019-09-15 19:22:45.328806	2019-09-15 19:22:45.328806	1
1050	20603468148	CORPORACION DAHLEE S.A.C.	CAL. LAS ACACIAS .312 URB. SANTA INES ESQ N. AYLLON 2620\r\nCHACLACAYO - LIMA - LIMA	\N	2	1	2019-09-15 19:25:40.141095	2019-09-15 19:25:40.141095	1
1051	20503379521	INCORP INGENIERIA Y CONSTRUCCION\r\nSOCIEDAD ANONIMA CERRADA	JR. JOAQUIN CAPELO 3056 P.J. MIRONES .LIMA - LIMA - LIMA	\N	1	1	2019-09-15 19:50:32.327772	2019-09-15 19:50:32.327772	1
1053	20600779495	CONSORCIO SAN MIGUEL	CAL.JACOBO ROUSSEAU NRO. 237 URB. SAN BORJA LIMA - LIMA - SAN BORJA	\N	1	1	2019-10-17 22:35:45.791794	2019-10-17 22:35:45.791794	1
1058	20600686691	DPP CORP S.A.	HABIDO\r\nDirección del Domicilio Fiscal:\tCAL.SAN PATRICIO NRO. 295 URB. VILLA MARINA LIMA - LIMA - CHORRILLOS	\N	1	1	2019-10-17 23:26:06.973978	2019-10-17 23:26:06.973978	1
1059	20537979896	GRUPO MULTI SERVICIOS E.I.R.L.	AV. INCA GARCILAZO DE LA VEGA NRO. 1348 INT. 1056 (SSB-115) LIMA - LIMA - LIMA	\N	1	1	2019-10-17 23:29:54.018161	2019-10-17 23:29:54.018161	1
1060	20109283623	PRISMA INGENIEROS ASESOR. CONSULT. S.A.C	\tAV. JORGE CHAVEZ NRO. 263 INT. 601 (PROLONGACION DE COMANDANTE ESPINAR) LIMA - LIMA - MIRAFLORES	\N	1	1	2019-10-17 23:33:33.325022	2019-10-17 23:33:33.325022	1
1061	20392864670	GRUPO PURITO NORTE SOCIEDAD ANONIMA CERRADA	JR. ANDAHUAYLAS NRO. 1430 LIMA - LIMA - LIMA	\N	1	1	2019-11-18 01:32:30.383293	2019-11-18 01:32:30.383293	1
1062	15511281170	XUE MEIFANG		\N	1	1	2019-11-18 01:37:48.047017	2019-11-18 01:37:48.047017	1
1063	20510890818	TECNOLOGIAS MOVILES DEL PERU SOCIEDAD ANONIMA CERRADA	\tCAL.SCHELL NRO. 280A COM. SAN MIGUEL DE MIRAFLORES LIMA - LIMA - MIRAFLORES	\N	1	1	2019-11-18 01:43:58.496598	2019-11-18 01:43:58.496598	1
1064	20500732891	RESTAURANT HUACA PUCLLANA S.A.C.	CAL.GRAL.BORGON0(CDRA.8) NRO. S/N (HUACA PUCLLANA(ALT.CDRA.45 AV.AREQUIPA)) LIMA - LIMA - MIRAFLORES	\N	1	1	2019-11-18 01:49:26.627457	2019-11-18 01:49:26.627457	1
1065	20298569311	ESTACION DE SERVICIOS CORPAC S.A.	\tAV. ENRIQUE CANAVAL Y MOREYRA NRO. 202 URB. LIMATAMBO LIMA - LIMA - SAN ISIDRO	\N	1	1	2019-11-18 02:02:30.226497	2019-11-18 02:02:30.226497	1
1066	20511045526	DOGIA S.A.C	AV. ANGAMOS OESTE NRO. 598 URB. AMERICA LIMA - LIMA - MIRAFLORES	\N	1	1	2019-11-18 02:08:20.817399	2019-11-18 02:08:20.817399	1
1067	20602472494	SAMUEL GUZMAN PRADO E.I.R.L.	AV. ALFONSO UGARTE NRO. 1428 DPTO. 506 LIMA - LIMA - BREÑA	\N	1	1	2019-11-18 02:15:20.574861	2019-11-18 02:15:20.574861	1
1068	20534707933	RSMAT CONTRATISTAS GENERALES S.A.C.	\tJR. LUIS CAVERO MZA. G LOTE. 18 LIMA - LIMA - SAN JUAN DE LURIGANCHO	\N	1	1	2019-11-18 02:18:09.54472	2019-11-18 02:18:09.54472	1
1069	20100195080	CONSORCIO INDUSTRIAL DE AREQUIPA SA	CAL.JUAN BARCLAY HAR. 380-382 NRO. 380- Z.I. PARQUE INDUSTRIAL AREQUIPA - AREQUIPA - AREQUIPA	\N	1	1	2019-12-18 00:20:30.999619	2019-12-18 00:20:30.999619	1
1054	20153045021	SIGDELO S.A.	AV. JAVIER PRADO OESTE NRO. 1650 RES. SAN ISIDRO LIMA - LIMA - SAN ISIDRO	\N	1	1	2019-10-17 22:52:21.936054	2020-06-17 20:35:48.742012	1
1055	20516816148	DAMC INGENIERIA Y MEDIO AMBIENTE S.A.C.	\tJR. PEDRO RUIZ NRO. 250 DPTO. 104 (ALTURA CDRA 10 AV BRASIL) LIMA - LIMA - BREÑA	\N	1	1	2019-10-17 22:57:27.093871	2020-06-17 20:36:12.08598	1
1056	20378890161	RASH PERU S.A.C.	\tAV. SALAVERRY NRO. 3310 (A DOS CDRAS. AV. EJERCITO) LIMA - LIMA - MAGDALENA DEL MAR	\N	1	1	2019-10-17 23:07:24.559149	2020-06-17 20:36:30.023759	1
1057	20549489134	PHOTO Y LIBRERIA CLAUDIO E.I.R.L.	AV. JOSE PARDO NRO. 718 (FRENTE A SUPERMERCADO VIVANDA) LIMA - LIMA - MIRAFLORES	\N	1	1	2019-10-17 23:17:32.403686	2020-06-17 20:36:50.071749	1
1014	20519150621	VS INDUSTRIAL SUPPLIES SOCIEDAD ANONIMA CERRADA	JR. AUGUSTO DURAND NRO. 2459 (ALT. CUADRA 1 DE ROSA TORO) LIMA - LIMA - SAN LUIS	\N	1	1	2018-03-15 14:42:48.158977	2018-03-15 14:42:48.158977	3
1015	20554928596	C & S POLINARIO S.A.C.	MZA. D LOTE. 07 APV. SANTA ROSA II ETAPA (7MA ETAPA URB STO DOMINGO) LIMA - LIMA - CARABAYLLO	\N	1	1	2018-03-19 15:42:25.029029	2018-03-19 15:42:25.029029	3
1016	20601224195	AS SEÑALIZACION INTEGRAL E.I.R.L.	CAL.PACASMAYO NRO. 459 C.C. LA BELLOTA STAND L1-10 LIMA - LIMA - LIMA	\N	1	1	2018-03-19 15:44:49.326034	2018-03-19 15:44:49.326034	3
1017	10420040194	MORALES SANCHEZ DANY DANIEL		\N	1	1	2018-03-19 16:11:40.722294	2018-03-19 16:11:40.722294	3
1018	10439850626	RODRIGUEZ ZEGARRA EVA		\N	1	1	2018-03-19 16:16:35.319128	2018-03-19 16:16:35.319128	3
1019	20601893917	DHINSEC M & D E.I.R.L.	AV. GUILLERMO DANSEY NRO. 330 INT. 222 CERCADO DE LIMA (COSTADO POLICLÍNICO RAMÓN CASTILLA) LIMA - LIMA - LIMA	\N	1	1	2018-03-19 16:22:01.855161	2018-03-19 16:22:01.855161	3
1020	10106722787	ESCALANTE FLORES JOSE LUIS		\N	1	1	2018-03-19 16:24:11.267055	2018-03-19 16:24:11.267055	3
1021	20101400132	ETIQUETAS AUTOADHESIVAS S.A.C.	CAL.OMEGA NRO. 115 PARQUE INDUSTRIAL (PQUE. INDUSTRIAL DE INDUSTRIA Y COMERCIO) PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO	\N	1	1	2018-03-19 16:27:28.467485	2018-03-19 16:27:28.467485	3
1022	20518341601	SORIPER SOCIEDAD ANONIMA CERRADA	AV. ARGENTINA NRO. 327 INT. F 12 (PASAJE SECUNDARIO 4) LIMA - LIMA - LIMA	\N	1	1	2018-03-19 16:33:35.682704	2018-03-19 16:33:35.682704	3
1024	20601781345	SAFETY IMPORT LUIS FABIANO S.A.C.	CAL.ASCOPE NRO. 402 INT. A-11 URB. LIMA INDUSTRIAL LIMA - LIMA - LIMA	\N	1	1	2018-03-19 22:50:20.075576	2018-03-19 22:50:20.075576	3
1025	20602095852	FULL METAL COMPANY S.A.C	AV. ARGENTINA NRO. 451 (AL COSTADO DEL BCP) LIMA - LIMA - LIMA	\N	1	1	2018-03-19 23:49:36.510821	2018-03-19 23:49:36.510821	3
1023	20602344496	JERAMA PERU E.I.R.L.	AV. ARGENTINA NRO. 639 INT. 163 C.C. UDAMPE (CALLE 7D) LIMA - LIMA - LIMA	\N	1	1	2018-03-19 22:46:39.020557	2018-03-20 01:59:49.704919	3
1070	10459130000	RIVAS RIVERA RONALD EMILIO		\N	1	1	2019-12-18 00:31:15.260757	2019-12-18 00:31:15.260757	1
1071	20378825858	SOLUCIONES INTEGRALES DE INFORMATICA S.A.C.	AV. GRAU NRO. 151 LIMA - LIMA - MIRAFLORES	\N	1	1	2020-01-17 02:35:27.103701	2020-01-17 02:35:27.103701	1
1072	20100123330	DELOSI S.A.	AV. JAVIER PRADO OESTE NRO. 1650 LIMA - LIMA - SAN ISIDRO	\N	1	1	2020-01-17 02:42:58.609191	2020-01-17 02:42:58.609191	1
1073	10480322393	RAMOS COLBAQUI WILSER EYDER		\N	1	1	2020-01-17 02:45:24.284954	2020-01-17 02:45:24.284954	1
1074	20518152115	MOA NEGOCIOS SOCIEDAD ANONIMA CERRADA	\tJR. MARIANO ANGULO NRO. 2456 LIMA - LIMA - LIMA	\N	1	1	2020-01-17 02:56:11.831685	2020-01-17 02:56:11.831685	1
1075	20547477139	POWER CAPACITORS MANUFACTURERS S.A.C.	JR. OTUZCO NRO. 183 URB. SAN FELIPE (ALT. DEL COLEGIO SANTA MARIA DE JESUS) LIMA - LIMA - COMAS	\N	1	1	2020-01-17 03:02:59.697464	2020-01-17 03:02:59.697464	1
1076	20604866716	A & E DISEÑO BIM Y CONSTRUCCION S.A.C.	JR. SANTA MERCEDES NRO. 432 URB. PALAO ET. DOS (1 PISO, FRENTE PARQUE LA PERA) LIMA - LIMA - SAN MARTIN DE PORRES	\N	1	1	2020-01-17 03:06:37.262297	2020-01-17 03:06:37.262297	1
1079	10071460091	Lazo Aquino Gregorio Hugo		\N	1	1	2020-02-18 18:05:41.649822	2020-02-18 18:05:41.649822	1
1080	20601534879	Sahalee S.A.C.		\N	1	1	2020-02-18 18:05:54.903584	2020-02-18 18:05:54.903584	1
1081	20501751384	Importadora Valeria S.A.		\N	1	1	2020-02-18 18:06:13.428215	2020-02-18 18:06:13.428215	1
1082	20100047137	Union Ychikawa S.A.		\N	1	1	2020-02-18 18:06:49.344387	2020-02-18 18:06:49.344387	1
1083	20603454635	Happy Long S.A.C		\N	1	1	2020-02-18 18:07:09.766232	2020-02-18 18:07:09.766232	1
193	20112273922	Tiendas del Mejoramiento del Hogar S.A.	JR. SAN LORENZO NRO. 881 (ESQ. ANGAMOS CON REP. DE PANAMA) LIMA - LIMA - SURQUILLO		2	1	2016-10-26 00:00:00	2020-02-18 18:08:14.966647	1
1084	20549498478	Parrilla Campo Verde EIRL		\N	1	1	2020-02-18 18:08:32.076271	2020-02-18 18:08:32.076271	1
1085	10415639819	Placido Sifuentes Jaiem		\N	1	1	2020-02-18 18:08:48.087832	2020-02-18 18:08:48.087832	1
1086	20602503985	Johnson SAC		\N	1	1	2020-02-18 18:09:06.06447	2020-02-18 18:09:06.06447	1
1087	20265815830	Corporación Turística Peruana SAC		\N	1	1	2020-02-18 18:09:35.083003	2020-02-18 18:09:35.083003	1
1089	10456827115	MOYA CHUPICA WALTER FREDDY		\N	1	1	2020-02-20 18:06:09.623855	2020-02-20 18:06:09.623855	1
1092	10102282600	JIMENEZ ALCACONDORI OMAR CLAUDE		\N	1	1	2020-02-20 18:09:02.874115	2020-02-20 18:09:02.874115	1
1093	20601770700	BAMBU CORP S.R.L.	AV. 2 MZA. D1 LOTE. 28 URB. SAN ANTONIO DE CARAPONGO 1ET (ALT DEL PARADERO COLEGIO) LIMA - LIMA - LURIGANCHO	\N	1	1	2020-02-20 18:09:45.794206	2020-02-20 18:09:45.794206	1
1163	20503866863	OFTALMEDICA SERVICIOS GENERALES S.R.L. 	sin conexion	\N	1	1	2020-08-18 13:57:58.220569	2020-08-18 13:57:58.220569	3
1096	20600915488	INVERSIONES GEORGINA VILLA E.I.R.L.	MZA. B LOTE. 30 URB. ALAMEDA DE ÑAÑA LIMA - LIMA - LURIGANCHO	\N	1	1	2020-02-20 18:11:35.103413	2020-02-20 18:11:35.103413	1
1099	20267178331 	NEXUS TECHNOLOGY S.A.C.	AV. RICARDO PALMA 693 URB. SAN ANTONIO VIA EXPRESA - PUENTE RICARDO PALMA LIMA-LIMA-MIRAFLORES 	\N	1	1	2020-02-20 18:36:58.724023	2020-02-20 18:36:58.724023	1
1100	20493020618 	TIENDAS PERUANAS SA	\tAV. AVIACION NRO. 2405 URB. SAN BORJA (PISO 7) LIMA - LIMA - SAN BORJA	\N	1	1	2020-02-20 18:58:58.234166	2020-02-20 18:58:58.234166	1
1164	20601225566	NATIVA ORGANICS S.A.C	sin conexion	\N	1	1	2020-08-18 13:57:58.285267	2020-08-18 13:57:58.285267	3
1104	20347764664	AUTOLAND S.A.	AV. ALFREDO BENAVIDES NRO. 4040 URB. CHAMA LIMA - LIMA - SANTIAGO DE SURCO	\N	1	1	2020-04-20 16:16:06.342724	2020-04-20 16:16:06.342724	1
1105	20602051677	IMPORTADORA KONIG HOME S.A.C.	JR. PUNO NRO. 660 INT. 110 URB. BARRIOS ALTOS LIMA - LIMA - LIM	\N	1	1	2020-04-20 16:47:00.156302	2020-04-20 16:47:00.156302	1
1106	20515634682	AYUMI S.A.C.	AV. ABANCAY NRO. 648 LIMA - LIMA - LIMA	\N	1	1	2020-04-20 16:54:14.365618	2020-04-20 16:54:14.365618	1
1107	20601362083	IMPORTACIONES ANGELY SOCIEDAD ANONIMA CERRADA	\tJR. PUNO NRO. 642 INT. 144 URB. BARRIOS ALTOS LIMA - LIMA - LIMA	\N	1	1	2020-04-20 17:18:01.653781	2020-04-20 17:18:01.653781	1
1077	20553890803	GRUPO INGENIEROS ESPECIALISTAS S.A.C.	\tAV. CRISTOBAL DE PERALTA NRO. 199 DPTO. 801 URB. VALLE HERMOSO DE MONTERRICO LIMA - LIMA - SANTIAGO DE SURCO	\N	1	1	2020-01-17 03:13:24.595355	2020-06-17 20:37:20.408579	1
1090	20101414940	INDUSTRIAS EL CISNE S.A.C.	AV. LOS ALGARROBOS MZA. F LOTE. 2 LIMA - LIMA - VILLA EL SALVADOR	\N	1	1	2020-02-20 18:07:15.991808	2020-06-17 20:37:48.981881	1
1091	20510069251	DH EMPRESAS PERU S.A.	AV. MANUEL OLGUIN NRO. 211 INT. 504 LIMA - LIMA - SANTIAGO DE SURCO	\N	1	1	2020-02-20 18:08:15.281459	2020-06-17 20:38:21.660773	1
1094	10756823669	ESPINOZA MALDONADO MARIA FERNANDA		\N	1	1	2020-02-20 18:10:21.221122	2020-06-17 20:38:51.78038	1
1097	20551825583	PUERTO NORTE PERU E.I.R.L.	\tAV. ESPAÑA NRO. 224 LIMA - LIMA - LIMA	\N	1	1	2020-02-20 18:12:14.24288	2020-06-17 20:39:10.015095	1
1098	20544622804	PAPACHOS RESTAURANTES S.A.C.	\tAV. JOSE A. LARCO NRO. 1232 INT. 1101 (1102-1103-1104) LIMA - LIMA - MIRAFLORES	\N	1	1	2020-02-20 18:12:52.731581	2020-06-17 20:39:29.742654	1
1102	20508565934	HIPERMERCADOS TOTTUS S.A	AV. ANGAMOS ESTE NRO. 1805 INT. P10 (PISO 10 OF 5 Y PISO 11 OF 6A) LIMA - LIMA - SURQUILLO	\N	1	1	2020-02-20 19:00:23.226505	2020-06-17 20:42:49.814517	1
1165	20548173478	INDUSTRIAS EUROCABLE E.I.R.L	sin conexion	\N	1	1	2020-08-18 13:57:58.368825	2020-08-18 13:57:58.368825	3
1166	20139082142	INDUSTRIAS EUROLUZ E.I.R.L	sin conexion	\N	1	1	2020-08-18 13:57:58.473011	2020-08-18 13:57:58.473011	3
1108	20430714164	RESTAURANTE CHICHARRONERIA SARITA EIRL.	\tMZA. G1 LOTE. 16 URB. EL CARMEN LIMA - LIMA - PUNTA HERMOSA	\N	1	1	2020-04-20 18:41:04.936705	2020-04-20 18:41:04.936705	1
1109	20298674611	FRANQUICIAS ALIMENTARIAS S.A.	AV. CIRCUNVALACION DEL GOLF LOS INCAS NRO. 134 INT. 402 URB. CLUB GOLF LOS INCAS (EDIFICIO PANORAMA TORRE 2) LIMA - LIMA - SANTIAGO DE SURCO	\N	1	1	2020-04-21 22:27:23.539916	2020-04-21 22:27:23.539916	1
1110	20605576274 	SOLUCIONES DIGITALES V & C S.A.C.	\tAV. GREGORIO ESCOBEDO NRO. 764 LIMA - LIMA - JESUS MARIA	\N	1	1	2020-04-21 22:34:49.928378	2020-04-21 22:34:49.928378	1
1111	10092676124	PEREZ VEGA CARMEN		\N	1	1	2020-04-21 22:50:01.370675	2020-04-21 22:50:01.370675	1
1114	20555190132	MT INDUSTRIAL S.A.C.	AV. ARGENTINA NRO. 2317 PROV. CONST. DEL CALLAO - PROV. CONST. DEL CALLAO - CALLAO	\N	1	1	2020-06-17 18:50:10.595419	2020-06-17 18:50:10.595419	3
1095	20605259759	AGUA MARTHIM'S PERU E.I.R.L.	AV. BERNARDO BALAGUER MZA. B LOTE. 02 URB. ALAMEDA DE ÑAÑA LIMA - LIMA - LURIGANCHO	\N	1	1	2020-02-20 18:10:56.610397	2020-06-17 20:11:35.979781	1
1045	20388829452	LASINO S.A.	\tAV. JAVIER PRADO OESTE NRO. 1650 LIMA - LIMA - SAN ISIDRO	\N	2	1	2019-09-15 19:13:07.145198	2020-06-17 20:35:19.993852	1
1167	20552006373	ROSVAL INVERSIONES Y SERVICIOS S.A.C	sin conexion	\N	1	1	2020-08-18 13:58:34.69474	2020-08-18 13:58:34.69474	3
1168	20602008348	ELECTRO INGENIERIA FC S.A.C	sin conexion	\N	1	1	2020-08-18 13:58:34.758889	2020-08-18 13:58:34.758889	3
1169	20330401991	BANCO FALABELLA PERU S.A	sin conexion	\N	1	1	2020-08-19 02:26:28.110674	2020-08-19 02:26:28.110674	3
1170	20544998413	SOCIENDAD DISTRIBUIDORA FERRETERA SAC	sin conexion	\N	1	1	2020-08-19 02:27:37.953896	2020-08-19 02:27:37.953896	3
1119	10459335582	POVEZ ESTEBAN ESPERANZA	sin conexion	\N	1	1	2020-07-06 16:11:07.903119	2020-07-06 16:11:07.903119	3
1120	20550895588	SOL Y SABOR INVERSIONES EIRL	sin conexion	\N	1	1	2020-07-06 16:11:07.963314	2020-07-06 16:11:07.963314	3
1121	20546399533	PESART SAC	sin conexion	\N	1	1	2020-07-06 16:11:07.998252	2020-07-06 16:11:07.998252	3
1122	10466753462	JUDITH GENOVEVA CARRASCO	sin conexion	\N	1	1	2020-07-06 16:11:08.06018	2020-07-06 16:11:08.06018	3
1123	20604622558	NT MARKETING	sin conexion	\N	1	1	2020-07-06 16:45:32.731939	2020-07-06 16:45:32.731939	3
1124	20267178331	NEXUS TECHNOLOGY S.A.C,	sin conexion	\N	1	1	2020-07-06 16:47:20.434617	2020-07-06 16:47:20.434617	3
1125	20505853521	PAPELERA GENERAL SAC	sin conexion	\N	1	1	2020-07-06 16:55:27.773163	2020-07-06 16:55:27.773163	3
1126	20100128056	SAGA FALABELLA SA	sin conexion	\N	1	1	2020-07-06 16:55:28.005732	2020-07-06 16:55:28.005732	3
1127	10316246759	MARIA ROSAS COLONIA	sin conexion	\N	1	1	2020-07-06 16:55:28.048392	2020-07-06 16:55:28.048392	3
1128	20493020618	TIENDAS PERUANAS S.A.	sin conexion	\N	1	1	2020-07-06 16:55:28.134709	2020-07-06 16:55:28.134709	3
1129	20543562778	TICONA HNOS. FACTORIA S.A.C	sin conexion	\N	1	1	2020-07-15 18:10:30.904246	2020-07-15 18:10:30.904246	3
1171	20392500121	J.I. GENERAL INVESTMENTS S.A.C	sin conexion	\N	1	1	2020-08-19 02:27:38.0689	2020-08-19 02:27:38.0689	3
1172	20538045781	TESSILE FORZA E.I.R.L.	sin conexion	\N	1	1	2020-08-19 02:27:38.13416	2020-08-19 02:27:38.13416	3
1173	20512900896	J.C. MEDICAL SUPPLIES S.A.C.	sin conexion	\N	1	1	2020-08-19 02:27:38.210419	2020-08-19 02:27:38.210419	3
1174	20553597685	GRUPO INGETALENTO E.I.R.L.	sin conexion	\N	1	1	2020-08-20 13:26:05.48708	2020-08-20 13:26:05.48708	3
1175	20602881556	MANTENIMIENTOS "LA GOLONDRINA" E.I.R.L	sin conexion	\N	1	1	2020-08-20 13:26:05.62376	2020-08-20 13:26:05.62376	3
1176	20454870591	BS GRUPO S.A.C.	sin conexion	\N	1	1	2020-08-20 13:29:54.467905	2020-08-20 13:29:54.467905	3
1177	20605503056	FIX PERU S.A.C	sin conexion	\N	1	1	2020-09-07 14:57:04.036091	2020-09-07 14:57:04.036091	3
1178	20492055116	DIAJO SAC	sin conexion	\N	1	1	2020-09-07 14:58:40.770987	2020-09-07 14:58:40.770987	3
1179	20601178339	KNOWMAD S.A.C	sin conexion	\N	1	1	2020-09-07 14:59:36.773082	2020-09-07 14:59:36.773082	3
1180	20106566721	CLASS POINT S.A.	sin conexion	\N	1	1	2020-09-09 16:18:40.232685	2020-09-09 16:18:40.232685	3
1181	20546854834	NAZCA TEX SAC	sin conexion	\N	1	1	2020-09-09 16:18:40.289046	2020-09-09 16:18:40.289046	3
1182	20601033446	R&R SERVICIOS AUTOMOTRICES S.A.C	sin conexion	\N	1	1	2020-09-09 16:18:40.362561	2020-09-09 16:18:40.362561	3
1183	20512002090	MIFARMA SAC	sin conexion	\N	1	1	2020-09-17 23:08:47.083126	2020-09-17 23:08:47.083126	3
1185	20107463705	CLINICA SAN PABLO S.A.C.	sin conexion	\N	1	1	2020-09-17 23:08:47.371327	2020-09-17 23:08:47.371327	3
1186	20160766191	UNIVERSIDAD NACIONAL DE SAN MARTIN	sin conexion	\N	1	1	2020-09-17 23:38:08.387313	2020-09-17 23:38:08.387313	3
1187	20601916704	DISTRIBUIDORA Y ACABADOS EDWARD S.A.C.	sin conexion	\N	1	1	2020-09-17 23:38:49.606411	2020-09-17 23:38:49.606411	3
1188	10418182640	CALDERON MEDINA SERGIO ELEODORO	sin conexion	\N	1	1	2020-09-17 23:38:49.716551	2020-09-17 23:38:49.716551	3
1189	20522442187	INVERSIONES DECOR CENTRO S.A.C.	sin conexion	\N	1	1	2020-09-17 23:38:49.782245	2020-09-17 23:38:49.782245	3
1190	20602023118	CORPORACION LAS AMAZONAS V & A S.A.C.	sin conexion	\N	1	1	2020-09-17 23:38:49.868944	2020-09-17 23:38:49.868944	3
1191	20141189850	CONECTA RETAIL S.A	sin conexion	\N	1	1	2020-09-17 23:38:49.944522	2020-09-17 23:38:49.944522	3
1184	20431062870	COMEXA COMERCIALIZADORA EXTRANJERA S.A	sin conexion	\N	1	1	2020-09-17 23:08:47.22991	2020-09-17 23:44:46.614804	1
1192	20600156242	CONCEPTOS & NEGOCIOS S.A.C	sin conexion	\N	1	1	2020-10-07 16:30:15.077362	2020-10-07 16:30:15.077362	3
1193	20466776336	CENTRO CERAMICO LAS FLORES S.A.C.	sin conexion	\N	1	1	2020-10-07 16:38:07.520506	2020-10-07 16:38:07.520506	3
1194	20550653819	MUEBLES JIREH EIRL	sin conexion	\N	1	1	2020-10-07 16:38:07.573198	2020-10-07 16:38:07.573198	3
1195	20138149022 	UNIVERSIDAD DE SAN MARTIN DE PORRES 	sin conexion	\N	1	1	2020-10-07 16:41:58.448192	2020-10-07 16:41:58.448192	3
1196	20138122256 	UNIVERSIDAD PERUANA UNION 	sin conexion	\N	1	1	2020-10-07 16:41:58.561691	2020-10-07 16:41:58.561691	3
1197	\t20557292552	EDH PERU E.I.R.L.	sin conexion	\N	1	1	2020-10-13 15:02:48.331248	2020-10-13 15:02:48.331248	3
1198	20605254315	SAIDEL S.A.C	sin conexion	\N	1	1	2020-10-13 15:02:48.544365	2020-10-13 15:02:48.544365	3
1199	20136532597	GENETICA SOCIEDAD CIVIL DE RESP.LIMITADA	sin conexion	\N	1	1	2020-10-13 15:02:48.601556	2020-10-13 15:02:48.601556	3
1200	20100041953	RIMAC SEGUROS Y REASEGUROS	sin conexion	\N	1	1	2020-10-19 17:46:00.468393	2020-10-19 17:46:00.468393	3
1201	20147720492	LABORATORIOS ROE S.A	sin conexion	\N	1	1	2020-10-19 17:46:00.656061	2020-10-19 17:46:00.656061	3
1202	20602310711	INVERSIONES JUSTAFOR DOS S.A.C	sin conexion	\N	1	1	2020-10-19 17:47:00.278611	2020-10-19 17:47:00.278611	3
1203	20536676865	VILLA INVEST S.A.C	sin conexion	\N	1	1	2020-10-19 17:47:00.343887	2020-10-19 17:47:00.343887	3
1204	20552991371	RONG WEI S.A.C	sin conexion	\N	1	1	2020-10-19 17:47:00.490014	2020-10-19 17:47:00.490014	3
1205	20522533905	GENWA INTERNACIONAL E.I.R.L	sin conexion	\N	1	1	2020-10-20 17:55:24.266425	2020-10-20 17:55:24.266425	3
1206	20492092313	MAKRO SUPERMAYORISTA S.A.	sin conexion	\N	1	1	2020-10-20 17:55:24.329488	2020-10-20 17:55:24.329488	3
1207	20605986162	BLASCOLOR PERU E.I.R.L.	sin conexion	\N	1	1	2020-10-20 17:55:24.396348	2020-10-20 17:55:24.396348	3
1208	20330401991 	BANCO FALABELLA PERU S.A 	sin conexion	\N	1	1	2020-10-20 17:57:05.689291	2020-10-20 17:57:05.689291	3
1209	10101503882	HUANACUNI CANDIA RAUL	sin conexion	\N	1	1	2020-10-20 17:57:05.757804	2020-10-20 17:57:05.757804	3
1210	20605941568	NOVENTAYOCHO PUBLICIDAD S.A.C.	sin conexion	\N	1	1	2020-10-20 17:57:05.937283	2020-10-20 17:57:05.937283	3
1211	20468557879	FBR IMPRESIONES E.I.R.L	sin conexion	\N	1	1	2020-10-20 18:02:24.08906	2020-10-20 18:02:24.08906	3
1212	20555957042	LE COQUELICOT E.I.R.L	sin conexion	\N	1	1	2020-10-20 18:02:24.137645	2020-10-20 18:02:24.137645	3
1213	20467534026	AMÉRICA MÓVIL PERÚ S.A.C.	sin conexion	\N	1	1	2020-10-20 18:02:24.18559	2020-10-20 18:02:24.18559	3
1214	73190852 	CLAUDIA ALEJANDRA MEZA VELIT 	sin conexion	\N	1	1	2020-10-20 18:03:25.428298	2020-10-20 18:03:25.428298	3
1215	47504483 	ANDREA SYLVIA BOLOÑA CUEVAS	sin conexion	\N	1	1	2020-10-20 18:03:25.679477	2020-10-20 18:03:25.679477	3
1216	20521704943	PIZZAS & PASTAS BAMBINO DUE E.I.R.L	sin conexion	\N	1	1	2020-11-17 16:27:37.210251	2020-11-17 16:27:37.210251	3
1217	20603706804	PORMAYOR.PE S.A.	sin conexion	\N	1	1	2020-11-17 16:27:37.457153	2020-11-17 16:27:37.457153	3
1218	20605815805	MONTANA PERU S.A.C	sin conexion	\N	1	1	2020-11-17 18:05:57.98786	2020-11-17 18:05:57.98786	3
1219	20600643127	TEXTILES GONZALO E.I.R.L	sin conexion	\N	1	1	2020-11-17 18:05:58.039575	2020-11-17 18:05:58.039575	3
1220	20521788942	ESTUDIO TEXTIL S.A.C	sin conexion	\N	1	1	2020-11-17 18:05:58.075206	2020-11-17 18:05:58.075206	3
1221	20601523851	PADA TEXTIL S.A.C	sin conexion	\N	1	1	2020-11-17 18:05:58.143542	2020-11-17 18:05:58.143542	3
1222	20552688512	IMPORTACIONES TRADIANO S.A.C	sin conexion	\N	1	1	2020-11-17 18:05:58.20635	2020-11-17 18:05:58.20635	3
1223	20543722309	CINDEL S.A	sin conexion	\N	1	1	2020-11-17 18:05:58.267555	2020-11-17 18:05:58.267555	3
1224	20600505166	ETIBOR E.I.R.L	sin conexion	\N	1	1	2020-11-17 18:05:58.360489	2020-11-17 18:05:58.360489	3
1225	20553596441	CHIFAS DEL PERU SAC	sin conexion	\N	1	1	2020-11-19 22:03:31.614193	2020-11-19 22:03:31.614193	3
1226	20101308678	CIA INDUSTRIAL CONTINENTAL S.A.C.	sin conexion	\N	1	1	2020-11-19 22:03:32.11676	2020-11-19 22:03:32.11676	3
1227	20600892470	SUPERDEPORTE PLUS PERU S.A.C.	sin conexion	\N	1	1	2020-11-19 22:03:32.181596	2020-11-19 22:03:32.181596	3
1228	10180058066	ALAYO SALVATIERRA MARIA FRANCISCA	sin conexion	\N	1	1	2020-12-18 12:59:12.667751	2020-12-18 12:59:12.667751	3
1229	20508647311	CAFE EL POLO S.A.C.	sin conexion	\N	1	1	2020-12-18 12:59:12.74909	2020-12-18 12:59:12.74909	3
1230	10102541273	MARCELINA ELENA APAZA MEZA	sin conexion	\N	1	1	2020-12-18 13:08:01.271594	2020-12-18 13:08:01.271594	3
1231	10487215436	EGUIGUREN CARRILLO ANDREA JUNET	sin conexion	\N	1	1	2020-12-18 13:08:01.435496	2020-12-18 13:08:01.435496	3
1232	10444697577	PARISUAÑA BARRANTES BERTHA GENOVEVA	sin conexion	\N	1	1	2020-12-18 13:08:01.667407	2020-12-18 13:08:01.667407	3
1233	20600663829	ANDRE & MATHIAS E.I.R.L.	sin conexion	\N	1	1	2020-12-18 13:08:01.732153	2020-12-18 13:08:01.732153	3
1234	42470186	JOSE JOEL ORTIZ SANTA MARIA	sin conexion	\N	1	1	2020-12-18 13:09:08.657911	2020-12-18 13:09:08.657911	3
1235	42470189	LUIS ALBERTO TACCA JUSTO	sin conexion	\N	1	1	2020-12-18 13:09:08.697944	2020-12-18 13:09:08.697944	3
1237	20603606486	DON NICO LA MAR S.A.C	sin conexion	\N	1	1	2021-01-22 19:23:10.601006	2021-01-22 19:23:10.601006	3
1238	20604622558 	NT MARKETING S.A.C. 	sin conexion	\N	1	1	2021-01-22 19:28:26.166144	2021-01-22 19:28:26.166144	3
1239	20430040180	POLLOS EL ACANTILADO S.A.TING S.A.C. 	sin conexion	\N	1	1	2021-01-22 19:28:55.394041	2021-01-22 19:28:55.394041	3
1240	20605541128	EMPRESA GASTRONÓMICA MIRAMAR S.A.C.	sin conexion	\N	1	1	2021-01-22 19:28:55.462747	2021-01-22 19:28:55.462747	3
1241	10101354224	DIAZ DELGADO ROQUE ALBERTO	sin conexion	\N	1	1	2021-01-22 19:28:55.507757	2021-01-22 19:28:55.507757	3
1242	20605482148	CONSORCIO LU & VER E.I.R.L.	sin conexion	\N	1	1	2021-01-22 19:28:55.732539	2021-01-22 19:28:55.732539	3
1243	20602933327	INVERSIONES & REPRESENTACIONES ANGEL S.A.C.	sin conexion	\N	1	1	2021-01-22 19:28:55.830915	2021-01-22 19:28:55.830915	3
1244	20601844916	QUE TAL COMPRA DEL PERU S.A.C.	sin conexion	\N	1	1	2021-01-22 19:28:55.899781	2021-01-22 19:28:55.899781	3
1245	10773272170	ANTHONY JEAN PIERRE VERASTEGUI QUISPE	sin conexion	\N	1	1	2021-03-09 21:05:57.181173	2021-03-09 21:05:57.181173	3
1246	20475815247	CAPRICCIO MIRAFLORES S.A.C	sin conexion	\N	1	1	2021-03-09 21:05:58.012237	2021-03-09 21:05:58.012237	3
1247	20602870619	MERCH 360 PUBLICIDAD S.A.C	sin conexion	\N	1	1	2021-03-09 21:05:58.381896	2021-03-09 21:05:58.381896	3
1248	20602570291	CONSORCIO TEXTIL & MODA E.I.R.L	sin conexion	\N	1	1	2021-03-17 16:16:02.522877	2021-03-17 16:16:02.522877	3
1249	10402913369	GOMEZ MACHUCA FLORINDA HAYDEE	sin conexion	\N	1	1	2021-03-17 16:16:02.922564	2021-03-17 16:16:02.922564	3
1250	20601485801	IMPORTADORA WYCAF E.I.R.L.	sin conexion	\N	1	1	2021-03-17 16:16:03.235874	2021-03-17 16:16:03.235874	3
1251	10441296849	PORTOCARRERO MENDOZA CRISTHIAN GABRIEL	sin conexion	\N	1	1	2021-03-17 16:16:03.455261	2021-03-17 16:16:03.455261	3
1252	20545482658	NEGOCIACIONES MUNDO GLOBAL S.A.C	sin conexion	\N	1	1	2021-04-22 01:37:58.566622	2021-04-22 01:37:58.566622	3
1253	20525260942	PEÑA LINDA BUNGALOWS S.A.C	sin conexion	\N	1	1	2021-04-22 01:37:58.810128	2021-04-22 01:37:58.810128	3
1254	20537302136	SYNTHETIC INSUMOS S.A.C	sin conexion	\N	1	1	2021-04-22 01:37:59.096807	2021-04-22 01:37:59.096807	3
1255	20607515035	CORPORACION YALEO'S E.I.R.L.	sin conexion	\N	1	1	2021-05-19 20:56:56.722296	2021-05-19 20:56:56.722296	3
1256	20513118849	GRUPO TEXTIL CASAS S.A.C	sin conexion	\N	1	1	2021-06-16 17:28:51.735801	2021-06-16 17:28:51.735801	3
1257	20601872197	SERVICIOS GENERALES BARRIOS E.I.R.L.	sin conexion	\N	1	1	2021-06-18 16:16:55.167803	2021-06-18 16:16:55.167803	3
1258	10102463213	ROJAS CHOCCA ARMANDO	sin conexion	\N	1	1	2021-07-19 20:32:25.862816	2021-07-19 20:32:25.862816	3
1259	20514745464	FERRETERIA SEDANO S.R.L.	sin conexion	\N	1	1	2021-07-19 20:32:27.917787	2021-07-19 20:32:27.917787	3
1260	20492115461	INVERSIONES DECOCERAMICA S.A.C.	sin conexion	\N	1	1	2021-07-19 20:32:30.444638	2021-07-19 20:32:30.444638	3
1261	20257759882	VIREYES S.R.LTDA.	sin conexion	\N	1	1	2021-07-19 20:39:20.975718	2021-07-19 20:39:20.975718	3
1262	20600268202	JUSTIN RESTOBAR S.A.C.	sin conexion	\N	1	1	2021-07-19 20:39:23.028485	2021-07-19 20:39:23.028485	3
1263	20606431881	MARNA PERU WORLD IMPORTS S.A.C	sin conexion	\N	1	1	2021-07-20 03:23:36.742968	2021-07-20 03:23:36.742968	3
1264	20600016432	A & L ADMINISTRACION S.A.C.	sin conexion	\N	1	1	2021-08-18 17:46:07.099177	2021-08-18 17:46:07.099177	3
1265	20292973048	FACTORIA TICONA SRL	sin conexion	\N	1	1	2021-08-18 20:46:02.624082	2021-08-18 20:46:02.624082	3
1266	20606732296	NEGOCIACIONES & INVERSIONES ROQUE E.I.R.L.	sin conexion	\N	1	1	2021-08-18 20:46:03.068249	2021-08-18 20:46:03.068249	3
1267	20601507065	TRANSPORTES DHARMA E.I.R.L.	sin conexion	\N	1	1	2021-08-18 20:46:03.361087	2021-08-18 20:46:03.361087	3
1268	20543459683	SIPROSA E.I.R.L	sin conexion	\N	1	1	2021-08-18 20:46:04.158669	2021-08-18 20:46:04.158669	3
1269	20606544244	AGRICOLA SAN GALLAN SOCIEDAD ANONIMA CERRADA	sin conexion	\N	1	1	2021-08-18 20:51:16.641369	2021-08-18 20:51:16.641369	3
1270	20601925045	GLOBE HD INTERSYS SAC	sin conexion	\N	1	1	2021-08-18 23:04:01.786866	2021-08-18 23:04:01.786866	3
1271	20551544738	LUMINED IMPORT SAC	sin conexion	\N	1	1	2021-08-18 23:04:02.092884	2021-08-18 23:04:02.092884	3
1272	20607101664	CORPORACION YEXICA IMPORTACIONES SAC	sin conexion	\N	1	1	2021-08-18 23:04:02.245836	2021-08-18 23:04:02.245836	3
1273	10336655477	SANCHEZ SANCHEZ VICTOR GUILLERMO	sin conexion	\N	1	1	2021-09-17 12:56:21.976232	2021-09-17 12:56:21.976232	3
1274	20138122256	UNIVERSIDAD PERUANA UNION	sin conexion	\N	1	1	2021-10-20 19:25:00.422759	2021-10-20 19:25:00.422759	3
1275	10406776285	ERICK ROGER FUENTES CALDERON	sin conexion	\N	1	1	2021-11-18 13:13:38.407797	2021-11-18 13:13:38.407797	3
1276	20602327664	TANKAR SOLUCIONES INTEGRALES SAC	sin conexion	\N	1	1	2021-12-21 04:11:37.464218	2021-12-21 04:11:37.464218	3
1277	10436946088	COLLAO AQUINO ALEX	sin conexion	\N	1	1	2021-12-21 04:11:38.975663	2021-12-21 04:11:38.975663	3
1278	20563553597	DISTRIBUIDORA CINTHYA E.I.R.L.	sin conexion	\N	1	1	2021-12-21 04:11:39.320461	2021-12-21 04:11:39.320461	3
1279	10789701852	CANCHANYA VARGAS PAMELA JUANA	sin conexion	\N	1	1	2021-12-21 04:11:39.687366	2021-12-21 04:11:39.687366	3
1280	20492796396	FERRETERIA JORGE E.I.R.L.	sin conexion	\N	1	1	2021-12-21 04:11:40.100893	2021-12-21 04:11:40.100893	3
1281	20608439464	MACEDO EIRL	sin conexion	\N	1	1	2022-01-20 03:49:55.031081	2022-01-20 03:49:55.031081	3
1282	20608504436	COMERCIALIZADORA TEXTIL ORIKATA EIRL	sin conexion	\N	1	1	2022-01-20 03:49:55.788237	2022-01-20 03:49:55.788237	3
1283	10438642035	ALFARO OLAYA LUZ MARIA	sin conexion	\N	1	1	2022-03-19 00:49:14.420807	2022-03-19 00:49:14.420807	3
1284	20608769618	NEGOINVERSIONES CASIQUE EIRL	sin conexion	\N	1	1	2022-03-19 00:49:15.259992	2022-03-19 00:49:15.259992	3
1285	10486928315	LUCI VANESA PEREZ VASQUEZ	sin conexion	\N	1	1	2022-03-19 00:49:16.069935	2022-03-19 00:49:16.069935	3
1286	10472917159	TRUJILLO MAVILA JOSE	sin conexion	\N	1	1	2022-05-20 01:56:12.242795	2022-05-20 01:56:12.242795	3
1287	20609234335	MULTINEGOCIOS RIVAS & FERREIROS	sin conexion	\N	1	1	2022-05-20 01:56:12.544447	2022-05-20 01:56:12.544447	3
1288	20609103940	TEXTIL MYREYATEX	sin conexion	\N	1	1	2022-05-20 01:56:12.959613	2022-05-20 01:56:12.959613	3
1289	20609473925	TEXTILERIA CORPAC'S EIRL	sin conexion	\N	1	1	2022-06-21 00:40:45.082491	2022-06-21 00:40:45.082491	3
1290	20606685379	SERVICIOS GENERALES COLONNA	sin conexion	\N	1	1	2022-06-21 00:40:45.829934	2022-06-21 00:40:45.829934	3
1291	20609480361	CORPORACION MUNDO TEXTIL NAYSHA & KATHERRINE E.I.R.L.	sin conexion	\N	1	1	2022-07-21 02:06:50.464394	2022-07-21 02:06:50.464394	3
1292	10075199517	ORREGO RODRIGUEZ FABRICIUS ROANI	sin conexion	\N	1	1	2022-08-20 04:33:02.075294	2022-08-20 04:33:02.075294	3
1293	20609467054	BUSSINES CORPORATION LUCIA EIRL	sin conexion	\N	1	1	2022-08-20 04:33:03.842136	2022-08-20 04:33:03.842136	3
1294	20606664673	INDUSTRIAS SANAR SAC	sin conexion	\N	1	1	2022-09-14 02:28:46.486903	2022-09-14 02:28:46.486903	3
1295	20609651386	MULTINEGOCIOS NUEVO MUNDO EIRL	sin conexion	\N	1	1	2022-09-14 02:28:46.515737	2022-09-14 02:28:46.515737	3
1296	20607508535	LABORATORIO MEDIC LAB PERU SAC	sin conexion	\N	1	1	2022-09-14 02:28:46.561069	2022-09-14 02:28:46.561069	3
1297	05/02/2022	20536557858	sin conexion	\N	1	1	2022-09-21 18:04:50.012914	2022-09-21 18:04:50.012914	3
1298	03/02/2022	20605482148	sin conexion	\N	1	1	2022-09-21 18:04:50.044117	2022-09-21 18:04:50.044117	3
1299	20124203075	IMPORTACIONES GUILLERMO BECERRA NINA S.A.C	sin conexion	\N	1	1	2022-10-19 14:21:55.478445	2022-10-19 14:21:55.478445	3
1300	10447657070	HUAMAN TAPULLIMA DALIA MARGARITA	sin conexion	\N	1	1	2022-10-19 17:16:14.574256	2022-10-19 17:16:14.574256	3
1301	20519121957	DIMEGSA EIRL	sin conexion	\N	1	1	2022-10-21 14:15:18.767021	2022-10-21 14:15:18.767021	3
1302	10421806832	VALLADARES AGUILAR KARIN VANESSA	sin conexion	\N	1	1	2022-11-17 16:07:14.286761	2022-11-17 16:07:14.286761	3
1303	20504507832	IMPORT.Y REPRESENTACIONES FRANCO SAC	sin conexion	\N	1	1	2022-11-17 16:07:14.317407	2022-11-17 16:07:14.317407	3
1304	20609479451	UNIVERSO IMPORT PERU S.A.C.	sin conexion	\N	1	1	2022-11-17 16:07:14.345654	2022-11-17 16:07:14.345654	3
1306	20609861640	INVERSIONES MULTIPLES LIAM EIRL	sin conexion	\N	1	1	2022-11-18 13:17:09.939527	2022-11-18 13:17:09.939527	3
1305	20610139664	CORPORATION KAFEJSG EIRL	sin conexion	\N	1	1	2022-11-18 13:17:09.84433	2022-11-18 13:20:19.284895	3
1307	20538225763	TELEPIZZA ANDINA S.A.C.	sin conexion	\N	1	1	2022-11-18 18:16:18.263426	2022-11-18 18:16:18.263426	3
1308	20509076945	CINCO MILLAS S.A.C.	sin conexion	\N	1	1	2022-11-18 18:16:18.293973	2022-11-18 18:16:18.293973	3
1309	20606109343	SOLANA COMERCIAL S.A.C.	sin conexion	\N	1	1	2022-11-21 15:39:27.464776	2022-11-21 15:39:27.464776	3
1310	10447516786	CARBONEL CHEIN YASSER AHMED HASSAN	sin conexion	\N	1	1	2022-12-19 04:47:11.931402	2022-12-19 04:47:11.931402	3
1311	20543066525	MULTISERVICIOS VIDAL E.I.R.L	sin conexion	\N	1	1	2022-12-19 04:47:12.088502	2022-12-19 04:47:12.088502	3
1312	10447570454	OSORIO MALPARTIDA KELLY YEMIRA	sin conexion	\N	1	1	2022-12-19 04:47:12.15623	2022-12-19 04:47:12.15623	3
1313	20603753896	W & D REPUESTOS E.I.R.L.	sin conexion	\N	1	1	2022-12-19 04:47:12.221811	2022-12-19 04:47:12.221811	3
1314	20603829507	PAY PAYY BUSINESS E.I.R.L.	sin conexion	\N	1	1	2022-12-20 19:19:02.766031	2022-12-20 19:19:02.766031	3
1315	20605380523	DJM IMPORTADOR DE RODAMIENTOS E.I.R.L.	sin conexion	\N	1	1	2023-01-19 00:49:33.453063	2023-01-19 00:49:33.453063	3
1316	20606713275	STAR INDUSTRIES S.A.C	sin conexion	\N	1	1	2023-01-19 00:49:33.539805	2023-01-19 00:49:33.539805	3
1317	10087415282	BECERRA NINA LUIS GUILLERMO	sin conexion	\N	1	1	2023-01-19 00:49:33.611949	2023-01-19 00:49:33.611949	3
1318	20417531026	TRIATHLON S.A.C.	sin conexion	\N	1	1	2023-01-23 17:23:51.865861	2023-01-23 17:23:51.865861	3
1319	20608300393	COMPAÑIA FOOD RETAIL S.A.C.	sin conexion	\N	1	1	2023-01-23 17:23:51.919769	2023-01-23 17:23:51.919769	3
1320	20122499694	TRANSPORTES VILLANTOY S.R.LTDA	sin conexion	\N	1	1	2023-01-23 17:23:52.041772	2023-01-23 17:23:52.041772	3
1321	10062475213	AGREDA QUEZADA MIGUEL LUIS	sin conexion	\N	1	1	2023-02-21 02:22:15.383715	2023-02-21 02:22:15.383715	3
1322	20609618451	MULTINEGOCIOS M&G EIRL	sin conexion	\N	1	1	2023-02-21 02:22:15.480336	2023-02-21 02:22:15.480336	3
1323	10092676125	CARMEN PEREZ VEGA	sin conexion	\N	1	1	2023-02-21 02:22:15.545526	2023-02-21 02:22:15.545526	3
\.


--
-- Data for Name: details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.details (id, descripcion, cantidad, precio, monto, item_id, user_id, created_at, updated_at, product_id) FROM stdin;
6358		1	45.24576271186441	53.39	7256	1	2020-04-20 16:18:42.235028	2020-04-20 16:18:42.543536	\N
6359	varios	12.29	2.3382659182744687	33.91	7255	1	2020-04-20 16:19:08.484479	2020-04-20 16:19:08.783489	\N
6360	Muestras	1	33.610169491525426	39.66	7257	1	2020-04-20 16:24:54.605063	2020-04-20 16:24:54.884241	\N
6397		1	4.237288135593221	5	7294	1	2020-04-21 23:00:37.184806	2020-04-21 23:00:37.35015	\N
6398		1	8.474576271186441	10	7295	1	2020-04-21 23:01:18.784871	2020-04-21 23:01:18.949939	\N
6361	Set de Dulceras\r\n	1	377.0508474576271	444.92	7258	1	2020-04-20 16:28:40.199992	2020-04-20 16:29:32.628824	\N
6362	Utiles\r\n	1	52.50000000000001	61.95	7259	1	2020-04-20 16:30:53.84535	2020-04-20 16:30:54.105188	\N
6363	Set de Dulceras	1	40.22033898305085	47.46	7260	1	2020-04-20 16:41:40.161191	2020-04-20 16:41:40.810974	\N
6364	Set de Condimentero	1	35.90677966101695	42.37	7261	1	2020-04-20 16:50:04.9938	2020-04-20 16:50:05.199916	\N
6365	Consumo	1	32.88983050847458	38.81	7262	1	2020-04-20 17:08:06.950063	2020-04-20 17:08:07.217851	\N
6366		1	53.864406779661024	63.56	7263	1	2020-04-20 17:09:16.893114	2020-04-20 17:09:17.103216	\N
6367		1	17.95762711864407	21.19	7264	1	2020-04-20 17:10:18.67344	2020-04-20 17:10:18.893821	\N
6374		1	1126.1101694915255	1328.81	7271	1	2020-04-21 22:20:07.738443	2020-04-21 22:20:07.971034	\N
6375		1	1904.6271186440679	2247.46	7272	1	2020-04-21 22:21:58.268377	2020-04-21 22:21:58.489673	\N
6376		1	1723.6440677966104	2033.9	7273	1	2020-04-21 22:23:21.00838	2020-04-21 22:23:21.161075	\N
6377		1	42.87288135593221	50.59	7274	1	2020-04-21 22:24:08.078079	2020-04-21 22:24:08.354996	\N
6399		1	8.474576271186441	10	7296	1	2020-04-21 23:02:06.672328	2020-04-21 23:02:06.830348	\N
6378		1	11099.542372881357	13097.46	7275	1	2020-04-21 22:25:11.25303	2020-04-21 22:25:44.232674	\N
6379		1	111.23728813559322	131.26	7276	1	2020-04-21 22:28:14.748842	2020-04-21 22:28:58.419195	\N
6380		1	3076.381355932204	3630.13	7277	1	2020-04-21 22:30:52.053228	2020-04-21 22:30:52.226595	\N
6381		1	7112.8983050847455	8393.22	7278	1	2020-04-21 22:32:50.354212	2020-04-21 22:32:50.541029	\N
6382	Impresiones	1	9.338983050847459	11.02	7279	1	2020-04-21 22:36:13.40601	2020-04-21 22:36:13.558243	\N
6383		1	11.796610169491526	13.92	7280	1	2020-04-21 22:37:37.217037	2020-04-21 22:37:37.454996	\N
6384		1	50.97457627118644	60.15	7281	1	2020-04-21 22:38:33.480825	2020-04-21 22:38:33.642107	\N
6385		1	20.898305084745765	24.66	7282	1	2020-04-21 22:39:20.738472	2020-04-21 22:39:20.962282	\N
6386		1	28.296610169491526	33.39	7283	1	2020-04-21 22:40:49.876279	2020-04-21 22:40:50.044339	\N
6387		1	34.10169491525424	40.24	7284	1	2020-04-21 22:41:56.412437	2020-04-21 22:41:56.584829	\N
6400		1	10212.584745762713	12050.85	7297	1	2020-04-21 23:02:45.573151	2020-04-21 23:02:45.756073	\N
6388		1	91.92760169491525	108.47457	7285	1	2020-04-21 22:42:59.290582	2020-04-21 22:43:27.981443	\N
6389		1	21.542372881355934	25.42	7286	1	2020-04-21 22:44:18.451423	2020-04-21 22:44:18.678732	\N
6390		1	72.26271186440678	85.27	7287	1	2020-04-21 22:45:09.788521	2020-04-21 22:45:09.952441	\N
6391		1	2118.64406779661	2500	7288	1	2020-04-21 22:52:10.111484	2020-04-21 22:52:10.391111	\N
6392		1	4915.254237288136	5800	7289	1	2020-04-21 22:53:24.364989	2020-04-21 22:53:24.541159	\N
6393		1	4093.6525423728817	4830.51	7290	1	2020-04-21 22:56:23.423574	2020-04-21 22:56:23.758479	\N
6394		1	3447.288135593221	4067.8	7291	1	2020-04-21 22:57:07.168627	2020-04-21 22:57:07.395531	\N
6395		1	37.70338983050848	44.49	7292	1	2020-04-21 22:58:28.901353	2020-04-21 22:58:29.062528	\N
6396		1	85.10169491525424	100.42	7293	1	2020-04-21 22:59:14.303152	2020-04-21 22:59:14.52355	\N
6401		1	7655.847457627119	9033.9	7298	1	2020-04-21 23:03:45.468422	2020-04-21 23:03:45.669999	\N
6402		1	242.74576271186442	286.44	7299	1	2020-04-21 23:04:26.173768	2020-04-21 23:04:26.339732	\N
6403		1	825.9152542372882	974.58	7300	1	2020-04-21 23:04:59.739557	2020-04-21 23:05:00.015416	\N
6404		1	4553.28813559322	5372.88	7301	1	2020-04-21 23:05:49.997672	2020-04-21 23:05:50.173038	\N
6405		1	4632.288135593221	5466.1	7302	1	2020-04-21 23:06:58.93133	2020-04-21 23:06:59.111399	\N
6406		1	4.237288135593221	5	7303	1	2020-04-21 23:07:34.804669	2020-04-21 23:07:34.967085	\N
6407		1	9264.576271186443	10932.2	7304	1	2020-04-21 23:08:10.113743	2020-04-21 23:08:10.275601	\N
6408		1	13968.686440677966	16483.05	7305	1	2020-04-21 23:09:09.77517	2020-04-21 23:09:26.080115	\N
6409		1	4093.6525423728817	4830.51	7306	1	2020-04-21 23:15:26.539734	2020-04-21 23:18:45.974578	\N
6410		1	6033.050847457627	7119	7307	1	2020-04-21 23:19:53.464187	2020-04-21 23:19:53.630522	\N
6411		1	4.237288135593221	5	7308	1	2020-04-21 23:21:45.888599	2020-04-21 23:21:46.052894	\N
6412		1	8.474576271186441	10	7309	1	2020-04-21 23:22:50.740206	2020-04-21 23:22:50.904045	\N
6413		1	8.474576271186441	10	7310	1	2020-04-21 23:23:52.036624	2020-04-21 23:23:52.198032	\N
6368		1	8.61864406779661	10.17	7265	1	2020-04-20 18:22:06.928542	2020-04-20 18:22:07.11164	\N
6369	consumo	1	58.16949152542373	68.64	7266	1	2020-04-20 18:44:50.906007	2020-04-20 18:44:51.087639	\N
6370	Consumo\r\n	1	98.38983050847457	116.1	7267	1	2020-04-20 18:52:58.97786	2020-04-20 18:52:59.157491	\N
6371	Muestras\r\n	1	28.084745762711865	33.14	7268	1	2020-04-20 18:56:13.608379	2020-04-20 18:56:13.812955	\N
6372		1	71.8220338983051	84.75	7269	1	2020-04-20 18:57:12.835586	2020-04-20 18:57:13.063361	\N
6373	Set de Taper de Vidrio	1	2813.8474576271187	3320.34	7270	1	2020-04-20 19:00:08.363977	2020-04-21 22:15:06.620509	\N
6355	utiles	1	47.45762711864407	56	7252	1	2020-04-06 18:46:57.077736	2020-04-21 23:52:36.300231	\N
6210	varios	1	7.87	7.87	7110	1	2019-09-15 19:28:09.546837	2019-09-15 19:28:09.546837	\N
6010	placa b-245	1	551.65	551.65	6905	1	2018-04-15 13:47:11.164006	2018-04-15 13:47:57.59463	5
6011	perilla inyectada	1	14927	14927	6906	1	2018-04-15 14:43:54.396883	2018-04-15 14:43:54.396883	3
6211	varios	1	6.69	6.69	7111	1	2019-09-15 19:31:28.688587	2019-09-15 19:31:28.688587	\N
6212	varios	1	9.84	9.84	7112	1	2019-09-15 19:33:54.208199	2019-09-15 19:33:54.208199	\N
6012	buje inyectado	1	19703.64	19703.64	6908	1	2018-04-15 14:46:36.036401	2018-04-15 14:46:36.036401	14
6013	varios	1	211.86	211.86	6909	1	2018-04-15 14:48:09.265628	2018-04-15 14:48:09.265628	\N
6213	utiles de escritorio	1	56.02	56.02	7113	1	2019-09-15 19:35:19.817553	2019-09-15 19:35:19.817553	\N
6014	lineas de vida	1	152.54	152.54	6910	1	2018-04-15 14:49:34.860632	2018-04-15 14:50:43.46949	\N
6015	varios	1	188.56	188.56	6911	1	2018-04-15 14:53:07.393319	2018-04-15 14:53:07.393319	\N
6016	varios	1	322.03	322.03	6912	1	2018-04-15 14:55:11.561316	2018-04-15 14:55:11.561316	\N
6017	porta lamparas	1	64.83	64.83	6914	1	2018-04-15 14:57:34.776178	2018-04-15 14:57:34.776178	\N
6018	alambre de cobre	1	2045.75	2045.75	6916	1	2018-04-15 14:59:47.288074	2018-04-15 14:59:47.288074	\N
6019	varios	1	357.63	357.63	6917	1	2018-04-15 15:02:05.488003	2018-04-15 15:02:05.488003	\N
6020	juego de arnes	1	169.49	169.49	6919	1	2018-04-15 15:04:15.416855	2018-04-15 15:04:15.416855	\N
6021	juego de arnes	1	338.98	338.98	6920	1	2018-04-15 15:05:48.704816	2018-04-15 15:05:48.704816	\N
6022	tirador zamac	1	1806.42	1806.42	6921	1	2018-04-15 15:07:43.868237	2018-04-15 15:07:43.868237	\N
6023	portalampara	1	108.05	108.05	6923	1	2018-04-15 15:17:50.922026	2018-04-15 15:17:50.922026	\N
6214	útiles de escritorio	1	24.75	24.75	7114	1	2019-09-15 19:36:54.00041	2019-09-15 19:36:54.00041	\N
6215	ploteos	1	406.78	406.78	7115	1	2019-09-15 19:38:35.923006	2019-09-15 19:38:35.923006	\N
6216	PAGO PARCIAL POR MODELADO BIM DE LA UT-\r\n04 Y US-01 DEL PROYECTO SAN BARTOLO	1	3185	3185	7116	1	2019-09-15 19:40:27.749752	2019-09-15 19:40:27.749752	\N
6217	ADELANTO POR ELABORACION DE RECORRIDO VIRTUAL DE LA UT-04 Y US-01 PROYECTO SAN BARTOLO	1	690	690	7117	1	2019-09-15 19:44:00.02958	2019-09-15 19:44:00.02958	\N
6218	ADELANTO POR SERVICIO DE ASESORIA DEL PROYECTO SAN BARTOLO POR EL PERIODO AGOSTO 2019	1	576.27	576.27	7118	1	2019-09-15 19:45:26.561269	2019-09-15 19:45:26.561269	\N
6056	juego de arnes	1	2135.59	2135.59	6963	1	2018-04-15 16:17:17.343608	2018-04-15 16:17:17.343608	\N
6220	PAGO A CUENTA POR ELABORACION DE EXPEDIENTE UT-04 PSB	1	584.75	584.75	7120	1	2019-09-15 19:47:16.9347	2019-09-15 19:47:16.9347	\N
6222	PAGO A CUENTA POR ELABORACIÓN Y\r\nDIRECCIÓN DE EXPEDIENTE TÉCNICO DE UT-04\r\nDEL PROYECTO SAN BARTOLO	1	8474.58	8474.58	7122	1	2019-09-15 19:51:33.929279	2019-09-15 19:51:33.929279	\N
6227		1	21186.45	21186.45	7127	1	2019-10-17 22:28:30.438478	2019-10-17 22:28:30.438478	\N
6024	varios	1	779.66	779.66	6924	1	2018-04-15 15:19:40.520735	2018-04-15 15:19:40.520735	\N
6025	juegos de arnes	1	338.98	338.98	6926	1	2018-04-15 15:21:45.906565	2018-04-15 15:21:45.906565	\N
6026	canastilla r-545	1	3807.65	3807.65	6927	1	2018-04-15 15:23:30.243294	2018-04-15 15:23:30.243294	\N
6027	arnes de 3 aros 0	1	127.12	127.12	6928	1	2018-04-15 15:25:43.044595	2018-04-15 15:25:43.044595	\N
6028	varios	1	394.07	394.07	6929	1	2018-04-15 15:29:26.528216	2018-04-15 15:29:26.528216	\N
6219	ADELANTO POR CONSULTORIA DE DESARROLLO DEL\r\nPROYECTO SAN BARTOLO	1	584.75	584.75	7119	1	2019-09-15 19:46:20.287387	2019-09-15 19:46:20.287387	\N
6221	ELABORACION DE METRADOS UT-04 Y UT-S01 PROYECTO SAN\r\nBARTOLO	1	588.98	588.98	7121	1	2019-09-15 19:48:37.078776	2019-09-15 19:48:37.078776	\N
6356	Muestras	1	20.83050847457627	24.58	7253	1	2020-04-06 18:52:34.181998	2020-04-06 18:52:34.388127	\N
6029	arnes c/gancho	1	64.41	64.41	6930	1	2018-04-15 15:31:12.41118	2018-04-15 15:31:12.41118	\N
6030	arnes de 1 seguro	1	161.02	161.02	6931	1	2018-04-15 15:32:40.882987	2018-04-15 15:32:40.882987	\N
6357	Muestras	1	21.779661016949152	25.7	7254	1	2020-04-06 18:56:22.271719	2020-04-06 18:56:22.472338	\N
6031	juego de arnes	1	169.49	169.49	6932	1	2018-04-15 15:33:55.447878	2018-04-15 15:33:55.447878	\N
6032	varios	1	127.97	127.97	6933	1	2018-04-15 15:35:27.174405	2018-04-15 15:35:27.174405	\N
6033	placa b-245	1	7519.74	7519.74	6934	1	2018-04-15 15:36:57.579251	2018-04-15 15:36:57.579251	\N
6034	juego de arnes	1	169.49	169.49	6935	1	2018-04-15 15:38:58.27024	2018-04-15 15:38:58.27024	\N
6035	juego de arnes con linea	1	338.98	338.98	6937	1	2018-04-15 15:43:53.942801	2018-04-15 15:43:53.942801	\N
6036	juego de arnes con linea	1	2466.1	2466.1	6938	1	2018-04-15 15:45:08.029795	2018-04-15 15:45:08.029795	\N
6037	varios	1	200.85	200.85	6939	1	2018-04-15 15:46:24.176557	2018-04-15 15:46:24.176557	\N
6038	fajas elasticas	1	96.61	96.61	6941	1	2018-04-15 15:48:43.391383	2018-04-15 15:48:43.391383	\N
6224	copias	1	43.73	43.73	7123	1	2019-09-18 00:44:02.915346	2019-09-18 00:44:02.915346	\N
6228	PARTE DE PAGO POR ELABORACION Y DIRECCION DE EXPEDIENTE\r\nTECNICO UT-04 Y US-01 PROYECTO SAN BARTOLO	1	14445.3	14445.3	7128	1	2019-10-17 22:37:36.297769	2019-10-17 22:37:36.297769	\N
6229		1	5.85	5.85	7129	1	2019-10-17 22:49:51.857252	2019-10-17 22:49:51.857252	\N
6230		1	15.55	15.55	7130	1	2019-10-17 22:53:52.539486	2019-10-17 22:53:52.539486	\N
6231		1	6.36	6.36	7131	1	2019-10-17 22:56:08.19802	2019-10-17 22:56:08.19802	\N
6232		1	2500	2500	7132	1	2019-10-17 22:59:13.047289	2019-10-17 22:59:13.047289	\N
5702	balon	1	228.81	228.81	6619	3	2018-01-16 18:10:31.268054	2018-01-16 18:10:31.268054	\N
5691	bidones de 20 litros	1	38.14	38.14	6608	3	2018-01-16 17:19:08.702544	2018-01-16 17:19:08.702544	\N
5692	balon de gas	1	228.81	228.81	6609	3	2018-01-16 17:20:16.668824	2018-01-16 17:20:16.668824	\N
5693	balon de gas	1	228.81	228.81	6610	3	2018-01-16 17:21:04.154772	2018-01-16 17:21:04.154772	\N
5694	hilado polyester	1	13848.6	13848.6	6611	3	2018-01-16 17:24:28.7474	2018-01-16 17:24:28.7474	\N
5695	balon de gas	1	114.41	114.41	6612	3	2018-01-16 17:27:01.464626	2018-01-16 17:27:01.464626	\N
5696	bidones	1	38.14	38.14	6613	3	2018-01-16 17:27:41.818721	2018-01-16 17:27:41.818721	\N
5697	balon de gas	1	228.81	228.81	6614	3	2018-01-16 17:28:27.16645	2018-01-16 17:28:27.16645	\N
5698	balon de ga	1	114.41	114.41	6615	3	2018-01-16 17:29:18.674141	2018-01-16 17:29:18.674141	\N
5699	balon de gas	1	114.41	114.41	6616	3	2018-01-16 17:30:59.094334	2018-01-16 17:30:59.094334	\N
5700	bidones	1	38.14	38.14	6617	3	2018-01-16 17:31:52.336282	2018-01-16 17:31:52.336282	\N
5701	planchas laf	1	416.95	416.95	6618	3	2018-01-16 18:07:06.646893	2018-01-16 18:07:06.646893	\N
5703	varios	1	40.68	40.68	6620	3	2018-01-16 18:11:19.856465	2018-01-16 18:11:19.856465	\N
6039	fajas elasticas	1	241.53	241.53	6942	1	2018-04-15 15:50:13.212834	2018-04-15 15:50:13.212834	\N
5705	varios	1	805.0847	805.0847	6621	3	2018-01-16 18:13:22.113129	2018-01-16 18:13:22.113129	\N
5706	hilado	1	4474.94	4474.94	6622	3	2018-01-16 22:46:52.830011	2018-01-16 22:46:52.830011	\N
5707	bidones	1	38.1355	38.1355	6623	3	2018-01-16 22:58:15.125806	2018-01-16 22:58:15.125806	\N
5708	gas	1	114.41	114.41	6624	3	2018-01-16 22:59:12.357073	2018-01-16 22:59:12.357073	\N
5709	balon de gas	1	114.41	114.41	6625	3	2018-01-16 22:59:50.070204	2018-01-16 22:59:50.070204	\N
6040	juego de arnes	1	593.22	593.22	6943	1	2018-04-15 15:52:00.853067	2018-04-15 15:52:00.853067	\N
5711	varios	1	44.9153	44.9153	6626	3	2018-01-16 23:02:25.429361	2018-01-16 23:02:25.429361	\N
6041	fajas elasticas	1	144.92	144.92	6944	1	2018-04-15 15:53:01.928084	2018-04-15 15:53:01.928084	\N
6042	varios	1	121.61	121.61	6945	1	2018-04-15 15:54:29.464549	2018-04-15 15:54:29.464549	\N
6043	portalampara	1	57.63	57.63	6946	1	2018-04-15 15:56:13.501017	2018-04-15 15:56:13.501017	\N
6044	varios	1	259.32	259.32	6947	1	2018-04-15 15:57:23.536668	2018-04-15 15:57:23.536668	\N
6233		1	5.5	5.5	7133	1	2019-10-17 23:02:36.986309	2019-10-17 23:02:36.986309	\N
6234		1	21.1	21.1	7134	1	2019-10-17 23:08:58.077117	2019-10-17 23:08:58.077117	\N
6235		1	10.17	10.17	7135	1	2019-10-17 23:18:42.932411	2019-10-17 23:18:42.932411	\N
6236		1	9.45	9.45	7136	1	2019-10-17 23:21:16.948843	2019-10-17 23:21:16.948843	\N
6237		1	8.66	8.66	7137	1	2019-10-17 23:23:59.327246	2019-10-17 23:23:59.327246	\N
6238		1	32.97	32.97	7138	1	2019-10-17 23:27:20.797723	2019-10-17 23:27:20.797723	\N
6045	fajas elasticas	1	402.54	402.54	6948	1	2018-04-15 15:58:22.664166	2018-04-15 15:58:22.664166	\N
6046	fajas elasticas	1	366.1	366.1	6951	1	2018-04-15 16:00:29.291373	2018-04-15 16:00:29.291373	\N
5712	balon de gas	1	228.81	228.81	6627	3	2018-01-16 23:03:25.981509	2018-01-16 23:03:25.981509	\N
5713	balon de gas	1	114.41	114.41	6628	3	2018-01-16 23:06:32.640405	2018-01-16 23:06:32.640405	\N
5714	balon de gas	1	114.41	114.41	6629	3	2018-01-16 23:07:04.145454	2018-01-16 23:07:04.145454	\N
5715	rollos de elasticos	1	1864.41	1864.41	6630	3	2018-01-16 23:08:35.335992	2018-01-16 23:08:35.335992	\N
6047	tirador inyectada zamac	1	1804.74	1804.74	6952	1	2018-04-15 16:01:48.467952	2018-04-15 16:01:48.467952	\N
5717	rollos	1	305.0847	305.0847	6631	3	2018-01-16 23:09:40.540963	2018-01-16 23:09:40.540963	\N
6048	juego de arnes con linea	1	338.98	338.98	6953	1	2018-04-15 16:03:17.947269	2018-04-15 16:03:17.947269	\N
6049	lineas de vida	1	220.34	220.34	6954	1	2018-04-15 16:04:37.354329	2018-04-15 16:04:37.354329	\N
6050	varios	1	305.08	305.08	6955	1	2018-04-15 16:06:07.290225	2018-04-15 16:06:07.290225	\N
6051	varios	1	101.69	101.69	6956	1	2018-04-15 16:08:14.81527	2018-04-15 16:08:14.81527	\N
6052	juego de arnes	1	677.97	677.97	6957	1	2018-04-15 16:09:34.011872	2018-04-15 16:09:34.011872	\N
6074	juegos de arnes	1	472.88	472.88	6982	1	2018-04-15 16:43:52.161554	2018-04-15 16:43:52.161554	\N
6053	varios	1	576.27	576.27	6958	1	2018-04-15 16:10:54.36391	2018-04-15 16:11:40.769904	\N
6054	varios	1	830.51	830.51	6959	1	2018-04-15 16:13:30.098107	2018-04-15 16:13:30.098107	\N
6055	varios	1	3084.75	3084.75	6962	1	2018-04-15 16:16:11.998275	2018-04-15 16:16:11.998275	\N
6057	juego de arnes	1	610.17	610.17	6964	1	2018-04-15 16:18:51.255347	2018-04-15 16:18:51.255347	\N
6058	varios	1	666.1	666.1	6965	1	2018-04-15 16:19:51.615321	2018-04-15 16:19:51.615321	\N
6059	varios 	1	400	400	6966	1	2018-04-15 16:20:44.812405	2018-04-15 16:20:44.812405	\N
6060	correa de seguridad	1	483.05	483.05	6968	1	2018-04-15 16:22:44.291139	2018-04-15 16:22:44.291139	\N
6061	lineas de vida	1	118.64	118.64	6969	1	2018-04-15 16:23:49.374206	2018-04-15 16:23:49.374206	\N
6062	porta	1	311.44	311.44	6970	1	2018-04-15 16:24:58.51302	2018-04-15 16:24:58.51302	\N
6063	varios	1	529.66	529.66	6971	1	2018-04-15 16:26:40.485859	2018-04-15 16:26:40.485859	\N
6064	alambre de cobre	1	3620.75	3620.75	6972	1	2018-04-15 16:28:25.964512	2018-04-15 16:28:25.964512	\N
6065	varios	1	7274.94	7274.94	6973	1	2018-04-15 16:29:23.444004	2018-04-15 16:29:23.444004	\N
6066	varios	1	3881.36	3881.36	6974	1	2018-04-15 16:30:58.636845	2018-04-15 16:30:58.636845	\N
6067	juego de arnes con linea	1	423.73	423.73	6975	1	2018-04-15 16:33:07.065181	2018-04-15 16:33:07.065181	\N
6068	fajas elasticas	1	127.12	127.12	6976	1	2018-04-15 16:34:29.28685	2018-04-15 16:34:29.28685	\N
6069	varios	1	211.86	211.86	6977	1	2018-04-15 16:35:16.273218	2018-04-15 16:35:16.273218	\N
6070	varios	1	302.54	302.54	6978	1	2018-04-15 16:36:36.864485	2018-04-15 16:36:36.864485	\N
6071	varios	1	215.65	215.65	6979	1	2018-04-15 16:37:44.459722	2018-04-15 16:37:44.459722	\N
6072	juegos de arnes	1	677.97	677.97	6980	1	2018-04-15 16:38:38.395715	2018-04-15 16:38:38.395715	\N
6073	faja lumbar elastica	1	423.73	423.73	6981	1	2018-04-15 16:40:13.283401	2018-04-15 16:40:13.283401	\N
6075	varios	1	432.2	432.2	6983	1	2018-04-15 16:44:59.642261	2018-04-15 16:44:59.642261	\N
6076	faja lumbar elastica	1	213.56	213.56	6984	1	2018-04-15 16:46:30.106719	2018-04-15 16:46:30.106719	\N
6077	juego de arnes	1	847.46	847.46	6985	1	2018-04-15 16:47:33.460992	2018-04-15 16:47:33.460992	\N
6078	lineas de vida	1	177.97	177.97	6986	1	2018-04-15 16:48:48.147564	2018-04-15 16:48:48.147564	\N
6079	canastilla b-245	1	4825.5	4825.5	6987	1	2018-04-15 16:49:56.114794	2018-04-15 16:49:56.114794	\N
6080	canastilla b-245	1	3217	3217	6988	1	2018-04-15 16:51:50.831165	2018-04-15 16:51:50.831165	\N
6081	zamac 5	1	12223.37	12223.37	6989	1	2018-04-15 17:17:10.483275	2018-04-15 17:17:10.483275	\N
6082	varios	1	3349.58	3349.58	6990	1	2018-04-15 17:20:50.807957	2018-04-15 17:20:50.807957	\N
6083	varios	1	157.31	157.31	6991	1	2018-04-15 17:22:04.592104	2018-04-15 17:22:04.592104	\N
6084	remalle	1	223.73	223.73	6992	1	2018-04-15 17:23:20.674709	2018-04-15 17:23:20.674709	\N
6085	varios	1	127.12	127.12	6993	1	2018-04-15 17:25:21.280544	2018-04-15 17:25:21.280544	\N
6086	varios	1	135.59	135.59	6994	1	2018-04-15 17:26:39.500301	2018-04-15 17:26:39.500301	\N
6087	varios	1	39.83	39.83	6995	1	2018-04-15 17:28:01.015853	2018-04-15 17:28:01.015853	\N
6089	varios	1	355.93	355.93	6997	1	2018-04-15 17:30:31.764623	2018-04-15 17:30:31.764623	\N
6090	ZAMAC 5	1	18429.18	18429.18	6998	1	2018-04-15 17:31:48.540147	2018-04-15 17:31:48.540147	\N
6091	PLANCHAS LAC	1	5027.16	5027.16	6999	1	2018-04-15 17:33:16.253051	2018-04-15 17:33:16.253051	\N
6092	PLANCHAS LAC	1	2483.96	2483.96	7000	1	2018-04-15 17:34:31.221219	2018-04-15 17:34:31.221219	\N
6093	VARIOS	1	2449.23	2449.23	7001	1	2018-04-15 17:35:56.737017	2018-04-15 17:35:56.737017	\N
6094	VARIOS	1	18366.78	18366.78	7002	1	2018-04-15 17:37:23.236859	2018-04-15 17:37:23.236859	\N
6095	ZAMAC 5	1	12175.53	12175.53	7003	1	2018-04-15 17:38:40.390009	2018-04-15 17:38:40.390009	\N
6096	VARIOS	1	7457.63	7457.63	7004	1	2018-04-15 17:39:47.900351	2018-04-15 17:39:47.900351	\N
6097	VARIOS	1	5084.75	5084.75	7005	1	2018-04-15 17:40:51.384154	2018-04-15 17:40:51.384154	\N
6098	VARIOS	1	7203.39	7203.39	7006	1	2018-04-15 17:42:21.731198	2018-04-15 17:42:21.731198	\N
6239		1	29.66	29.66	7139	1	2019-10-17 23:31:02.235787	2019-10-17 23:31:02.235787	\N
6088	saco	1	46.61	46.61	6996	1	2018-04-15 17:29:09.28462	2018-04-15 17:47:56.798507	\N
6240		1	8100	8100	7140	1	2019-10-17 23:34:27.054815	2019-10-17 23:34:27.054815	\N
6241		1	15.08	15.08	7141	1	2019-10-17 23:36:32.75894	2019-10-17 23:36:32.75894	\N
6242		1	14.32	14.32	7142	1	2019-10-17 23:40:42.30116	2019-10-17 23:40:42.30116	\N
6243		1	13.9	13.9	7143	1	2019-10-17 23:42:29.495088	2019-10-17 23:42:29.495088	\N
6244		1	584.7	584.7	7144	1	2019-10-17 23:47:18.230789	2019-10-17 23:47:18.230789	\N
6245		1	576.27	576.27	7145	1	2019-10-17 23:48:20.784171	2019-10-17 23:48:20.784171	\N
6099	rollo	1	1864.41	1864.41	7008	3	2018-04-16 04:03:04.206345	2018-04-16 04:03:04.206345	\N
6100	rollos de elastico	1	1864.41	1864.41	7009	3	2018-04-16 04:05:16.037053	2018-04-16 04:05:16.037053	\N
6246	PARTE DE PAGO POR SERVICIO DE ELABORACION Y DIRECCION DE EXPEDIENTE TECNICO DE LA UT-04 Y US-01 DEL PROYECTO SAN BARTOLO	1	25423.75	25423.75	7147	1	2019-11-17 17:52:16.400024	2019-11-17 17:52:16.400024	\N
6102	rollos	1	508.4746	508.4746	7011	3	2018-04-16 04:07:44.201972	2018-04-16 04:07:44.201972	\N
6103	rollos	1	1920.339	1920.339	7012	3	2018-04-16 04:08:27.187311	2018-04-16 04:08:27.187311	\N
6104	agua	1	50.85	50.85	7013	3	2018-04-16 04:10:36.390842	2018-04-16 04:10:36.390842	\N
6105	bidones	1	50.85	50.85	7014	3	2018-04-16 04:11:22.220483	2018-04-16 04:11:22.220483	\N
6247	COTIZACION 216-2019 (00051) PAGO DEL 20%\r\nCORRESPONDIENTE AL DISENO ESTRUCTURAL DE VARIAS\r\nEDIFICACIONES A CONSTRUIRSE EN LA ESCUELA TECNICO\r\nSUPERIOR DE MUJERES PNP EN SAN BARTOLO.\r\n	1	5400	5400	7148	1	2019-11-17 17:55:16.913482	2019-11-17 17:55:16.913482	\N
6252		1	6.7	6.7	7153	1	2019-11-18 01:29:43.811674	2019-11-18 01:29:43.811674	\N
6253		1	16	16	7154	1	2019-11-18 01:34:44.360218	2019-11-18 01:34:44.360218	\N
6254		1	25.42	25.42	7155	1	2019-11-18 01:39:00.47946	2019-11-18 01:39:00.47946	\N
6255		1	10.17	10.17	7156	1	2019-11-18 01:41:00.141475	2019-11-18 01:41:00.141475	\N
6256		1	21.19	21.19	7157	1	2019-11-18 01:45:32.222645	2019-11-18 01:45:32.222645	\N
6107	polyester	1	9718.8472	9718.8472	7015	3	2018-04-16 04:14:52.735673	2018-04-16 04:14:52.735673	\N
6248	ELARORACION DE METRADOS	1	589	589	7149	1	2019-11-17 18:37:26.791038	2019-11-17 18:37:26.791038	\N
6249	PAGO A CUENTA	1	591.53	591.53	7150	1	2019-11-17 18:38:51.229644	2019-11-17 18:38:51.229644	\N
6250	EQUIPO EQ H870-COD 356144-111	1	3450	3450	7151	1	2019-11-17 18:39:47.522648	2019-11-17 18:39:47.522648	\N
6251	EQUIPO EQ H870-COD 356145-111	1	3450	3450	7152	1	2019-11-17 18:40:35.825292	2019-11-17 18:40:35.825292	\N
6257		1	34.39	34.39	7158	1	2019-11-18 01:47:33.049131	2019-11-18 01:47:33.049131	\N
6258		1	121.09	121.09	7159	1	2019-11-18 01:50:46.678582	2019-11-18 01:50:46.678582	\N
6259		1	10.85	10.85	7160	1	2019-11-18 02:00:09.320962	2019-11-18 02:00:09.320962	\N
6260		1	7.2	7.2	7161	1	2019-11-18 02:03:27.658112	2019-11-18 02:03:27.658112	\N
6261		1	9.24	9.24	7162	1	2019-11-18 02:05:43.523052	2019-11-18 02:05:43.523052	\N
6262		1	11.89	11.89	7163	1	2019-11-18 02:10:01.925463	2019-11-18 02:10:01.925463	\N
6263		1	10	10	7164	1	2019-11-18 02:11:42.484126	2019-11-18 02:11:42.484126	\N
6264		1	1000	1000	7165	1	2019-11-18 02:16:19.252288	2019-11-18 02:16:19.252288	\N
6265		1	1000	1000	7166	1	2019-11-18 02:18:55.686673	2019-11-18 02:18:55.686673	\N
6266		1	584.7	584.7	7167	1	2019-11-18 02:20:06.330864	2019-11-18 02:20:06.330864	\N
6267		1	540.59	540.59	7168	1	2019-11-18 02:21:30.103291	2019-11-18 02:21:30.103291	\N
6268		1	1733.43	1733.43	7169	1	2019-11-18 02:24:22.621041	2019-11-18 02:24:22.621041	\N
5786	bolon de 45 kg 	1	228.82	228.82	6705	3	2018-02-15 19:05:44.615845	2018-02-15 19:05:44.615845	\N
5787	balon 	1	228.82	228.82	6706	3	2018-02-15 19:07:08.548908	2018-02-15 19:07:08.548908	\N
5788		1	114.41	114.41	6707	3	2018-02-15 19:08:15.203284	2018-02-15 19:08:15.203284	\N
5790		1	38.1356	38.1356	6708	3	2018-02-15 19:09:33.995737	2018-02-15 19:09:33.995737	\N
5791		1	228.82	228.82	6709	3	2018-02-15 19:10:38.298384	2018-02-15 19:10:38.298384	\N
5792		1	139.83	139.83	6710	3	2018-02-15 19:12:56.082444	2018-02-15 19:12:56.082444	\N
5793	va	1	228.82	228.82	6711	3	2018-02-15 19:13:30.441431	2018-02-15 19:13:30.441431	\N
5795		1	38.1356	38.1356	6712	3	2018-02-15 19:15:46.533247	2018-02-15 19:15:46.533247	\N
5796		1	228.82	228.82	6713	3	2018-02-15 19:16:57.742542	2018-02-15 19:16:57.742542	\N
5797		1	114.41	114.41	6714	3	2018-02-15 19:17:50.271472	2018-02-15 19:17:50.271472	\N
5798		1	228.82	228.82	6715	3	2018-02-15 19:20:58.073713	2018-02-15 19:20:58.073713	\N
5799		1	38.1356	38.1356	6716	3	2018-02-15 19:21:54.66395	2018-02-15 19:21:54.66395	\N
5800		1	38.1356	38.1356	6717	3	2018-02-15 19:22:43.444765	2018-02-15 19:22:43.444765	\N
5801	rollos de elastico	1	1864.41	1864.41	6718	3	2018-02-15 23:45:32.781411	2018-02-15 23:45:32.781411	\N
5802		1	1864.41	1864.41	6719	3	2018-02-15 23:46:22.123459	2018-02-15 23:46:22.123459	\N
5803		1	1864.41	1864.41	6720	3	2018-02-15 23:46:59.097179	2018-02-15 23:46:59.097179	\N
5804		1	1864.41	1864.41	6721	3	2018-02-15 23:47:42.81938	2018-02-15 23:47:42.81938	\N
5805		1	932.2	932.2	6722	3	2018-02-15 23:48:21.013028	2018-02-15 23:48:21.013028	\N
6269	ADELANTO SERVICIO DE CONSULTORIA PARA AMPLIACION DE LOCAL\r\nEN DISTRITO DE MAGDALENA	1	200	200	7170	1	2019-12-18 00:22:00.191782	2019-12-18 00:22:00.191782	\N
6270	asesoria	1	2500	2500	7171	1	2019-12-18 00:27:25.54002	2019-12-18 00:27:25.54002	\N
6271	ploteo	1	147.46	147.46	7172	1	2019-12-18 00:33:17.503242	2019-12-18 00:33:17.503242	\N
6272	impresiones	1	8.64	8.64	7173	1	2019-12-18 00:36:02.383926	2019-12-18 00:36:02.383926	\N
6273	varios	1	21.61	21.61	7174	1	2019-12-18 00:41:23.410722	2019-12-18 00:41:23.410722	\N
6274	consumo	1	38.76	38.76	7175	1	2019-12-18 00:44:46.388945	2019-12-18 00:44:46.388945	\N
6275		1	66.02	66.02	7176	1	2019-12-18 00:46:40.53364	2019-12-18 00:46:40.53364	\N
6276	ploteos	1	66.31	66.31	7177	1	2019-12-18 00:52:37.629058	2019-12-18 00:52:37.629058	\N
6277	ploteo	1	332.2	332.2	7178	1	2019-12-18 00:53:54.512995	2019-12-18 00:53:54.512995	\N
6278	POR ASESORAMIENTO, DISEÑO, PLANOS E IMPRESIÓN - PROYECTO SAN BARTOLO\r\n(475 SANITARIAS, 450 GAS, 75 IMPRESIÓN	1	1000	1000	7179	1	2019-12-18 00:57:19.303962	2019-12-18 00:57:19.303962	\N
6325	Individuales\r\n	200	12.7119	2542.38	7224	1	2020-02-19 01:08:43.670022	2020-02-19 01:09:00.681787	\N
6279	PARTE DE PAGO POR ELABORACION Y DIRECCION DE\r\nEXPEDIENTE TECNICO DE LA UT-04 Y US-01 DEL\r\nPROYECTO SAN BARTOLO	1	15000	15000	7180	1	2020-01-17 01:20:50.461487	2020-01-17 01:21:04.077276	\N
6280	PARTE DE PAGO POR ELABORACIÓN Y\r\nDIRECCIÓN DE EXPEDIENTE TÉCNICO UT-04 Y\r\nUS01 PROYECTO SAN BARTOLO	1	10000	10000	7181	1	2020-01-17 01:22:11.862472	2020-01-17 01:22:11.862472	\N
6300	Consumo\r\n	1	20.42	20.42	7201	1	2020-02-19 00:23:35.152622	2020-02-19 00:23:35.152622	\N
6301	Consumo\r\n	1	93.22	93.22	7202	1	2020-02-19 00:24:29.097469	2020-02-19 00:24:29.097469	\N
6302	Consumo\r\n	1	83.05	83.05	7203	1	2020-02-19 00:27:00.469054	2020-02-19 00:27:00.469054	\N
6320	Consumo\r\n	1	79.66	79.66	7220	1	2020-02-19 00:57:43.148783	2020-02-19 00:57:43.148783	\N
6303	Set de 6 Copas de Vidrio\r\n	200	13.559322	2711.8644	7204	1	2020-02-19 00:27:54.512193	2020-02-19 00:29:41.677593	\N
6304	Tazas x 6\r\n	66	16.0618	1060.0788	7205	1	2020-02-19 00:30:51.579966	2020-02-19 00:30:51.579966	\N
6305	Muestras\r\n	1	30.15	30.15	7206	1	2020-02-19 00:31:48.881942	2020-02-19 00:31:48.881942	\N
6306	Muestras\r\n	1	43.22	43.22	7207	1	2020-02-19 00:35:17.622345	2020-02-19 00:35:17.622345	\N
6310	Taza con Cucharita\r\n	300	4.661	1398.3	7211	1	2020-02-19 00:42:53.098644	2020-02-19 00:43:21.383221	\N
6312	Consumo\r\n	1	22.43	22.43	7213	1	2020-02-19 00:47:53.392438	2020-02-19 00:47:53.392438	\N
6307	Tazas x 6\r\n	138	12.71186	1754.23668	7208	1	2020-02-19 00:36:07.445465	2020-02-19 00:36:56.468113	\N
6308	Set de bandeja antiadherente\r\n	1	10879	10879	7209	1	2020-02-19 00:38:33.880398	2020-02-19 00:38:33.880398	\N
6313	Utiles\r\n	1	328.45	328.45	7214	1	2020-02-19 00:50:07.363011	2020-02-19 00:50:07.363011	\N
6318	Consumo\r\n	1	57.63	57.63	7218	1	2020-02-19 00:55:30.867714	2020-02-19 00:55:30.867714	\N
6319	Consumo\r\n	1	205.93	205.93	7219	1	2020-02-19 00:56:53.08426	2020-02-19 00:56:53.08426	\N
6321	Compra Grande\r\n	1	11452.54	11452.54	7221	1	2020-02-19 00:58:36.711479	2020-02-19 00:58:36.711479	\N
6322	Consumo\r\n	1	10.59	10.59	7222	1	2020-02-19 00:59:21.42294	2020-02-19 00:59:21.42294	\N
6323	Consumo\r\n	1	40.68	40.68	7223	1	2020-02-19 01:00:03.038302	2020-02-19 01:00:03.038302	\N
6309	Muestras\r\n	1	18.64	18.64	7210	1	2020-02-19 00:40:34.764383	2020-02-19 01:05:06.9253	\N
6326	Ensaladera de Porcelana con Base de Bambú\r\n	300	23.73	7119	7225	1	2020-02-19 01:10:38.341341	2020-02-19 01:10:38.341341	\N
6328	Set x 6 Copas de Vino\r\n	200	33.898305	6779.661	7226	1	2020-02-19 01:11:45.324704	2020-02-19 01:12:52.374641	\N
6327	Ensaladera de Porcelana con Base de Bambú\r\n	300	23.728814	7118.6442	7226	1	2020-02-19 01:11:45.310666	2020-02-19 01:12:52.407781	\N
6338	anulacion   E001-28\r\n	300	5.50847	1652.541	7235	1	2020-02-19 02:11:32.767174	2020-02-19 02:12:37.81657	\N
6331	Taza con Cucharita\r\n	300	5.50847	1652.541	7228	1	2020-02-19 01:58:02.439058	2020-02-19 02:10:31.531108	\N
6337	Anulacion	300	5.50847	1652.541	7234	1	2020-02-19 02:09:25.517817	2020-02-19 02:09:44.259542	\N
6293	EXPEDIENTE TECNICO DE CLIMATIZACION	1	2000	2000	7194	1	2020-01-17 03:04:15.769092	2020-01-17 03:04:15.769092	\N
6281	Portapapel	1	45.0847	45.0847	7182	1	2020-01-17 02:27:57.462957	2020-01-17 02:29:37.414673	\N
6282	varios	1	63.05	63.05	7183	1	2020-01-17 02:33:21.997691	2020-01-17 02:33:21.997691	\N
6283	consumo	1	23.31	23.31	7184	1	2020-01-17 02:36:31.050018	2020-01-17 02:36:31.050018	\N
6284	consumo	1	11.02	11.02	7185	1	2020-01-17 02:38:18.250991	2020-01-17 02:38:18.250991	\N
6285	varios	1	16.94	16.94	7186	1	2020-01-17 02:39:42.952218	2020-01-17 02:39:42.952218	\N
6286	consumo	1	12.29	12.29	7187	1	2020-01-17 02:40:31.273129	2020-01-17 02:40:31.273129	\N
6287	consumo	1	38.63	38.63	7188	1	2020-01-17 02:43:50.470336	2020-01-17 02:43:50.470336	\N
6288	juego de impresion de planos color	1	295.76	295.76	7189	1	2020-01-17 02:46:33.896751	2020-01-17 02:46:33.896751	\N
6289	consumo	1	5.85	5.85	7190	1	2020-01-17 02:48:18.707708	2020-01-17 02:48:18.707708	\N
6290	consumo	1	63.05	63.05	7191	1	2020-01-17 02:51:02.878567	2020-01-17 02:51:02.878567	\N
6291	MOUE LOGITECH M90 DARK	1	22.88	22.88	7192	1	2020-01-17 02:57:04.916994	2020-01-17 02:57:04.916994	\N
6292	ASESORAMIENTO INST. SANITARIAS PROYECTO SAN BARTOLO.	1	845	845	7193	1	2020-01-17 03:01:51.263393	2020-01-17 03:01:51.263393	\N
6294	ANTICIPO 1ER VALORIZACIÓN DEL 46.66% DEL SERVICIO DE\r\nMODELAMIENTO BIM DEL EXPEDIENTE TECNICO DEL PROYECTO\r\n"AMPLIACIÓN Y MEJORAMIENTO DE LA ESCUELA TECNICO SUPERIOR\r\nMUJERES PNP SAN BARTOLO" SNIP 255985	1	7000	7000	7195	1	2020-01-17 03:07:27.928341	2020-01-17 03:07:27.928341	\N
6295	TABLERO DE COMPENSACION DE 20KVAR, 220VAC	1	2000	2000	7196	1	2020-01-17 03:08:17.841718	2020-01-17 03:08:17.841718	\N
6296	PAGO PARCIAL DE COORDINACION BIM UT-04 Y\r\nUS-01, PROY. SAN BARTOLO	1	1000	1000	7197	1	2020-01-17 03:09:42.048348	2020-01-17 03:09:42.048348	\N
4104	a	1	311.86	311.86	4624	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
6297	COTIZACION 278,315-2019 (00051) PAGO POR ADELANTO DE LOS ADICIONALES\r\nCORRESPONDIENTE AL DISENO ESTRUCTURAL DE VARIAS EDIFICACIONES A\r\nCONSTRUIRSE EN LA ESCUELA TECNICO SUPERIOR DE MUJERES PNP EN SAN\r\nBARTOLO.	1	1300	1300	7198	1	2020-01-17 03:10:40.325849	2020-01-17 03:10:40.325849	\N
6298	COTIZACION 2016-2019 (00051) PAGO POR LA CANCELACION\r\nCORRESPONDIENTE AL DISENO ESTRUCTURAL DE VARIAS\r\nEDIFICACIONES A CONSTRUIRSE EN LA ESCUELA TECNICO\r\nSUPERIOR DE MUJERES PNP EN SAN BARTOLO.	1	2700	2700	7199	1	2020-01-17 03:11:47.047751	2020-01-17 03:11:47.047751	\N
6299	SERVICIO DE FIRMA DE PROYECTO DE IICC - ESCUELA DE\r\nPOLICIAS SAN BARTOLO	1	1000	1000	7200	1	2020-01-17 03:14:24.891175	2020-01-17 03:14:24.891175	\N
6314	Consumo\r\n	1	55.76	55.76	7215	1	2020-02-19 00:51:11.846823	2020-02-19 00:51:11.846823	\N
6311	Fuente refractaria\r\n	150	16.3431	2451.465	7212	1	2020-02-19 00:45:37.216107	2020-02-19 00:46:01.862756	\N
6315	consumo	1	171.19	171.19	7216	1	2020-02-19 00:52:00.321094	2020-02-19 00:52:00.321094	\N
5893	rollos de elastico	1	1440.68	1440.68	6807	3	2018-03-15 14:21:13.916012	2018-03-15 14:21:13.916012	\N
5895	rollos de elastico	1	1864.41	1864.41	6808	3	2018-03-15 14:22:31.687427	2018-03-15 14:22:31.687427	\N
5896	rollos de elastico	1	1864.41	1864.41	6809	3	2018-03-15 14:23:23.660893	2018-03-15 14:23:23.660893	\N
5897	rollos de elastico	1	1864.41	1864.41	6810	3	2018-03-15 14:24:24.239256	2018-03-15 14:24:24.239256	\N
5898	balones de 45	1	343.23	343.23	6811	3	2018-03-15 14:36:50.245787	2018-03-15 14:36:50.245787	\N
5900		1	38.1356	38.1356	6812	3	2018-03-15 14:38:57.432197	2018-03-15 14:38:57.432197	\N
5901	bidones	1	50.85	50.85	6813	3	2018-03-15 14:40:00.341223	2018-03-15 14:40:00.341223	\N
5903		1	38.1356	38.1356	6814	3	2018-03-15 14:41:20.995032	2018-03-15 14:41:20.995032	\N
5904	hilo polyester	1	3779.8541	3779.8541	6815	3	2018-03-15 14:45:49.885558	2018-03-15 14:45:49.885558	\N
5905	balones	1	228.82	228.82	6816	3	2018-03-15 14:47:17.563427	2018-03-15 14:47:17.563427	\N
5906	balones	1	343.23	343.23	6817	3	2018-03-15 14:47:56.649695	2018-03-15 14:47:56.649695	\N
5908		1	25.424	25.424	6818	3	2018-03-15 14:50:29.636697	2018-03-15 14:50:29.636697	\N
5909		1	114.41	114.41	6819	3	2018-03-15 14:51:15.767886	2018-03-15 14:51:15.767886	\N
5910		1	228.81	228.81	6820	3	2018-03-15 14:51:50.01596	2018-03-15 14:51:50.01596	\N
6324	Muestras\r\n	1	16.95	16.95	7210	1	2020-02-19 01:05:06.7172	2020-02-19 01:05:06.7172	\N
6317	Set de 2 Taza Chop Cerveceros\r\n	300	11.4407	3432.21	7217	1	2020-02-19 00:53:28.699994	2020-02-19 00:54:14.282681	\N
6316	Set de 6 Vasos Milkshake	304	10.1695	3091.528	7217	1	2020-02-19 00:53:28.686892	2020-02-19 00:54:14.294489	\N
6329	Juego de 6 tazas con plato	200	35.59322	7118.644	7227	1	2020-02-19 01:34:03.64853	2020-02-19 01:37:05.625855	\N
6330	Fuentes Antiadherentes	300	25.42373	7627.119	7227	1	2020-02-19 01:34:03.666584	2020-02-19 01:37:05.614682	\N
6332	Taza con Cucharita\r\n	300	5.50847	1652.541	7229	1	2020-02-19 01:59:38.715622	2020-02-19 01:59:38.715622	\N
6334	Individuales\r\n	200	18.6441	3728.82	7231	1	2020-02-19 02:02:36.921056	2020-02-19 02:02:52.572282	\N
6335	Taza con Cucharita\r\n	285	5.50847	1569.9139499999999	7232	1	2020-02-19 02:04:09.028482	2020-02-19 02:04:09.23483	\N
6333	Fuente Refractaria\r\n	150	32.20339	4830.5085	7230	1	2020-02-19 02:01:04.002627	2020-02-19 02:04:56.302021	\N
6336	Vasos Cerveceros\r\nVasos Milkshake\r\n	600	18.64407	11186.442	7233	1	2020-02-19 02:05:54.612639	2020-02-19 02:05:54.612639	\N
6339	consumo	1	66.1	66.1	7236	1	2020-02-20 18:14:15.165939	2020-02-20 18:14:34.05892	\N
6340	varios	1	542.37	542.37	7237	1	2020-02-20 18:19:08.659729	2020-02-20 18:19:08.659729	\N
6341	varios	1	311.3559	311.3559	7238	1	2020-02-20 18:20:23.657345	2020-02-20 18:21:16.935003	\N
6342	varios	1	21.19	21.19	7239	1	2020-02-20 18:22:14.802611	2020-02-20 18:22:14.802611	\N
6343	varios	1	60.17	60.17	7240	1	2020-02-20 18:22:54.27204	2020-02-20 18:22:54.27204	\N
6344	consumo	1	66.5254	66.5254	7241	1	2020-02-20 18:23:32.405022	2020-02-20 18:23:54.063492	\N
6345	bidon de agua	1	10.17	10.17	7242	1	2020-02-20 18:24:37.793994	2020-02-20 18:24:37.793994	\N
6346	consumo	1	101.6016	101.6016	7243	1	2020-02-20 18:26:14.872309	2020-02-20 18:26:56.323641	\N
6347	consumo	1	20.34	20.34	7244	1	2020-02-20 18:27:54.700192	2020-02-20 18:27:54.700192	\N
6348	consumo	1	40.68	40.68	7245	1	2020-02-20 18:28:46.874926	2020-02-20 18:28:46.874926	\N
6349	consumo	1	23.73	23.73	7246	1	2020-02-20 18:29:29.08624	2020-02-20 18:29:29.08624	\N
6350	bidon 	1	10.17	10.17	7247	1	2020-02-20 18:30:04.756679	2020-02-20 18:30:04.756679	\N
6351	SERVICIO DE SOLUCION TECNOLOGICA DE OUTSOURCING NEXUS ACADEMY, CORRESPONDIENTE AL MES DE ENERO DEL 2020, EN REFERENCIA A LAS ACTIVIDADES DETALLADAS EN EL ANEXO I DEL CONTRATO DE OUTSOURCING.	1	10000	10000	7248	1	2020-02-20 18:37:51.644324	2020-02-20 18:37:51.644324	\N
6352	varios	1	135.62	135.62	7249	1	2020-02-20 19:02:33.104342	2020-02-20 19:02:33.104342	\N
6353	varios	1	241.36	241.36	7250	1	2020-02-20 19:03:32.348369	2020-02-20 19:03:32.348369	\N
6354	varios	1	343.77966	343.77966	7251	1	2020-02-20 19:04:21.668766	2020-02-20 19:04:52.069217	\N
4075	a	1	70.44	70.44	4595	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4076	a	1	5308.64	5308.64	4596	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4077	a	1	3504.92	3504.92	4597	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4078	a	1	0	0	4598	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4079	a	1	847.46	847.46	4599	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4080	a	1	2440.68	2440.68	4600	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4081	a	1	436.44	436.44	4601	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4082	a	1	86.44	86.44	4602	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4083	a	1	1118.64	1118.64	4603	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4084	a	1	0	0	4604	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4085	a	1	54.24	54.24	4605	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4086	a	1	0	0	4606	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4087	a	1	630.51	630.51	4607	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4088	a	1	142.37	142.37	4608	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4089	a	1	238.98	238.98	4609	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4090	a	1	0	0	4610	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4091	a	1	220.34	220.34	4611	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4092	a	1	78.81	78.81	4612	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4093	a	1	43.22	43.22	4613	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4094	a	1	152.54	152.54	4614	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4095	a	1	313.56	313.56	4615	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4096	a	1	2093.22	2093.22	4616	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4097	a	1	528.81	528.81	4617	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4098	a	1	1525.42	1525.42	4618	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4099	a	1	0	0	4619	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4100	a	1	1525.42	1525.42	4620	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4101	a	1	0	0	4621	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4102	a	1	131.36	131.36	4622	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4103	a	1	0	0	4623	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4105	a	1	0	0	4625	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4106	a	1	440.68	440.68	4626	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4107	a	1	0	0	4627	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4108	a	1	508.47	508.47	4628	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4109	a	1	127.12	127.12	4629	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4110	a	1	46.61	46.61	4630	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4111	a	1	144.07	144.07	4631	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4112	a	1	80.51	80.51	4632	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4113	a	1	559.32	559.32	4633	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4114	a	1	410.17	410.17	4634	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4115	a	1	124.58	124.58	4635	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4116	a	1	361.02	361.02	4636	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4117	a	1	0	0	4637	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4118	a	1	0	0	4638	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4119	a	1	70.34	70.34	4639	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4120	a	1	1749.15	1749.15	4640	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4121	a	1	1525.42	1525.42	4641	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4122	a	1	0	0	4642	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4123	a	1	1220.34	1220.34	4643	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4124	a	1	1525.42	1525.42	4644	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4125	a	1	1016.95	1016.95	4645	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4126	a	1	194.92	194.92	4646	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4127	a	1	0	0	4647	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4128	a	1	966.1	966.1	4648	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4129	a	1	186.44	186.44	4649	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4130	a	1	0	0	4650	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4131	a	1	140.68	140.68	4651	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4132	a	1	716.95	716.95	4652	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4133	a	1	0	0	4653	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4134	a	1	25.42	25.42	4654	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4135	a	1	0	0	4655	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4136	a	1	1144.07	1144.07	4656	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4137	a	1	0	0	4657	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4138	a	1	0	0	4658	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4139	a	1	0	0	4659	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4140	a	1	923.73	923.73	4660	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4141	a	1	335.59	335.59	4661	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4142	a	1	241.53	241.53	4662	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4143	a	1	0	0	4663	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4144	a	1	974.58	974.58	4664	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4145	a	1	1006.36	1006.36	4665	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4146	a	1	686.44	686.44	4666	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4147	a	1	0	0	4667	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4148	a	1	125.42	125.42	4668	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4149	a	1	2674.58	2674.58	4669	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4150	a	1	1271.19	1271.19	4670	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4151	a	1	25.42	25.42	4671	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4152	a	1	67.8	67.8	4672	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4153	a	1	0	0	4673	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4154	a	1	93.22	93.22	4674	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4155	a	1	76.27	76.27	4675	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4156	a	1	236.44	236.44	4676	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4157	a	1	423.73	423.73	4677	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4158	a	1	320.34	320.34	4678	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4159	a	1	127.12	127.12	4679	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4160	a	1	83.9	83.9	4680	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4161	a	1	0	0	4681	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4162	a	1	120.76	120.76	4682	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4163	a	1	149.15	149.15	4683	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4164	a	1	26.27	26.27	4684	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4165	a	1	6101.69	6101.69	4685	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4166	a	1	51.27	51.27	4686	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4167	a	1	57.95	57.95	4687	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4168	a	1	25.42	25.42	4688	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4169	a	1	59.32	59.32	4689	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4170	a	1	128.36	128.36	4690	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4171	a	1	195.76	195.76	4691	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4172	a	1	186.44	186.44	4692	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4173	a	1	173.73	173.73	4693	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4174	a	1	13.56	13.56	4694	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4175	a	1	46.61	46.61	4695	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4176	a	1	38.14	38.14	4696	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4177	a	1	46.61	46.61	4697	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4178	a	1	23.73	23.73	4698	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4179	a	1	17.95	17.95	4699	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4180	a	1	7966.1	7966.1	4700	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4181	a	1	3027.03	3027.03	4701	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4182	a	1	4261.11	4261.11	4702	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4183	a	1	4637.29	4637.29	4703	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4184	a	1	35.59	35.59	4704	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4185	a	1	86.44	86.44	4705	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4186	a	1	483.05	483.05	4706	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4187	a	1	88.98	88.98	4707	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4188	a	1	0	0	4708	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4189	a	1	53.39	53.39	4709	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4190	a	1	203.39	203.39	4710	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4191	a	1	466.1	466.1	4711	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4192	a	1	2542.37	2542.37	4712	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4193	a	1	0	0	4713	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4194	a	1	279.66	279.66	4714	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4195	a	1	879.66	879.66	4715	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4196	a	1	406.78	406.78	4716	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4197	a	1	180.51	180.51	4717	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4198	a	1	266.95	266.95	4718	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4199	a	1	228.81	228.81	4719	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4200	a	1	501.69	501.69	4720	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4201	a	1	101.69	101.69	4721	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4202	a	1	118.64	118.64	4722	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4203	a	1	237.29	237.29	4723	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4204	a	1	149.15	149.15	4724	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4205	a	1	974.58	974.58	4725	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4206	a	1	23.73	23.73	4726	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4207	a	1	135.59	135.59	4727	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4208	a	1	0	0	4728	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4209	a	1	94.07	94.07	4729	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4210	a	1	144.92	144.92	4730	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4211	a	1	0	0	4731	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4212	a	1	40.68	40.68	4732	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4213	a	1	0	0	4733	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4214	a	1	0	0	4734	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4215	a	1	64.41	64.41	4735	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4216	a	1	0	0	4736	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4217	a	1	3028.39	3028.39	4737	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4218	a	1	149.15	149.15	4738	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4219	a	1	436.44	436.44	4739	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4220	a	1	1694.92	1694.92	4740	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4221	a	1	0	0	4741	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4222	a	1	0	0	4742	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4223	a	1	0	0	4743	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4224	a	1	0	0	4744	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4225	a	1	186.44	186.44	4745	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4226	a	1	50.85	50.85	4746	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4227	a	1	120.76	120.76	4747	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4228	a	1	402.54	402.54	4748	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4229	a	1	677.97	677.97	4749	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4230	a	1	1491.53	1491.53	4750	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4231	a	1	203.39	203.39	4751	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4232	a	1	572.03	572.03	4752	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4233	a	1	0	0	4753	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4234	a	1	657.63	657.63	4754	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4235	a	1	2869.49	2869.49	4755	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4236	a	1	0	0	4756	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4237	a	1	611.02	611.02	4757	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4238	a	1	108.05	108.05	4758	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4239	a	1	322.03	322.03	4759	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4240	a	1	0	0	4760	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4241	a	1	213.56	213.56	4761	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4242	a	1	1275.42	1275.42	4762	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4243	a	1	439.83	439.83	4763	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4244	a	1	1864.41	1864.41	4764	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4245	a	1	1581.36	1581.36	4765	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4246	a	1	0	0	4766	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4247	a	1	102.97	102.97	4767	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4248	a	1	114.41	114.41	4768	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4249	a	1	114.41	114.41	4769	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4250	a	1	1232.2	1232.2	4770	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4251	a	1	0	0	4771	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4252	a	1	9.75	9.75	4772	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4253	a	1	0	0	4773	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4254	a	1	1398.31	1398.31	4774	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4255	a	1	0	0	4775	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4256	a	1	0	0	4776	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4257	a	1	533.9	533.9	4777	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4258	a	1	1254.24	1254.24	4778	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4259	a	1	266.95	266.95	4779	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4260	a	1	0	0	4780	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4261	a	1	555.93	555.93	4781	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4262	a	1	45.76	45.76	4782	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4263	a	1	2542.37	2542.37	4783	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4264	a	1	101.69	101.69	4784	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4265	a	1	271.19	271.19	4785	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4266	a	1	208.47	208.47	4786	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4267	a	1	161.02	161.02	4787	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4268	a	1	839.83	839.83	4788	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4269	a	1	0	0	4789	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4270	a	1	2032.2	2032.2	4790	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4271	a	1	839.83	839.83	4791	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4272	a	1	0	0	4792	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4273	a	1	1144.07	1144.07	4793	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4274	a	1	110.59	110.59	4794	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4275	a	1	1244.03	1244.03	4795	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4276	a	1	155.17	155.17	4796	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4277	a	1	1226.92	1226.92	4797	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4278	a	1	228.81	228.81	4798	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4279	a	1	4406.78	4406.78	4799	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4280	a	1	9279.66	9279.66	4800	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4281	a	1	5508.47	5508.47	4801	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4282	a	1	3389.83	3389.83	4802	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4283	a	1	3771.19	3771.19	4803	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4284	a	1	7457.63	7457.63	4804	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4285	a	1	6864.41	6864.41	4805	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4286	a	1	94.92	94.92	4806	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4287	a	1	515.25	515.25	4807	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4288	a	1	545.76	545.76	4808	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4289	a	1	193.22	193.22	4809	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4290	a	1	2457.63	2457.63	4810	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4291	a	1	94.92	94.92	4811	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4292	a	1	50.85	50.85	4812	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4293	a	1	110.17	110.17	4813	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4294	a	1	186.44	186.44	4814	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4295	a	1	26.69	26.69	4815	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4296	a	1	162.71	162.71	4816	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4297	a	1	130.51	130.51	4817	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4298	a	1	46.61	46.61	4818	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4299	a	1	106.36	106.36	4819	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4300	a	1	0	0	4820	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4301	a	1	162.71	162.71	4821	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4302	a	1	440.68	440.68	4822	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4303	a	1	499.15	499.15	4823	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4304	a	1	169.49	169.49	4824	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4305	a	1	177.97	177.97	4825	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4306	a	1	127.12	127.12	4826	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4307	a	1	0	0	4827	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4308	a	1	27.97	27.97	4828	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4309	a	1	78.81	78.81	4829	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4310	a	1	135.59	135.59	4830	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4311	a	1	144.92	144.92	4831	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4312	a	1	0	0	4832	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4313	a	1	127.12	127.12	4833	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4314	a	1	135.59	135.59	4834	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4315	a	1	110.17	110.17	4835	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4316	a	1	610.17	610.17	4836	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4317	a	1	0	0	4837	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4318	a	1	2593.22	2593.22	4838	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4319	a	1	63.98	63.98	4839	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4320	a	1	1025.42	1025.42	4840	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4321	a	1	104.66	104.66	4841	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4322	a	1	0	0	4842	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4323	a	1	288.14	288.14	4843	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4324	a	1	254.24	254.24	4844	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4325	a	1	175.42	175.42	4845	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4326	a	1	220.34	220.34	4846	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4327	a	1	177.12	177.12	4847	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4328	a	1	110.17	110.17	4848	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4329	a	1	0	0	4849	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4330	a	1	1845.76	1845.76	4850	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4331	a	1	635.59	635.59	4851	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4332	a	1	432.2	432.2	4852	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4333	a	1	415.25	415.25	4853	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4334	a	1	54.24	54.24	4854	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4335	a	1	217.37	217.37	4855	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4336	a	1	44.07	44.07	4856	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4337	a	1	8.05	8.05	4857	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4338	a	1	21.61	21.61	4858	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4339	a	1	696.61	696.61	4859	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4340	a	1	0	0	4860	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4341	a	1	194.92	194.92	4861	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4342	a	1	122.03	122.03	4862	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4343	a	1	59.32	59.32	4863	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4344	a	1	0	0	4864	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4345	a	1	2656.78	2656.78	4865	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4346	a	1	193.22	193.22	4866	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4347	a	1	360.17	360.17	4867	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4348	a	1	559.32	559.32	4868	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4349	a	1	1915.25	1915.25	4869	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4350	a	1	111.86	111.86	4870	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4351	a	1	120.76	120.76	4871	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4352	a	1	16.53	16.53	4872	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4353	a	1	0	0	4873	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4354	a	1	847.46	847.46	4874	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4355	a	1	2406.78	2406.78	4875	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4356	a	1	1667.37	1667.37	4876	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4357	a	1	0	0	4877	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4358	a	1	203.39	203.39	4878	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4359	a	1	2283.9	2283.9	4879	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4360	a	1	610.17	610.17	4880	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4361	a	1	461.02	461.02	4881	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4362	a	1	0	0	4882	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4363	a	1	152.97	152.97	4883	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4364	a	1	0	0	4884	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4365	a	1	847.46	847.46	4885	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4366	a	1	402.54	402.54	4886	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4367	a	1	1864.41	1864.41	4887	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4368	a	1	839.83	839.83	4888	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4369	a	1	32.2	32.2	4889	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4370	a	1	1248.31	1248.31	4890	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4371	a	1	974.58	974.58	4891	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4372	a	1	1461.86	1461.86	4892	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4373	a	1	1461.86	1461.86	4893	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4374	a	1	1461.86	1461.86	4894	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4375	a	1	670.34	670.34	4895	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4376	a	1	1344.07	1344.07	4896	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4377	a	1	0	0	4897	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4378	a	1	2000	2000	4898	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4379	a	1	0	0	4899	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4380	a	1	0	0	4900	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4381	a	1	116.95	116.95	4901	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4382	a	1	162.71	162.71	4902	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4383	a	1	1983.05	1983.05	4903	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4384	a	1	1347.46	1347.46	4904	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4385	a	1	1223.73	1223.73	4905	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4386	a	1	0	0	4906	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4387	a	1	413.56	413.56	4907	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4388	a	1	0	0	4908	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4389	a	1	2232.2	2232.2	4909	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4390	a	1	59.32	59.32	4910	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4391	a	1	0	0	4911	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4392	a	1	949.15	949.15	4912	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4393	a	1	115.25	115.25	4913	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4394	a	1	915.25	915.25	4914	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4395	a	1	0	0	4915	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4396	a	1	525.42	525.42	4916	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4397	a	1	101.69	101.69	4917	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4398	a	1	114.41	114.41	4965	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4399	a	1	228.81	228.81	4966	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4400	a	1	148.62	148.62	4967	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4401	a	1	160.08	160.08	4968	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4402	a	1	25.42	25.42	4969	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4403	a	1	812.4	812.4	4970	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4404	a	1	9956.08	9956.08	4971	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4405	a	1	989.04	989.04	4972	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4406	a	1	114.41	114.41	4973	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4407	a	1	25.42	25.42	4974	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4408	a	1	114.41	114.41	4975	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4409	a	1	1485.88	1485.88	4976	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4410	a	1	114.41	114.41	4977	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4411	a	1	25.42	25.42	4978	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4412	a	1	6930.14	6930.14	4979	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4413	a	1	590.68	590.68	4980	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4414	a	1	114.41	114.41	4981	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4415	a	1	126.48	126.48	4982	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4416	a	1	16.95	16.95	4983	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4417	a	1	487.29	487.29	4984	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4418	a	1	23.99	23.99	4985	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4419	a	1	208.47	208.47	4986	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4420	a	1	114.41	114.41	4987	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4421	a	1	13.49	13.49	4988	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4422	a	1	206.64	206.64	4989	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4423	a	1	18.56	18.56	4990	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4424	a	1	42.37	42.37	4991	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4425	a	1	114.41	114.41	4992	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4426	a	1	513.15	513.15	4993	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4427	a	1	14.83	14.83	4994	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4428	a	1	16.95	16.95	4995	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4429	a	1	262.71	262.71	4996	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4430	a	1	109.24	109.24	4997	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4431	a	1	1745.08	1745.08	4998	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4432	a	1	1526.95	1526.95	4999	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4433	a	1	41.78	41.78	5000	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4434	a	1	144.15	144.15	5001	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4435	a	1	120.64	120.64	5002	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4436	a	1	4533.9	4533.9	5003	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4437	a	1	6881.36	6881.36	5004	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4438	a	1	5152.54	5152.54	5005	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4439	a	1	6004.24	6004.24	5006	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4440	a	1	4165.25	4165.25	5007	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4441	a	1	7203.39	7203.39	5008	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4442	a	1	6449.15	6449.15	5009	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4443	a	1	7449.15	7449.15	5010	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4444	a	1	4279.66	4279.66	5011	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4445	a	1	0	0	5012	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4446	a	1	40695.2	40695.2	5013	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4447	a	1	17238	17238	5014	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4448	a	1	0	0	5015	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4449	a	1	0	0	5016	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4450	a	1	17370.6	17370.6	5017	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4451	a	1	2639.65	2639.65	5018	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4452	a	1	17462.4	17462.4	5019	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4453	a	1	0	0	5020	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4454	a	1	2054.4	2054.4	5021	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4455	a	1	900	900	5022	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4456	a	1	0	0	5023	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4457	a	1	406.78	406.78	5024	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4458	a	1	0	0	5025	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4459	a	1	406.78	406.78	5026	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4460	a	1	1000	1000	5027	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4461	a	1	2057.04	2057.04	5028	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4462	a	1	101.57	101.57	5029	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4484	a	1	673.61	673.61	5065	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4485	a	1	51.4	51.4	5066	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4486	a	1	1102.9	1102.9	5067	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4487	a	1	122.16	122.16	5068	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4488	a	1	475.46	475.46	5069	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4489	a	1	319.49	319.49	5070	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4490	a	1	99	99	5071	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4491	a	1	122.16	122.16	5072	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4492	a	1	5508.47	5508.47	5073	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4493	a	1	5084.75	5084.75	5074	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4494	a	1	5308.64	5308.64	5075	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4495	a	1	5508.47	5508.47	5076	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4496	a	1	57.63	57.63	5077	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4497	a	1	82.2	82.2	5078	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4498	a	1	0	0	5079	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4499	a	1	237.29	237.29	5080	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4500	a	1	1398.31	1398.31	5081	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4501	a	1	499.15	499.15	5082	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4502	a	1	0	0	5083	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4503	a	1	908.47	908.47	5084	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4504	a	1	0	0	5085	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4505	a	1	0	0	5086	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4506	a	1	1864.41	1864.41	5087	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4507	a	1	761.02	761.02	5088	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4508	a	1	42.37	42.37	5089	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4509	a	1	0	0	5090	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4510	a	1	1254.24	1254.24	5091	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4511	a	1	2457.63	2457.63	5092	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4512	a	1	583.05	583.05	5093	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4513	a	1	59.32	59.32	5094	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4514	a	1	271.19	271.19	5095	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4515	a	1	1855.93	1855.93	5096	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4516	a	1	48.31	48.31	5097	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4517	a	1	32.2	32.2	5098	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4518	a	1	305.08	305.08	5099	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4519	a	1	0	0	5100	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4520	a	1	0	0	5101	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4521	a	1	381.36	381.36	5102	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4522	a	1	79.24	79.24	5103	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4523	a	1	373.73	373.73	5104	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4524	a	1	111.86	111.86	5105	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4525	a	1	0	0	5106	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4526	a	1	64.41	64.41	5107	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4527	a	1	44.07	44.07	5108	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4528	a	1	177.97	177.97	5109	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4529	a	1	610.17	610.17	5110	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4530	a	1	1144.07	1144.07	5111	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4531	a	1	1088.14	1088.14	5112	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4532	a	1	80.51	80.51	5113	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4533	a	1	292.37	292.37	5114	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4534	a	1	1588.98	1588.98	5115	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4535	a	1	974.58	974.58	5116	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4536	a	1	1016.95	1016.95	5117	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4537	a	1	528.81	528.81	5118	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4538	a	1	0	0	5119	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4539	a	1	0	0	5120	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4540	a	1	78.81	78.81	5121	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4541	a	1	0	0	5122	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4542	a	1	394.07	394.07	5123	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4543	a	1	444.92	444.92	5124	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4544	a	1	1901.69	1901.69	5125	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4545	a	1	44.49	44.49	5126	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4546	a	1	932.2	932.2	5127	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4547	a	1	1449.15	1449.15	5128	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4548	a	1	56.36	56.36	5129	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4549	a	1	194.92	194.92	5130	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4550	a	1	167.8	167.8	5131	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4551	a	1	88.56	88.56	5132	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4552	a	1	71.19	71.19	5133	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4553	a	1	379.24	379.24	5134	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4554	a	1	36.44	36.44	5135	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4555	a	1	0	0	5136	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4556	a	1	325.42	325.42	5137	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4557	a	1	0	0	5138	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4558	a	1	1169.49	1169.49	5139	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4559	a	1	1322.03	1322.03	5140	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4560	a	1	0	0	5141	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4561	a	1	1271.19	1271.19	5142	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4562	a	1	320.34	320.34	5143	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4563	a	1	89.75	89.75	5144	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4564	a	1	79.92	79.92	5145	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4565	a	1	118.14	118.14	5146	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4566	a	1	18683.84	18683.84	5147	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4567	a	1	35.59	35.59	5148	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4568	a	1	120.68	120.68	5149	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4569	a	1	317.8	317.8	5150	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4570	a	1	3728.81	3728.81	5151	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4571	a	1	4745.76	4745.76	5152	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4572	a	1	3504.92	3504.92	5153	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4573	a	1	81.1	81.1	5154	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4574	a	1	8.47	8.47	5155	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4575	a	1	0	0	5156	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4576	a	1	1050.85	1050.85	5157	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4577	a	1	106.78	106.78	5158	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4578	a	1	166.1	166.1	5159	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4579	a	1	101.69	101.69	5160	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4580	a	1	625.42	625.42	5161	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4581	a	1	555.93	555.93	5162	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4582	a	1	1495.76	1495.76	5163	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4583	a	1	1639.83	1639.83	5164	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4584	a	1	1639.83	1639.83	5165	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4585	a	1	366.1	366.1	5166	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4586	a	1	64.41	64.41	5167	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4587	a	1	677.97	677.97	5168	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4588	a	1	0	0	5169	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4589	a	1	953.39	953.39	5170	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4590	a	1	335.17	335.17	5171	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4591	a	1	1713.56	1713.56	5172	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4592	a	1	161.02	161.02	5173	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4593	a	1	610.17	610.17	5174	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4594	a	1	447.46	447.46	5175	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4595	a	1	515.25	515.25	5176	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4596	a	1	1303.39	1303.39	5177	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4597	a	1	0	0	5178	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4598	a	1	2015.25	2015.25	5179	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4599	a	1	0	0	5180	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4600	a	1	81.36	81.36	5181	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4601	a	1	386.44	386.44	5182	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4602	a	1	96.61	96.61	5183	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4603	a	1	54.24	54.24	5184	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4604	a	1	1603.39	1603.39	5185	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4605	a	1	597.46	597.46	5186	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4606	a	1	610.17	610.17	5187	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4607	a	1	96.61	96.61	5188	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4608	a	1	97.46	97.46	5189	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4609	a	1	2194.92	2194.92	5190	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4610	a	1	2396.61	2396.61	5191	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4611	a	1	1864.41	1864.41	5192	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4612	a	1	386.44	386.44	5193	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4613	a	1	843.22	843.22	5194	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4614	a	1	67.8	67.8	5195	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4615	a	1	194.92	194.92	5196	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4616	a	1	180.51	180.51	5197	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4617	a	1	805.08	805.08	5198	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4618	a	1	97.46	97.46	5199	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4619	a	1	35.59	35.59	5200	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4620	a	1	854.24	854.24	5201	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4621	a	1	11.86	11.86	5202	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4622	a	1	50.85	50.85	5203	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4623	a	1	48.73	48.73	5204	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4624	a	1	152.54	152.54	5205	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4625	a	1	177.12	177.12	5206	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4626	a	1	300	300	5207	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4627	a	1	127.12	127.12	5208	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4628	a	1	1864.41	1864.41	5209	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4629	a	1	1940.68	1940.68	5210	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4630	a	1	1851.69	1851.69	5211	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4631	a	1	0	0	5212	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4632	a	1	402.54	402.54	5213	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4633	a	1	95.76	95.76	5214	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4634	a	1	682.2	682.2	5215	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4635	a	1	177.97	177.97	5216	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4636	a	1	0	0	5217	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4637	a	1	101.69	101.69	5218	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4638	a	1	185.17	185.17	5219	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4639	a	1	2639.58	2639.58	5220	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4640	a	1	3813.56	3813.56	5221	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4641	a	1	5084.75	5084.75	5222	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4642	a	1	121.91	121.91	5223	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4643	a	1	123.05	123.05	5224	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4644	a	1	9.41	9.41	5225	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4645	a	1	74.51	74.51	5226	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4646	a	1	2632.36	2632.36	5227	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4647	a	1	9.31	9.31	5228	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4648	a	1	7780.03	7780.03	5229	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4649	a	1	120.13	120.13	5230	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4650	a	1	6559.32	6559.32	5231	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4651	a	1	6440.68	6440.68	5232	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4652	a	1	125.72	125.72	5233	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4653	a	1	6271.19	6271.19	5234	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4654	a	1	2297.63	2297.63	5235	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4655	a	1	6779.66	6779.66	5236	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4656	a	1	48.59	48.59	5237	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4657	a	1	5508.47	5508.47	5238	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4658	a	1	16.95	16.95	5239	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4659	a	1	82.97	82.97	5240	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4660	a	1	389.83	389.83	5241	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4661	a	1	94.92	94.92	5242	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4662	a	1	0	0	5243	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4663	a	1	762.71	762.71	5244	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4664	a	1	0	0	5245	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4665	a	1	127.12	127.12	5246	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4666	a	1	593.22	593.22	5247	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4667	a	1	40.68	40.68	5248	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4668	a	1	40.68	40.68	5249	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4669	a	1	0	0	5250	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4670	a	1	345.76	345.76	5251	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4671	a	1	127.12	127.12	5252	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4672	a	1	142.37	142.37	5253	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4673	a	1	161.02	161.02	5254	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4674	a	1	233.05	233.05	5255	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4675	a	1	0	0	5256	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4676	a	1	1694.92	1694.92	5257	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4677	a	1	0	0	5258	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4678	a	1	720.34	720.34	5259	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4679	a	1	322.03	322.03	5260	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4680	a	1	1864.41	1864.41	5261	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4681	a	1	2118.64	2118.64	5262	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4682	a	1	915.25	915.25	5263	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4683	a	1	279.66	279.66	5264	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4684	a	1	72.03	72.03	5265	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4685	a	1	56.36	56.36	5266	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4686	a	1	0	0	5267	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4687	a	1	8.05	8.05	5268	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4688	a	1	1864.41	1864.41	5269	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4689	a	1	0	0	5270	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4690	a	1	80.51	80.51	5271	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4691	a	1	0	0	5272	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4692	a	1	1034.75	1034.75	5273	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4693	a	1	183.47	183.47	5274	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4694	a	1	1084.75	1084.75	5275	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4695	a	1	172.88	172.88	5276	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4696	a	1	893.22	893.22	5277	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4697	a	1	0	0	5278	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4698	a	1	213.56	213.56	5279	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4699	a	1	9004.24	9004.24	5280	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4700	a	1	576.27	576.27	5281	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4701	a	1	423.73	423.73	5282	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4702	a	1	1372.88	1372.88	5283	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4703	a	1	135.59	135.59	5284	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4704	a	1	81.36	81.36	5285	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4705	a	1	66.95	66.95	5286	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4706	a	1	0	0	5287	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4707	a	1	850.85	850.85	5288	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4708	a	1	0	0	5289	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4709	a	1	2542.37	2542.37	5290	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4710	a	1	423.73	423.73	5291	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4711	a	1	139.83	139.83	5292	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4712	a	1	0	0	5293	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4713	a	1	0	0	5294	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4714	a	1	23.73	23.73	5295	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4715	a	1	0	0	5296	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4716	a	1	104.66	104.66	5297	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4717	a	1	220.34	220.34	5298	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4718	a	1	1059.32	1059.32	5299	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4719	a	1	1059.32	1059.32	5300	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4720	a	1	2711.86	2711.86	5301	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4721	a	1	2698.31	2698.31	5302	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4722	a	1	29.24	29.24	5303	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4723	a	1	76.27	76.27	5304	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4724	a	1	249.58	249.58	5305	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4725	a	1	165.25	165.25	5306	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4726	a	1	591.1	591.1	5307	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4727	a	1	457.63	457.63	5308	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4728	a	1	53.39	53.39	5309	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4729	a	1	27.97	27.97	5310	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4730	a	1	76.27	76.27	5311	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4731	a	1	449.15	449.15	5312	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4732	a	1	1483.05	1483.05	5313	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4733	a	1	135.59	135.59	5314	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4734	a	1	2418.72	2418.72	5315	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4735	a	1	2444.6	2444.6	5316	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4736	a	1	56.36	56.36	5317	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4737	a	1	380.08	380.08	5318	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4738	a	1	135.59	135.59	5319	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4739	a	1	203.39	203.39	5320	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4740	a	1	254.24	254.24	5321	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4741	a	1	1402.54	1402.54	5322	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4742	a	1	134.32	134.32	5323	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4743	a	1	37.29	37.29	5324	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4744	a	1	0	0	5325	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4745	a	1	0	0	5326	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4746	a	1	2118.64	2118.64	5327	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4747	a	1	0	0	5328	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4748	a	1	2920.63	2920.63	5329	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4749	a	1	3179.66	3179.66	5330	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4750	a	1	128.81	128.81	5331	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4751	a	1	1779.66	1779.66	5332	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4752	a	1	1864.41	1864.41	5333	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4753	a	1	56.36	56.36	5334	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4754	a	1	2895.78	2895.78	5335	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4755	a	1	75.8	75.8	5336	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4756	a	1	9892.68	9892.68	5337	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4757	a	1	98.56	98.56	5338	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4758	a	1	88.14	88.14	5339	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4759	a	1	211.86	211.86	5340	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4760	a	1	84.75	84.75	5341	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4761	a	1	98.56	98.56	5342	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4762	a	1	20.34	20.34	5343	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4763	a	1	113.56	113.56	5344	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4764	a	1	16.95	16.95	5345	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4765	a	1	16.95	16.95	5346	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4766	a	1	84.75	84.75	5347	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4767	a	1	1448.84	1448.84	5348	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4768	a	1	9785.49	9785.49	5349	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4769	a	1	9795.25	9795.25	5350	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4770	a	1	13.56	13.56	5351	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4771	a	1	11967.78	11967.78	5352	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4772	a	1	444.92	444.92	5353	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4773	a	1	29.66	29.66	5354	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4774	a	1	22.71	22.71	5355	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4775	a	1	15	15	5356	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4776	a	1	19.24	19.24	5357	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4777	a	1	15.17	15.17	5358	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4778	a	1	19.15	19.15	5359	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4779	a	1	1528.31	1528.31	5360	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4780	a	1	289.83	289.83	5361	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4781	a	1	483.05	483.05	5362	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4782	a	1	566.4	566.4	5363	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4783	a	1	121.91	121.91	5364	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4784	a	1	44.07	44.07	5365	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4785	a	1	152.54	152.54	5366	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4786	a	1	3898.14	3898.14	5367	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4787	a	1	5220.51	5220.51	5368	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4788	a	1	5932.2	5932.2	5369	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4789	a	1	5254.24	5254.24	5370	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4790	a	1	3220.34	3220.34	5371	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4791	a	1	4576.27	4576.27	5372	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4792	a	1	4406.78	4406.78	5373	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4793	a	1	10542.37	10542.37	5374	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4794	a	1	7796.61	7796.61	5375	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4795	a	1	0	0	5376	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4796	a	1	56.36	56.36	5377	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4797	a	1	17355.3	17355.3	5378	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4798	a	1	14203.64	14203.64	5379	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4799	a	1	0	0	5380	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4800	a	1	0	0	5381	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4801	a	1	1502.2	1502.2	5382	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4802	a	1	9667.31	9667.31	5383	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4803	a	1	17380.8	17380.8	5384	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4804	a	1	0	0	5385	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4805	a	1	1571.8	1571.8	5386	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4806	a	1	0	0	5387	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4807	a	1	680	680	5388	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4808	a	1	1357.8	1357.8	5389	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4809	a	1	1100	1100	5390	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4810	a	1	1400	1400	5391	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4811	a	1	1623	1623	5392	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4812	a	1	11454.6	11454.6	5393	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4813	a	1	0	0	5394	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4814	a	1	0	0	5395	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4815	a	1	0	0	5396	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4816	a	1	7345.51	7345.51	5397	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4817	a	1	1000	1000	5398	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4818	a	1	3625	3625	5399	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4819	a	1	0	0	5400	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4820	a	1	19639.92	19639.92	5401	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4890	a	1	\N	\N	5412	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4891	a	1	600	600	5413	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4892	a	1	84.58	84.58	5414	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4905	a	1	77.97	77.97	5415	1	2016-12-26 00:00:00	2017-01-17 05:17:58.70913	4
4908	produc 2	10.555	25.25	266.51375	5499	3	2017-01-28 04:07:12.092428	2017-01-28 04:07:48.856096	4
4907	zamc	1	50	50	5499	3	2017-01-28 04:05:41.126438	2017-01-28 04:06:32.450364	4
4889	a	1	\N	\N	5411	1	2016-12-26 00:00:00	2016-12-26 00:00:00	4
4910	Gggg	1	100	100	5502	3	2017-01-30 15:50:11.099579	2017-01-30 15:50:11.099579	4
4914	combustible	1	150	150	5504	3	2017-02-09 20:00:01.905855	2017-02-09 20:00:01.905855	4
4915	impresora	1	121225	121225	5505	3	2017-02-10 22:03:47.156536	2017-02-10 22:03:47.156536	4
4909		1	50	50	5501	3	2017-01-28 13:23:55.895145	2017-01-28 13:23:55.895145	4
6630	Venta	1	160.00000000000003	188.8	7499	3	2020-08-18 13:57:58.024645	2020-08-18 13:57:58.024645	\N
6631	Venta	1	740.0000000000001	873.2	7500	3	2020-08-18 13:57:58.203407	2020-08-18 13:57:58.203407	\N
6632	Venta	1	555	654.9	7501	3	2020-08-18 13:57:58.242993	2020-08-18 13:57:58.242993	\N
6633	Venta	1	650	767	7502	3	2020-08-18 13:57:58.320306	2020-08-18 13:57:58.320306	\N
6634	Venta	1	650	767	7503	3	2020-08-18 13:57:58.418841	2020-08-18 13:57:58.418841	\N
6658	Tablet Lenovo	1	886.4406779661017	1046	7527	3	2020-09-07 14:55:44.09039	2020-09-07 14:55:44.09039	\N
6659	Venta	1	200	236	7528	3	2020-09-07 14:57:04.00502	2020-09-07 14:57:04.00502	\N
6637	visor facial	1	625	737.5	7506	3	2020-08-18 13:58:34.665054	2020-08-18 13:58:34.665054	\N
6638	termometro	1	700	826	7507	3	2020-08-18 13:58:34.731252	2020-08-18 13:58:34.731252	\N
6639	consumo	1	32.20338983050848	38	7508	3	2020-08-18 13:58:34.790067	2020-08-18 13:58:34.790067	\N
6635	nota de credito	1	-650	-767	7504	1	2020-08-18 13:57:58.513284	2020-08-18 22:51:51.146059	\N
6636	nota de credito	1	-650	-767	7505	1	2020-08-18 13:57:58.575764	2020-08-18 22:52:11.536636	\N
6640	varios	1	23800	28084	7509	3	2020-08-19 02:26:28.072361	2020-08-19 02:26:28.072361	\N
6641	varios	1	23800	28084	7510	3	2020-08-19 02:26:28.192515	2020-08-19 02:26:28.192515	\N
6642	varios	1	44.00000000000001	51.92	7511	3	2020-08-19 02:27:37.929146	2020-08-19 02:27:37.929146	\N
6643	varios	1	35	41.3	7512	3	2020-08-19 02:27:38.017436	2020-08-19 02:27:38.017436	\N
6644	varios	1	22360	26384.8	7513	3	2020-08-19 02:27:38.110391	2020-08-19 02:27:38.110391	\N
6645	varios	1	14830.508474576272	17500	7514	3	2020-08-19 02:27:38.174937	2020-08-19 02:27:38.174937	\N
6646	varios	1	14851.694915254238	17525	7515	3	2020-08-19 02:27:38.266262	2020-08-19 02:27:38.266262	\N
6647	varios	1	5372.881355932203	6340	7516	3	2020-08-19 02:27:38.314358	2020-08-19 02:27:38.314358	\N
6648	varios	1	2203.389830508475	2600	7517	3	2020-08-20 13:26:05.394723	2020-08-20 13:26:05.394723	\N
6649	varios	1	254.23728813559325	300	7518	3	2020-08-20 13:26:05.526488	2020-08-20 13:26:05.526488	\N
6650	varios	1	2203.389830508475	2600	7519	3	2020-08-20 13:26:05.557918	2020-08-20 13:26:05.557918	\N
6651	varios	1	1949.1610169491528	2300.01	7520	3	2020-08-20 13:26:05.599292	2020-08-20 13:26:05.599292	\N
6652	varios	1	983.042372881356	1159.99	7521	3	2020-08-20 13:26:05.661382	2020-08-20 13:26:05.661382	\N
6653	varios	1	1840.5338983050847	2171.83	7522	3	2020-08-20 13:26:05.692322	2020-08-20 13:26:05.692322	\N
6654	varios	1	566.3050847457628	668.24	7523	3	2020-08-20 13:26:05.733352	2020-08-20 13:26:05.733352	\N
6655	servicio	1	10000	11800	7524	3	2020-08-20 13:29:54.391469	2020-08-20 13:29:54.391469	\N
6656	servicio	1	10000	11800	7525	3	2020-08-20 13:29:54.422095	2020-08-20 13:29:54.422095	\N
6657	renovacion	1	3000	3540	7526	3	2020-08-20 13:29:54.448016	2020-08-20 13:29:54.448016	\N
6660	Termometro y Mascarillas	1	377.11864406779665	445	7529	3	2020-09-07 14:58:40.696391	2020-09-07 14:58:40.696391	\N
6661	Lentes	1	50	59	7530	3	2020-09-07 14:58:40.744845	2020-09-07 14:58:40.744845	\N
6662	Termometro y Oximetro	1	216.10169491525426	255	7531	3	2020-09-07 14:58:40.793168	2020-09-07 14:58:40.793168	\N
6663	Venta	1	784	925.12	7532	3	2020-09-07 14:59:36.753578	2020-09-07 14:59:36.753578	\N
6665	varios	1	6880	8118.4	7534	1	2020-09-09 16:18:40.253133	2020-09-09 21:01:22.765455	\N
6556	bidon de agua	1	10.16949152542373	12	7425	3	2020-07-06 16:11:07.766987	2020-07-06 16:11:07.766987	\N
6557	VARIOS	1	2537.042372881356	2993.71	7426	3	2020-07-06 16:11:07.809845	2020-07-06 16:11:07.809845	\N
6558	VARIOS	1	39.83050847457627	47	7427	3	2020-07-06 16:11:07.835968	2020-07-06 16:11:07.835968	\N
6559	VARIOS	1	10.16949152542373	12	7428	3	2020-07-06 16:11:07.863281	2020-07-06 16:11:07.863281	\N
6560	VARIOS	1	10.16949152542373	12	7429	3	2020-07-06 16:11:07.886808	2020-07-06 16:11:07.886808	\N
6561	VARIOS	1	27.118644067796613	32	7430	3	2020-07-06 16:11:07.922672	2020-07-06 16:11:07.922672	\N
6562	Consumo	1	101.69491525423729	120	7431	3	2020-07-06 16:11:07.946718	2020-07-06 16:11:07.946718	\N
6563	Consumo	1	63.83050847457627	75.32	7432	3	2020-07-06 16:11:07.982548	2020-07-06 16:11:07.982548	\N
6564	art.  De limpieza	1	332.5423728813559	392.4	7433	3	2020-07-06 16:11:08.018538	2020-07-06 16:11:08.018538	\N
6565	VARIOS	1	652.542372881356	770	7434	3	2020-07-06 16:11:08.042389	2020-07-06 16:11:08.042389	\N
6573	servicio	1	5000	5900	7442	3	2020-07-06 16:47:20.333068	2020-07-06 16:47:20.333068	\N
6574	servicio	1	10000	11800	7443	3	2020-07-06 16:47:20.52248	2020-07-06 16:47:20.52248	\N
6575	servicio	1	5000	5900	7444	3	2020-07-06 16:47:20.588361	2020-07-06 16:47:20.588361	\N
6576	otros	1	-5000	-5900	7445	3	2020-07-06 16:47:20.639178	2020-07-06 16:47:20.639178	\N
6577	otros	1	-10000	-11800	7446	3	2020-07-06 16:47:20.732974	2020-07-06 16:47:20.732974	\N
6578	varios	1	2500	2950	7447	3	2020-07-06 16:55:02.6488	2020-07-06 16:55:02.6488	\N
6579	varios	1	5800	6844	7448	3	2020-07-06 16:55:02.678501	2020-07-06 16:55:02.678501	\N
6580	utiles de escritorio	1	188.98305084745763	223	7449	3	2020-07-06 16:55:27.752248	2020-07-06 16:55:27.752248	\N
6581	varios	1	188.135593220339	222	7450	3	2020-07-06 16:55:27.802486	2020-07-06 16:55:27.802486	\N
6582	varios	1	58.47457627118644	69	7451	3	2020-07-06 16:55:27.831554	2020-07-06 16:55:27.831554	\N
6583	varios	1	11.016949152542374	13	7452	3	2020-07-06 16:55:27.863912	2020-07-06 16:55:27.863912	\N
6584	varios	1	213.55932203389833	252	7453	3	2020-07-06 16:55:27.894047	2020-07-06 16:55:27.894047	\N
6585	varios	1	81.35593220338984	96	7454	3	2020-07-06 16:55:27.92679	2020-07-06 16:55:27.92679	\N
6586	varios	1	716.1016949152543	845	7455	3	2020-07-06 16:55:27.956943	2020-07-06 16:55:27.956943	\N
6587	varios	1	2605.084745762712	3074	7456	3	2020-07-06 16:55:27.983176	2020-07-06 16:55:27.983176	\N
6588	varios	1	2415.2542372881358	2850	7457	3	2020-07-06 16:55:28.029871	2020-07-06 16:55:28.029871	\N
6589	varios	1	1949.1525423728815	2300	7458	3	2020-07-06 16:55:28.074007	2020-07-06 16:55:28.074007	\N
6590	varios	1	2498.305084745763	2948	7459	3	2020-07-06 16:55:28.109323	2020-07-06 16:55:28.109323	\N
6591	Muestras	1	17.380000000000003	20.5084	7460	3	2020-07-14 04:33:12.379532	2020-07-14 04:33:12.379532	\N
6592	Set de Alcuza x 4pz	1	3402.3644067796613	4014.79	7461	3	2020-07-14 04:33:12.430891	2020-07-14 04:33:12.430891	\N
6593	Set de Canister	1	4283.5084745762715	5054.54	7462	3	2020-07-14 04:33:12.460254	2020-07-14 04:33:12.460254	\N
6594	Jarra + Copas + Bowl	1	5710.120000000001	6737.9416	7463	3	2020-07-14 04:33:12.487436	2020-07-14 04:33:12.487436	\N
6595	Venta	1	9915.250000000002	11699.995	7464	3	2020-07-14 04:33:40.612281	2020-07-14 04:33:40.612281	\N
6596	Venta	1	5.000000000000001	5.9	7465	3	2020-07-14 04:33:40.637909	2020-07-14 04:33:40.637909	\N
6597	varios	1	8474.57627118644	10000	7466	3	2020-07-15 18:10:07.983111	2020-07-15 18:10:07.983111	\N
6599	varios	1	4067.796610169492	4800	7468	3	2020-07-15 18:10:30.861355	2020-07-15 18:10:30.861355	\N
6600	varios	1	4152.542372881356	4900	7469	3	2020-07-15 18:10:30.952846	2020-07-15 18:10:30.952846	\N
6601	varios	1	1082.2033898305085	1277	7470	3	2020-07-15 18:10:31.026876	2020-07-15 18:10:31.026876	\N
6598	varios	1	-8474.57627118644	-10000	7467	1	2020-07-15 18:10:08.038031	2020-07-15 18:21:05.788511	\N
6602	varios	1	211.0169491525424	249	7471	3	2020-07-15 18:10:31.131788	2020-07-15 18:10:31.131788	\N
6603	varios	1	132.24576271186442	156.05	7472	3	2020-07-15 18:10:31.185238	2020-07-15 18:10:31.185238	\N
6604	varios	1	211.0169491525424	249	7473	3	2020-07-15 18:10:31.233529	2020-07-15 18:10:31.233529	\N
6666	varios	1	8800	10384	7535	3	2020-09-09 16:18:40.272692	2020-09-09 16:18:40.272692	\N
6667	varios	1	2250	2655	7536	3	2020-09-09 16:18:40.307173	2020-09-09 16:18:40.307173	\N
6606	servicio	1	978.8135593220339	1155	7475	1	2020-07-15 18:11:12.842906	2020-07-15 19:29:11.219891	\N
6605	servicio	1	22074.57627118644	26048	7474	1	2020-07-15 18:11:12.804873	2020-07-15 19:29:56.534195	\N
6668	varios	1	40850	48203	7537	3	2020-09-09 16:18:40.327298	2020-09-09 16:18:40.327298	\N
6669	varios	1	127.11864406779662	150	7538	3	2020-09-09 16:18:40.348494	2020-09-09 16:18:40.348494	\N
6670	varios	1	50000	59000	7545	3	2020-09-09 16:19:52.768227	2020-09-09 16:19:52.768227	\N
6671	varios	1	-54	-63.72	7546	3	2020-09-09 16:19:52.791467	2020-09-09 16:19:52.791467	\N
6675	varios	1	54	63.72	7539	3	2020-09-09 16:19:52.880342	2020-09-09 16:19:52.880342	\N
6676	varios	1	29900	35282	7540	3	2020-09-09 16:19:52.912202	2020-09-09 16:19:52.912202	\N
6677	varios	1	23	27.14	7541	3	2020-09-09 16:19:52.963327	2020-09-09 16:19:52.963327	\N
6678	varios	1	46	54.28	7542	3	2020-09-09 16:19:52.994302	2020-09-09 16:19:52.994302	\N
6679	varios	1	9200	10856	7543	3	2020-09-09 16:19:53.01976	2020-09-09 16:19:53.01976	\N
6680	varios	1	50	59	7544	3	2020-09-09 16:19:53.04736	2020-09-09 16:19:53.04736	\N
6672	varios	1	-23	-27.14	7547	1	2020-09-09 16:19:52.812706	2020-09-09 20:58:24.051594	\N
6673	varios	1	-46	-54.28	7548	1	2020-09-09 16:19:52.834812	2020-09-09 20:58:51.426652	\N
6674	varios	1	-50	-59	7549	1	2020-09-09 16:19:52.859372	2020-09-09 20:59:07.536418	\N
6664	varios	1	198.26271186440678	233.95	7533	1	2020-09-09 16:18:40.169355	2020-09-09 21:01:00.560885	\N
6681	varios	1	13200	15576	7550	3	2020-09-17 23:08:46.8388	2020-09-17 23:08:46.8388	\N
6682	varios	1	8800	10384	7551	3	2020-09-17 23:08:46.934687	2020-09-17 23:08:46.934687	\N
6683	varios	1	4400	5192	7552	3	2020-09-17 23:08:46.969366	2020-09-17 23:08:46.969366	\N
6684	varios	1	6600	7788	7553	3	2020-09-17 23:08:47.013651	2020-09-17 23:08:47.013651	\N
6685	varios	1	155.9322033898305	184	7554	3	2020-09-17 23:08:47.056775	2020-09-17 23:08:47.056775	\N
6686	varios	1	54.983050847457626	64.88	7555	3	2020-09-17 23:08:47.119867	2020-09-17 23:08:47.119867	\N
6687	varios	1	28.400000000000002	33.512	7556	3	2020-09-17 23:08:47.165513	2020-09-17 23:08:47.165513	\N
6689	varios	1	126.35	149.093	7558	3	2020-09-17 23:08:47.266128	2020-09-17 23:08:47.266128	\N
6690	varios	1	45.38	53.5484	7559	3	2020-09-17 23:08:47.343232	2020-09-17 23:08:47.343232	\N
6691	varios	1	31.305084745762713	36.94	7560	3	2020-09-17 23:08:47.403472	2020-09-17 23:08:47.403472	\N
6692	varios	1	67.94915254237289	80.18	7561	3	2020-09-17 23:08:47.444515	2020-09-17 23:08:47.444515	\N
6693	varios	1	169.49152542372883	200	7562	3	2020-09-17 23:08:47.48248	2020-09-17 23:08:47.48248	\N
6694	varios	1	699.9152542372882	825.9	7563	3	2020-09-17 23:08:47.521396	2020-09-17 23:08:47.521396	\N
6695	varios	1	540.3474576271187	637.61	7564	3	2020-09-17 23:08:47.559041	2020-09-17 23:08:47.559041	\N
6696	varios	1	1100.8474576271187	1299	7565	3	2020-09-17 23:08:47.623325	2020-09-17 23:08:47.623325	\N
6697	varios	1	463.3898305084746	546.8	7566	3	2020-09-17 23:08:47.664072	2020-09-17 23:08:47.664072	\N
6698	varios	1	46000	54280	7567	3	2020-09-17 23:10:22.016037	2020-09-17 23:10:22.016037	\N
6699	varios	1	46	54.28	7568	3	2020-09-17 23:10:22.045862	2020-09-17 23:10:22.045862	\N
6700	varios	1	46000	54280	7569	3	2020-09-17 23:10:22.079922	2020-09-17 23:10:22.079922	\N
6701	varios	1	25	29.5	7570	3	2020-09-17 23:10:22.105672	2020-09-17 23:10:22.105672	\N
6702	varios	1	50	59	7571	3	2020-09-17 23:10:22.130018	2020-09-17 23:10:22.130018	\N
6703	varios	1	25	29.5	7572	3	2020-09-17 23:10:22.157663	2020-09-17 23:10:22.157663	\N
6704	varios	1	23000	27140	7573	3	2020-09-17 23:10:22.184957	2020-09-17 23:10:22.184957	\N
6705	varios	1	-46000	-54280	7574	3	2020-09-17 23:10:22.226044	2020-09-17 23:10:22.226044	\N
6706	varios	1	-25	-29.5	7575	3	2020-09-17 23:10:22.256495	2020-09-17 23:10:22.256495	\N
6707	varios	1	-50	-59	7576	3	2020-09-17 23:10:22.286987	2020-09-17 23:10:22.286987	\N
6708	varios	1	-25	-29.5	7577	3	2020-09-17 23:10:22.32484	2020-09-17 23:10:22.32484	\N
6709	varios	1	-46	-54.28	7578	3	2020-09-17 23:10:22.366308	2020-09-17 23:10:22.366308	\N
6710	servicio	1	6000	7080	7579	3	2020-09-17 23:38:08.359915	2020-09-17 23:38:08.359915	\N
6711	varios	1	583.0508474576271	688	7580	3	2020-09-17 23:38:49.575013	2020-09-17 23:38:49.575013	\N
6712	varios	1	10.16949152542373	12	7581	3	2020-09-17 23:38:49.635834	2020-09-17 23:38:49.635834	\N
6713	varios	1	360.1694915254237	425	7582	3	2020-09-17 23:38:49.684059	2020-09-17 23:38:49.684059	\N
6714	varios	1	745.7627118644068	880	7583	3	2020-09-17 23:38:49.753934	2020-09-17 23:38:49.753934	\N
6715	varios	1	35.59322033898305	42	7584	3	2020-09-17 23:38:49.836813	2020-09-17 23:38:49.836813	\N
6716	varios	1	1270.3389830508474	1499	7586	3	2020-09-17 23:38:49.90224	2020-09-17 23:38:49.90224	\N
6717	varios	1	10.16949152542373	12	7585	3	2020-09-17 23:38:49.983127	2020-09-17 23:38:49.983127	\N
6688	varios	1	506.7300000000001	597.9414	7557	1	2020-09-17 23:08:47.202751	2020-09-17 23:45:56.373908	\N
6718	Varios	1	855.6694915254238	1009.69	7587	3	2020-10-07 16:30:14.952338	2020-10-07 16:30:14.952338	\N
6719	Consumo	1	42.96610169491526	50.7	7588	3	2020-10-07 16:30:15.031132	2020-10-07 16:30:15.031132	\N
6720	Etiquetas	1	110.17	130.0006	7589	3	2020-10-07 16:30:15.063995	2020-10-07 16:30:15.063995	\N
6721	Consumo	1	16.19	19.1042	7590	3	2020-10-07 16:30:15.097364	2020-10-07 16:30:15.097364	\N
6722	Termometro y Oximetro	1	213.56	252.0008	7591	3	2020-10-07 16:30:15.117034	2020-10-07 16:30:15.117034	\N
6723	Venta	1	4830.51	5700.0018	7601	3	2020-10-07 16:31:18.581705	2020-10-07 16:31:18.581705	\N
6724	Nota de credito	1	-200	-236	7602	3	2020-10-07 16:31:18.601071	2020-10-07 16:31:18.601071	\N
6725	Nota de credito	1	-100	-118	7603	3	2020-10-07 16:31:18.621548	2020-10-07 16:31:18.621548	\N
6726	Nota de credito	1	0	0	7604	3	2020-10-07 16:31:18.644955	2020-10-07 16:31:18.644955	\N
6727	Venta	1	200	236	7592	3	2020-10-07 16:31:18.666106	2020-10-07 16:31:18.666106	\N
6728	Venta	1	100	118	7593	3	2020-10-07 16:31:18.688422	2020-10-07 16:31:18.688422	\N
6729	Venta	1	200	236	7594	3	2020-10-07 16:31:18.71682	2020-10-07 16:31:18.71682	\N
6730	Venta	1	100	118	7595	3	2020-10-07 16:31:18.75958	2020-10-07 16:31:18.75958	\N
6731	Venta	1	250	295	7596	3	2020-10-07 16:31:18.813028	2020-10-07 16:31:18.813028	\N
6732	Venta	1	50	59	7597	3	2020-10-07 16:31:18.87618	2020-10-07 16:31:18.87618	\N
6733	Venta	1	20.000000000000004	23.6	7598	3	2020-10-07 16:31:18.967654	2020-10-07 16:31:18.967654	\N
6734	Venta	1	3635.5899999999997	4289.9962	7599	3	2020-10-07 16:31:19.040983	2020-10-07 16:31:19.040983	\N
6735	Venta	1	12711.87	15000.0066	7600	3	2020-10-07 16:31:19.131164	2020-10-07 16:31:19.131164	\N
6736	Nota de credito	1	-100	-118	7605	3	2020-10-07 16:31:19.161213	2020-10-07 16:31:19.161213	\N
6737	Nota de credito	1	-250	-295	7606	3	2020-10-07 16:31:19.216751	2020-10-07 16:31:19.216751	\N
6738	Nota de credito	1	-50	-59	7607	3	2020-10-07 16:31:19.270474	2020-10-07 16:31:19.270474	\N
6739	Nota de credito	1	0	0	7608	3	2020-10-07 16:31:19.345028	2020-10-07 16:31:19.345028	\N
6740	varios	1	384.60169491525426	453.83	7609	3	2020-10-07 16:38:07.490057	2020-10-07 16:38:07.490057	\N
6741	varios	1	63.45762711864407	74.88	7610	3	2020-10-07 16:38:07.537284	2020-10-07 16:38:07.537284	\N
6742	varios	1	2911.0169491525426	3435	7611	3	2020-10-07 16:38:07.558126	2020-10-07 16:38:07.558126	\N
6743	varios	1	2864.406779661017	3380	7612	3	2020-10-07 16:38:07.58889	2020-10-07 16:38:07.58889	\N
6744	varios	1	2699.161016949153	3185.01	7613	3	2020-10-07 16:38:07.607939	2020-10-07 16:38:07.607939	\N
6745	varios	1	253.3050847457627	298.9	7614	3	2020-10-07 16:38:07.627071	2020-10-07 16:38:07.627071	\N
6746	varios	1	139.40677966101697	164.5	7615	3	2020-10-07 16:38:07.648001	2020-10-07 16:38:07.648001	\N
6747	servicio	1	3000	3540	7616	3	2020-10-07 16:41:58.428849	2020-10-07 16:41:58.428849	\N
6748	servicio	1	15000	17700	7617	3	2020-10-07 16:41:58.475824	2020-10-07 16:41:58.475824	\N
6749	servicio	1	4000	4720	7618	3	2020-10-07 16:41:58.522165	2020-10-07 16:41:58.522165	\N
6750	varios	1	-40.00000000000001	-47.2	7628	3	2020-10-13 15:01:55.09838	2020-10-13 15:01:55.09838	\N
6751	varios	1	-36	-42.48	7629	3	2020-10-13 15:01:55.179595	2020-10-13 15:01:55.179595	\N
6752	varios	1	40.00000000000001	47.2	7619	3	2020-10-13 15:01:55.202174	2020-10-13 15:01:55.202174	\N
6753	varios	1	20.000000000000004	23.6	7620	3	2020-10-13 15:01:55.223765	2020-10-13 15:01:55.223765	\N
6754	varios	1	100	118	7621	3	2020-10-13 15:01:55.248473	2020-10-13 15:01:55.248473	\N
6755	varios	1	40.00000000000001	47.2	7622	3	2020-10-13 15:01:55.272799	2020-10-13 15:01:55.272799	\N
6756	varios	1	36	42.48	7623	3	2020-10-13 15:01:55.308354	2020-10-13 15:01:55.308354	\N
6757	varios	1	36000	42480	7624	3	2020-10-13 15:01:55.329041	2020-10-13 15:01:55.329041	\N
6758	varios	1	-40.00000000000001	-47.2	7625	3	2020-10-13 15:01:55.35101	2020-10-13 15:01:55.35101	\N
6759	varios	1	-20.000000000000004	-23.6	7626	3	2020-10-13 15:01:55.372371	2020-10-13 15:01:55.372371	\N
6760	varios	1	-100	-118	7627	3	2020-10-13 15:01:55.395683	2020-10-13 15:01:55.395683	\N
6761	varios	1	108.8220338983051	128.41	7630	3	2020-10-13 15:02:48.042583	2020-10-13 15:02:48.042583	\N
6762	varios	1	13200	15576	7631	3	2020-10-13 15:02:48.172184	2020-10-13 15:02:48.172184	\N
6763	varios	1	166.03	195.9154	7632	3	2020-10-13 15:02:48.204793	2020-10-13 15:02:48.204793	\N
6764	varios	1	43.22033898305085	51	7633	3	2020-10-13 15:02:48.260554	2020-10-13 15:02:48.260554	\N
6765	varios	1	19.152542372881356	22.6	7634	3	2020-10-13 15:02:48.436323	2020-10-13 15:02:48.436323	\N
6766	varios	1	19.491525423728813	23	7635	3	2020-10-13 15:02:48.514063	2020-10-13 15:02:48.514063	\N
6767	varios	1	593.2203389830509	700	7636	3	2020-10-13 15:02:48.573993	2020-10-13 15:02:48.573993	\N
6768	varios	1	118.46610169491525	139.79	7637	3	2020-10-13 15:02:48.659195	2020-10-13 15:02:48.659195	\N
6769	varios	1	14.40677966101695	17	7638	3	2020-10-13 15:02:48.742909	2020-10-13 15:02:48.742909	\N
6770	varios	1	8800	10384	7639	3	2020-10-13 15:02:48.865126	2020-10-13 15:02:48.865126	\N
6771	varios	1	237.3813559322034	280.11	7640	3	2020-10-13 15:02:48.946447	2020-10-13 15:02:48.946447	\N
6772	varios	1	50.59322033898306	59.7	7641	3	2020-10-13 15:02:49.024945	2020-10-13 15:02:49.024945	\N
6773	varios	1	67.71186440677967	79.9	7642	3	2020-10-13 15:02:49.107322	2020-10-13 15:02:49.107322	\N
6774	varios	1	207.95762711864407	245.39	7643	3	2020-10-13 15:02:49.155407	2020-10-13 15:02:49.155407	\N
6775	varios	1	245.76271186440678	290	7644	3	2020-10-19 17:46:00.373318	2020-10-19 17:46:00.373318	\N
6776	varios	1	483.0508474576271	570	7645	3	2020-10-19 17:46:00.451647	2020-10-19 17:46:00.451647	\N
6777	varios	1	458.4745762711865	541	7646	3	2020-10-19 17:46:00.495752	2020-10-19 17:46:00.495752	\N
6778	varios	1	56.779661016949156	67	7647	3	2020-10-19 17:46:00.517353	2020-10-19 17:46:00.517353	\N
6779	varios	1	27.118644067796613	32	7648	3	2020-10-19 17:46:00.538259	2020-10-19 17:46:00.538259	\N
6780	varios	1	24.576271186440678	29	7649	3	2020-10-19 17:46:00.560216	2020-10-19 17:46:00.560216	\N
6781	varios	1	32.20338983050848	38	7650	3	2020-10-19 17:46:00.580894	2020-10-19 17:46:00.580894	\N
6782	varios	1	10.16949152542373	12	7651	3	2020-10-19 17:46:00.60424	2020-10-19 17:46:00.60424	\N
6783	varios	1	144.91525423728814	171	7652	3	2020-10-19 17:46:00.63136	2020-10-19 17:46:00.63136	\N
6784	varios	1	305.08474576271186	360	7653	3	2020-10-19 17:46:00.685402	2020-10-19 17:46:00.685402	\N
6785	varios	1	259.3220338983051	306	7654	3	2020-10-19 17:46:00.707393	2020-10-19 17:46:00.707393	\N
6786	Varios	1	23.220338983050848	27.4	7655	3	2020-10-19 17:47:00.03685	2020-10-19 17:47:00.03685	\N
6787	Varios	1	170.0762711864407	200.69	7656	3	2020-10-19 17:47:00.135833	2020-10-19 17:47:00.135833	\N
6788	Varios	1	146.33898305084747	172.68	7657	3	2020-10-19 17:47:00.23153	2020-10-19 17:47:00.23153	\N
6789	Varios	1	62.203389830508485	73.4	7658	3	2020-10-19 17:47:00.306679	2020-10-19 17:47:00.306679	\N
6790	Varios	1	30.262711864406782	35.71	7659	3	2020-10-19 17:47:00.42973	2020-10-19 17:47:00.42973	\N
6791	varios	1	13200	15576	7660	3	2020-10-20 17:55:24.160801	2020-10-20 17:55:24.160801	\N
6792	varios	1	4466.1016949152545	5270	7661	3	2020-10-20 17:55:24.245768	2020-10-20 17:55:24.245768	\N
6793	varios	1	55.07627118644068	64.99	7662	3	2020-10-20 17:55:24.290282	2020-10-20 17:55:24.290282	\N
6794	varios	1	513.8813559322034	606.38	7663	3	2020-10-20 17:55:24.312052	2020-10-20 17:55:24.312052	\N
6795	varios	1	152.54237288135593	180	7664	3	2020-10-20 17:55:24.351888	2020-10-20 17:55:24.351888	\N
6796	varios	1	8474.57627118644	10000	7665	3	2020-10-20 17:55:24.378168	2020-10-20 17:55:24.378168	\N
6797	varios	1	24	28.32	7666	3	2020-10-20 17:57:05.641756	2020-10-20 17:57:05.641756	\N
6798	varios	1	24	28.32	7667	3	2020-10-20 17:57:05.711602	2020-10-20 17:57:05.711602	\N
6799	varios	1	24	28.32	7668	3	2020-10-20 17:57:05.739823	2020-10-20 17:57:05.739823	\N
6800	varios	1	24	28.32	7669	3	2020-10-20 17:57:05.795705	2020-10-20 17:57:05.795705	\N
6801	varios	1	36000	42480	7670	3	2020-10-20 17:57:05.821966	2020-10-20 17:57:05.821966	\N
6802	varios	1	472.00000000000006	556.96	7671	3	2020-10-20 17:57:05.883328	2020-10-20 17:57:05.883328	\N
6803	varios	1	400	472	7672	3	2020-10-20 17:57:06.016121	2020-10-20 17:57:06.016121	\N
6804	varios	1	-24	-28.32	7673	3	2020-10-20 17:57:06.051587	2020-10-20 17:57:06.051587	\N
6805	varios	1	-24	-28.32	7674	3	2020-10-20 17:57:06.088421	2020-10-20 17:57:06.088421	\N
6806	varios	1	-24	-28.32	7675	3	2020-10-20 17:57:06.122588	2020-10-20 17:57:06.122588	\N
6807	varios	1	-24	-28.32	7676	3	2020-10-20 17:57:06.153997	2020-10-20 17:57:06.153997	\N
6808	varios	1	-472.00000000000006	-556.96	7677	3	2020-10-20 17:57:06.182865	2020-10-20 17:57:06.182865	\N
6809	varios	1	-400	-472	7678	3	2020-10-20 17:57:06.228018	2020-10-20 17:57:06.228018	\N
6810	Producción Sabrina	1	2039.6016949152543	2406.73	7679	3	2020-10-20 18:02:24.031001	2020-10-20 18:02:24.031001	\N
6811	Bolsas Ecológicas y Etiquetas	1	435	513.3	7680	3	2020-10-20 18:02:24.066345	2020-10-20 18:02:24.066345	\N
6812	Taller Online	1	42.37288135593221	50	7681	3	2020-10-20 18:02:24.114455	2020-10-20 18:02:24.114455	\N
6813	Chip	1	0.8474576271186441	1	7682	3	2020-10-20 18:02:24.163233	2020-10-20 18:02:24.163233	\N
6814	Linea Telefonica	1	43.64406779661017	51.5	7683	3	2020-10-20 18:02:24.212368	2020-10-20 18:02:24.212368	\N
6815	Conjunto Sabrina	1	92.37288135593221	109	7684	3	2020-10-20 18:03:25.412488	2020-10-20 18:03:25.412488	\N
6816	Conjunto Sabrina	1	75.42372881355932	89	7685	3	2020-10-20 18:03:25.448411	2020-10-20 18:03:25.448411	\N
6817	Conjunto Sabrina	1	92.37288135593221	109	7686	3	2020-10-20 18:03:25.475612	2020-10-20 18:03:25.475612	\N
6818	Conjunto Sabrina	1	92.37288135593221	109	7687	3	2020-10-20 18:03:25.498549	2020-10-20 18:03:25.498549	\N
6819	Conjunto Sabrina	1	92.37288135593221	109	7688	3	2020-10-20 18:03:25.520673	2020-10-20 18:03:25.520673	\N
6820	Conjunto Sabrina	1	92.37288135593221	109	7689	3	2020-10-20 18:03:25.558065	2020-10-20 18:03:25.558065	\N
6821	Conjunto Sabrina	1	75.42372881355932	89	7690	3	2020-10-20 18:03:25.585942	2020-10-20 18:03:25.585942	\N
6822	Conjunto Sabrina	1	75.42372881355932	89	7691	3	2020-10-20 18:03:25.611046	2020-10-20 18:03:25.611046	\N
6823	Conjunto Sabrina	1	92.37288135593221	109	7692	3	2020-10-20 18:03:25.640639	2020-10-20 18:03:25.640639	\N
6824	Conjunto Sabrina	1	92.37288135593221	109	7693	3	2020-10-20 18:03:25.664154	2020-10-20 18:03:25.664154	\N
6825	Conjunto Sabrina	1	75.42372881355932	89	7694	3	2020-10-20 18:03:25.696793	2020-10-20 18:03:25.696793	\N
6826	Conjunto Sabrina	1	184.74576271186442	218	7695	3	2020-10-20 18:03:25.719456	2020-10-20 18:03:25.719456	\N
6827	Mascarillas	1	100	118	7696	3	2020-10-20 18:03:25.740847	2020-10-20 18:03:25.740847	\N
6828	nota de credito	1	0	0	7697	3	2020-10-20 18:03:25.760722	2020-10-20 18:03:25.760722	\N
6829	Varios	1	44.067796610169495	52	7698	3	2020-11-17 16:27:37.02186	2020-11-17 16:27:37.02186	\N
6830	Varios	1	54.237288135593225	64	7699	3	2020-11-17 16:27:37.148352	2020-11-17 16:27:37.148352	\N
6831	Varios	1	159.33050847457628	188.01	7700	3	2020-11-17 16:27:37.326693	2020-11-17 16:27:37.326693	\N
6832	Mandiles	1	2400	2832	7703	3	2020-11-17 18:05:57.931509	2020-11-17 18:05:57.931509	\N
6833	Muestra Tela Denim	1	61.02000000000001	72.0036	7704	3	2020-11-17 18:05:58.017515	2020-11-17 18:05:58.017515	\N
6834	Muestra Rib Acanalado	1	61.74576271186441	72.86	7705	3	2020-11-17 18:05:58.059407	2020-11-17 18:05:58.059407	\N
6835	Mandiles	1	9600	11328	7706	3	2020-11-17 18:05:58.098261	2020-11-17 18:05:58.098261	\N
6836	Rib Acanalado	1	54.24000000000001	64.0032	7707	3	2020-11-17 18:05:58.12751	2020-11-17 18:05:58.12751	\N
6837	Recibo Claro	1	42.28	49.8904	7708	3	2020-11-17 18:05:58.163378	2020-11-17 18:05:58.163378	\N
6838	Muñecos Navideños	1	2838.98	3349.9964	7709	3	2020-11-17 18:05:58.190216	2020-11-17 18:05:58.190216	\N
6839	Termometro Infrarrojo	1	353.39000000000004	417.0002	7710	3	2020-11-17 18:05:58.225599	2020-11-17 18:05:58.225599	\N
6840	Consumo	1	79.37288135593221	93.66	7711	3	2020-11-17 18:05:58.250797	2020-11-17 18:05:58.250797	\N
6841	Mandiles	1	2400	2832	7712	3	2020-11-17 18:05:58.28963	2020-11-17 18:05:58.28963	\N
6842	Muñecos Navideños	1	762.71	899.9978	7713	3	2020-11-17 18:05:58.315863	2020-11-17 18:05:58.315863	\N
6843	Botones y Placas	1	1203.39	1420.0002	7714	3	2020-11-17 18:05:58.341838	2020-11-17 18:05:58.341838	\N
6844	Mascarillas	1	100	118	7715	3	2020-11-17 18:43:50.409009	2020-11-17 18:43:50.409009	\N
6845	Conjunto Sabrina	1	126.27118600000001	148.99999948	7716	3	2020-11-17 18:43:50.484608	2020-11-17 18:43:50.484608	\N
6846	Conjunto Sabrina	1	126.27118600000001	148.99999948	7717	3	2020-11-17 18:43:50.510596	2020-11-17 18:43:50.510596	\N
6847	Mascarillas	1	10.000000000000002	11.8	7718	3	2020-11-17 18:43:50.536066	2020-11-17 18:43:50.536066	\N
6848	Mascarillas	1	10.000000000000002	11.8	7719	3	2020-11-17 18:43:50.563186	2020-11-17 18:43:50.563186	\N
6849	Termometro	1	120	141.6	7720	3	2020-11-17 18:43:50.588302	2020-11-17 18:43:50.588302	\N
6850	Mascarillas	1	100	118	7721	3	2020-11-17 18:43:50.614666	2020-11-17 18:43:50.614666	\N
6851	Mascarillas	1	10.000000000000002	11.8	7722	3	2020-11-17 18:43:50.642714	2020-11-17 18:43:50.642714	\N
6852	Termometro	1	120	141.6	7723	3	2020-11-17 18:43:50.668858	2020-11-17 18:43:50.668858	\N
6853	Conjunto Tomas	1	115	135.7	7724	3	2020-11-17 18:43:50.696571	2020-11-17 18:43:50.696571	\N
6854	Mandiles Notex	1	19800	23364	7725	3	2020-11-17 18:43:50.723035	2020-11-17 18:43:50.723035	\N
6855	Conjunto Tomas S	1	100.847458	119.00000044	7726	3	2020-11-17 18:43:50.749784	2020-11-17 18:43:50.749784	\N
6856	Mascarillas	1	10.000000000000002	11.8	7727	3	2020-11-17 18:43:50.775385	2020-11-17 18:43:50.775385	\N
6857	Mascarillas	1	5.000000000000001	5.9	7728	3	2020-11-17 18:43:50.800948	2020-11-17 18:43:50.800948	\N
6858	Termometro	1	500	590	7729	3	2020-11-17 18:43:50.827812	2020-11-17 18:43:50.827812	\N
6859	NC	1	-100	-118	7730	3	2020-11-17 18:43:50.857701	2020-11-17 18:43:50.857701	\N
6860	NC	1	-100	-118	7731	3	2020-11-17 18:43:50.883271	2020-11-17 18:43:50.883271	\N
6861	NC	1	-126.27118600000001	-148.99999948	7732	3	2020-11-17 18:43:50.906426	2020-11-17 18:43:50.906426	\N
6862	NC	1	-126.27118600000001	-148.99999948	7733	3	2020-11-17 18:43:50.931297	2020-11-17 18:43:50.931297	\N
6863	NC	1	-10.000000000000002	-11.8	7734	3	2020-11-17 18:43:50.956059	2020-11-17 18:43:50.956059	\N
6864	NC	1	-10.000000000000002	-11.8	7735	3	2020-11-17 18:43:50.981793	2020-11-17 18:43:50.981793	\N
6865	NC	1	-120	-141.6	7736	3	2020-11-17 18:43:51.007786	2020-11-17 18:43:51.007786	\N
6866	NC	1	-100	-118	7737	3	2020-11-17 18:43:51.032513	2020-11-17 18:43:51.032513	\N
6867	NC	1	-10.000000000000002	-11.8	7738	3	2020-11-17 18:43:51.056317	2020-11-17 18:43:51.056317	\N
6868	NC	1	-120	-141.6	7739	3	2020-11-17 18:43:51.081773	2020-11-17 18:43:51.081773	\N
6869	NC	1	-115	-135.7	7740	3	2020-11-17 18:43:51.10736	2020-11-17 18:43:51.10736	\N
6870	NC	1	-100.847458	-119.00000044	7741	3	2020-11-17 18:43:51.133909	2020-11-17 18:43:51.133909	\N
6871	NC	1	-10.000000000000002	-11.8	7742	3	2020-11-17 18:43:51.157965	2020-11-17 18:43:51.157965	\N
6872	NC	1	-5.000000000000001	-5.9	7743	3	2020-11-17 18:43:51.17854	2020-11-17 18:43:51.17854	\N
6873	consumo	1	52.03389830508475	61.4	7744	3	2020-11-19 22:03:31.273668	2020-11-19 22:03:31.273668	\N
6874	Agua	1	10.16949152542373	12	7745	3	2020-11-19 22:03:31.792355	2020-11-19 22:03:31.792355	\N
6875	varios	1	348.89830508474574	411.7	7746	3	2020-11-19 22:03:32.07187	2020-11-19 22:03:32.07187	\N
6876	varios	1	509.9152542372882	601.7	7747	3	2020-11-19 22:03:32.146382	2020-11-19 22:03:32.146382	\N
6877	varios	1	157.70338983050848	186.09	7748	3	2020-11-19 22:03:32.258527	2020-11-19 22:03:32.258527	\N
6878	varios	1	43.22033898305085	51	7749	3	2020-11-19 22:03:32.300342	2020-11-19 22:03:32.300342	\N
6879	consumo	1	59.067796610169495	69.7	7750	3	2020-11-19 22:03:32.334259	2020-11-19 22:03:32.334259	\N
6880	consumo	1	107.33898305084746	126.66	7751	3	2020-11-19 22:03:32.397905	2020-11-19 22:03:32.397905	\N
6881	varios	1	1035.4237288135594	1221.8	7752	3	2020-11-19 22:03:32.454197	2020-11-19 22:03:32.454197	\N
6882	varios	1	578.3135593220339	682.41	7753	3	2020-11-19 22:03:32.550788	2020-11-19 22:03:32.550788	\N
6883	varios	1	347.1101694915254	409.59	7754	3	2020-11-19 22:03:32.631796	2020-11-19 22:03:32.631796	\N
6884	Servicio	1	10000	11800	7755	3	2020-11-19 22:04:49.611076	2020-11-19 22:04:49.611076	\N
6885	varios	1	2460.0000000000005	2902.8	7756	3	2020-12-18 12:59:12.534285	2020-12-18 12:59:12.534285	\N
6886	agua	1	8.466101694915254	9.99	7757	3	2020-12-18 12:59:12.623033	2020-12-18 12:59:12.623033	\N
6887	consumo	1	685.5932203389831	809	7758	3	2020-12-18 12:59:12.646649	2020-12-18 12:59:12.646649	\N
6888	varios	1	238.22000000000003	281.0996	7759	3	2020-12-18 12:59:12.691183	2020-12-18 12:59:12.691183	\N
6889	varios	1	262.54237288135596	309.8	7760	3	2020-12-18 12:59:12.713872	2020-12-18 12:59:12.713872	\N
6890	varios	1	38.52	45.4536	7761	3	2020-12-18 12:59:12.735504	2020-12-18 12:59:12.735504	\N
6891	Asesoria	1	4466.35	5270.293	7762	1	2020-12-18 13:00:11.867469	2020-12-18 13:00:41.900871	\N
6892	sala zoom	1	687.2300000000001	810.9314	7763	1	2020-12-18 13:00:11.894343	2020-12-18 13:01:07.029988	\N
6893	Mandiles	1	9600	11328	7764	3	2020-12-18 13:08:01.144528	2020-12-18 13:08:01.144528	\N
6894	Buzos Hombre	1	688.8000000000001	812.784	7765	3	2020-12-18 13:08:01.185792	2020-12-18 13:08:01.185792	\N
6895	Recibo Claro	1	42.28	49.8904	7766	3	2020-12-18 13:08:01.217345	2020-12-18 13:08:01.217345	\N
6896	Mandiles	1	2100	2478	7767	3	2020-12-18 13:08:01.244407	2020-12-18 13:08:01.244407	\N
6897	Mandiles	1	2139.1525423728813	2524.2	7768	3	2020-12-18 13:08:01.301451	2020-12-18 13:08:01.301451	\N
6898	Termometro Infrarrojo	1	338.98305084745766	400	7769	3	2020-12-18 13:08:01.347778	2020-12-18 13:08:01.347778	\N
6899	Mandiles	1	2288.135593220339	2700	7770	3	2020-12-18 13:08:01.391106	2020-12-18 13:08:01.391106	\N
6900	Mandiles	1	2669.491525423729	3150	7771	3	2020-12-18 13:08:01.466017	2020-12-18 13:08:01.466017	\N
6901	Mandiles	1	2542.3728813559323	3000	7772	3	2020-12-18 13:08:01.493043	2020-12-18 13:08:01.493043	\N
6902	Mandiles	1	2796.6101694915255	3300	7773	3	2020-12-18 13:08:01.526163	2020-12-18 13:08:01.526163	\N
6903	Mandiles	1	2415.2542372881358	2850	7774	3	2020-12-18 13:08:01.559527	2020-12-18 13:08:01.559527	\N
6904	Error	1	-28.184745762711866	-33.258	7775	3	2020-12-18 13:08:01.599107	2020-12-18 13:08:01.599107	\N
6905	Varios	1	1042.3728813559323	1230	7776	3	2020-12-18 13:08:01.637864	2020-12-18 13:08:01.637864	\N
6906	Varios	1	2372.8813559322034	2800	7777	3	2020-12-18 13:08:01.701252	2020-12-18 13:08:01.701252	\N
6907	Varios	1	1949.1525423728815	2300	7778	3	2020-12-18 13:08:01.780067	2020-12-18 13:08:01.780067	\N
6908	Varios	1	1737.2881355932204	2050	7779	3	2020-12-18 13:08:01.841666	2020-12-18 13:08:01.841666	\N
6909	Varios	1	1949.1525423728815	2300	7780	3	2020-12-18 13:08:01.911553	2020-12-18 13:08:01.911553	\N
6910	Varios	1	59.32203389830509	70	7781	3	2020-12-18 13:09:08.192859	2020-12-18 13:09:08.192859	\N
6911	Varios	1	29.661016949152543	35	7782	3	2020-12-18 13:09:08.225343	2020-12-18 13:09:08.225343	\N
6912	Varios	1	29.661016949152543	35	7783	3	2020-12-18 13:09:08.260337	2020-12-18 13:09:08.260337	\N
6913	Varios	1	73.72881355932203	87	7784	3	2020-12-18 13:09:08.302785	2020-12-18 13:09:08.302785	\N
6914	Varios	1	29.661016949152543	35	7785	3	2020-12-18 13:09:08.345264	2020-12-18 13:09:08.345264	\N
6915	Varios	1	29.661016949152543	35	7786	3	2020-12-18 13:09:08.373802	2020-12-18 13:09:08.373802	\N
6916	Mandiles Notex	1	19800	23364	7787	3	2020-12-18 13:09:08.400381	2020-12-18 13:09:08.400381	\N
6917	Varios	1	70	82.6	7788	3	2020-12-18 13:09:08.42731	2020-12-18 13:09:08.42731	\N
6918	Varios	1	80.00000000000001	94.4	7789	3	2020-12-18 13:09:08.452574	2020-12-18 13:09:08.452574	\N
6919	Varios	1	10.000000000000002	11.8	7790	3	2020-12-18 13:09:08.48284	2020-12-18 13:09:08.48284	\N
6920	Varios	1	35	41.3	7791	3	2020-12-18 13:09:08.509219	2020-12-18 13:09:08.509219	\N
6921	Varios	1	100	118	7792	3	2020-12-18 13:09:08.535482	2020-12-18 13:09:08.535482	\N
6922	Varios	1	69	81.42	7793	3	2020-12-18 13:09:08.559974	2020-12-18 13:09:08.559974	\N
6923	Termometros	1	500	590	7794	3	2020-12-18 13:09:08.586671	2020-12-18 13:09:08.586671	\N
6924	Mandiles Notex	1	19800	23364	7795	3	2020-12-18 13:09:08.613373	2020-12-18 13:09:08.613373	\N
6925	Muñecos Navideños	1	940.677966101695	1110	7796	3	2020-12-18 13:09:08.637519	2020-12-18 13:09:08.637519	\N
6926	Muñecos Navideños	1	1881.35593220339	2220	7797	3	2020-12-18 13:09:08.6785	2020-12-18 13:09:08.6785	\N
6927	NC	1	-1881.35593220339	-2220	7798	3	2020-12-18 13:09:08.720025	2020-12-18 13:09:08.720025	\N
7005	varios	1	\N	456.01	7880	3	2021-01-22 19:23:10.560717	2021-01-22 19:23:10.560717	\N
7006	varios	1	\N	217	7881	3	2021-01-22 19:23:10.652278	2021-01-22 19:23:10.652278	\N
7007	termometros	1	\N	817	7882	3	2021-01-22 19:23:10.692024	2021-01-22 19:23:10.692024	\N
7008	varios	1	\N	69.99	7889	3	2021-01-22 19:25:36.281422	2021-01-22 19:25:36.281422	\N
7009	varios	1	\N	81.5	7890	3	2021-01-22 19:25:36.315283	2021-01-22 19:25:36.315283	\N
7010	varios	1	\N	82.1	7891	3	2021-01-22 19:25:36.347014	2021-01-22 19:25:36.347014	\N
7011	varios	1	\N	99.9	7892	3	2021-01-22 19:25:36.381201	2021-01-22 19:25:36.381201	\N
7012	varios	1	\N	879	7893	3	2021-01-22 19:25:36.412683	2021-01-22 19:25:36.412683	\N
7013	varios	1	\N	279.8	7883	3	2021-01-22 19:25:36.449328	2021-01-22 19:25:36.449328	\N
7014	varios	1	\N	207.9	7884	3	2021-01-22 19:25:36.488043	2021-01-22 19:25:36.488043	\N
7015	varios	1	\N	96.26	7885	3	2021-01-22 19:25:36.522587	2021-01-22 19:25:36.522587	\N
7016	varios	1	\N	291.62	7886	3	2021-01-22 19:25:36.555822	2021-01-22 19:25:36.555822	\N
7017	varios	1	\N	399	7887	3	2021-01-22 19:25:36.595354	2021-01-22 19:25:36.595354	\N
7018	varios	1	\N	1954.15	7888	3	2021-01-22 19:25:36.638264	2021-01-22 19:25:36.638264	\N
7019	NC	1	\N	-100.3	7910	3	2021-01-22 19:26:53.251728	2021-01-22 19:26:53.251728	\N
7020	NC	1	\N	-100.3	7911	3	2021-01-22 19:26:53.281365	2021-01-22 19:26:53.281365	\N
7021	NC	1	\N	-100.3	7912	3	2021-01-22 19:26:53.312927	2021-01-22 19:26:53.312927	\N
7022	NC	1	\N	-100.3	7913	3	2021-01-22 19:26:53.343816	2021-01-22 19:26:53.343816	\N
7023	NC	1	\N	-11.8	7914	3	2021-01-22 19:26:53.37231	2021-01-22 19:26:53.37231	\N
7024	NC	1	\N	-88.5	7915	3	2021-01-22 19:26:53.402502	2021-01-22 19:26:53.402502	\N
7025	varios	1	\N	100.3	7894	3	2021-01-22 19:26:53.430916	2021-01-22 19:26:53.430916	\N
7026	varios	1	\N	100.3	7895	3	2021-01-22 19:26:53.461434	2021-01-22 19:26:53.461434	\N
7027	varios	1	\N	100.3	7896	3	2021-01-22 19:26:53.492061	2021-01-22 19:26:53.492061	\N
7028	varios	1	\N	100.3	7897	3	2021-01-22 19:26:53.521568	2021-01-22 19:26:53.521568	\N
7029	varios	1	\N	11.8	7898	3	2021-01-22 19:26:53.551733	2021-01-22 19:26:53.551733	\N
7030	varios	1	\N	88.5	7899	3	2021-01-22 19:26:53.584165	2021-01-22 19:26:53.584165	\N
7031	varios	1	\N	1180	7900	3	2021-01-22 19:26:53.618579	2021-01-22 19:26:53.618579	\N
7032	NC	1	\N	-70	7901	3	2021-01-22 19:26:53.65207	2021-01-22 19:26:53.65207	\N
7033	NC	1	\N	-35	7902	3	2021-01-22 19:26:53.68194	2021-01-22 19:26:53.68194	\N
7034	NC	1	\N	-87	7903	3	2021-01-22 19:26:53.712536	2021-01-22 19:26:53.712536	\N
7035	NC	1	\N	-82.6	7904	3	2021-01-22 19:26:53.742265	2021-01-22 19:26:53.742265	\N
7036	NC	1	\N	-94.4	7905	3	2021-01-22 19:26:53.770755	2021-01-22 19:26:53.770755	\N
7037	NC	1	\N	-11.8	7906	3	2021-01-22 19:26:53.798213	2021-01-22 19:26:53.798213	\N
7038	NC	1	\N	-41.3	7907	3	2021-01-22 19:26:53.828849	2021-01-22 19:26:53.828849	\N
7039	NC	1	\N	-118	7908	3	2021-01-22 19:26:53.859092	2021-01-22 19:26:53.859092	\N
7040	NC	1	\N	-81.42	7909	3	2021-01-22 19:26:53.889624	2021-01-22 19:26:53.889624	\N
7041	Servicio	1	\N	11800	7916	3	2021-01-22 19:28:26.144264	2021-01-22 19:28:26.144264	\N
7042	CONSUMO	1	\N	95.2	7917	3	2021-01-22 19:28:55.375803	2021-01-22 19:28:55.375803	\N
7043	VARIOS	1	\N	57.99	7918	3	2021-01-22 19:28:55.417111	2021-01-22 19:28:55.417111	\N
7044	CONSUMO	1	\N	94	7919	3	2021-01-22 19:28:55.443759	2021-01-22 19:28:55.443759	\N
7045	NOTARIA	1	\N	262	7920	3	2021-01-22 19:28:55.488683	2021-01-22 19:28:55.488683	\N
7046	CLINICA	1	\N	253.7	7921	3	2021-01-22 19:28:55.532108	2021-01-22 19:28:55.532108	\N
7047	CLINICA	1	\N	1662.19	7922	3	2021-01-22 19:28:55.561926	2021-01-22 19:28:55.561926	\N
7048	VARIOS	1	\N	99.7	7923	3	2021-01-22 19:28:55.590552	2021-01-22 19:28:55.590552	\N
7049	VARIOS	1	\N	95.2	7924	3	2021-01-22 19:28:55.618817	2021-01-22 19:28:55.618817	\N
7050	VARIOS	1	\N	101.7	7925	3	2021-01-22 19:28:55.652602	2021-01-22 19:28:55.652602	\N
7051	VARIOS	1	\N	33.8	7926	3	2021-01-22 19:28:55.687672	2021-01-22 19:28:55.687672	\N
7052	VARIOS	1	\N	89	7927	3	2021-01-22 19:28:55.714819	2021-01-22 19:28:55.714819	\N
7053	VARIOS	1	\N	110	7928	3	2021-01-22 19:28:55.756046	2021-01-22 19:28:55.756046	\N
7054	VARIOS	1	\N	492.94	7929	3	2021-01-22 19:28:55.783786	2021-01-22 19:28:55.783786	\N
7055	VARIOS	1	\N	355.7	7930	3	2021-01-22 19:28:55.812666	2021-01-22 19:28:55.812666	\N
7057	ACTIVO	1	\N	1328.9	7932	1	2021-01-22 19:28:55.882108	2021-01-27 12:17:19.218074	\N
7056	VARIOS	1	\N	243.8	7931	1	2021-01-22 19:28:55.856223	2021-01-27 13:09:19.246759	\N
7058	Mandiles blancos	1	\N	2000	7933	3	2021-03-09 21:05:56.640407	2021-03-09 21:05:56.640407	\N
7059	Mandiles blancos	1	\N	2000	7934	3	2021-03-09 21:05:57.358685	2021-03-09 21:05:57.358685	\N
7060	Termometros	1	\N	817	7935	3	2021-03-09 21:05:57.574671	2021-03-09 21:05:57.574671	\N
7061	Consumo	1	\N	23.99	7936	3	2021-03-09 21:05:57.819982	2021-03-09 21:05:57.819982	\N
7062	Sombrillas con soporte tipo mochila	1	\N	124	7937	3	2021-03-09 21:05:58.263759	2021-03-09 21:05:58.263759	\N
7063	Termometros	1	\N	1419	7938	3	2021-03-09 21:05:58.673195	2021-03-09 21:05:58.673195	\N
7064	Mandiles blancos	1	\N	10000	7939	3	2021-03-09 21:05:58.943868	2021-03-09 21:05:58.943868	\N
7065	Impresora	1	\N	219	7940	3	2021-03-09 21:05:59.105639	2021-03-09 21:05:59.105639	\N
7066	Transporte	1	\N	19	7941	3	2021-03-09 21:05:59.332344	2021-03-09 21:05:59.332344	\N
7067	Varios	1	\N	11.8	7945	3	2021-03-09 21:08:00.655273	2021-03-09 21:08:00.655273	\N
7068	Muestra Sombrilla con soporte mochila	1	\N	53.1	7942	3	2021-03-09 21:08:00.820081	2021-03-09 21:08:00.820081	\N
7069	Muestra Sombrilla con soporte mochila	1	\N	53.1	7943	3	2021-03-09 21:08:00.988179	2021-03-09 21:08:00.988179	\N
7070	Muestra Sombrilla con soporte mochila	1	\N	53.1	7944	3	2021-03-09 21:08:01.147682	2021-03-09 21:08:01.147682	\N
7071	Varios	1	\N	17.7	7946	3	2021-03-09 21:08:01.551539	2021-03-09 21:08:01.551539	\N
7072	Termometros	1	\N	1180	7947	3	2021-03-09 21:08:01.846862	2021-03-09 21:08:01.846862	\N
7073	Mandiles blancos	1	\N	23364	7948	3	2021-03-09 21:08:02.132779	2021-03-09 21:08:02.132779	\N
7074	Varios	1	\N	59	7949	3	2021-03-17 16:14:28.245836	2021-03-17 16:14:28.245836	\N
7075	Varios	1	\N	59	7950	3	2021-03-17 16:14:28.48438	2021-03-17 16:14:28.48438	\N
7076	Varios	1	\N	11.8	7951	3	2021-03-17 16:14:28.662401	2021-03-17 16:14:28.662401	\N
7077	Varios	1	\N	17.7	7952	3	2021-03-17 16:14:28.769324	2021-03-17 16:14:28.769324	\N
7078	Varios	1	\N	29.5	7953	3	2021-03-17 16:14:28.87412	2021-03-17 16:14:28.87412	\N
7079	Termometros	1	\N	2360	7954	3	2021-03-17 16:14:29.027772	2021-03-17 16:14:29.027772	\N
7080	Mandiles blancos	1	\N	23364	7955	3	2021-03-17 16:14:29.137616	2021-03-17 16:14:29.137616	\N
7081	Varios	1	\N	11.8	7956	3	2021-03-17 16:14:29.256018	2021-03-17 16:14:29.256018	\N
7082	Varios	1	\N	5.9	7957	3	2021-03-17 16:14:29.366435	2021-03-17 16:14:29.366435	\N
7083	Varios	1	\N	17.7	7958	3	2021-03-17 16:14:29.479366	2021-03-17 16:14:29.479366	\N
7084	Canguros	1	\N	885	7959	3	2021-03-17 16:14:29.622388	2021-03-17 16:14:29.622388	\N
7085	Varios	1	\N	59	7960	3	2021-03-17 16:14:29.724206	2021-03-17 16:14:29.724206	\N
7086	Varios	1	\N	29.5	7961	3	2021-03-17 16:14:29.839346	2021-03-17 16:14:29.839346	\N
7087	Varios	1	\N	33.04	7962	3	2021-03-17 16:14:29.955521	2021-03-17 16:14:29.955521	\N
7088	Varios	1	\N	265	7963	3	2021-03-17 16:14:30.082163	2021-03-17 16:14:30.082163	\N
7089	Varios	1	\N	11.8	7964	3	2021-03-17 16:14:30.195406	2021-03-17 16:14:30.195406	\N
7090	Mandiles blancos	1	\N	23364	7965	3	2021-03-17 16:14:30.290793	2021-03-17 16:14:30.290793	\N
7091	NC	1	\N	-29.5	7966	3	2021-03-17 16:14:30.42871	2021-03-17 16:14:30.42871	\N
7092	NC	1	\N	-17.7	7967	3	2021-03-17 16:14:30.687363	2021-03-17 16:14:30.687363	\N
7093	NC	1	\N	-11.8	7968	3	2021-03-17 16:14:30.81969	2021-03-17 16:14:30.81969	\N
7094	NC	1	\N	-59	7969	3	2021-03-17 16:14:30.963052	2021-03-17 16:14:30.963052	\N
7095	NC	1	\N	-59	7970	3	2021-03-17 16:14:31.04791	2021-03-17 16:14:31.04791	\N
7096	NC	1	\N	-11.68	7971	3	2021-03-17 16:14:31.136197	2021-03-17 16:14:31.136197	\N
7097	NC	1	\N	-265.0044	7972	3	2021-03-17 16:14:31.21105	2021-03-17 16:14:31.21105	\N
7098	NC	1	\N	-33.04	7973	3	2021-03-17 16:14:31.280795	2021-03-17 16:14:31.280795	\N
7099	NC	1	\N	-29.5	7974	3	2021-03-17 16:14:31.380268	2021-03-17 16:14:31.380268	\N
7100	NC	1	\N	-59	7975	3	2021-03-17 16:14:31.535399	2021-03-17 16:14:31.535399	\N
7101	Canguros de tela	1	\N	649	7976	3	2021-03-17 16:16:02.469836	2021-03-17 16:16:02.469836	\N
7102	Mandiles blancos	1	\N	2680	7977	3	2021-03-17 16:16:02.652186	2021-03-17 16:16:02.652186	\N
7103	Mandiles blancos	1	\N	2660	7978	3	2021-03-17 16:16:02.741836	2021-03-17 16:16:02.741836	\N
7104	Mandiles blancos	1	\N	2660	7979	3	2021-03-17 16:16:02.85552	2021-03-17 16:16:02.85552	\N
7105	Consumo	1	\N	41.8	7980	3	2021-03-17 16:16:03.026889	2021-03-17 16:16:03.026889	\N
7106	Tela Notex 80gr	1	\N	5000	7981	3	2021-03-17 16:16:03.140671	2021-03-17 16:16:03.140671	\N
7107	Mandiles blancos	1	\N	1000	7982	3	2021-03-17 16:16:03.341278	2021-03-17 16:16:03.341278	\N
7108	Mandiles blancos	1	\N	3150	7983	3	2021-03-17 16:16:03.562404	2021-03-17 16:16:03.562404	\N
7109	Mandiles blancos	1	\N	3015	7984	3	2021-03-17 16:16:03.64873	2021-03-17 16:16:03.64873	\N
7110	Mandiles blancos	1	\N	2835	7985	3	2021-03-17 16:16:03.774799	2021-03-17 16:16:03.774799	\N
7111	Canguros de tela	1	\N	2725.8	7986	3	2021-04-22 01:37:57.877401	2021-04-22 01:37:57.877401	\N
7112	Notex	1	\N	2750	7987	3	2021-04-22 01:37:58.483005	2021-04-22 01:37:58.483005	\N
7113	Alojamiento	1	\N	296.999982	7988	3	2021-04-22 01:37:58.65896	2021-04-22 01:37:58.65896	\N
7114	Tela Notex	1	\N	7750	7989	3	2021-04-22 01:37:58.996581	2021-04-22 01:37:58.996581	\N
7116	Varios	1	\N	11.8	7991	3	2021-04-22 01:40:59.751873	2021-04-22 01:40:59.751873	\N
7117	Varios	1	\N	11.8	7992	3	2021-04-22 01:40:59.916191	2021-04-22 01:40:59.916191	\N
7118	Canguros	1	\N	3717	7993	3	2021-04-22 01:41:00.096248	2021-04-22 01:41:00.096248	\N
7115	Varios	1	\N	118	7990	1	2021-04-22 01:40:59.497171	2021-04-29 00:32:55.194575	\N
7199	Varios	1	\N	11.8	8074	3	2021-05-19 20:51:57.714709	2021-05-19 20:51:57.714709	\N
7200	Varios	1	\N	11.8	8075	3	2021-05-19 20:51:57.984013	2021-05-19 20:51:57.984013	\N
7201	Varios	1	\N	11.8	8076	3	2021-05-19 20:51:58.090394	2021-05-19 20:51:58.090394	\N
7202	Varios	1	\N	11.8	8077	3	2021-05-19 20:51:58.255409	2021-05-19 20:51:58.255409	\N
7203	Varios	1	\N	11.8	8078	3	2021-05-19 20:51:58.433475	2021-05-19 20:51:58.433475	\N
7204	Varios	1	\N	11.8	8079	3	2021-05-19 20:51:58.585631	2021-05-19 20:51:58.585631	\N
7205	Mandiles	1	\N	23364	8080	3	2021-05-19 20:51:58.727509	2021-05-19 20:51:58.727509	\N
7206	Varios	1	\N	29.5	8081	3	2021-05-19 20:51:58.939831	2021-05-19 20:51:58.939831	\N
7207	Varios	1	\N	29.5	8082	3	2021-05-19 20:51:59.0374	2021-05-19 20:51:59.0374	\N
7208	Varios	1	\N	29.5	8083	3	2021-05-19 20:51:59.126555	2021-05-19 20:51:59.126555	\N
7209	Varios	1	\N	29.5	8084	3	2021-05-19 20:51:59.317093	2021-05-19 20:51:59.317093	\N
7210	Termometros	1	\N	2832	8085	3	2021-05-19 20:51:59.425292	2021-05-19 20:51:59.425292	\N
7211	Termometros	1	\N	1519.0022	8086	3	2021-05-19 20:56:56.477957	2021-05-19 20:56:56.477957	\N
7212	Mandiles	1	\N	3200	8087	3	2021-05-19 20:56:56.610129	2021-05-19 20:56:56.610129	\N
7213	Mandiles	1	\N	2800	8088	1	2021-05-19 20:56:56.818671	2021-05-19 20:58:17.235807	\N
7214	Alojamiento	1	\N	296.9942	8089	1	2021-05-19 20:56:56.990132	2021-05-19 21:02:55.82199	\N
7215	Servicio	1	\N	3540	8090	3	2021-05-20 20:10:23.871471	2021-05-20 20:10:23.871471	\N
7219	Denim	1	\N	4797	8094	3	2021-06-16 17:28:51.600105	2021-06-16 17:28:51.600105	\N
7220	Notex	1	\N	4949.999999956	8095	3	2021-06-16 17:28:51.810362	2021-06-16 17:28:51.810362	\N
7221	Notex	1	\N	3599.9999997792	8096	3	2021-06-16 17:28:52.030011	2021-06-16 17:28:52.030011	\N
7222	Varios	1	\N	11.8	8097	3	2021-06-16 17:29:53.544459	2021-06-16 17:29:53.544459	\N
7223	Varios	1	\N	76.7	8098	3	2021-06-16 17:29:53.945158	2021-06-16 17:29:53.945158	\N
7224	Varios	1	\N	11.8	8099	3	2021-06-16 17:29:54.37964	2021-06-16 17:29:54.37964	\N
7225	Varios	1	\N	76.7	8100	3	2021-06-16 17:29:54.68275	2021-06-16 17:29:54.68275	\N
7226	Varios	1	\N	17.7	8101	3	2021-06-16 17:29:54.952475	2021-06-16 17:29:54.952475	\N
7227	Varios	1	\N	23364	8102	3	2021-06-16 17:29:55.431563	2021-06-16 17:29:55.431563	\N
7228	celular	1	\N	1239.7	8103	3	2021-06-18 16:16:54.395137	2021-06-18 16:16:54.395137	\N
7229	caretas	1	\N	1800.02	8104	3	2021-06-18 16:16:55.025331	2021-06-18 16:16:55.025331	\N
7230	celular	1	\N	1358.88	8105	3	2021-07-19 20:32:22.860096	2021-07-19 20:32:22.860096	\N
7231	caretas	1	\N	1800.02	8106	3	2021-07-19 20:32:23.901894	2021-07-19 20:32:23.901894	\N
7232	varios	1	\N	27.6	8107	3	2021-07-19 20:32:24.618098	2021-07-19 20:32:24.618098	\N
7233	varios	1	\N	520	8108	3	2021-07-19 20:32:25.448614	2021-07-19 20:32:25.448614	\N
7234	varios	1	\N	72	8109	3	2021-07-19 20:32:26.689034	2021-07-19 20:32:26.689034	\N
7235	varios	1	\N	149	8110	3	2021-07-19 20:32:27.335137	2021-07-19 20:32:27.335137	\N
7236	varios	1	\N	45	8111	3	2021-07-19 20:32:28.609783	2021-07-19 20:32:28.609783	\N
7237	varios	1	\N	150.45	8112	3	2021-07-19 20:32:29.308707	2021-07-19 20:32:29.308707	\N
7238	varios	1	\N	150.6	8113	3	2021-07-19 20:32:29.902191	2021-07-19 20:32:29.902191	\N
7239	caretas	1	\N	2610	8114	3	2021-07-19 20:39:19.461351	2021-07-19 20:39:19.461351	\N
7240	varios	1	\N	123.8	8115	3	2021-07-19 20:39:20.042855	2021-07-19 20:39:20.042855	\N
7241	varios	1	\N	187	8116	3	2021-07-19 20:39:20.619998	2021-07-19 20:39:20.619998	\N
7242	varios	1	\N	246.63	8117	3	2021-07-19 20:39:21.416177	2021-07-19 20:39:21.416177	\N
7243	varios	1	\N	231.81	8118	3	2021-07-19 20:39:21.94335	2021-07-19 20:39:21.94335	\N
7244	varios	1	\N	112.25	8119	3	2021-07-19 20:39:22.30667	2021-07-19 20:39:22.30667	\N
7245	varios	1	\N	197.5	8120	3	2021-07-19 20:39:22.712579	2021-07-19 20:39:22.712579	\N
7246	PROTECTOR FACIAL CON MONTURA	1	\N	6608	8121	3	2021-07-19 20:49:43.360368	2021-07-19 20:49:43.360368	\N
7247	VARIOS	1	\N	35.4	8122	3	2021-07-19 20:49:43.622034	2021-07-19 20:49:43.622034	\N
7248	VARIOS	1	\N	29.5	8123	3	2021-07-19 20:49:43.978765	2021-07-19 20:49:43.978765	\N
7249	VARIOS	1	\N	29.5	8124	3	2021-07-19 20:49:44.393378	2021-07-19 20:49:44.393378	\N
7250	VARIOS	1	\N	29.5	8125	3	2021-07-19 20:49:44.70415	2021-07-19 20:49:44.70415	\N
7251	\N	1	\N	-35.4	8126	3	2021-07-19 20:49:45.300644	2021-07-19 20:49:45.300644	\N
7252	\N	1	\N	-29.5	8127	3	2021-07-19 20:49:45.895404	2021-07-19 20:49:45.895404	\N
7253	\N	1	\N	-29.5	8128	3	2021-07-19 20:49:46.188922	2021-07-19 20:49:46.188922	\N
7254	\N	1	\N	-29.5	8129	3	2021-07-19 20:49:46.621558	2021-07-19 20:49:46.621558	\N
7255	ASESORIA E-COMMERCE: SERVICIO DE CONSULTORIA ESPECIALIZADA PARA EL CIERRE DEL PROYECTO DE IMPLEMENTACION DEL SITIO DE COMERCIO ELECTRONICO NEXUS TECHNOLOGY.	1	\N	5695.27	8130	3	2021-07-19 21:04:11.189121	2021-07-19 21:04:11.189121	\N
7256	ASESORIA E-COMMERCE: SERVICIO DE CONSULTORIA ESPECIALIZADA PARA EL CIERRE DEL PROYECTO DE IMPLEMENTACION DEL SITIO DE COMERCIO ELECTRONICO NEXUS TECHNOLOGY.	1	\N	5989.4145	8131	3	2021-07-19 21:04:11.671309	2021-07-19 21:04:11.671309	\N
7257	ANULACION DE LA OPERACION	1	\N	-5695.27	8132	3	2021-07-19 21:04:12.004641	2021-07-19 21:04:12.004641	\N
7258	caretas	1	\N	7332.992	8133	3	2021-07-20 03:23:36.517805	2021-07-20 03:23:36.517805	\N
7259	varios	1	\N	636.9994	8134	3	2021-07-20 03:23:37.104422	2021-07-20 03:23:37.104422	\N
7260	Varios	1	\N	11.8	8135	3	2021-07-20 03:24:20.255944	2021-07-20 03:24:20.255944	\N
7261	Varios	1	\N	59	8136	3	2021-07-20 03:24:20.979466	2021-07-20 03:24:20.979466	\N
7262	Varios	1	\N	17.7	8137	3	2021-07-20 03:24:21.298848	2021-07-20 03:24:21.298848	\N
7263	Varios	1	\N	23.6	8138	3	2021-07-20 03:24:21.58988	2021-07-20 03:24:21.58988	\N
7264	Varios	1	\N	11.8	8139	3	2021-07-20 03:24:21.83013	2021-07-20 03:24:21.83013	\N
7265	Varios	1	\N	59	8140	3	2021-07-20 03:24:22.143141	2021-07-20 03:24:22.143141	\N
7266	Varios	1	\N	4.72	8141	3	2021-07-20 03:24:22.488568	2021-07-20 03:24:22.488568	\N
7267	Varios	1	\N	11.8	8142	3	2021-07-20 03:24:22.810012	2021-07-20 03:24:22.810012	\N
7268	Mandiles	1	\N	23364	8143	3	2021-07-20 03:24:23.255003	2021-07-20 03:24:23.255003	\N
7269	Varios	1	\N	11.8	8144	3	2021-07-20 03:24:23.664767	2021-07-20 03:24:23.664767	\N
7270	Varios	1	\N	59	8145	3	2021-07-20 03:24:24.131749	2021-07-20 03:24:24.131749	\N
7271	Varios	1	\N	11.8	8146	3	2021-07-20 03:24:24.410002	2021-07-20 03:24:24.410002	\N
7272	Varios	1	\N	12.98	8147	3	2021-07-20 03:24:24.710184	2021-07-20 03:24:24.710184	\N
7273	Termometros	1	\N	1180	8148	3	2021-07-20 03:24:25.078967	2021-07-20 03:24:25.078967	\N
7274	VARIOS	1	\N	801.8	8149	3	2021-08-18 17:46:05.847939	2021-08-18 17:46:05.847939	\N
7275	VARIOS	1	\N	65.9	8150	3	2021-08-18 17:46:06.212463	2021-08-18 17:46:06.212463	\N
7276	VARIOS	1	\N	74.65	8151	3	2021-08-18 17:46:06.494679	2021-08-18 17:46:06.494679	\N
7277	VARIOS	1	\N	50	8152	3	2021-08-18 17:46:06.841493	2021-08-18 17:46:06.841493	\N
7278	caretas	1	\N	3400	8153	3	2021-08-18 20:46:02.051067	2021-08-18 20:46:02.051067	\N
7279	Repuestos	1	\N	2950	8154	3	2021-08-18 20:46:02.4892	2021-08-18 20:46:02.4892	\N
7280	Varios	1	\N	2000	8155	3	2021-08-18 20:46:02.855426	2021-08-18 20:46:02.855426	\N
7281	Varios	1	\N	20	8156	3	2021-08-18 20:46:03.216109	2021-08-18 20:46:03.216109	\N
7282	Repuestos	1	\N	2360	8157	3	2021-08-18 20:46:03.603152	2021-08-18 20:46:03.603152	\N
7283	Repuestos	1	\N	1347	8158	3	2021-08-18 20:46:03.847819	2021-08-18 20:46:03.847819	\N
7284	Varios	1	\N	125.3	8159	3	2021-08-18 20:46:04.371904	2021-08-18 20:46:04.371904	\N
7285	Varios	1	\N	68.15	8160	3	2021-08-18 20:46:04.569983	2021-08-18 20:46:04.569983	\N
7286	Varios	1	\N	40	8161	3	2021-08-18 20:46:04.74102	2021-08-18 20:46:04.74102	\N
7287	Varios	1	\N	75.23	8162	3	2021-08-18 20:46:04.939448	2021-08-18 20:46:04.939448	\N
7288	Varios	1	\N	104.05	8163	3	2021-08-18 20:46:05.135857	2021-08-18 20:46:05.135857	\N
7289	Varios	1	\N	143	8164	3	2021-08-18 20:46:05.304766	2021-08-18 20:46:05.304766	\N
7290	Varios	1	\N	664.86	8165	3	2021-08-18 20:46:05.486055	2021-08-18 20:46:05.486055	\N
7291	Varios	1	\N	91.2	8166	3	2021-08-18 20:46:05.785744	2021-08-18 20:46:05.785744	\N
7292	Varios	1	\N	222.51	8167	3	2021-08-18 20:46:06.016582	2021-08-18 20:46:06.016582	\N
7293	Varios	1	\N	64.95	8168	3	2021-08-18 20:46:06.373315	2021-08-18 20:46:06.373315	\N
7294	PROTECTOR FACIAL CON MONTURA	1	\N	8496	8169	3	2021-08-18 20:51:16.246758	2021-08-18 20:51:16.246758	\N
7295	VARIOS	1	\N	3036.18	8170	3	2021-08-18 20:51:16.437347	2021-08-18 20:51:16.437347	\N
7296	VARIOS	1	\N	23.6	8171	3	2021-08-18 20:51:16.845069	2021-08-18 20:51:16.845069	\N
7297	VARIOS	1	\N	47.2	8172	3	2021-08-18 20:51:17.04136	2021-08-18 20:51:17.04136	\N
7298	PROTECTOR FACIAL CON MONTURA	1	\N	10856	8173	3	2021-08-18 20:51:17.268574	2021-08-18 20:51:17.268574	\N
7299	\N	1	\N	-23.6	8174	3	2021-08-18 20:51:17.455262	2021-08-18 20:51:17.455262	\N
7300	\N	1	\N	-47.2	8175	3	2021-08-18 20:51:17.608996	2021-08-18 20:51:17.608996	\N
7301	Notex	1	\N	3399.996	8176	3	2021-08-18 23:04:01.632133	2021-08-18 23:04:01.632133	\N
7302	Notex	1	\N	3399.996	8177	3	2021-08-18 23:04:01.882577	2021-08-18 23:04:01.882577	\N
7303	Uniformes de tela notex	1	\N	3200	8178	3	2021-08-18 23:04:01.947081	2021-08-18 23:04:01.947081	\N
7304	Termometros TP500	1	\N	1000	8179	3	2021-08-18 23:04:02.026635	2021-08-18 23:04:02.026635	\N
7305	Mts Notex	1	\N	3249.996	8180	3	2021-08-18 23:04:02.167456	2021-08-18 23:04:02.167456	\N
7306	Mts Notex	1	\N	3350	8181	3	2021-08-18 23:04:02.357958	2021-08-18 23:04:02.357958	\N
7307	Mts Notex	1	\N	3400	8182	3	2021-08-18 23:04:02.481316	2021-08-18 23:04:02.481316	\N
7308	Varios	1	\N	59	8183	3	2021-08-18 23:04:32.32461	2021-08-18 23:04:32.32461	\N
7309	Varios	1	\N	11.8	8184	3	2021-08-18 23:04:32.44823	2021-08-18 23:04:32.44823	\N
7310	Varios	1	\N	23364	8185	3	2021-08-18 23:04:32.625041	2021-08-18 23:04:32.625041	\N
7311	Varios	1	\N	3009	8186	3	2021-08-18 23:04:32.806817	2021-08-18 23:04:32.806817	\N
7312	Varios	1	\N	11.8	8187	3	2021-09-17 12:55:34.449125	2021-09-17 12:55:34.449125	\N
7313	Varios	1	\N	35.4	8188	3	2021-09-17 12:55:34.939521	2021-09-17 12:55:34.939521	\N
7314	Varios	1	\N	5.9	8189	3	2021-09-17 12:55:35.188376	2021-09-17 12:55:35.188376	\N
7315	Varios	1	\N	23.6	8190	3	2021-09-17 12:55:35.54795	2021-09-17 12:55:35.54795	\N
7316	Varios	1	\N	47.2	8191	3	2021-09-17 12:55:35.820819	2021-09-17 12:55:35.820819	\N
7317	Termometros	1	\N	2832	8192	3	2021-09-17 12:55:36.131281	2021-09-17 12:55:36.131281	\N
7318	Mandiles	1	\N	23364	8193	3	2021-09-17 12:55:36.358159	2021-09-17 12:55:36.358159	\N
7319	NC	1	\N	-35.4	8194	3	2021-09-17 12:55:36.584003	2021-09-17 12:55:36.584003	\N
7320	NC	1	\N	-11.8	8195	3	2021-09-17 12:55:36.92103	2021-09-17 12:55:36.92103	\N
7321	NC	1	\N	-5.9	8196	3	2021-09-17 12:55:37.17688	2021-09-17 12:55:37.17688	\N
7322	NC	1	\N	-23.6	8197	3	2021-09-17 12:55:37.465125	2021-09-17 12:55:37.465125	\N
7323	NC	1	\N	-47.2	8198	3	2021-09-17 12:55:37.758692	2021-09-17 12:55:37.758692	\N
7324	Notex	1	\N	5445	8199	3	2021-09-17 12:56:21.411073	2021-09-17 12:56:21.411073	\N
7325	Notex	1	\N	590	8200	3	2021-09-17 12:56:21.768491	2021-09-17 12:56:21.768491	\N
7326	Uniformes de tela notex	1	\N	24.0012	8201	3	2021-09-17 12:56:22.310245	2021-09-17 12:56:22.310245	\N
7327	Termometros TP500	1	\N	2567.0015	8202	3	2021-09-17 12:56:22.715406	2021-09-17 12:56:22.715406	\N
7328	Mts Notex	1	\N	1990	8203	3	2021-09-17 12:56:22.851654	2021-09-17 12:56:22.851654	\N
7329	Mts Notex	1	\N	2460	8204	3	2021-09-17 12:56:22.982935	2021-09-17 12:56:22.982935	\N
7330	Mts Notex	1	\N	3000	8205	3	2021-09-17 12:56:23.109693	2021-09-17 12:56:23.109693	\N
7331	Mts Notex	1	\N	2550	8206	3	2021-09-17 12:56:23.326256	2021-09-17 12:56:23.326256	\N
7334	SERVICIO DE SOLUCION TECNOLOGICA DE OUTSOURCING	1	\N	11800	8209	3	2021-09-20 18:52:27.7394	2021-09-20 18:52:27.7394	\N
7335	ANULACION DE LA OPERACION	1	\N	-11800	8210	3	2021-09-20 18:52:27.92238	2021-09-20 18:52:27.92238	\N
7336	Varios	1	\N	17.7	8211	3	2021-10-20 17:57:42.728161	2021-10-20 17:57:42.728161	\N
7337	Varios	1	\N	11.8	8212	3	2021-10-20 17:57:42.977616	2021-10-20 17:57:42.977616	\N
7338	Varios	1	\N	14.16	8213	3	2021-10-20 17:57:43.072439	2021-10-20 17:57:43.072439	\N
7339	Varios	1	\N	8.26	8214	3	2021-10-20 17:57:43.342613	2021-10-20 17:57:43.342613	\N
7340	Varios	1	\N	29.5	8215	3	2021-10-20 17:57:43.488037	2021-10-20 17:57:43.488037	\N
7341	Mandiles	1	\N	23364	8216	3	2021-10-20 17:57:43.62487	2021-10-20 17:57:43.62487	\N
7342	Notex	1	\N	23600	8217	3	2021-10-20 17:58:18.973301	2021-10-20 17:58:18.973301	\N
7343	Mandiles	1	\N	2512.5	8218	3	2021-10-20 17:58:19.148434	2021-10-20 17:58:19.148434	\N
7344	Mandiles	1	\N	2497.5	8219	3	2021-10-20 17:58:19.26962	2021-10-20 17:58:19.26962	\N
7345	Mandiles	1	\N	2505	8220	3	2021-10-20 17:58:19.368619	2021-10-20 17:58:19.368619	\N
7346	Mandiles	1	\N	2520	8221	3	2021-10-20 17:58:19.431223	2021-10-20 17:58:19.431223	\N
7347	RENOVACION DE LICENCIA Y SOPORTE ANUAL DE JUNIO 2021 A JUNIO 2022: LICENCIA ILIMITADA DE USO DE LOS CURSOS EN LA PLATAFORMA NETACAD.COM DEL PROGRAMA CISCO NETOWRKING ACADEM	1	\N	4720	8222	3	2021-10-20 19:25:00.094467	2021-10-20 19:25:00.094467	\N
7348	Varios	1	\N	35.4	8223	3	2021-11-18 13:06:47.653676	2021-11-18 13:06:47.653676	\N
7349	Varios	1	\N	17.7	8224	3	2021-11-18 13:06:48.928607	2021-11-18 13:06:48.928607	\N
7350	Varios	1	\N	29.5	8225	3	2021-11-18 13:06:49.324682	2021-11-18 13:06:49.324682	\N
7351	Mandiles	1	\N	23364	8226	3	2021-11-18 13:06:49.556079	2021-11-18 13:06:49.556079	\N
7352	Varios	1	\N	17.7	8227	3	2021-11-18 13:06:49.991503	2021-11-18 13:06:49.991503	\N
7353	Termometros	1	\N	2832	8228	3	2021-11-18 13:06:50.221919	2021-11-18 13:06:50.221919	\N
7354	Mandiles	1	\N	2400	8229	3	2021-11-18 13:13:38.211243	2021-11-18 13:13:38.211243	\N
7355	Mandiles	1	\N	3000	8230	3	2021-11-18 13:13:38.579796	2021-11-18 13:13:38.579796	\N
7356	Mandiles	1	\N	2600	8231	3	2021-11-18 13:13:38.925481	2021-11-18 13:13:38.925481	\N
7357	Notex Blanco	1	\N	5205.0036	8232	3	2021-11-18 13:13:39.285283	2021-11-18 13:13:39.285283	\N
7358	Mandiles	1	\N	2797.5	8233	3	2021-11-18 13:13:39.54381	2021-11-18 13:13:39.54381	\N
7359	Mandiles	1	\N	2205	8234	3	2021-11-18 13:13:39.853536	2021-11-18 13:13:39.853536	\N
7360	Mandiles	1	\N	2400	8235	3	2021-11-18 13:13:40.033598	2021-11-18 13:13:40.033598	\N
7361	Polos en Jersey	1	\N	975	8236	3	2021-11-18 13:13:40.216538	2021-11-18 13:13:40.216538	\N
7362	Mandiles	1	\N	3500	8237	3	2021-11-18 13:13:40.425052	2021-11-18 13:13:40.425052	\N
7363	Mandiles	1	\N	3500	8238	3	2021-11-18 13:13:40.760252	2021-11-18 13:13:40.760252	\N
7364	Mandiles	1	\N	23364	8243	3	2021-12-20 15:43:25.534957	2021-12-20 15:43:25.534957	\N
7365	Mandiles	1	\N	5841	8244	3	2021-12-20 15:43:25.810587	2021-12-20 15:43:25.810587	\N
7366	Varios	1	\N	17.7	8239	3	2021-12-20 15:43:25.926614	2021-12-20 15:43:25.926614	\N
7367	Varios	1	\N	29.5	8240	3	2021-12-20 15:43:26.000349	2021-12-20 15:43:26.000349	\N
7368	Varios	1	\N	11.8	8241	3	2021-12-20 15:43:26.114045	2021-12-20 15:43:26.114045	\N
7369	Varios	1	\N	14.16	8242	3	2021-12-20 15:43:26.226717	2021-12-20 15:43:26.226717	\N
7370	varios	1	\N	388	8245	3	2021-12-21 04:11:37.188325	2021-12-21 04:11:37.188325	\N
7371	varios	1	\N	494.85	8246	3	2021-12-21 04:11:37.588048	2021-12-21 04:11:37.588048	\N
7372	varios	1	\N	1438.75	8247	3	2021-12-21 04:11:37.863664	2021-12-21 04:11:37.863664	\N
7373	varios	1	\N	144.21	8248	3	2021-12-21 04:11:38.076136	2021-12-21 04:11:38.076136	\N
7374	varios	1	\N	148.9	8249	3	2021-12-21 04:11:38.479641	2021-12-21 04:11:38.479641	\N
7375	varios	1	\N	102	8250	3	2021-12-21 04:11:38.708535	2021-12-21 04:11:38.708535	\N
7376	varios	1	\N	146.7	8251	3	2021-12-21 04:11:39.192487	2021-12-21 04:11:39.192487	\N
7377	varios	1	\N	70	8252	3	2021-12-21 04:11:39.481016	2021-12-21 04:11:39.481016	\N
7378	varios	1	\N	77.5	8253	3	2021-12-21 04:11:39.866059	2021-12-21 04:11:39.866059	\N
7379	RENOVACION DE CONTRATO ACADEMY SUPPORT CENTER. CONSTA DE LOS SIGUIENTES PROGRAMAS: CURSOS BASICOS, IT ESSENTIALS, CCNA, CCNA SECURITY. DURACION: 12 MESES (01 DE AGOSTO DE 2021 AL 31 DE JULIO DEL 2022)	1	\N	3540	8254	3	2021-12-21 04:20:44.876376	2021-12-21 04:20:44.876376	\N
7380	RENOVACION DE LICENCIAMIENTO Y SOPORTE ANUAL OCTUBRE 2021 OCTUBRE 2022: LICENCIA ILIMITADA DE USO DE LOS CURSOS EN LA PLATAFORMA WWW.NETACAD.COM DEL PROGRAMA CISCO NETWORKING ACADEMY.	1	\N	3540	8255	3	2021-12-21 04:20:45.106866	2021-12-21 04:20:45.106866	\N
7381	Mandiles	1	\N	3500	8256	3	2022-01-20 03:49:54.333255	2022-01-20 03:49:54.333255	\N
7382	Mandiles	1	\N	3500	8257	3	2022-01-20 03:49:55.479996	2022-01-20 03:49:55.479996	\N
7383	Mandiles	1	\N	3500	8258	3	2022-01-20 03:49:56.164977	2022-01-20 03:49:56.164977	\N
7384	Varios	1	\N	17.7	8259	3	2022-01-20 03:50:53.377474	2022-01-20 03:50:53.377474	\N
7385	Varios	1	\N	5.9	8260	3	2022-01-20 03:50:53.718409	2022-01-20 03:50:53.718409	\N
7386	Varios	1	\N	23.6	8261	3	2022-01-20 03:50:54.377409	2022-01-20 03:50:54.377409	\N
7387	Mandiles	1	\N	5841	8262	3	2022-01-20 03:50:54.89578	2022-01-20 03:50:54.89578	\N
7388	Mandiles	1	\N	23364	8263	3	2022-01-20 03:50:55.503404	2022-01-20 03:50:55.503404	\N
7389	Varios	1	\N	47.2	8264	3	2022-02-18 01:20:36.403869	2022-02-18 01:20:36.403869	\N
7390	Varios	1	\N	23.6	8265	3	2022-02-18 01:20:37.227037	2022-02-18 01:20:37.227037	\N
7391	Varios	1	\N	11.8	8266	3	2022-02-18 01:20:37.719891	2022-02-18 01:20:37.719891	\N
7392	Canguros	1	\N	855.5	8267	3	2022-02-18 01:20:38.209864	2022-02-18 01:20:38.209864	\N
7393	Mandiles	1	\N	23364	8268	3	2022-02-18 01:20:38.821264	2022-02-18 01:20:38.821264	\N
7394	Mandiles	1	\N	5569.8006	8269	3	2022-02-18 01:21:45.201812	2022-02-18 01:21:45.201812	\N
7395	Mandiles	1	\N	3375	8270	3	2022-02-18 01:21:45.892297	2022-02-18 01:21:45.892297	\N
7396	Mandiles	1	\N	3682.92966101695	8271	3	2022-02-18 01:21:46.354523	2022-02-18 01:21:46.354523	\N
7397	\N	1	\N	3321	8272	3	2022-02-18 01:21:46.561457	2022-02-18 01:21:46.561457	\N
7398	Varios	1	\N	17.7	8273	3	2022-03-19 00:48:13.703972	2022-03-19 00:48:13.703972	\N
7399	Varios	1	\N	12.2012	8274	3	2022-03-19 00:48:14.101552	2022-03-19 00:48:14.101552	\N
7400	Varios	1	\N	23.6	8275	3	2022-03-19 00:48:14.505809	2022-03-19 00:48:14.505809	\N
7401	Varios	1	\N	29.5	8276	3	2022-03-19 00:48:14.825768	2022-03-19 00:48:14.825768	\N
7402	Varios	1	\N	23364	8277	3	2022-03-19 00:48:15.185308	2022-03-19 00:48:15.185308	\N
7403	\N	1	\N	9999.9999396	8278	3	2022-03-19 00:49:14.149717	2022-03-19 00:49:14.149717	\N
7404	\N	1	\N	3500	8279	3	2022-03-19 00:49:14.789106	2022-03-19 00:49:14.789106	\N
7405	\N	1	\N	3500	8280	3	2022-03-19 00:49:15.768847	2022-03-19 00:49:15.768847	\N
7406	\N	1	\N	3550.5964	8281	3	2022-04-22 16:49:08.331929	2022-04-22 16:49:08.331929	\N
7407	\N	1	\N	3550.5964	8282	3	2022-04-22 16:49:09.023011	2022-04-22 16:49:09.023011	\N
7408	\N	1	\N	3713.2004	8283	3	2022-04-22 16:49:09.213423	2022-04-22 16:49:09.213423	\N
7409	Varios	1	\N	29.5	8284	3	2022-04-22 16:49:56.423867	2022-04-22 16:49:56.423867	\N
7410	Varios	1	\N	23.6	8285	3	2022-04-22 16:49:56.668266	2022-04-22 16:49:56.668266	\N
7411	Varios	1	\N	41.3	8286	3	2022-04-22 16:49:56.927924	2022-04-22 16:49:56.927924	\N
7412	Varios	1	\N	41.3	8287	3	2022-04-22 16:49:57.204458	2022-04-22 16:49:57.204458	\N
7413	Varios	1	\N	23364	8288	3	2022-04-22 16:49:57.428359	2022-04-22 16:49:57.428359	\N
7414	Varios	1	\N	47.2	8289	3	2022-04-22 16:49:57.664592	2022-04-22 16:49:57.664592	\N
7415	Varios	1	\N	17.7	8290	3	2022-04-22 16:49:57.91741	2022-04-22 16:49:57.91741	\N
7416	Varios	1	\N	23.6	8291	3	2022-04-22 16:49:58.242383	2022-04-22 16:49:58.242383	\N
7417	Varios	1	\N	11.8	8292	3	2022-04-22 16:49:58.554269	2022-04-22 16:49:58.554269	\N
7418	Varios	1	\N	885	8293	3	2022-04-22 16:49:58.915275	2022-04-22 16:49:58.915275	\N
7419	\N	1	\N	9999.99979092	8294	3	2022-05-20 01:56:12.103018	2022-05-20 01:56:12.103018	\N
7420	\N	1	\N	1974	8295	3	2022-05-20 01:56:12.371619	2022-05-20 01:56:12.371619	\N
7421	\N	1	\N	1974	8296	3	2022-05-20 01:56:12.662156	2022-05-20 01:56:12.662156	\N
7422	\N	1	\N	1920	8297	3	2022-05-20 01:56:12.867794	2022-05-20 01:56:12.867794	\N
7423	\N	1	\N	2599.245	8298	3	2022-05-20 01:56:13.034491	2022-05-20 01:56:13.034491	\N
7424	Varios	1	\N	17.7	8299	3	2022-05-20 01:56:51.295698	2022-05-20 01:56:51.295698	\N
7425	Varios	1	\N	46.02	8300	3	2022-05-20 01:56:51.577374	2022-05-20 01:56:51.577374	\N
7426	Mandiles	1	\N	23364	8301	3	2022-05-20 01:56:51.907662	2022-05-20 01:56:51.907662	\N
7427	Varios	1	\N	35.4	8302	3	2022-05-20 01:56:52.324358	2022-05-20 01:56:52.324358	\N
7428	Varios	1	\N	23.6	8303	3	2022-05-20 01:56:52.641884	2022-05-20 01:56:52.641884	\N
7429	Canguros	1	\N	1770	8304	3	2022-05-20 01:56:53.034607	2022-05-20 01:56:53.034607	\N
7430	nota de credito	1	\N	41.3	8305	3	2022-05-20 01:56:53.391447	2022-05-20 01:56:53.391447	\N
7431	nota de credito	1	\N	29.5	8306	3	2022-05-20 01:56:53.729729	2022-05-20 01:56:53.729729	\N
7432	nota de credito	1	\N	47.2	8307	3	2022-05-20 01:56:54.151172	2022-05-20 01:56:54.151172	\N
7433	\N	1	\N	2730	8308	3	2022-06-21 00:40:44.714128	2022-06-21 00:40:44.714128	\N
7434	\N	1	\N	2730	8309	3	2022-06-21 00:40:45.22339	2022-06-21 00:40:45.22339	\N
7435	\N	1	\N	1974	8310	3	2022-06-21 00:40:45.406099	2022-06-21 00:40:45.406099	\N
7436	\N	1	\N	10000.00090838	8311	3	2022-06-21 00:40:45.645287	2022-06-21 00:40:45.645287	\N
7437	Varios	1	\N	23364	8312	3	2022-06-21 00:45:26.485144	2022-06-21 00:45:26.485144	\N
7438	varios	1	\N	17.8	8313	3	2022-07-21 01:37:45.631281	2022-07-21 01:37:45.631281	\N
7439	varios	1	\N	134.02	8314	3	2022-07-21 01:37:45.946903	2022-07-21 01:37:45.946903	\N
7440	varios	1	\N	51.62	8315	3	2022-07-21 01:37:46.088355	2022-07-21 01:37:46.088355	\N
7441	varios	1	\N	349.11	8316	3	2022-07-21 01:37:46.176321	2022-07-21 01:37:46.176321	\N
7442	varios	1	\N	116.3	8317	3	2022-07-21 01:37:46.280795	2022-07-21 01:37:46.280795	\N
7443	varios	1	\N	154	8318	3	2022-07-21 01:37:46.433604	2022-07-21 01:37:46.433604	\N
7444	varios	1	\N	269.92	8319	3	2022-07-21 01:37:46.85105	2022-07-21 01:37:46.85105	\N
7445	varios	1	\N	241.11	8320	3	2022-07-21 01:37:47.030324	2022-07-21 01:37:47.030324	\N
7446	varios	1	\N	89.2	8321	3	2022-07-21 01:37:47.205839	2022-07-21 01:37:47.205839	\N
7447	varios	1	\N	3610	8322	3	2022-07-21 01:37:47.308528	2022-07-21 01:37:47.308528	\N
7448	varios	1	\N	114.71	8323	3	2022-07-21 01:37:47.455843	2022-07-21 01:37:47.455843	\N
7449	varios	1	\N	41.44	8324	3	2022-07-21 01:37:47.56519	2022-07-21 01:37:47.56519	\N
7450	varios	1	\N	75.7	8325	3	2022-07-21 01:37:47.697854	2022-07-21 01:37:47.697854	\N
7451	varios	1	\N	224.3	8326	3	2022-07-21 01:37:47.821758	2022-07-21 01:37:47.821758	\N
7452	\N	1	\N	2000	8327	3	2022-07-21 02:06:50.131227	2022-07-21 02:06:50.131227	\N
7453	\N	1	\N	2000	8328	3	2022-07-21 02:06:50.723438	2022-07-21 02:06:50.723438	\N
7454	Varios	1	\N	23.6	8329	3	2022-07-21 02:08:21.695493	2022-07-21 02:08:21.695493	\N
7455	Varios	1	\N	17.7	8330	3	2022-07-21 02:08:21.881728	2022-07-21 02:08:21.881728	\N
7456	Varios	1	\N	14.16	8331	3	2022-07-21 02:08:22.0348	2022-07-21 02:08:22.0348	\N
7457	Varios	1	\N	29.5	8332	3	2022-07-21 02:08:22.407382	2022-07-21 02:08:22.407382	\N
7458	Varios	1	\N	23364	8333	3	2022-07-21 02:08:22.636096	2022-07-21 02:08:22.636096	\N
7475	Varios	1	\N	11.8	8362	3	2022-08-30 16:53:57.559983	2022-08-30 16:53:57.559983	\N
7476	Varios	1	\N	21027.6	8363	3	2022-08-30 16:53:57.591441	2022-08-30 16:53:57.591441	\N
7477	\N	1	\N	2000	8350	3	2022-08-30 16:53:57.602677	2022-08-30 16:53:57.602677	\N
7478	\N	1	\N	2000	8351	3	2022-08-30 16:53:57.614109	2022-08-30 16:53:57.614109	\N
7479	\N	1	\N	3312	8352	3	2022-08-30 16:53:57.624966	2022-08-30 16:53:57.624966	\N
7480	\N	1	\N	3375	8353	3	2022-08-30 16:53:57.636023	2022-08-30 16:53:57.636023	\N
7481	\N	1	\N	3321	8354	3	2022-08-30 16:53:57.646902	2022-08-30 16:53:57.646902	\N
7482	\N	1	\N	2000	8355	3	2022-08-30 16:53:57.657975	2022-08-30 16:53:57.657975	\N
7483	Varios	1	\N	17.7	8356	3	2022-08-30 16:53:57.669243	2022-08-30 16:53:57.669243	\N
7484	Varios	1	\N	23.6	8357	3	2022-08-30 16:53:57.680367	2022-08-30 16:53:57.680367	\N
7485	Varios	1	\N	11682	8358	3	2022-08-30 16:53:57.692267	2022-08-30 16:53:57.692267	\N
7486	Varios	1	\N	17.7	8359	3	2022-08-30 16:53:57.703298	2022-08-30 16:53:57.703298	\N
7487	Varios	1	\N	2360	8360	3	2022-08-30 16:53:57.714183	2022-08-30 16:53:57.714183	\N
7488	Varios	1	\N	17.7	8361	3	2022-08-30 16:53:57.725743	2022-08-30 16:53:57.725743	\N
7489	Varios	1	\N	21027.6	8364	3	2022-08-30 16:53:57.736869	2022-08-30 16:53:57.736869	\N
7490	Nota de credito	1	\N	-21027.6	8365	3	2022-08-30 16:53:57.750114	2022-08-30 16:53:57.750114	\N
7497	\N	1	\N	710	8372	3	2022-09-14 02:37:29.321054	2022-09-14 02:37:29.321054	\N
7498	\N	1	\N	1992	8373	3	2022-09-14 02:37:29.343111	2022-09-14 02:37:29.343111	\N
7499	\N	1	\N	1980	8374	3	2022-09-14 02:37:29.377493	2022-09-14 02:37:29.377493	\N
7500	\N	1	\N	2100	8375	3	2022-09-14 02:37:29.39401	2022-09-14 02:37:29.39401	\N
7501	Varios	1	\N	16779.6	8376	3	2022-09-14 02:37:29.410905	2022-09-14 02:37:29.410905	\N
7502	Nota de credito	1	\N	-21027.6	8377	3	2022-09-14 02:37:29.428526	2022-09-14 02:37:29.428526	\N
7511	1	1	\N	109.9	8386	3	2022-09-21 18:14:40.988674	2022-09-21 18:14:40.988674	\N
7512	1	1	\N	128	8387	3	2022-09-21 18:14:41.012636	2022-09-21 18:14:41.012636	\N
7513	1	1	\N	697.46	8388	3	2022-09-21 18:14:41.032372	2022-09-21 18:14:41.032372	\N
7514	Varios	1	\N	4720	8389	3	2022-09-21 18:14:41.050727	2022-09-21 18:14:41.050727	\N
7516	\N	1	\N	1848.35	8391	3	2022-10-19 14:21:55.449822	2022-10-19 14:21:55.449822	\N
7518	\N	1	\N	9750	8393	3	2022-10-19 17:16:14.560558	2022-10-19 17:16:14.560558	\N
7520	Varios	1	\N	17.7	8395	3	2022-10-19 17:16:14.603612	2022-10-19 17:16:14.603612	\N
7521	Varios	1	\N	11.8	8396	3	2022-10-19 17:16:14.617055	2022-10-19 17:16:14.617055	\N
7522	Varios	1	\N	16779.6	8397	3	2022-10-19 17:16:14.630285	2022-10-19 17:16:14.630285	\N
7523	Varios	1	\N	23.6	8398	3	2022-10-19 17:16:14.643902	2022-10-19 17:16:14.643902	\N
7524	Varios	1	\N	17.7	8399	3	2022-10-19 17:16:14.65663	2022-10-19 17:16:14.65663	\N
7525	Varios	1	\N	16779.6	8400	3	2022-10-19 17:16:14.669406	2022-10-19 17:16:14.669406	\N
7526	Nota de credito	1	\N	-16779.6	8401	3	2022-10-19 17:16:14.682559	2022-10-19 17:16:14.682559	\N
7527	varios	1	\N	3398	8402	3	2022-10-21 14:15:18.698652	2022-10-21 14:15:18.698652	\N
7528	varios	1	\N	2213	8403	3	2022-10-21 14:15:18.715145	2022-10-21 14:15:18.715145	\N
7529	varios	1	\N	982.62	8404	3	2022-10-21 14:15:18.729781	2022-10-21 14:15:18.729781	\N
7530	M Y D ACCESORIOS DE TURBO	1	\N	600	8405	3	2022-10-21 14:15:18.744485	2022-10-21 14:15:18.744485	\N
7532	BOCAMAZAS DELANTERO TOYOTA HILUX	1	\N	1999.98	8407	3	2022-11-17 16:07:14.267972	2022-11-17 16:07:14.267972	\N
7533	BOCAMAZAS 2KD ZSG	1	\N	13305.9986	8408	3	2022-11-17 16:07:14.307722	2022-11-17 16:07:14.307722	\N
7534	BOCAMAZAS TOYOTA 1GD	1	\N	960	8409	3	2022-11-17 16:07:14.335433	2022-11-17 16:07:14.335433	\N
7544	\N	1	\N	1900	8419	3	2022-11-18 13:19:52.68185	2022-11-18 13:19:52.68185	\N
7545	\N	1	\N	1960	8420	3	2022-11-18 13:19:52.696765	2022-11-18 13:19:52.696765	\N
7546	\N	1	\N	1960	8421	3	2022-11-18 13:19:52.711005	2022-11-18 13:19:52.711005	\N
7547	\N	1	\N	1960	8422	3	2022-11-18 13:19:52.725139	2022-11-18 13:19:52.725139	\N
7548	\N	1	\N	1060	8423	3	2022-11-18 13:19:52.742555	2022-11-18 13:19:52.742555	\N
7549	\N	1	\N	1060	8424	3	2022-11-18 13:19:52.757348	2022-11-18 13:19:52.757348	\N
7550	Varios	1	\N	16779.6	8425	3	2022-11-18 13:19:52.772252	2022-11-18 13:19:52.772252	\N
7552	\N	1	\N	199.1	8427	3	2022-11-18 18:16:18.224788	2022-11-18 18:16:18.224788	\N
7553	\N	1	\N	49.63	8428	3	2022-11-18 18:16:18.281708	2022-11-18 18:16:18.281708	\N
7554	\N	1	\N	41.1	8429	3	2022-11-18 18:16:18.309596	2022-11-18 18:16:18.309596	\N
7555	\N	1	\N	784.8	8430	3	2022-11-18 18:16:18.328538	2022-11-18 18:16:18.328538	\N
7556	\N	1	\N	72	8431	3	2022-11-18 18:16:18.354152	2022-11-18 18:16:18.354152	\N
7557	\N	1	\N	129.8	8432	3	2022-11-18 18:16:18.374204	2022-11-18 18:16:18.374204	\N
7558	\N	1	\N	587	8433	3	2022-11-18 18:16:18.394102	2022-11-18 18:16:18.394102	\N
7559	\N	1	\N	128.05	8434	3	2022-11-18 18:16:18.41448	2022-11-18 18:16:18.41448	\N
7560	RENOVACION DE CONTRATO	1	\N	3540	8435	3	2022-11-18 18:16:18.434458	2022-11-18 18:16:18.434458	\N
7561	RENOVACION DE CONTRATO	1	\N	3540	8436	3	2022-11-18 18:16:18.453076	2022-11-18 18:16:18.453076	\N
7562	RENOVACION DE CONTRATO	1	\N	3540	8437	3	2022-11-18 18:16:18.473314	2022-11-18 18:16:18.473314	\N
7563	RENOVACION DE CONTRATO	1	\N	3540	8438	3	2022-11-18 18:16:18.49213	2022-11-18 18:16:18.49213	\N
7564	ANULACION DE LA OPERACIÓN	1	\N	-3540	8439	3	2022-11-18 18:16:18.510709	2022-11-18 18:16:18.510709	\N
7565	ANULACION DE LA OPERACIÓN	1	\N	-3540	8440	3	2022-11-18 18:16:18.528922	2022-11-18 18:16:18.528922	\N
7566	ANULACION DE LA OPERACIÓN	1	\N	-3540	8441	3	2022-11-18 18:16:18.546941	2022-11-18 18:16:18.546941	\N
7573	varios	1	\N	825.55	8448	3	2022-11-21 15:41:09.62255	2022-11-21 15:41:09.62255	\N
7574	varios	1	\N	230.4	8449	3	2022-11-21 15:41:09.645341	2022-11-21 15:41:09.645341	\N
7575	varios	1	\N	112	8450	3	2022-11-21 15:41:09.670373	2022-11-21 15:41:09.670373	\N
7576	VARIOS	1	\N	12.98	8451	3	2022-11-21 15:41:09.69365	2022-11-21 15:41:09.69365	\N
7577	VARIOS	1	\N	635	8452	3	2022-11-21 15:41:09.712663	2022-11-21 15:41:09.712663	\N
7578	VARIOS	1	\N	385	8453	3	2022-11-21 15:41:09.73157	2022-11-21 15:41:09.73157	\N
7579	ANULACION DE LA OPERACIÓN	1	\N	-12.98	8454	3	2022-11-21 15:41:09.751939	2022-11-21 15:41:09.751939	\N
7580	AMORTIGUADORES	1	\N	2000	8455	3	2022-12-19 04:47:11.848149	2022-12-19 04:47:11.848149	\N
7581	RADIADOR	1	\N	1999.99	8456	3	2022-12-19 04:47:11.968654	2022-12-19 04:47:11.968654	\N
7582	BOCAMAZAS 2KD ZSG	1	\N	13759.6909	8457	3	2022-12-19 04:47:12.015622	2022-12-19 04:47:12.015622	\N
7583	BOCAMAZAS HILUX ZSG	1	\N	1950	8458	3	2022-12-19 04:47:12.057699	2022-12-19 04:47:12.057699	\N
7584	PALIERES	1	\N	1925	8459	3	2022-12-19 04:47:12.129063	2022-12-19 04:47:12.129063	\N
7585	1 KIT DE EMBRAGUE	1	\N	1400	8460	3	2022-12-19 04:47:12.19301	2022-12-19 04:47:12.19301	\N
7586	BOCAMAZAS HILUX ZSG	1	\N	1365	8461	3	2022-12-19 04:47:12.259496	2022-12-19 04:47:12.259496	\N
7587	BOCAMAZAS HILUX ZSG	1	\N	1625	8462	3	2022-12-19 04:47:12.298863	2022-12-19 04:47:12.298863	\N
7588	BOCAMAZAS HILUX ZSG	1	\N	1750	8463	3	2022-12-19 04:47:12.348876	2022-12-19 04:47:12.348876	\N
7589	RODAJAS HILUX ZSG	1	\N	1300	8464	3	2022-12-19 04:47:12.391493	2022-12-19 04:47:12.391493	\N
7590	BOCAMAZAS HILUX ZSG	1	\N	1820	8465	3	2022-12-19 04:47:12.434343	2022-12-19 04:47:12.434343	\N
7591	BOCAMAZAS HILUX ZSG	1	\N	1755	8466	3	2022-12-19 04:47:12.476464	2022-12-19 04:47:12.476464	\N
7592	BOMBAS DE ACEITE	1	\N	1250	8467	3	2022-12-19 04:47:12.524698	2022-12-19 04:47:12.524698	\N
7593	BOCAMAZAS HILUX ZSG	1	\N	1495	8468	3	2022-12-19 04:47:12.570856	2022-12-19 04:47:12.570856	\N
7597	TABLET	1	\N	295.95	8472	3	2022-12-20 19:20:30.228237	2022-12-20 19:20:30.228237	\N
7598	varios	1	\N	106.97	8473	3	2022-12-20 19:20:30.270401	2022-12-20 19:20:30.270401	\N
7599	varios	1	\N	116.4	8474	3	2022-12-20 19:20:30.310204	2022-12-20 19:20:30.310204	\N
7600	VARIOS	1	\N	775	8475	3	2022-12-20 19:20:30.352263	2022-12-20 19:20:30.352263	\N
7603	\N	1	\N	2767.0056	8478	3	2022-12-21 02:08:08.708395	2022-12-21 02:08:08.708395	\N
7604	Varios	1	\N	35.4	8479	3	2022-12-21 02:08:08.749586	2022-12-21 02:08:08.749586	\N
7605	Varios	1	\N	29.5	8480	3	2022-12-21 02:08:08.7904	2022-12-21 02:08:08.7904	\N
7606	Varios	1	\N	17.7	8481	3	2022-12-21 02:08:08.831265	2022-12-21 02:08:08.831265	\N
7607	Varios	1	\N	4661	8482	3	2022-12-21 02:08:08.878256	2022-12-21 02:08:08.878256	\N
7608	Varios	1	\N	1770	8483	3	2022-12-21 02:08:08.918732	2022-12-21 02:08:08.918732	\N
7609	RENOVACION DE CONTRATO	1	\N	3540	8484	3	2022-12-21 03:35:39.193201	2022-12-21 03:35:39.193201	\N
7610	RENOVACION DE CONTRATO	1	\N	3540	8485	3	2022-12-21 03:35:39.240264	2022-12-21 03:35:39.240264	\N
7611	ANULACION DE LA OPERACIÓN	1	\N	-3540	8486	3	2022-12-21 03:35:39.283432	2022-12-21 03:35:39.283432	\N
7620	RODAJES	1	\N	1700	8495	3	2023-01-19 01:15:36.819652	2023-01-19 01:15:36.819652	\N
7621	CREMALLERAS	1	\N	1800	8496	3	2023-01-19 01:15:36.859921	2023-01-19 01:15:36.859921	\N
7622	PALIER TO-014	1	\N	4158.72	8497	3	2023-01-19 01:15:36.904038	2023-01-19 01:15:36.904038	\N
7623	BOCAMAZA 54KWH01 	1	\N	1869.99	8498	3	2023-01-19 01:15:36.936726	2023-01-19 01:15:36.936726	\N
7624	\N	1	\N	1900	8499	3	2023-01-21 00:27:55.50177	2023-01-21 00:27:55.50177	\N
7625	Varios	1	\N	23.6	8500	3	2023-01-21 00:27:55.578818	2023-01-21 00:27:55.578818	\N
7626	Varios	1	\N	17.7	8501	3	2023-01-21 00:27:55.614677	2023-01-21 00:27:55.614677	\N
7627	Varios	1	\N	13983	8502	3	2023-01-21 00:27:55.653736	2023-01-21 00:27:55.653736	\N
7628	varios	1	\N	672.06	8503	3	2023-01-23 17:23:51.835397	2023-01-23 17:23:51.835397	\N
7629	varios	1	\N	130.98	8504	3	2023-01-23 17:23:51.896398	2023-01-23 17:23:51.896398	\N
7630	VARIOS	1	\N	775	8505	3	2023-01-23 17:23:51.951852	2023-01-23 17:23:51.951852	\N
7631	VARIOS	1	\N	210	8506	3	2023-01-23 17:23:51.985529	2023-01-23 17:23:51.985529	\N
7632	VARIOS	1	\N	350	8507	3	2023-01-23 17:23:52.019204	2023-01-23 17:23:52.019204	\N
7633	VARIOS	1	\N	350	8508	3	2023-01-23 17:23:52.071233	2023-01-23 17:23:52.071233	\N
7634	VARIOS	1	\N	350	8509	3	2023-01-23 17:23:52.105115	2023-01-23 17:23:52.105115	\N
7635	Nota de credito	1	\N	-350	8510	3	2023-01-23 17:23:52.137314	2023-01-23 17:23:52.137314	\N
7642	TERMINALES	1	\N	1850	8517	3	2023-02-17 16:33:24.302763	2023-02-17 16:33:24.302763	\N
7643	BOCAMAZA 54KWH01 	1	\N	1869.99	8518	3	2023-02-17 16:33:24.337912	2023-02-17 16:33:24.337912	\N
7644	Terminales	1	\N	1720	8519	3	2023-02-17 16:33:24.372675	2023-02-17 16:33:24.372675	\N
7645	\N	1	\N	1937.8	8520	3	2023-02-21 02:22:15.341029	2023-02-21 02:22:15.341029	\N
7646	\N	1	\N	1862.2	8521	3	2023-02-21 02:22:15.418024	2023-02-21 02:22:15.418024	\N
7647	\N	1	\N	1900	8522	3	2023-02-21 02:22:15.45471	2023-02-21 02:22:15.45471	\N
7648	Varios	1	\N	11.8	8523	3	2023-02-21 02:22:15.514287	2023-02-21 02:22:15.514287	\N
7649	Varios	1	\N	9322	8524	3	2023-02-21 02:22:15.584223	2023-02-21 02:22:15.584223	\N
7650	VARIOS	1	\N	600	8525	3	2023-02-21 16:53:12.407274	2023-02-21 16:53:12.407274	\N
\.


--
-- Data for Name: formulas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.formulas (id, product_id, material, cantidad, user_id, created_at, updated_at, descripcion, indicacion, orden) FROM stdin;
1	3	4	0.25	3	2017-01-28 04:16:07.275728	2017-01-28 04:16:07.275728	\N	\N	\N
2	7	\N	\N	3	2017-03-01 01:15:23.047417	2017-03-01 01:15:23.047417	prensa	\N	1
3	7	\N	\N	3	2017-03-01 01:15:36.854806	2017-03-01 01:15:36.854806	inyeccion	\N	2
4	7	\N	\N	3	2017-03-01 01:16:08.153411	2017-03-01 01:16:08.153411	proceso	\N	3
5	7	\N	\N	3	2017-03-01 01:16:19.660464	2017-03-01 01:16:19.660464	otro	\N	4
6	8	\N	\N	3	2017-03-01 01:17:17.261993	2017-03-01 01:17:17.261993	sol	\N	1
7	8	\N	\N	3	2017-03-01 01:17:27.742612	2017-03-01 01:17:27.742612	dolar	\N	2
8	9	\N	\N	3	2017-03-01 01:19:05.96379	2017-03-01 01:19:05.96379	unidad	\N	1
9	9	\N	\N	3	2017-03-01 01:19:20.073609	2017-03-01 01:19:20.073609	Kilogramo	\N	2
10	9	\N	\N	3	2017-03-01 01:19:31.845121	2017-03-01 01:19:31.845121	galon	\N	3
14	11	\N	\N	3	2017-03-01 01:23:32.992146	2017-03-01 01:23:32.992146	compras	\N	1
15	11	\N	\N	3	2017-03-01 01:23:43.791843	2017-03-01 01:23:43.791843	ventas	\N	2
16	11	\N	\N	3	2017-03-01 01:23:54.525527	2017-03-01 01:23:54.525527	pedido	\N	3
17	11	\N	\N	3	2017-03-01 01:24:09.252247	2017-03-01 01:24:09.252247	orden de compra	\N	4
18	11	\N	\N	3	2017-03-01 01:24:25.487714	2017-03-01 01:24:25.487714	produccion	\N	5
19	11	\N	\N	3	2017-03-01 01:24:42.161487	2017-03-01 01:24:42.161487	inventario	\N	6
20	12	\N	\N	3	2017-03-01 01:27:25.618478	2017-03-01 01:27:25.618478	mercaderia	\N	1
21	12	\N	\N	3	2017-03-01 01:27:36.981389	2017-03-01 01:27:36.981389	activo fijo	\N	2
22	12	\N	\N	3	2017-03-01 01:27:54.388993	2017-03-01 01:27:54.388993	otros activos	\N	3
23	12	\N	\N	3	2017-03-01 01:28:10.000902	2017-03-01 01:28:10.000902	gastos	\N	4
24	12	\N	\N	3	2017-03-01 01:28:32.416004	2017-03-01 01:28:32.416004	otros gastos	\N	5
25	13	\N	\N	3	2017-03-01 01:29:51.440644	2017-03-01 01:30:49.212201	proveedor	\N	2
26	13	\N	\N	3	2017-03-01 01:30:02.539794	2017-03-01 01:30:58.237232	cliente	\N	1
30	10	\N	\N	1	2019-09-15 18:54:44.356102	2019-09-15 18:54:44.356102	CORPORACION DAHLEE SAC	20603468148	6
35	10	\N	\N	1	2020-02-18 17:28:53.313406	2020-02-18 20:49:07.853139	PEREZ VEGA CARMEN	10092676124	7
11	10	\N	\N	1	2017-03-01 01:20:34.624391	2020-02-19 13:47:45.487452	Altamirano	10257000767	1
12	10	\N	\N	1	2017-03-01 01:20:51.888624	2020-02-19 13:48:00.93653	Confecciones	10402501486	2
13	10	\N	\N	1	2017-03-01 01:21:06.225297	2020-02-19 13:49:26.288483	Industrias	10759787272	3
28	10	\N	\N	1	2018-01-16 02:08:45.963417	2020-02-19 13:49:43.181969	Micaela	10759787272	4
29	10	\N	\N	1	2019-09-15 18:53:39.200305	2020-02-19 13:49:58.681087	AAXPROYECTOS EIRL	20605130985	5
36	10	\N	\N	1	2020-02-19 15:14:47.059851	2020-06-17 22:11:37.998477	CETYS	20555234954	8
37	17	\N	1	1	2020-06-23 17:05:32.523068	2020-06-23 17:05:32.523068	Periodo	peri	1
38	17	\N	2	1	2020-06-23 17:05:58.834261	2020-06-23 17:05:58.834261	Correlativo	correl	2
39	17	\N	3	1	2020-06-23 17:06:54.025222	2020-06-23 17:06:54.025222	Correlativo M o A	correlm	3
40	17	\N	4	1	2020-06-23 17:07:33.200636	2020-06-23 17:07:33.200636	Fecha de emisión	fechae.	4
41	17	\N	0	1	2020-06-23 17:08:05.359443	2020-06-23 17:08:05.359443	Fecha de Vencimiento		5
42	17	\N	5	1	2020-06-23 17:08:40.656762	2020-06-23 17:08:40.656762	Tipo de Comprobante	tipc	6
43	17	\N	6	1	2020-06-23 17:09:14.89579	2020-06-23 17:09:14.89579	Serie	nserie	7
44	17	\N	0	1	2020-06-23 17:09:45.324802	2020-06-23 17:09:45.324802	Año de emisión de la DUA o DSI		8
45	17	\N	7	1	2020-06-23 17:10:26.01819	2020-06-23 17:10:26.01819	Número del comprobante	ncomp	9
46	17	\N	0	1	2020-06-23 17:10:59.140354	2020-06-23 17:10:59.140354	anotacion		10
47	17	\N	8	1	2020-06-23 17:11:31.499952	2020-06-23 17:11:31.499952	Tipo de Documento de Identidad del proveedor	tipod	11
48	17	\N	9	1	2020-06-23 17:12:13.456489	2020-06-23 17:12:13.456489	Número de RUC	nruc	12
49	17	\N	10	1	2020-06-23 17:12:44.454835	2020-06-23 17:12:44.454835	razón social	drazon	13
50	17	\N	11	1	2020-06-23 17:13:28.496958	2020-06-23 17:13:28.496958	Base imponible	imponi	14
51	17	\N	12	1	2020-06-23 17:14:16.754223	2020-06-23 17:14:16.754223	Monto del Impuesto General	mimpuesto	15
52	17	\N	0	1	2020-06-23 17:14:43.284424	2020-06-23 17:14:43.284424	Base imponible de las adquisiciones gravadas que dan derecho a crédito fiscal		16
53	17	\N	0	1	2020-06-23 17:15:10.678869	2020-06-23 17:15:10.678869	Monto del Impuesto General a las Ventas y/o Impuesto de Promoción Municipal		17
54	17	\N	0	1	2020-06-23 17:15:35.216982	2020-06-23 17:15:35.216982	Base imponible de las adquisiciones gravadas que no dan derecho a crédito fiscal		18
55	17	\N	0	1	2020-06-23 17:16:09.405331	2020-06-23 17:16:09.405331	Monto del Impuesto General a las Ventas		19
56	17	\N	0	1	2020-06-23 17:16:29.240788	2020-06-23 17:16:29.240788	Valor de las adquisiciones no gravadas		20
64	17	\N	20	1	2020-06-23 17:19:55.427342	2021-01-12 19:15:52.997084	Número de serie del comprobante de pago que se modifica (4).	nserie2	29
65	17	\N	0	1	2020-06-23 17:20:17.190757	2021-01-12 19:12:52.586491	Código de la dependencia Aduanera		30
62	17	\N	16	1	2020-06-23 17:19:03.910182	2021-01-12 19:16:13.565938	Fecha de emisión	efecha	27
112	10	\N	\N	1	2020-10-19 19:26:32.175284	2020-10-19 19:26:56.285821	NEZARA S.A.C	20606421177	9
73	17	\N	0	1	2020-06-23 17:24:01.80664	2021-01-12 19:11:43.211253	Error tipo 2: inconsistencia por proveedores no habidos		38
72	17	\N	0	1	2020-06-23 17:23:44.504879	2021-01-12 19:11:50.496393	Error tipo 1: inconsistencia en el tipo de cambio		37
71	17	\N	0	1	2020-06-23 17:23:21.39163	2021-01-12 19:11:59.07712	Identificación del Contrato		36
70	17	\N	17	1	2020-06-23 17:22:57.671832	2021-01-12 19:12:06.453203	Clasificación de los bienes y servicios adquiridos (Tabla 30)	clasifica	35
69	17	\N	0	1	2020-06-23 17:22:29.018783	2021-01-12 19:12:14.908468	Marca del comprobante de pago sujeto a retención		34
68	17	\N	0	1	2020-06-23 17:21:10.18874	2021-01-12 19:12:24.777989	Número de la Constancia de Depósito de Detracción (6)		33
67	17	\N	0	1	2020-06-23 17:20:55.662716	2021-01-12 19:12:33.213246	Fecha de emisión de la Constancia de Depósito de Detracción (6)		32
66	17	\N	21	1	2020-06-23 17:20:36.064195	2021-01-12 19:12:42.894446	Número del comprobante de pago que se modifica (4).	ncomp2	31
61	17	\N	15	1	2020-06-23 17:18:29.757584	2021-01-12 19:16:21.949483	Tipo de cambio (3)	cambio	26
60	17	\N	14	1	2020-06-23 17:17:57.467349	2021-01-12 19:16:31.893769	Código de la Moneda (Tabla 4)		25
59	17	\N	13	1	2020-06-23 17:17:34.85598	2021-01-12 19:16:46.505615	Importe total de las adquisiciones registradas según comprobante de pago.	mimpote	24
115	16	\N	\N	1	2021-01-16 17:54:59.148333	2021-01-16 17:54:59.148333	Ticket	12	5
58	17	\N	25	1	2020-06-23 17:17:05.349773	2021-01-12 19:19:16.562205	Otros conceptos, tributos y cargos que no formen parte de la base imponible.	voconceptos	23
31	16	\N	\N	1	2019-10-20 16:20:53.832736	2021-01-16 17:55:09.699073	Factura	01	1
32	16	\N	\N	1	2019-10-20 16:21:08.25904	2021-01-16 17:55:37.468308	Boleta	03	2
33	16	\N	\N	1	2019-10-20 16:21:29.090893	2021-01-16 17:55:58.960909	Nota de débito 	08	3
34	16	\N	\N	1	2019-10-20 16:22:01.302115	2021-01-16 17:56:07.977667	Nota de crédito	07	4
57	17	\N	23	1	2020-06-23 17:16:47.240205	2021-01-12 19:19:52.857069	Monto del Impuesto Selectivo al Consumo en los casos en que el sujeto pueda utilizarlo como deducción.	visc	21
78	18	\N	1	1	2020-06-23 17:26:47.665885	2020-06-23 17:26:47.665885	Periodo	peri	1
79	18	\N	2	1	2020-06-23 17:27:22.143222	2020-06-23 17:27:22.143222	Correlativo	correl	2
80	18	\N	3	1	2020-06-23 17:27:44.005881	2020-06-23 17:27:44.005881	Correlativo M o A	correlm	3
81	18	\N	4	1	2020-06-23 17:28:09.691236	2020-06-23 17:28:09.691236	Fecha de emisión	fechae	4
82	18	\N	0	1	2020-06-23 17:28:33.506734	2020-06-23 17:28:33.506734	Fecha de Vencimiento		5
83	18	\N	5	1	2020-06-23 17:29:03.936902	2020-06-23 17:29:03.936902	Tipo de Comprobante	tipc	6
84	18	\N	6	1	2020-06-23 17:29:29.285197	2020-06-23 17:29:29.285197	Serie	nserie	7
85	18	\N	7	1	2020-06-23 17:29:59.895431	2020-06-23 17:29:59.895431	Número del comprobante	ncomp	8
86	18	\N	0	1	2020-06-23 17:30:20.813713	2020-06-23 17:30:20.813713	Para efectos del registro de tickets		9
87	18	\N	8	1	2020-06-23 17:30:54.415416	2020-06-23 17:30:54.415416	Tipo de Documento de Identidad del cliente	tipod	10
88	18	\N	9	1	2020-06-23 17:31:21.645921	2020-06-23 17:31:21.645921	Número de RUC	nruc	11
89	18	\N	10	1	2020-06-23 17:32:31.354991	2020-06-23 17:32:31.354991	razón social	drazon	12
90	18	\N	0	1	2020-06-23 17:32:54.848188	2020-06-23 17:32:54.848188	Valor facturado de la exportación		13
91	18	\N	11	1	2020-06-23 17:33:29.180725	2020-06-23 17:33:29.180725	Base imponible	imponi	14
92	18	\N	0	1	2020-06-23 17:33:54.627204	2020-06-23 17:33:54.627204	Descuento de la Base Imponible		15
93	18	\N	12	1	2020-06-23 17:34:34.64981	2020-06-23 17:34:34.64981	Impuesto General a las Ventas	mimpuesto	16
94	18	\N	0	1	2020-06-23 17:34:57.319606	2020-06-23 17:34:57.319606	Descuento del Impuesto General a las Venta		17
95	18	\N	0	1	2020-06-23 17:35:20.056517	2020-06-23 17:35:20.056517	Importe total de la operación exonerada		18
96	18	\N	0	1	2020-06-23 17:35:43.851942	2020-06-23 17:35:43.851942	Importe total de la operación inafecta		19
98	18	\N	0	1	2020-06-23 17:36:21.38192	2020-06-23 17:36:21.38192	Base imponible de la operación gravada		21
99	18	\N	0	1	2020-06-23 17:36:46.006069	2020-06-23 17:36:46.006069	Impuesto a las Ventas del Arroz Pilado		22
111	18	\N	19	1	2020-06-23 17:43:04.322092	2021-01-12 19:03:33.561234	Estado que identifica la oportunidad de la anotación\t	estadop	35
110	18	\N	18	1	2020-06-23 17:42:36.334201	2021-01-12 19:03:46.656056	Indicador de Comprobantes de pago	inidicc	34
109	18	\N	0	1	2020-06-23 17:41:58.012712	2021-01-12 19:03:57.464767	Error tipo 1: inconsistencia en el tipo de cambio		33
108	18	\N	0	1	2020-06-23 17:41:38.693859	2021-01-12 19:04:05.485373	Identificación del Contrato o del proyecto		32
107	18	\N	21	1	2020-06-23 17:41:17.908368	2021-01-12 19:04:13.897474	Número del comprobante de pago que se modifica	ncomp2	31
106	18	\N	20	1	2020-06-23 17:40:43.574409	2021-01-12 19:04:27.253116	Número del comprobante de pago que se modifica	nserie2	30
105	18	\N	22	1	2020-06-23 17:40:09.868703	2021-01-12 19:04:49.43658	Tipo del comprobante de pago que se modifica (6)	nnum	29
104	18	\N	16	1	2020-06-23 17:39:12.286955	2021-01-12 19:05:23.304726	Fecha de emisión	efecha	28
103	18	\N	15	1	2020-06-23 17:38:40.287737	2021-01-12 19:05:34.177917	Tipo de cambio (3)	cambio	27
102	18	\N	14	1	2020-06-23 17:38:06.086115	2021-01-12 19:05:45.431347	Código de la Moneda (Tabla 4)	moneda	26
101	18	\N	13	1	2020-06-23 17:37:38.297181	2021-01-12 19:05:57.865397	Importe total del comprobante de pago	mimpote	25
113	18	\N	24	1	2021-01-12 19:07:46.617597	2021-01-12 19:07:46.617597	Impuesto al Consumo de las Bolsas de Plástico.	vbolsas	23
100	18	\N	25	1	2020-06-23 17:37:08.534464	2021-01-12 19:08:34.153485	Otros conceptos, tributos y cargos	voconceptos	24
97	18	\N	23	1	2020-06-23 17:36:01.207211	2021-01-12 19:09:26.138787	Impuesto Selectivo al Consumo, de ser el caso.	visc	20
77	17	\N	19	1	2020-06-23 17:25:27.237996	2021-01-12 19:11:12.367594	Estado que identifica la oportunidad	estadop	42
76	17	\N	18	1	2020-06-23 17:24:59.562237	2021-01-12 19:11:20.039652	Indicador de Comprobantes de pago cancelados con medios de pago	inidicc	41
75	17	\N	0	1	2020-06-23 17:24:39.773527	2021-01-12 19:11:28.421651	Error tipo 4: inconsistencia por DNIs		40
74	17	\N	0	1	2020-06-23 17:24:21.926685	2021-01-12 19:11:35.878038	Error tipo 3: inconsistencia por proveedore		39
63	17	\N	22	1	2020-06-23 17:19:40.702715	2021-01-12 19:16:04.095539	Tipo de comprobante de pago que se modifica (4).	nnum	28
114	17	\N	24	1	2021-01-12 19:18:37.996402	2021-01-12 19:18:37.996402	Impuesto al Consumo de las Bolsas de Plástico.	vbolsas	22
27	14	\N	0.035	1	2017-03-06 00:39:30.234636	2021-05-27 18:03:23.949263	zamac	5,6,7,8	1
116	10	\N	\N	1	2021-08-18 17:40:51.175884	2021-08-18 17:40:51.175884	APACHIY  EXPIM SAC	20608178857	10
117	10	\N	\N	3	2022-10-18 20:34:17.152624	2022-10-18 20:34:32.859801	VICTOR MANUEL BALAREZO DE LA FUENTE	10774138914	11
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.items (id, pfecha, serie, nfactu, client_id, subtotal, origen, mmes, moneda, tc, user_id, created_at, updated_at, empresa, sele, documento, serie2, ndocu2, ruc, razon, detalle, razon2, nuevo, monto, isc, bolsas, oconceptos) FROM stdin;
7272	2020-02-12	F001	00000204	1105	2247.46	1	2020-02-01	1	0	1	2020-04-21 22:21:24.91485	2020-04-21 22:21:58.507597	7	44	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7271	2020-02-12	F001	00000523	1107	1328.81	1	2020-02-01	1	0	1	2020-04-21 22:19:33.062141	2020-04-21 22:20:08.009858	7	45	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7273	2020-02-14	F001	00000208	1105	2033.9	1	2020-02-01	1	0	1	2020-04-21 22:22:35.865734	2020-04-21 22:23:21.172143	7	46	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7306	2020-02-04	E001	12	1087	4830.51	2	2020-02-01	1	0	1	2020-04-21 23:14:54.908241	2020-04-21 23:18:45.986085	7	12	4	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7281	2020-02-22	F056	00038973	1082	60.15	1	2020-02-01	1	0	1	2020-04-21 22:38:17.569605	2020-04-21 22:38:33.65454	7	55	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7283	2020-02-25	F018	00010453	1078	33.39	1	2020-02-01	1	0	1	2020-04-21 22:40:34.164029	2020-04-21 22:40:50.05654	7	56	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7284	2020-02-28	FK10	00008940	1072	40.24	1	2020-02-01	1	0	1	2020-04-21 22:41:45.211673	2020-04-21 22:41:56.603232	7	57	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7288	2020-02-29	E001	12	1050	2500	1	2020-02-01	1	0	1	2020-04-21 22:51:50.443358	2020-04-21 22:52:10.441564	7	58	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7255	2020-02-03	F001	00008087	1104	33.91	1	2020-02-01	1	0	1	2020-04-20 16:17:07.14351	2020-04-20 16:19:08.822316	7	28	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7256	2020-02-05	F003	00002966	1081	53.39	1	2020-02-01	1	0	1	2020-04-20 16:18:21.915273	2020-04-20 16:18:42.579337	7	29	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7257	2020-02-05	F024	00006935	1091	39.66	1	2020-02-01	1	0	1	2020-04-20 16:24:35.170683	2020-04-20 16:24:54.902006	7	30	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7260	2020-02-06	F003	00002972	1081	47.46	1	2020-02-01	1	0	1	2020-04-20 16:41:04.490213	2020-04-20 16:41:40.937447	7	31	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7258	2020-02-06	F003	00002973	1081	444.92	1	2020-02-01	1	0	1	2020-04-20 16:28:12.440952	2020-04-20 16:29:32.663812	7	32	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7259	2020-02-06	F319	0018373	172	61.95	1	2020-02-01	1	0	1	2020-04-20 16:30:34.872655	2020-04-20 16:30:54.125116	7	33	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7261	2020-02-08	F002	00000066	1105	42.37	1	2020-02-01	1	0	1	2020-04-20 16:49:12.5113	2020-04-20 16:50:05.222182	7	35	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7264	2020-02-08	F002	00000067	1105	21.19	1	2020-02-01	1	0	1	2020-04-20 17:10:06.311028	2020-04-20 17:10:18.910853	7	36	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7263	2020-02-08	F002	00001498	1081	63.56	1	2020-02-01	1	0	1	2020-04-20 17:09:03.226209	2020-04-20 17:09:17.127511	7	38	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7262	2020-02-08	F011	00005322	1106	38.81	1	2020-02-01	1	0	1	2020-04-20 17:07:45.934208	2020-04-20 17:08:07.25441	7	39	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7275	2020-02-14	F003	00003017	1081	13097.46	1	2020-02-01	1	0	1	2020-04-21 22:24:44.02284	2020-04-21 22:25:44.258299	7	47	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7274	2020-02-14	F89Z	00000021	196	50.59	1	2020-02-01	1	0	1	2020-04-21 22:23:57.119388	2020-04-21 22:24:08.398626	7	48	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7276	2020-02-16	F004	00137164	1109	131.26	1	2020-02-01	1	0	1	2020-04-21 22:28:00.389148	2020-04-21 22:28:14.921535	7	49	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7290	2020-02-04	E001	33	1087	4830.51	2	2020-02-01	1	0	1	2020-04-21 22:56:04.225143	2020-04-21 22:56:23.793547	7	13	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7291	2020-02-04	E001	34	1087	4067.8	2	2020-02-01	1	0	1	2020-04-21 22:56:57.294204	2020-04-21 22:57:07.416848	7	14	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7307	2020-02-10	E001	13	1087	7119	2	2020-02-01	1	0	1	2020-04-21 23:19:42.11062	2020-04-21 23:19:53.641388	7	15	4	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7292	2020-02-10	E001	35	1087	44.49	2	2020-02-01	1	0	1	2020-04-21 22:58:17.900051	2020-04-21 22:58:29.07399	7	16	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7293	2020-02-10	E001	36	1087	100.42	2	2020-02-01	1	0	1	2020-04-21 22:58:50.202382	2020-04-21 22:59:14.541269	7	17	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7294	2020-02-11	E001	37	1087	5	2	2020-02-01	1	0	1	2020-04-21 23:00:12.199899	2020-04-21 23:00:37.364876	7	18	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7295	2020-02-11	E001	38	1087	10	2	2020-02-01	1	0	1	2020-04-21 23:01:04.833263	2020-04-21 23:01:18.963905	7	19	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7296	2020-02-11	E001	39	1087	10	2	2020-02-01	1	0	1	2020-04-21 23:01:57.421123	2020-04-21 23:02:06.854609	7	20	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7297	2020-02-11	E001	40	1087	12050.85	2	2020-02-01	1	0	1	2020-04-21 23:02:27.876072	2020-04-21 23:02:45.772619	7	21	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7298	2020-02-11	E001	41	1087	9033.9	2	2020-02-01	1	0	1	2020-04-21 23:03:17.64035	2020-04-21 23:03:45.686938	7	22	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7277	2020-02-17	F061	00039239	1082	3630.13	1	2020-02-01	1	0	1	2020-04-21 22:30:27.944729	2020-04-21 22:30:52.238046	7	50	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7278	2020-02-18	F003	00003028	1081	8393.22	1	2020-02-01	1	0	1	2020-04-21 22:32:30.763824	2020-04-21 22:32:50.55556	7	51	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7279	2020-02-22	E001	954	1110	11.02	1	2020-02-01	1	0	1	2020-04-21 22:35:28.715663	2020-04-21 22:36:13.576169	7	52	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7280	2020-02-22	F015	00085613	1082	13.92	1	2020-02-01	1	0	1	2020-04-21 22:37:18.571609	2020-04-21 22:37:37.471933	7	53	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7282	2020-02-22	F054	00039839	1082	24.66	1	2020-02-01	1	0	1	2020-04-21 22:39:07.800116	2020-04-21 22:39:20.976692	7	54	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7286	2020-02-29	F001	00013625	1081	25.42	1	2020-02-01	1	0	1	2020-04-21 22:44:05.884988	2020-04-21 22:44:18.714837	7	60	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7285	2020-02-29	F001	4854	1108	108.47457	1	2020-02-01	1	0	1	2020-04-21 22:42:48.774256	2020-04-21 22:43:27.992882	7	61	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7287	2020-02-29	F058	00055549	1082	85.27	1	2020-02-01	1	0	1	2020-04-21 22:44:53.636696	2020-04-21 22:45:09.963488	7	62	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7299	2020-02-11	E001	42	1087	286.44	2	2020-02-01	1	0	1	2020-04-21 23:04:12.377962	2020-04-21 23:04:26.351145	7	23	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7300	2020-02-11	E001	43	1087	974.58	2	2020-02-01	1	0	1	2020-04-21 23:04:48.072388	2020-04-21 23:05:00.102528	7	24	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7301	2020-02-17	E001	44	1087	5372.88	2	2020-02-01	1	0	1	2020-04-21 23:05:34.843583	2020-04-21 23:05:50.184656	7	25	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7302	2020-02-17	E001	45	1087	5466.1	2	2020-02-01	1	0	1	2020-04-21 23:06:37.282008	2020-04-21 23:06:59.122508	7	26	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7303	2020-02-25	E001	46	1087	5	2	2020-02-01	1	0	1	2020-04-21 23:07:26.158547	2020-04-21 23:07:34.978914	7	27	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7304	2020-02-25	E001	47	1087	10932.2	2	2020-02-01	1	0	1	2020-04-21 23:07:58.787606	2020-04-21 23:08:10.289671	7	28	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7305	2020-02-25	E001	48	1087	16483.05	2	2020-02-01	1	0	1	2020-04-21 23:08:55.954907	2020-04-21 23:09:26.092576	7	29	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7308	2020-02-28	E001	14	1087	5	2	2020-02-01	1	0	1	2020-04-21 23:21:37.103657	2020-04-21 23:21:46.064038	7	30	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7309	2020-02-28	E001	15	1087	10	2	2020-02-01	1	0	1	2020-04-21 23:22:27.427203	2020-04-21 23:22:50.914942	7	31	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7310	2020-02-28	E001	16	1087	10	2	2020-02-01	1	0	1	2020-04-21 23:23:37.702352	2020-04-21 23:23:52.209942	7	32	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7266	2020-02-08	F001	4563	1108	68.64	1	2020-02-01	1	0	1	2020-04-20 18:43:23.846739	2020-04-20 18:44:51.099533	7	34	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7265	2020-02-08	F002	00000112	1107	10.17	1	2020-02-01	1	0	1	2020-04-20 18:20:24.064416	2020-04-20 18:22:07.12751	7	37	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7267	2020-02-09	F001	00002342	1079	116.1	1	2020-02-01	1	0	1	2020-04-20 18:52:43.521588	2020-04-20 18:52:59.176383	7	40	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7269	2020-02-10	F001	00013312	1081	84.75	1	2020-02-01	1	0	1	2020-04-20 18:56:55.764576	2020-04-20 18:57:13.076802	7	41	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7268	2020-02-10	F059	00032787	1082	33.14	1	2020-02-01	1	0	1	2020-04-20 18:55:59.156322	2020-04-20 18:56:13.828078	7	42	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7270	2020-02-11	F003	00003003	1081	3320.34	1	2020-02-01	1	0	1	2020-04-20 18:59:43.709619	2020-04-21 22:15:06.631563	7	43	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6904	2018-01-02	1	000956	1	0	2	2018-01-01	1	0	1	2018-04-15 13:43:54.483062	2018-04-15 13:43:54.483062	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7110	2019-08-26	FS52	00010384	1045	7.87	1	2019-08-01	1	0	1	2019-09-15 19:27:12.094813	2019-09-15 19:28:09.581474	5	55	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7252	2020-02-01	0001	0001973	1103	56	1	2020-02-01	1	0	1	2020-04-06 18:45:52.60864	2020-04-21 23:52:36.315651	7	25	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6622	2017-11-20	1	17868	215	4474.94	1	2017-11-01	1	3.246	3	2018-01-16 22:43:34.635068	2018-01-16 22:46:52.855507	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7253	2020-02-01	F002	00001490	1081	24.58	1	2020-02-01	1	0	1	2020-04-06 18:51:59.676298	2020-04-06 18:52:34.398073	7	26	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7254	2020-02-01	F015	00084265	1082	25.7	1	2020-02-01	1	0	1	2020-04-06 18:55:55.635954	2020-04-06 18:56:22.488695	7	27	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7115	2019-08-18	0003	000453	1046	406.78	1	2019-08-01	1	0	1	2019-09-15 19:37:54.421769	2019-09-15 19:38:35.946194	5	51	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6905	2018-01-03	1	957	336	551.65	2	2018-01-01	2	3.245	1	2018-04-15 13:45:42.108938	2018-04-15 14:41:49.180117	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6906	2018-01-03	1	958	336	14927	2	2018-01-01	2	3.245	1	2018-04-15 14:43:09.754333	2018-04-15 14:43:54.410698	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6907	2018-01-03	1	959	1	0	2	2018-01-01	1	0	1	2018-04-15 14:45:00.682573	2018-04-15 14:45:00.682573	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6908	2018-01-03	1	960	336	19703.64	2	2018-01-01	2	3.245	1	2018-04-15 14:45:51.14511	2018-04-15 14:46:36.057787	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6909	2018-01-05	1	961	914	211.86	2	2018-01-01	1	0	1	2018-04-15 14:47:39.431767	2018-04-15 14:48:09.281425	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7122	2019-08-15	E001	1	1051	8474.58	2	2019-08-01	1	0	1	2019-09-15 19:51:14.067529	2019-09-15 19:51:33.945569	5	52	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6910	2018-01-05	1	962	156	152.54	2	2018-01-01	1	0	1	2018-04-15 14:49:00.590909	2018-04-15 14:51:13.472927	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7114	2019-08-18	F513	0152377	172	24.75	1	2019-08-01	1	0	1	2019-09-15 19:36:22.042139	2019-09-15 19:36:54.018081	5	52	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6911	2018-01-06	1	963	921	188.56	2	2018-01-01	1	0	1	2018-04-15 14:51:45.855378	2018-04-15 14:53:07.410881	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6912	2018-01-08	1	966	1009	322.03	2	2018-01-01	1	0	1	2018-04-15 14:54:48.931549	2018-04-15 14:55:11.584656	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6913	0201-01-08	1	965	1	0	2	2018-01-01	1	0	1	2018-04-15 14:56:07.769253	2018-04-15 14:56:07.769253	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6914	2018-01-08	1	966	950	64.83	2	2018-01-01	1	0	1	2018-04-15 14:57:13.234967	2018-04-15 14:57:34.796509	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6915	2018-01-08	1	967	1	0	2	2018-01-01	1	0	1	2018-04-15 14:58:29.768075	2018-04-15 14:58:29.768075	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6916	2018-01-09	1	968	336	2045.75	2	2018-01-01	1	0	1	2018-04-15 14:59:21.464833	2018-04-15 14:59:47.319771	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6917	2018-01-10	1	969	491	357.63	2	2018-01-01	1	0	1	2018-04-15 15:01:35.798442	2018-04-15 15:02:05.508265	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6918	2018-01-10	1	970	1	0	2	2018-01-01	1	0	1	2018-04-15 15:02:41.4124	2018-04-15 15:02:41.4124	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6919	2018-01-10	1	971	914	169.49	2	2018-01-01	1	0	1	2018-04-15 15:03:34.123024	2018-04-15 15:04:15.441631	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6920	2018-01-10	1	972	980	338.98	2	2018-01-01	1	0	1	2018-04-15 15:05:22.981884	2018-04-15 15:05:48.728754	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6921	2018-01-10	1	973	336	1806.42	2	2018-01-01	2	3.22	1	2018-04-15 15:07:00.113839	2018-04-15 15:07:43.881768	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6922	2018-01-10	1	974	1	0	2	2018-01-01	1	0	1	2018-04-15 15:16:21.48047	2018-04-15 15:16:21.48047	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6923	2018-01-11	1	975	216	108.05	2	2018-01-01	1	0	1	2018-04-15 15:17:24.004	2018-04-15 15:17:50.937342	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6924	2018-01-11	1	976	816	779.66	2	2018-01-01	1	0	1	2018-04-15 15:19:16.935874	2018-04-15 15:19:40.537627	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6925	2018-01-11	1	977	1	0	2	2018-01-01	1	0	1	2018-04-15 15:20:23.116113	2018-04-15 15:20:23.116113	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6926	2018-01-11	1	978	468	338.98	2	2018-01-01	1	0	1	2018-04-15 15:21:15.074928	2018-04-15 15:21:45.923494	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6927	2018-01-11	1	979	336	3807.65	2	2018-01-01	2	3.22	1	2018-04-15 15:22:53.944226	2018-04-15 15:23:30.263591	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6928	2018-01-11	1	980	921	127.12	2	2018-01-01	1	0	1	2018-04-15 15:25:05.295522	2018-04-15 15:25:43.105153	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6929	2018-01-11	1	981	395	394.07	2	2018-01-01	1	0	1	2018-04-15 15:28:58.477453	2018-04-15 15:29:26.549998	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6930	2018-01-13	1	982	808	64.41	2	2018-01-01	1	0	1	2018-04-15 15:30:43.625032	2018-04-15 15:31:12.433098	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6931	2018-01-13	1	983	284	161.02	2	2018-01-01	1	0	1	2018-04-15 15:32:07.560664	2018-04-15 15:32:40.904012	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6932	2018-01-13	1	984	980	169.49	2	2018-01-01	1	0	1	2018-04-15 15:33:27.04573	2018-04-15 15:33:55.485125	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6933	2018-01-13	1	985	798	127.97	2	2018-01-01	1	0	1	2018-04-15 15:35:05.443086	2018-04-15 15:35:27.190805	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6934	2018-01-13	1	986	336	7519.74	2	2018-01-01	1	3.217	1	2018-04-15 15:36:29.758493	2018-04-15 15:36:57.602954	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7113	2019-08-18	F558	0108485	172	56.02	1	2019-08-01	1	0	1	2019-09-15 19:34:49.974537	2019-09-15 19:35:19.845255	5	53	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7123	2019-08-19	0005	004538	1047	43.73	1	2019-08-01	1	0	1	2019-09-18 00:42:54.962095	2019-09-18 00:44:02.952614	5	54	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7112	2019-08-28	FS45	00020415	1045	9.84	1	2019-08-01	1	0	1	2019-09-15 19:33:37.330009	2019-09-15 19:33:54.22682	5	56	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7118	2019-08-29	E001	3	1050	576.27	1	2019-08-01	1	0	1	2019-09-15 19:45:08.06757	2019-09-15 19:45:26.582371	5	57	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7119	2019-08-29	E001	4	1050	584.75	1	2019-08-01	1	0	1	2019-09-15 19:46:02.491063	2019-09-15 19:46:20.316812	5	58	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7111	2019-08-29	FS28	00015314	1045	6.69	1	2019-08-01	1	0	1	2019-09-15 19:31:00.476775	2019-09-15 19:32:41.63681	5	59	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6935	2018-01-15	1	987	395	169.49	2	2018-01-01	1	0	1	2018-04-15 15:38:10.678391	2018-04-15 15:38:58.289177	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6612	2017-12-12	1	29710	208	114.41	1	2017-12-01	1	0	3	2018-01-16 17:26:50.838368	2018-01-16 17:27:01.575282	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6609	2017-12-05	1	29694	208	228.81	1	2017-12-01	1	0	3	2018-01-16 17:20:03.506678	2018-01-16 17:20:16.736447	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6610	2017-12-07	1	29700	208	228.81	1	2017-12-01	1	0	3	2018-01-16 17:20:52.470702	2018-01-16 17:21:04.189645	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6613	2017-12-15	1	15643	984	38.14	1	2017-12-01	1	0	3	2018-01-16 17:27:31.446483	2018-01-16 17:27:41.870703	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6611	2017-12-11	1	17960	215	13848.6	1	2017-12-01	1	3.238	3	2018-01-16 17:21:54.641758	2018-01-16 17:25:35.70795	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6616	2017-12-18	1	29726	208	114.41	1	2017-12-01	1	0	3	2018-01-16 17:30:49.674915	2018-01-16 17:30:59.150709	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6608	2017-12-01	1	015550	984	38.14	1	2017-12-01	1	0	3	2018-01-16 17:18:53.950398	2018-01-16 17:26:16.080409	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6614	2017-12-14	1	29718	208	228.81	1	2017-12-01	1	0	3	2018-01-16 17:28:14.75286	2018-01-16 17:28:27.241722	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6615	2017-12-16	1	29722	208	114.41	1	2017-12-01	1	0	3	2018-01-16 17:29:08.347423	2018-01-16 17:29:18.803202	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6617	2017-12-23	1	15685	984	38.14	1	2017-12-01	1	0	3	2018-01-16 17:31:41.002262	2018-01-16 17:31:52.446506	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6618	2017-11-16	1	43352	229	416.95	1	2017-11-01	1	0	3	2018-01-16 17:55:01.886668	2018-01-16 18:07:06.751807	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6619	2017-11-16	1	29622	208	228.81	1	2017-11-01	1	0	3	2018-01-16 18:10:18.687079	2018-01-16 18:10:31.311858	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6620	2017-11-17	1	7394	78	40.68	1	2017-11-01	1	0	3	2018-01-16 18:11:01.884107	2018-01-16 18:11:20.021926	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6936	2018-01-15	1	988	1	0	2	2018-01-01	1	0	1	2018-04-15 15:39:43.675068	2018-04-15 15:39:43.675068	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6621	2017-11-17	1	10802	767	805.0847	1	2017-11-01	1	0	3	2018-01-16 18:11:59.304505	2018-01-16 18:13:22.177388	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6937	2018-01-15	1	989	38	338.98	2	2018-01-01	1	0	1	2018-04-15 15:43:20.970464	2018-04-15 15:43:53.957342	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6938	2018-01-15	1	990	980	2466.1	2	2018-01-01	1	0	1	2018-04-15 15:44:44.203071	2018-04-15 15:45:08.043531	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7120	2019-08-30	E001	5	1050	584.75	1	2019-08-01	1	0	1	2019-09-15 19:46:52.587912	2019-09-15 19:47:16.951549	5	60	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7117	2019-08-31	E001	164	1049	690	1	2019-08-01	1	0	1	2019-09-15 19:43:39.016288	2019-09-15 19:44:00.048941	5	61	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6627	2017-11-27	1	29653	208	228.81	1	2017-11-01	1	0	3	2018-01-16 23:03:02.159777	2018-01-16 23:03:51.961971	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6939	2018-01-16	1	991	1026	200.85	2	2018-01-01	1	0	1	2018-04-15 15:46:01.974527	2018-04-15 15:46:24.190289	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6628	2017-11-28	1	29660	208	114.41	1	2017-11-01	1	0	3	2018-01-16 23:06:18.673848	2018-01-16 23:06:32.657387	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6623	2017-11-21	1	15486	984	38.1355	1	2017-11-01	1	0	3	2018-01-16 22:48:31.296932	2018-01-16 22:58:15.141234	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6624	2017-11-21	1	29632	208	114.41	1	2017-11-01	1	0	3	2018-01-16 22:59:01.811193	2018-01-16 22:59:12.381253	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6625	2017-11-21	1	29635	208	114.41	1	2017-11-01	1	0	3	2018-01-16 22:59:35.680938	2018-01-16 22:59:50.084916	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6940	2018-01-16	1	992	1	0	2	2018-01-01	1	0	1	2018-04-15 15:47:16.624636	2018-04-15 15:47:16.624636	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6941	2018-01-16	1	993	1027	96.61	2	2018-01-01	1	0	1	2018-04-15 15:48:17.803837	2018-04-15 15:48:43.410461	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6626	2017-11-25	1	3755	985	44.9153	1	2017-11-01	1	0	3	2018-01-16 23:01:08.149065	2018-01-16 23:02:25.458613	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6942	2018-01-16	1	994	491	241.53	2	2018-01-01	1	0	1	2018-04-15 15:49:31.596224	2018-04-15 15:50:13.237203	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6629	2017-11-30	1	29673	208	114.41	1	2017-11-01	1	0	3	2018-01-16 23:06:54.782709	2018-01-16 23:07:04.16662	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6630	2017-11-20	1	1	913	1864.41	2	2017-11-01	1	0	3	2018-01-16 23:08:16.272387	2018-01-16 23:08:35.354789	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6943	2018-01-16	1	995	3	593.22	2	2018-01-01	1	0	1	2018-04-15 15:51:38.932395	2018-04-15 15:52:00.875865	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6631	2017-11-22	1	2	913	305.0847	2	2017-11-01	1	0	3	2018-01-16 23:08:56.942998	2018-01-16 23:09:40.560834	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6944	2018-01-16	1	996	476	144.92	2	2018-01-01	1	0	1	2018-04-15 15:52:44.373089	2018-04-15 15:53:01.945574	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6945	2018-01-16	1	997	491	121.61	2	2018-01-01	1	0	1	2018-04-15 15:54:11.07453	2018-04-15 15:54:29.486099	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6946	2018-01-16	1	998	988	57.63	2	2018-01-01	1	0	1	2018-04-15 15:55:27.240207	2018-04-15 15:56:13.643063	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6947	2018-01-16	1	999	321	259.32	2	2018-01-01	1	0	1	2018-04-15 15:56:49.047032	2018-04-15 15:57:23.558399	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7116	2019-08-31	E001	37	1048	3185	1	2019-08-01	1	0	1	2019-09-15 19:40:10.678866	2019-09-15 19:40:27.764888	5	62	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7121	2019-08-31	E001	6	1050	588.98	1	2019-08-01	1	0	1	2019-09-15 19:48:18.680266	2019-09-15 19:48:37.097058	5	63	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6948	2018-01-17	1	1000	427	402.54	2	2018-01-01	1	0	1	2018-04-15 15:58:01.803614	2018-04-15 15:58:22.679629	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6949	2018-01-17	1	1001	1	0	2	2018-01-01	1	0	1	2018-04-15 15:58:58.061737	2018-04-15 15:58:58.061737	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6950	2018-01-17	1	1002	1	0	2	2018-01-01	1	0	1	2018-04-15 15:59:26.663396	2018-04-15 15:59:26.663396	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6951	2018-01-17	1	1003	491	366.1	2	2018-01-01	1	0	1	2018-04-15 16:00:05.121813	2018-04-15 16:00:29.327168	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6952	2018-01-17	1	1004	336	1804.74	2	2018-01-01	2	0	1	2018-04-15 16:01:17.541699	2018-04-15 16:01:48.494644	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6953	2018-01-17	1	1005	493	338.98	2	2018-01-01	1	0	1	2018-04-15 16:02:51.998277	2018-04-15 16:03:17.970472	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6954	2018-01-18	1	1006	778	220.34	2	2018-01-01	1	0	1	2018-04-15 16:04:10.193572	2018-04-15 16:04:37.374252	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6955	2018-01-18	1	1007	437	305.08	2	2018-01-01	1	0	1	2018-04-15 16:05:46.32262	2018-04-15 16:06:07.311212	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6956	2018-01-18	1	1008	950	101.69	2	2018-01-01	1	0	1	2018-04-15 16:07:58.40992	2018-04-15 16:08:14.837126	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6957	2018-01-19	1	1009	468	677.97	2	2018-01-01	1	0	1	2018-04-15 16:09:14.773681	2018-04-15 16:09:34.026285	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7128	2019-09-30	E001	3	1053	14445.3	2	2019-09-01	1	0	1	2019-10-17 22:37:00.475384	2019-10-17 22:37:36.313203	5	3	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7127	2019-09-17	E001	2	1051	21186.45	2	2019-09-01	1	0	1	2019-10-17 22:26:45.665498	2019-10-17 22:28:30.460835	5	2	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6958	2018-01-20	1	1010	1006	576.27	2	2018-01-01	1	0	1	2018-04-15 16:10:37.735565	2018-04-15 16:11:46.610668	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6959	2018-01-22	1	1011	498	830.51	2	2018-01-01	1	0	1	2018-04-15 16:13:00.440141	2018-04-15 16:13:30.113262	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6960	2018-01-22	1	1012	1	0	2	2018-01-01	1	0	1	2018-04-15 16:14:01.038736	2018-04-15 16:14:01.038736	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6961	2018-01-22	1	1013	1	0	2	2018-01-01	1	0	1	2018-04-15 16:14:24.921129	2018-04-15 16:14:24.921129	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6962	2018-01-22	1	1014	768	3084.75	2	2018-01-01	1	0	1	2018-04-15 16:15:29.43596	2018-04-15 16:16:12.011087	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6963	2018-01-22	1	1015	1000	2135.59	2	2018-01-01	1	0	1	2018-04-15 16:16:51.546623	2018-04-15 16:17:17.358325	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6964	2018-01-23	1	1016	262	610.17	2	2018-01-01	1	0	1	2018-04-15 16:18:33.574082	2018-04-15 16:18:51.270602	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6965	2018-01-23	1	1017	216	666.1	2	2018-01-01	1	0	1	2018-04-15 16:19:36.796297	2018-04-15 16:19:51.629118	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6966	2018-01-23	1	1018	491	400	2	2018-01-01	1	0	1	2018-04-15 16:20:28.827054	2018-04-15 16:20:44.833051	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7133	2019-09-03	FT51	76030	196	5.5	1	2019-09-01	1	0	1	2019-10-17 23:02:02.547212	2019-10-17 23:02:37.006391	5	15	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6967	2018-01-23	1	1019	1	0	2	2018-01-01	1	0	1	2018-04-15 16:21:35.272775	2018-04-15 16:21:35.272775	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6968	2018-01-24	1	1020	216	483.05	2	2018-01-01	1	0	1	2018-04-15 16:22:22.896085	2018-04-15 16:22:44.318239	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6969	2018-01-24	1	1021	123	118.64	2	2018-01-01	1	0	1	2018-04-15 16:23:28.481362	2018-04-15 16:23:49.396367	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6970	2018-01-24	1	1022	493	311.44	2	2018-01-01	1	0	1	2018-04-15 16:24:41.403754	2018-04-15 16:24:58.529564	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6971	2018-01-24	1	1023	451	529.66	2	2018-01-01	1	0	1	2018-04-15 16:26:18.249729	2018-04-15 16:26:40.504053	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6972	2018-01-24	1	1024	336	3620.75	2	2018-01-01	1	0	1	2018-04-15 16:28:02.366416	2018-04-15 16:28:26.011458	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6974	2018-01-25	1	1026	768	3881.36	2	2018-01-01	1	0	1	2018-04-15 16:30:34.864312	2018-04-15 16:30:58.676252	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7144	2019-09-02	E001	165	1049	584.7	1	2019-09-01	1	0	1	2019-10-17 23:46:50.44184	2019-10-17 23:47:18.244371	5	14	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6999	2018-01-25	1	120	1033	5027.16	1	2018-01-01	2	3.214	1	2018-04-15 17:32:51.03559	2018-04-15 17:33:16.276964	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6973	2018-01-24	1	1025	336	7274.94	2	2018-01-01	2	3.219	1	2018-04-15 16:29:04.64276	2018-04-15 16:31:45.106258	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6975	2018-01-25	1	1027	980	423.73	2	2018-01-01	1	0	1	2018-04-15 16:32:44.686307	2018-04-15 16:33:07.148817	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6976	2018-01-25	1	1028	451	127.12	2	2018-01-01	1	0	1	2018-04-15 16:34:11.634481	2018-04-15 16:34:29.308863	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6977	2018-01-26	1	1029	1017	211.86	2	2018-01-01	1	0	1	2018-04-15 16:35:02.387542	2018-04-15 16:35:16.29448	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6978	2018-01-27	1	1030	894	302.54	2	2018-01-01	1	0	1	2018-04-15 16:36:21.402504	2018-04-15 16:36:36.886055	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6979	2018-01-27	1	1031	38	215.65	2	2018-01-01	1	0	1	2018-04-15 16:37:21.117832	2018-04-15 16:37:44.475829	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6980	2018-01-27	1	1032	980	677.97	2	2018-01-01	1	0	1	2018-04-15 16:38:19.031306	2018-04-15 16:38:38.418283	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6981	2018-01-29	1	1033	1028	423.73	2	2018-01-01	1	0	1	2018-04-15 16:39:44.982951	2018-04-15 16:40:13.304086	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7129	2019-09-04	FT51	76033	196	5.85	1	2019-09-01	1	0	1	2019-10-17 22:49:28.382421	2019-10-17 22:49:51.872146	5	16	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6982	2018-01-30	1	1034	1029	472.88	2	2018-01-01	1	0	1	2018-04-15 16:43:09.270461	2018-04-15 16:43:52.182424	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6983	2018-01-30	1	1035	1017	432.2	2	2018-01-01	1	0	1	2018-04-15 16:44:48.365822	2018-04-15 16:44:59.662406	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6984	2018-01-30	1	1036	978	213.56	2	2018-01-01	1	0	1	2018-04-15 16:46:07.479145	2018-04-15 16:46:30.119306	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6985	2018-01-31	1	1037	468	847.46	2	2018-01-01	1	0	1	2018-04-15 16:47:12.203371	2018-04-15 16:47:33.47994	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6986	2018-01-31	1	1038	76	177.97	2	2018-01-01	1	0	1	2018-04-15 16:48:24.529654	2018-04-15 16:48:48.163176	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7000	2018-01-25	1	196	1031	2483.96	1	2018-01-01	2	3.214	1	2018-04-15 17:34:11.034462	2018-04-15 17:34:31.234312	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6987	2018-01-31	1	1039	336	4825.5	2	2018-01-01	2	3.217	1	2018-04-15 16:49:25.140426	2018-04-15 16:50:42.08756	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6988	2018-01-31	1	1040	336	3217	2	2018-01-01	2	3.217	1	2018-04-15 16:51:32.18006	2018-04-15 16:51:50.851064	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7139	2019-09-05	003	004835	1059	29.66	1	2019-09-01	1	0	1	2019-10-17 23:30:48.580859	2019-10-17 23:31:02.250446	5	17	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6990	2018-01-12	1	2810	362	3349.58	1	2018-01-01	1	0	1	2018-04-15 17:20:32.189542	2018-04-15 17:20:50.823636	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6991	2018-01-16	2	16648	1032	157.31	1	2018-01-01	1	0	1	2018-04-15 17:21:43.306762	2018-04-15 17:22:04.815417	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6992	2018-01-16	1	29346	1035	223.73	1	2018-01-01	1	0	1	2018-04-15 17:23:05.821615	2018-04-15 17:23:20.687551	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6993	2018-01-17	1	1930	843	127.12	1	2018-01-01	1	0	1	2018-04-15 17:24:57.511161	2018-04-15 17:25:21.296735	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6994	2018-01-20	1	109506	1030	135.59	1	2018-01-01	1	0	1	2018-04-15 17:26:15.697797	2018-04-15 17:26:39.518035	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6995	2018-01-22	2	3086	1034	39.83	1	2018-01-01	1	0	1	2018-04-15 17:27:36.749348	2018-04-15 17:28:01.03555	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7130	2019-09-07	FP41	00010452	1054	15.55	1	2019-09-01	1	0	1	2019-10-17 22:53:08.946236	2019-10-17 22:53:52.552894	5	18	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6997	2018-01-22	4	179582	184	355.93	1	2018-01-01	1	0	1	2018-04-15 17:30:08.932293	2018-04-15 17:30:31.792659	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6998	2018-01-23	FF01	1194	165	18429.18	1	2018-01-01	2	3.216	1	2018-04-15 17:31:24.635351	2018-04-15 17:31:48.561144	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7001	2018-01-26	1	146	1036	2449.23	1	2018-01-01	2	3.21	1	2018-04-15 17:35:38.181637	2018-04-15 17:35:56.750798	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7002	2018-01-26	FF01	1222	165	18366.78	1	2018-01-01	2	3.21	1	2018-04-15 17:37:03.102621	2018-04-15 17:37:23.260778	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7003	2018-01-26	FF01	1221	165	12175.53	1	2018-01-01	2	3.21	1	2018-04-15 17:38:16.073511	2018-04-15 17:38:40.410063	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7004	2018-01-16	1	4390	744	7457.63	1	2018-01-01	1	0	1	2018-04-15 17:39:23.540486	2018-04-15 17:39:47.938372	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7005	2018-01-23	1	4396	744	5084.75	1	2018-01-01	1	0	1	2018-04-15 17:40:30.557717	2018-04-15 17:40:51.437828	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7006	2018-01-04	1	4369	744	7203.39	1	2018-01-01	1	0	1	2018-04-15 17:41:54.764734	2018-04-15 17:42:21.744971	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7131	2019-09-09	0005	005098	1047	6.36	1	2019-09-01	1	0	1	2019-10-17 22:55:21.36798	2019-10-17 22:56:08.212227	5	19	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7007	2018-01-31	1	1041	1	0	2	2018-01-01	1	0	1	2018-04-15 18:03:26.651029	2018-04-15 18:03:26.651029	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6996	2018-01-22	2	3084	1034	46.61	1	2018-01-01	1	0	1	2018-04-15 17:28:51.077769	2018-04-15 18:06:43.758587	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7138	2019-09-09	F602	00003672	1058	32.97	1	2019-09-01	1	0	1	2019-10-17 23:26:57.05841	2019-10-17 23:27:20.811789	5	20	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6989	2018-01-06	FF00	1104	165	12223.37	1	2018-01-01	2	3.215	1	2018-04-15 17:16:41.854606	2018-04-15 18:27:22.062525	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7141	2019-09-10	F565	00004409	271	15.08	1	2019-09-01	1	0	1	2019-10-17 23:36:06.937907	2019-10-17 23:36:32.773487	5	21	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7143	2019-09-17	F513	0155437	172	13.9	1	2019-09-01	1	0	1	2019-10-17 23:42:05.247516	2019-10-17 23:42:29.511648	5	22	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7136	2019-09-18	FS15	00016556	1045	9.45	1	2019-09-01	1	0	1	2019-10-17 23:20:44.894034	2019-10-17 23:21:16.963758	5	23	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7135	2019-09-20	00001	027240	1057	10.17	1	2019-09-01	1	0	1	2019-10-17 23:17:57.414009	2019-10-17 23:18:42.951887	5	24	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7142	2019-09-20	FA12	00630945	358	14.32	1	2019-09-01	1	0	1	2019-10-17 23:40:28.776216	2019-10-17 23:40:42.315867	5	25	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7132	2019-09-23	0001	000343	1055	2500	1	2019-09-01	1	0	1	2019-10-17 22:58:26.294534	2019-10-17 22:59:13.062018	5	26	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7140	2019-09-25	E001	552	1060	8100	1	2019-09-01	1	0	1	2019-10-17 23:34:03.650105	2019-10-17 23:34:27.072555	5	27	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7137	2019-09-25	FS45	00020642	1045	8.66	1	2019-09-01	1	0	1	2019-10-17 23:23:43.080062	2019-10-17 23:23:59.342428	5	28	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7145	2019-09-28	E001	7	1050	576.27	1	2019-09-01	1	0	1	2019-10-17 23:48:02.985772	2019-10-17 23:48:20.802243	5	29	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7134	2019-09-28	F788	28683	1056	21.1	1	2019-09-01	1	0	1	2019-10-17 23:08:14.967738	2019-10-17 23:08:58.091468	5	30	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7148	2019-10-30	E001	603	1060	5400	1	2019-10-01	1	0	1	2019-11-17 17:54:34.401969	2019-11-17 17:55:16.926462	5	45	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7147	2019-10-17	E001	4	1053	25423.75	2	2019-10-01	1	0	1	2019-11-17 17:51:51.533837	2019-11-17 17:52:16.424328	5	5	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6705	2018-01-05	E001	9	208	228.82	1	2018-01-01	1	0	3	2018-02-15 19:05:16.757008	2018-02-15 19:05:44.638259	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6706	2018-01-09	E001	14	208	228.82	1	2018-01-01	1	0	3	2018-02-15 19:06:52.485421	2018-02-15 19:07:08.595266	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6707	2018-01-09	E001	15	208	114.41	1	2018-01-01	1	0	3	2018-02-15 19:07:54.253748	2018-02-15 19:08:15.22825	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6708	2018-01-09	E001	37	984	38.1356	1	2018-01-01	1	0	3	2018-02-15 19:08:52.813869	2018-02-15 19:09:34.015922	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6709	2018-01-11	E001	26	208	228.82	1	2018-01-01	1	0	3	2018-02-15 19:10:21.560924	2018-02-15 19:10:38.332163	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6710	2018-01-13	E001	33	208	139.83	1	2018-01-01	1	0	3	2018-02-15 19:12:45.526206	2018-02-15 19:12:56.16306	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6711	2018-01-17	E001	43	208	228.82	1	2018-01-01	1	0	3	2018-02-15 19:13:19.125239	2018-02-15 19:13:30.463658	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6712	2018-01-17	E001	99	984	38.1356	1	2018-01-01	1	0	3	2018-02-15 19:15:12.304929	2018-02-15 19:15:46.555858	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6713	2018-01-22	E001	58	208	228.82	1	2018-01-01	1	0	3	2018-02-15 19:16:50.14281	2018-02-15 19:16:57.761358	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6714	2018-01-22	E001	57	208	114.41	1	2018-01-01	1	0	3	2018-02-15 19:17:35.609428	2018-02-15 19:17:50.284203	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6715	2018-01-23	E001	67	208	228.82	1	2018-01-01	1	0	3	2018-02-15 19:20:50.430367	2018-02-15 19:20:58.091585	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6716	2018-01-25	E001	153	984	38.1356	1	2018-01-01	1	0	3	2018-02-15 19:21:45.516166	2018-02-15 19:21:54.701307	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6717	2017-01-29	E001	178	984	38.1356	1	2018-01-01	1	0	3	2018-02-15 19:22:26.090372	2018-02-15 19:22:43.460848	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6718	2018-01-05	1	3	913	1864.41	2	2018-01-01	1	0	3	2018-02-15 23:44:23.789882	2018-02-15 23:45:32.802193	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6719	2018-01-09	1	4	913	1864.41	2	2018-01-01	1	0	3	2018-02-15 23:46:13.247551	2018-02-15 23:46:22.142445	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6720	2018-01-15	1	5	913	1864.41	2	2018-01-01	1	0	3	2018-02-15 23:46:45.847111	2018-02-15 23:46:59.123749	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6721	2018-01-23	1	6	913	1864.41	2	2018-01-01	1	0	3	2018-02-15 23:47:32.10768	2018-02-15 23:47:42.835924	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6722	2018-01-29	1	7	913	932.2	2	2018-01-01	1	0	3	2018-02-15 23:48:13.004089	2018-02-15 23:48:21.026657	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7008	2018-03-10	1	12	913	1864.41	2	2018-03-01	1	0	3	2018-04-16 04:02:34.15698	2018-04-16 04:03:04.271309	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7149	2019-10-28	E001	8	1050	589	1	2019-10-01	1	0	1	2019-11-17 18:36:49.047786	2019-11-17 18:37:26.807568	5	38	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7009	2018-03-15	1	13	913	1864.41	2	2018-03-01	1	0	3	2018-04-16 04:04:54.085101	2018-04-16 04:05:16.062043	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7010	2018-03-20	1	14	1	0	2	2018-03-01	1	0	3	2018-04-16 04:05:41.73896	2018-04-16 04:05:41.73896	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7011	2018-03-20	1	15	1037	508.4746	2	2018-03-01	1	0	3	2018-04-16 04:07:06.4174	2018-04-16 04:07:44.228704	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7012	2018-03-22	1	16	913	1920.339	2	2018-03-01	1	0	3	2018-04-16 04:08:02.894856	2018-04-16 04:08:27.244583	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7013	2018-03-12	E001	520	984	50.85	1	2018-03-01	1	0	3	2018-04-16 04:10:18.395538	2018-04-16 04:10:36.431094	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7014	2018-03-28	E001	631	984	50.85	1	2018-03-01	1	0	3	2018-04-16 04:11:06.378681	2018-04-16 04:11:22.271736	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7015	2018-03-28	F001	197	215	9718.8472	1	2018-03-01	1	3.223	3	2018-04-16 04:12:26.403001	2018-04-16 04:15:25.193094	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7150	2019-10-28	E001	9	1050	591.53	1	2019-10-01	1	0	1	2019-11-17 18:38:33.28414	2019-11-17 18:38:51.244109	5	39	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7151	2019-10-29	E001	10	1050	3450	1	2019-10-01	1	0	1	2019-11-17 18:39:28.719494	2019-11-17 18:39:47.53734	5	41	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7152	2019-10-30	E001	11	1050	3450	1	2019-10-01	1	0	1	2019-11-17 18:40:17.836863	2019-11-17 18:40:35.841659	5	44	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6816	2018-01-25	E001	76	208	228.82	1	2018-02-01	1	0	3	2018-03-15 14:47:03.305839	2018-03-15 14:47:17.581595	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6817	2018-01-30	E001	104	208	343.23	1	2018-02-01	1	0	3	2018-03-15 14:47:43.217419	2018-03-15 14:47:56.670188	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6807	2018-02-01	1	8	1013	1440.68	2	2018-02-01	1	0	3	2018-03-15 14:20:50.409582	2018-03-15 14:21:13.954958	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6808	2018-01-05	1	9	913	1864.41	2	2018-02-01	1	0	3	2018-03-15 14:21:49.165675	2018-03-15 14:22:31.702152	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6810	2018-02-22	1	11	913	1864.41	2	2018-02-01	1	0	3	2018-03-15 14:24:12.063864	2018-03-15 14:24:24.253593	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6811	2018-02-01	E001	120	208	343.23	1	2018-02-01	1	0	3	2018-03-15 14:36:25.921972	2018-03-15 14:36:50.263159	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6818	2017-12-22	1	29747	208	25.424	1	2018-02-01	1	0	3	2018-03-15 14:49:34.752502	2018-03-15 14:50:29.692334	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6812	2018-02-07	E001	256	984	38.1356	1	2018-02-01	1	0	3	2018-03-15 14:38:01.2421	2018-03-15 14:38:57.446817	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6813	2018-02-14	E001	318	984	50.85	1	2018-02-01	1	0	3	2018-03-15 14:39:41.283053	2018-03-15 14:40:00.355741	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6814	2018-02-20	E001	374	984	38.1356	1	2018-02-01	1	0	3	2018-03-15 14:40:29.208491	2018-03-15 14:41:21.008114	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6815	2018-02-22	1	3234	1014	3779.8541	1	2018-02-01	1	3.249	3	2018-03-15 14:43:18.967948	2018-03-15 14:46:00.722284	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6820	2017-12-30	1	29865	208	228.81	1	2018-02-01	1	0	3	2018-03-15 14:51:42.890292	2018-03-15 14:51:50.052203	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6819	2017-12-27	5	2191	208	114.41	1	2018-02-01	1	0	3	2018-03-15 14:51:04.075802	2018-03-15 14:52:06.365399	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
6809	2017-12-14	1	10	913	1864.41	2	2018-02-01	1	0	1	2018-03-15 14:22:59.791452	2018-03-17 01:50:45.905015	4	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7154	2019-10-05	FF05	146	1061	16	1	2019-10-01	1	0	1	2019-11-18 01:33:40.838713	2019-11-18 01:34:44.377538	5	33	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7169	2019-10-31	E001	2	1053	1733.43	2	2019-10-01	1	0	1	2019-11-18 02:24:06.088291	2019-11-18 02:24:22.638742	5	6	4	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7167	2019-10-01	E001	171	1049	584.7	1	2019-10-01	1	0	1	2019-11-18 02:19:47.827068	2019-11-18 02:20:06.347947	5	31	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7168	2019-10-01	E001	172	1049	540.59	1	2019-10-01	1	0	1	2019-11-18 02:21:11.078791	2019-11-18 02:21:30.119475	5	32	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7163	2019-10-20	FC01	75	1066	11.89	1	2019-10-01	1	0	1	2019-11-18 02:09:36.420242	2019-11-18 02:10:01.962905	5	34	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7164	2019-10-28	FT51	769298	196	10	1	2019-10-01	1	0	1	2019-11-18 02:11:22.543663	2019-11-18 02:11:42.500606	5	40	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7165	2019-10-31	0001	000086	1067	1000	1	2019-10-01	1	0	1	2019-11-18 02:15:59.818092	2019-11-18 02:16:19.269353	5	49	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7166	2019-10-31	E001	15	1068	1000	1	2019-10-01	1	0	1	2019-11-18 02:18:37.933134	2019-11-18 02:18:55.702437	5	50	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7159	2019-10-21	F001	10051	1064	121.09	1	2019-10-01	1	0	1	2019-11-18 01:50:02.305382	2019-11-18 01:50:46.69458	5	35	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7155	2019-10-22	002	6664	1062	25.42	1	2019-10-01	1	0	1	2019-11-18 01:38:46.810822	2019-11-18 01:39:00.495038	5	36	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7162	2019-10-25	FT51	76280	196	9.24	1	2019-10-01	1	0	1	2019-11-18 02:05:16.384435	2019-11-18 02:05:43.538472	5	37	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7153	2019-10-29	FS28	8478	1045	6.7	1	2019-10-01	1	0	1	2019-11-18 01:29:16.856969	2019-11-18 01:29:43.827075	5	42	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7157	2019-10-30	003	20193	1063	21.19	1	2019-10-01	1	0	1	2019-11-18 01:45:00.668485	2019-11-18 01:45:32.238549	5	43	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7161	2019-10-30	F002	1127	1065	7.2	1	2019-10-01	1	0	1	2019-11-18 02:03:11.809048	2019-11-18 02:03:27.690363	5	46	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7160	2019-10-30	F558	114426	172	10.85	1	2019-10-01	1	0	1	2019-11-18 01:59:54.613974	2019-11-18 02:00:09.342472	5	47	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7156	2019-10-30	F568	114425	172	10.17	1	2019-10-01	1	0	1	2019-11-18 01:40:31.468227	2019-11-18 01:41:00.158277	5	48	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7158	2019-10-31	FA50	1106220	174	34.39	1	2019-10-01	1	0	1	2019-11-18 01:47:04.877781	2019-11-18 01:47:33.065574	5	51	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7170	2019-11-28	E001	5	1069	200	2	2019-11-01	1	0	1	2019-12-18 00:21:39.215452	2019-12-18 00:22:00.217412	5	52	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7178	2019-11-14	0003	582	1046	332.2	1	2019-11-01	1	0	1	2019-12-18 00:53:28.053311	2019-12-18 00:53:54.532001	5	53	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7179	2019-11-14	E001	16	1068	1000	1	2019-11-01	1	0	1	2019-12-18 00:57:01.572677	2019-12-18 00:57:19.327862	5	54	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7172	2019-11-17	001	004902	1070	147.46	1	2019-11-01	1	0	1	2019-12-18 00:32:51.192329	2019-12-18 00:33:17.51946	5	55	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7171	2019-11-18	0001	000352	1055	2500	1	2019-11-01	1	0	1	2019-12-18 00:27:05.036174	2019-12-18 00:27:25.582056	5	56	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7176	2019-11-18	F581	0082970	172	66.02	1	2019-11-01	1	0	1	2019-12-18 00:46:15.582611	2019-12-18 00:46:40.546199	5	57	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7177	2019-11-19	0005	7072	1047	66.31	1	2019-11-01	1	0	1	2019-12-18 00:52:08.559872	2019-12-18 00:52:37.646797	5	58	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7175	2019-11-21	F602	4526	1058	38.76	1	2019-11-01	1	0	1	2019-12-18 00:43:33.905138	2019-12-18 00:44:46.406175	5	59	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7174	2019-11-29	F540	0184931	172	21.61	1	2019-11-01	1	0	1	2019-12-18 00:37:19.135976	2019-12-18 00:41:23.434466	5	60	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7181	2019-12-23	E001	7	1053	10000	2	2019-12-01	1	0	1	2020-01-17 01:21:55.862318	2020-01-17 01:22:11.874907	5	54	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7180	2019-12-04	E001	6	1053	15000	2	2019-12-01	1	0	1	2020-01-17 01:20:22.625372	2020-01-17 01:21:04.086926	5	53	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7173	2019-11-05	0005	006683	1047	8.64	1	2019-11-01	1	0	1	2019-12-18 00:34:38.954465	2019-12-18 00:36:02.401085	5	52	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7192	2019-11-16	E001	632	1074	22.88	1	2019-12-01	1	0	1	2020-01-17 02:56:48.525668	2020-01-17 02:57:04.931844	5	61	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7188	2019-12-04	FK52	00024420	1072	38.63	1	2019-12-01	1	0	1	2020-01-17 02:43:33.911675	2020-01-17 02:43:50.502195	5	62	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7195	2019-12-06	E001	10	1076	7000	1	2019-12-01	1	0	1	2020-01-17 03:07:03.585806	2020-01-17 03:07:27.942853	5	63	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7184	2019-12-13	001	006977	1071	23.31	1	2019-12-01	1	0	1	2020-01-17 02:36:07.861909	2020-01-17 02:36:31.078632	5	64	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7182	2019-12-13	F540	0186715	172	45.0847	1	2019-12-01	1	0	1	2020-01-17 02:27:30.292268	2020-01-17 02:29:37.429424	5	65	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7189	2019-12-14	0001	001808	1073	295.76	1	2019-12-01	1	0	1	2020-01-17 02:46:02.324994	2020-01-17 02:46:33.91366	5	66	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7194	2019-12-14	E001	216	1075	2000	1	2019-12-01	1	0	1	2020-01-17 03:03:50.527638	2020-01-17 03:04:15.784902	5	67	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7200	2019-12-16	E001	328	1077	1000	1	2019-12-01	1	0	1	2020-01-17 03:13:55.537115	2020-01-17 03:14:24.955166	5	68	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7187	2019-12-19	001	006994	1071	12.29	1	2019-12-01	1	0	1	2020-01-17 02:40:07.615504	2020-01-17 02:40:31.296503	5	69	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7186	2019-12-19	F608	05259397	189	16.94	1	2019-12-01	1	0	1	2020-01-17 02:39:12.105879	2020-01-17 02:39:42.969708	5	70	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7193	2019-12-20	E001	18	1068	845	1	2019-12-01	1	0	1	2020-01-17 03:01:29.260723	2020-01-17 03:01:51.279764	5	71	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7191	2019-12-21	F302	05121037	189	63.05	1	2019-12-01	1	0	1	2020-01-17 02:49:04.520854	2020-01-17 02:51:02.901961	5	72	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7183	2019-12-21	F302	05121038	189	63.05	1	2019-12-01	1	0	1	2020-01-17 02:32:45.242516	2020-01-17 02:33:22.020658	5	73	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7199	2019-12-26	E001	686	1060	2700	1	2019-12-01	1	0	1	2020-01-17 03:11:09.449298	2020-01-17 03:11:47.065574	5	74	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7198	2019-12-26	E001	687	1060	1300	1	2019-12-01	1	0	1	2020-01-17 03:10:21.985069	2020-01-17 03:10:40.358444	5	75	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7185	2019-12-26	FS97	00006764	1045	11.02	1	2019-12-01	1	0	1	2020-01-17 02:37:55.145122	2020-01-17 02:38:18.269776	5	76	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7190	2019-12-26	FT51	76562	196	5.85	1	2019-12-01	1	0	1	2020-01-17 02:47:56.033144	2020-01-17 02:48:18.721886	5	77	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7197	2019-12-27	E001	38	1048	1000	1	2019-12-01	1	0	1	2020-01-17 03:09:23.940358	2020-01-17 03:09:42.06299	5	78	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7196	2019-12-31	E001	218	1075	2000	1	2019-12-01	1	0	1	2020-01-17 03:08:01.636401	2020-01-17 03:08:17.859739	5	79	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7201	2020-01-02	F023	00009827	1078	20.42	1	2020-01-01	1	0	1	2020-02-19 00:23:11.515788	2020-02-19 00:23:35.173576	7	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7202	2020-01-04	F001	00002090	1079	93.22	1	2020-01-01	1	0	1	2020-02-19 00:24:05.837226	2020-02-19 00:24:29.108338	7	2	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7203	2020-01-05	F001	00002014	1080	83.05	1	2020-01-01	1	0	1	2020-02-19 00:26:22.718446	2020-02-19 00:27:00.481336	7	3	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7207	2020-01-09	F002	00001471	1081	43.22	1	2020-01-01	1	0	1	2020-02-19 00:35:03.664191	2020-02-19 00:35:17.634985	7	4	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7204	2020-01-09	F003	00002777	1081	2711.8644	1	2020-01-01	1	0	1	2020-02-19 00:27:29.527026	2020-02-19 00:29:41.688468	7	5	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7205	2020-01-09	F003	00088205	1082	1060.0788	1	2020-01-01	1	0	1	2020-02-19 00:30:21.885713	2020-02-19 00:30:51.59169	7	6	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7206	2020-01-09	F013	00085443	1082	30.15	1	2020-01-01	1	0	1	2020-02-19 00:31:36.465765	2020-02-19 00:31:48.894338	7	7	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7208	2020-01-10	F003	00002793	1081	1754.23668	1	2020-01-01	1	0	1	2020-02-19 00:35:50.488467	2020-02-19 00:36:56.477632	7	8	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7209	2020-01-10	F061	00037488	1082	10879	1	2020-01-01	1	0	1	2020-02-19 00:37:38.451159	2020-02-19 00:38:33.897835	7	9	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7235	2020-01-24	E001	11	1087	1652.541	2	2020-01-01	1	0	1	2020-02-19 02:11:11.125955	2020-02-19 02:12:37.829436	7	8	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7210	2020-01-13	F002	00001475	1081	35.59	1	2020-01-01	1	0	1	2020-02-19 00:40:17.065665	2020-02-19 01:05:06.935339	7	10	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7211	2020-01-14	F001	002275	1083	1398.3	1	2020-01-01	1	0	1	2020-02-19 00:42:24.785453	2020-02-19 00:43:21.395522	7	11	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7224	2020-01-17	001	008837	1088	2542.38	1	2020-01-01	1	0	1	2020-02-19 01:08:25.564343	2020-02-19 01:09:00.694731	7	13	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7222	2020-01-31	F001	2386	1086	10.59	1	2020-01-01	1	0	1	2020-02-19 00:59:02.229347	2020-02-19 00:59:21.439097	7	23	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7223	2020-01-31	F023	00010439	1078	40.68	1	2020-01-01	1	0	1	2020-02-19 00:59:50.040467	2020-02-19 01:00:03.050931	7	24	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7214	2020-01-18	F323	0011507	172	328.45	1	2020-01-01	1	0	1	2020-02-19 00:49:53.193545	2020-02-19 00:50:07.377889	7	14	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7213	2020-01-18	FS57	00015183	1045	22.43	1	2020-01-01	1	0	1	2020-02-19 00:47:12.823858	2020-02-19 00:47:53.413386	7	15	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7215	2020-01-19	F551	00019313	193	55.76	1	2020-01-01	1	0	1	2020-02-19 00:50:48.355491	2020-02-19 00:51:11.859116	7	17	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7218	2020-01-21	F001	320	1084	57.63	1	2020-01-01	1	0	1	2020-02-19 00:55:14.458099	2020-02-19 00:55:30.882071	7	19	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7219	2020-01-25	F001	00002220	1079	205.93	1	2020-01-01	1	0	1	2020-02-19 00:56:32.628322	2020-02-19 00:56:53.099329	7	20	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7220	2020-01-26	F100	00001197	1085	79.66	1	2020-01-01	1	0	1	2020-02-19 00:57:21.285765	2020-02-19 00:57:43.165426	7	21	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7221	2020-01-29	F003	00002917	1081	11452.54	1	2020-01-01	1	0	1	2020-02-19 00:58:11.442836	2020-02-19 00:58:36.721734	7	22	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7527	2020-06-20	FTV1	2063261	219	886.4406779661017	1	2020-06-01	1	0	3	2020-09-07 14:55:43.945077	2020-09-07 14:55:43.945132	7	70	1	\N	\N	20337564373	Tiendas Por Departamento Ripley S.A	Tablet Lenovo	TIENDAS POR DEPARTAMENTO RIPLEY S.A	0	1046	\N	\N	\N
7249	2019-12-12	F748	5224	1102	135.62	1	2020-01-01	1	0	1	2020-02-20 19:02:08.243214	2020-02-20 19:02:33.198628	6	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7225	2020-01-14	E001	24	1087	7119	2	2020-01-01	1	0	1	2020-02-19 01:10:18.171985	2020-02-19 01:10:38.352842	7	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7226	2020-01-14	E001	25	1087	13898.3052	2	2020-01-01	1	0	1	2020-02-19 01:11:19.032942	2020-02-19 01:12:52.472176	7	2	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7227	2020-01-14	E001	26	1087	14745.763	2	2020-01-01	1	0	1	2020-02-19 01:32:48.383884	2020-02-19 01:37:05.63571	7	3	1	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7228	2020-01-22	E001	27	1087	1652.541	2	2020-01-01	1	0	1	2020-02-19 01:41:01.217058	2020-02-19 02:10:31.541463	7	4	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7234	2020-01-24	E001	10	1087	1652.541	2	2020-01-01	1	0	1	2020-02-19 02:08:47.819806	2020-02-19 02:09:44.268935	7	7	4	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7528	2020-06-11	E001	56	1177	200	2	2020-06-01	1	0	3	2020-09-07 14:57:03.971602	2020-09-07 14:57:03.971655	7	42	1	\N	\N	20605503056	Fix Peru S.A.C	Venta	FIX PERU S.A.C	0	236	\N	\N	\N
7251	2019-12-21	FA16	2030352	1100	343.77966	1	2020-01-01	1	0	1	2020-02-20 19:04:02.026542	2020-02-20 19:04:52.081837	6	2	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7499	2020-05-06	E001	51	1162	160.00000000000003	2	2020-05-01	1	0	3	2020-08-18 13:57:57.892477	2020-08-18 13:57:57.892532	7	35	1	\N	\N	20107271971	Alonso , Hohagen y Asociados S. CIVIL DE R. L. 	Venta	ALONSO , HOHAGEN Y ASOCIADOS S. CIVIL DE R. L. 	0	188.8	\N	\N	\N
7500	2020-05-09	E001	52	1163	740.0000000000001	2	2020-05-01	1	0	3	2020-08-18 13:57:57.892477	2020-08-18 13:57:57.892532	7	38	1	\N	\N	20503866863	Oftalmedica Servicios Generales S.R.L. 	Venta	OFTALMEDICA SERVICIOS GENERALES S.R.L. 	0	873.2	\N	\N	\N
7250	2019-12-28	F763	12866	193	241.36	1	2020-01-01	1	0	1	2020-02-20 19:03:11.709731	2020-02-20 19:03:32.364261	6	3	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7229	2020-01-23	E001	28	1087	1652.541	2	2020-01-01	1	0	1	2020-02-19 01:59:00.176049	2020-02-19 01:59:38.726688	7	5	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7230	2020-01-23	E001	29	1087	4830.5085	2	2020-01-01	1	0	1	2020-02-19 02:00:13.481715	2020-02-19 02:04:56.320589	7	6	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7232	2020-01-24	E001	30	1087	1569.91395	2	2020-01-01	1	0	1	2020-02-19 02:03:48.136702	2020-02-19 02:04:09.044191	7	9	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7231	2020-01-24	E001	31	1087	3728.82	2	2020-01-01	1	0	1	2020-02-19 02:02:05.074104	2020-02-19 02:02:52.585479	7	10	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7233	2020-01-30	E001	32	1087	11186.442	2	2020-01-01	1	0	1	2020-02-19 02:05:25.944068	2020-02-19 02:05:54.637513	7	11	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7212	2020-01-15	F061	00037669	1082	2451.465	1	2020-01-01	1	0	1	2020-02-19 00:44:14.36957	2020-02-19 00:46:01.872828	7	12	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7216	2020-01-19	F551	00019312	193	171.19	1	2020-01-01	1	0	1	2020-02-19 00:51:40.500137	2020-02-19 00:52:00.332811	7	16	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7217	2020-01-20	F003	00002851	1081	6523.738	1	2020-01-01	1	0	1	2020-02-19 00:52:44.503625	2020-02-19 00:54:14.304562	7	18	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4595	2016-04-02	0002	2009	352	70.44	1	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4596	2016-04-09	0001	582	739	5308.64	1	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4597	2016-04-07	0001	166	809	3504.92	1	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4598	2016-04-01	2	2009	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4599	2016-04-04	2	2010	346	847.46	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4600	2016-04-04	2	2011	120	2440.68	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4601	2016-04-04	2	2012	463	436.44	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4602	2016-04-05	2	2013	148	86.44	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4603	2016-04-05	2	2014	16	1118.64	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4604	2016-04-01	2	2015	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4605	2016-04-05	2	2016	401	54.24	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4606	2016-04-01	2	2017	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4607	2016-04-06	2	2018	529	630.51	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4608	2016-04-07	2	2019	459	142.37	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4609	2016-04-07	2	2020	449	238.98	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4610	2016-04-01	2	2021	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4611	2016-04-08	2	2022	69	220.34	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4612	2016-04-08	2	2023	38	78.81	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4613	2016-04-09	2	2024	815	43.22	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4614	2016-04-11	2	2025	813	152.54	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4615	2016-04-11	2	2026	30	313.56	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4616	2016-04-11	2	2027	490	2093.22	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4617	2016-04-11	2	2028	812	528.81	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4618	2016-04-11	2	2029	453	1525.42	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4619	2016-04-01	2	2030	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4620	2016-04-11	2	2031	424	1525.42	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4621	2016-04-01	2	2032	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4622	2016-04-11	2	2033	420	131.36	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4623	2016-04-01	2	2034	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4624	2016-04-12	2	2035	529	311.86	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4625	2016-04-01	2	2036	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4626	2016-04-12	2	2037	487	440.68	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4627	2016-04-01	2	2038	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4628	2016-04-12	2	2039	30	508.47	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4629	2016-04-12	2	2040	401	127.12	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4630	2016-04-12	2	2041	76	46.61	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4631	2016-04-13	2	2042	30	144.07	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4632	2016-04-14	2	2043	529	80.51	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4633	2016-04-14	2	2044	325	559.32	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4634	2016-04-14	2	2045	395	410.17	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4635	2016-04-14	2	2046	656	124.58	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4636	2016-04-14	2	2047	656	361.02	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4637	2016-04-01	2	2048	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4638	2016-04-01	2	2049	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4639	2016-04-15	2	2050	816	70.34	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4640	2016-04-15	2	2051	262	1749.15	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4641	2016-04-15	2	2052	386	1525.42	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4642	2016-04-01	2	2053	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4643	2016-04-16	2	2054	778	1220.34	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4644	2016-04-15	2	2055	149	1525.42	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4645	2016-04-16	2	2056	30	1016.95	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4646	2016-04-16	2	2057	816	194.92	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4647	2016-04-01	2	2058	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4648	2016-04-18	2	2059	469	966.1	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4649	2016-04-18	2	2060	469	186.44	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4650	2016-04-01	2	2061	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4651	2016-04-18	2	2062	357	140.68	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4652	2016-04-18	2	2063	262	716.95	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4653	2016-04-01	2	2064	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4654	2016-04-19	2	2065	811	25.42	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4655	2016-04-01	2	2066	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4656	2016-04-19	2	2067	112	1144.07	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4657	2016-04-01	2	2068	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4658	2016-04-01	2	2069	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4659	2016-04-01	2	2070	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4660	2016-04-20	2	2071	433	923.73	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4661	2016-04-20	2	2072	262	335.59	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4662	2016-04-20	2	2073	96	241.53	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4663	2016-04-01	2	2074	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4664	2016-04-20	2	2075	655	974.58	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4665	2016-04-20	2	2076	427	1006.36	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4666	2016-04-22	2	2077	120	686.44	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4667	2016-04-01	2	2078	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4668	2016-04-22	2	2079	216	125.42	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4669	2016-04-22	2	2080	140	2674.58	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4670	2016-04-22	2	2081	502	1271.19	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4671	2016-04-25	2	2082	76	25.42	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4672	2016-04-25	2	2083	291	67.8	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4673	2016-04-01	2	2084	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4674	2016-04-27	2	2085	814	93.22	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4675	2016-04-27	2	2086	401	76.27	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4676	2016-04-28	2	2087	67	236.44	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4677	2016-04-28	2	2088	533	423.73	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4678	2016-04-28	2	2089	810	320.34	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4679	2016-04-29	2	2090	449	127.12	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4680	2016-04-29	2	2091	491	83.9	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4681	2016-04-01	2	2092	1	0	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4682	2016-04-29	2	2093	665	120.76	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4683	2016-04-30	2	2094	149	149.15	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4684	2016-04-30	2	2095	76	26.27	2	2016-04-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4685	2016-05-13	0020	16642	222	6101.69	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4686	2016-05-19	0002	12372	398	51.27	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4687	2016-02-04	T4000	26909	822	57.95	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4688	2016-03-29	T001	285126	203	25.42	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4689	2016-05-23	0002	211912	821	59.32	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4690	2016-05-24	FF04	8459	171	128.36	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4691	2016-05-27	0001	1351	820	195.76	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4692	2016-05-27	0002	478	819	186.44	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4693	2016-05-27	0002	19051	675	173.73	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4694	2016-05-27	0001	357	818	13.56	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4695	2016-05-27	0001	6365	817	46.61	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4696	2016-05-27	0001	6364	817	38.14	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4697	2016-05-27	0001	1352	820	46.61	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4698	2016-05-27	0002	19052	675	23.73	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4699	2016-01-14	FF03	3095	171	17.95	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4700	2016-05-25	0001	96	744	7966.1	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4701	2016-05-21	0001	748	741	3027.03	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4702	2016-05-19	0001	829	743	4261.11	1	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4703	2016-05-02	2	2096	262	4637.29	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4704	2016-05-02	2	2097	392	35.59	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4705	2016-05-02	2	2098	122	86.44	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4706	2016-05-02	2	2099	325	483.05	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4707	2016-05-02	2	2100	96	88.98	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4708	2016-05-01	2	2101	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4709	2016-05-02	2	2102	122	53.39	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4710	2016-05-03	2	2103	442	203.39	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4711	2016-05-03	2	2104	127	466.1	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4712	2016-05-04	2	2105	727	2542.37	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4713	2016-05-01	2	2106	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4714	2016-05-04	2	2107	483	279.66	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4715	2016-05-05	2	2108	488	879.66	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4716	2016-05-05	2	2109	155	406.78	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4717	2016-05-05	2	2110	401	180.51	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4718	2016-05-05	2	2111	491	266.95	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4719	2016-05-06	2	2112	401	228.81	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4720	2016-05-06	2	2113	96	501.69	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4721	2016-05-07	2	2114	216	101.69	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4722	2016-05-07	2	2115	491	118.64	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4723	2016-05-09	2	2116	149	237.29	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4724	2016-05-10	2	2117	775	149.15	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4725	2016-05-10	2	2118	655	974.58	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4726	2016-05-10	2	2119	491	23.73	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4727	2016-05-10	2	2120	31	135.59	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4728	2016-05-01	2	2121	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4729	2016-05-10	2	2122	216	94.07	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4730	2016-05-11	2	2123	442	144.92	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4731	2016-05-01	2	2124	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4732	2016-05-11	2	2125	401	40.68	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4733	2016-05-01	2	2126	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4734	2016-05-01	2	2127	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4735	2016-05-12	2	2128	653	64.41	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4736	2016-05-01	2	2129	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4737	2016-05-12	2	2130	474	3028.39	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4738	2016-05-12	2	2131	149	149.15	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4739	2016-05-14	2	2132	826	436.44	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4740	2016-05-14	2	2133	727	1694.92	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4741	2016-05-01	2	2134	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4742	2016-05-01	2	2135	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4743	2016-05-01	2	2136	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4744	2016-05-01	2	2137	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4745	2016-05-18	2	2138	469	186.44	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4746	2016-05-18	2	2139	404	50.85	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4747	2016-05-18	2	2140	286	120.76	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4748	2016-05-19	2	2141	236	402.54	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4749	2016-05-19	2	2142	488	677.97	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4750	2016-05-21	2	2143	780	1491.53	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4751	2016-05-21	2	2144	823	203.39	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4752	2016-05-23	2	2145	112	572.03	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4753	2016-05-01	2	2146	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4754	2016-05-23	2	2147	784	657.63	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4755	2016-05-23	2	2148	262	2869.49	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4756	2016-05-01	2	2149	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4757	2016-05-24	2	2150	325	611.02	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4758	2016-05-24	2	2151	449	108.05	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4759	2016-05-24	2	2152	461	322.03	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4760	2016-05-01	2	2153	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4761	2016-05-25	2	2154	149	213.56	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4762	2016-05-26	2	2155	488	1275.42	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4763	2016-05-26	2	2156	488	439.83	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4764	2016-05-26	2	2157	139	1864.41	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4765	2016-05-26	2	2158	770	1581.36	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4766	2016-05-01	2	2159	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4767	2016-05-26	2	2160	824	102.97	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4768	2016-05-26	2	2161	112	114.41	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4769	2016-05-26	2	2162	1	114.41	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4770	2016-05-26	2	2163	262	1232.2	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4771	2016-05-01	2	2164	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4772	2016-05-26	2	2165	457	9.75	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4773	2016-05-01	2	2166	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4774	2016-05-27	2	2167	486	1398.31	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4775	2016-05-01	2	2168	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4776	2016-05-01	2	2169	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4777	2016-05-27	2	2170	395	533.9	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4778	2016-05-27	2	2171	30	1254.24	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4779	2016-05-27	2	2172	325	266.95	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4780	2016-05-01	2	2173	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4781	2016-05-28	2	2174	7	555.93	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4782	2016-05-30	2	2175	156	45.76	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4783	2016-05-30	2	2176	825	2542.37	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4784	2016-05-30	2	2177	38	101.69	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4785	2016-05-30	2	2178	491	271.19	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4786	2016-05-31	2	2179	631	208.47	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4787	2016-05-31	2	2180	34	161.02	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4788	2016-05-31	2	2181	797	839.83	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4789	2016-05-01	2	2182	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4790	2016-05-31	2	2183	262	2032.2	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4791	2016-05-31	2	2184	797	839.83	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4792	2016-05-01	2	2185	1	0	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4793	2016-05-31	2	2186	112	1144.07	2	2016-05-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4794	2016-06-05	T002	3319	719	110.59	1	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4795	2016-06-07	FF01	2072	168	1244.03	1	2016-06-01	1	3.321	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4796	2016-06-17	0001	6524	363	155.17	1	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4797	2016-06-27	0001	17859	252	1226.92	1	2016-06-01	1	3.316	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4798	2016-06-30	0001	2738	714	228.81	1	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4799	2016-06-20	0001	1866	745	4406.78	1	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4800	2016-06-30	0001	1350	746	9279.66	1	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4801	2016-06-14	0001	702	827	5508.47	1	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4802	2016-06-28	0001	247	744	3389.83	1	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4803	2016-06-30	0001	250	744	3771.19	1	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4804	2016-06-22	0001	232	744	7457.63	1	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4805	2016-06-24	0001	239	744	6864.41	1	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4806	2016-06-11	0002	2223	461	94.92	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4807	2016-06-14	0002	2236	325	515.25	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4808	2016-06-07	0002	2211	155	545.76	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4809	2016-06-08	0002	2212	357	193.22	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4810	2016-06-08	0002	2213	262	2457.63	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4811	2016-06-08	0002	2214	461	94.92	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4812	2016-06-08	0002	2215	122	50.85	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4813	2016-06-08	0002	2216	76	110.17	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4814	2016-06-08	0002	2217	469	186.44	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4815	2016-06-09	0002	2218	829	26.69	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4816	2016-06-09	0002	2219	631	162.71	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4817	2016-06-09	0002	2220	829	130.51	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4818	2016-06-06	0002	2209	838	46.61	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4819	2016-06-10	0002	2222	665	106.36	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4820	2016-06-01	0002	2208	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4821	2016-06-11	0002	2224	38	162.71	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4822	2016-06-11	0002	2225	392	440.68	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4823	2016-06-13	0002	2226	523	499.15	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4824	2016-06-13	0002	2227	483	169.49	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4825	2016-06-13	0002	2228	120	177.97	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4826	2016-06-13	0002	2229	656	127.12	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4827	2016-06-01	0002	2230	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4828	2016-06-13	0002	2231	392	27.97	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4829	2016-06-13	0002	2232	385	78.81	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4830	2016-06-13	0002	2233	31	135.59	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4831	2016-06-14	0002	2234	101	144.92	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4832	2016-06-01	0002	2187	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4833	2016-06-09	0002	2221	656	127.12	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4834	2016-06-30	0002	2296	656	135.59	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4835	2016-06-01	0002	2188	198	110.17	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4836	2016-06-01	0002	2189	286	610.17	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4837	2016-06-01	0002	2190	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4838	2016-06-02	0002	2191	803	2593.22	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4839	2016-06-02	0002	2192	829	63.98	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4840	2016-06-02	0002	2193	800	1025.42	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4841	2016-06-03	0002	2194	631	104.66	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4842	2016-06-01	0002	2195	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4843	2016-06-03	0002	2196	386	288.14	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4844	2016-06-03	0002	2197	832	254.24	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4845	2016-06-28	0002	2293	771	175.42	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4846	2016-06-06	0002	2210	490	220.34	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4847	2016-06-30	0002	2295	463	177.12	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4848	2016-06-14	0002	2237	99	110.17	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4849	2016-06-01	0002	2297	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4850	2016-06-30	0002	2298	16	1845.76	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4851	2016-06-04	0002	2198	433	635.59	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4852	2016-06-04	0002	2199	784	432.2	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4853	2016-06-04	0002	2200	834	415.25	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4854	2016-06-04	0002	2201	273	54.24	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4855	2016-06-04	0002	2202	420	217.37	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4856	2016-06-06	0002	2203	831	44.07	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4857	2016-06-06	0002	2204	831	8.05	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4858	2016-06-06	0002	2205	830	21.61	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4859	2016-06-06	0002	2206	69	696.61	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4860	2016-06-01	0002	2207	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4861	2016-06-30	0002	2294	502	194.92	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4862	2016-06-24	0002	2279	155	122.03	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4863	2016-06-14	0002	2235	491	59.32	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4864	2016-06-01	0002	2267	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4865	2016-06-22	0002	2268	474	2656.78	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4866	2016-06-22	0002	2269	34	193.22	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4867	2016-06-22	0002	2270	30	360.17	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4868	2016-06-22	0002	2271	439	559.32	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4869	2016-06-23	0002	2272	139	1915.25	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4870	2016-06-23	0002	2273	836	111.86	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4871	2016-06-23	0002	2274	491	120.76	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4872	2016-06-25	0002	2275	823	16.53	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4873	2016-06-01	0002	2276	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4874	2016-06-22	0002	2265	770	847.46	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4875	2016-06-24	0002	2278	377	2406.78	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4876	2016-06-22	0002	2264	237	1667.37	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4877	2016-06-01	0002	2280	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4878	2016-06-25	0002	2281	823	203.39	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4879	2016-06-27	0002	2282	833	2283.9	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4880	2016-06-27	0002	2283	635	610.17	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4881	2016-06-27	0002	2284	442	461.02	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4882	2016-06-01	0002	2285	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4883	2016-06-28	0002	2286	442	152.97	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4884	2016-06-01	0002	2287	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4885	2016-06-28	0002	2288	835	847.46	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4886	2016-06-28	0002	2289	357	402.54	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4887	2016-06-28	0002	2290	841	1864.41	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4888	2016-06-28	0002	2291	771	839.83	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4889	2016-06-24	0002	2277	31	32.2	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4890	2016-06-20	0002	2251	839	1248.31	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4891	2016-06-14	0002	2238	158	974.58	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4892	2016-06-15	0002	2239	453	1461.86	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4893	2016-06-15	0002	2240	778	1461.86	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4894	2016-06-15	0002	2241	386	1461.86	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4895	2016-06-15	0002	2242	273	670.34	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4896	2016-06-16	0002	2243	828	1344.07	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4897	2016-06-01	0002	2244	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4898	2016-06-16	0002	2245	467	2000	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4899	2016-06-01	0002	2246	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4900	2016-06-01	0002	2247	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4901	2016-06-17	0002	2248	837	116.95	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4902	2016-06-22	0002	2266	295	162.71	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4903	2016-06-20	0002	2250	842	1983.05	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4904	2016-06-28	0002	2292	840	1347.46	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4905	2016-06-20	0002	2252	839	1223.73	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4906	2016-06-01	0002	2253	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4907	2016-06-20	0002	2254	839	413.56	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4908	2016-06-01	0002	2255	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4909	2016-06-20	0002	2256	262	2232.2	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4910	2016-06-20	0002	2257	476	59.32	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4911	2016-06-01	0002	2258	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4912	2016-06-21	0002	2259	470	949.15	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4913	2016-06-21	0002	2260	392	115.25	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4914	2016-06-21	0002	2261	7	915.25	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4915	2016-06-01	0002	2262	1	0	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4916	2016-06-22	0002	2263	245	525.42	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4917	2016-06-17	0002	2249	476	101.69	2	2016-06-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4965	2016-11-02	0001	28222	208	114.41	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4966	2016-11-03	0001	28229	208	228.81	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4967	2016-11-03	T272	272666	348	148.62	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4968	2016-11-04	0004	272730	354	160.08	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4969	2016-11-04	T273	273108	348	25.42	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4970	2016-11-05	0002	131548	844	812.4	1	2016-11-01	1	3.385	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4971	2016-11-05	0004	34374	165	9956.08	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4972	2016-11-07	T102	30576	276	989.04	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4973	2016-11-08	0001	28253	208	114.41	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4974	2016-11-08	T274	274594	348	25.42	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4975	2016-11-09	0001	28260	208	114.41	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4976	2016-11-10	0006	5860	279	1485.88	1	2016-11-01	1	3.377	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4977	2016-11-10	0001	28265	208	114.41	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4978	2016-11-10	T275	275418	348	25.42	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4979	2016-11-10	0004	34400	165	6930.14	1	2016-11-01	1	3.377	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4980	2016-11-11	0001	4892	845	590.68	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4981	2016-11-11	0001	28270	208	114.41	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4982	2016-11-11	T006	77256	59	126.48	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4983	2016-11-12	0001	7421	731	16.95	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4984	2016-11-12	0006	277511	788	487.29	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4985	2016-11-12	F015	7291	524	23.99	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4986	2016-11-14	0001	443	843	208.47	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4987	2016-11-15	0001	28288	208	114.41	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4988	2016-11-16	T277	277546	348	13.49	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4989	2016-11-17	0001	51964	310	206.64	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4990	2016-11-18	0002	15738	398	18.56	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4991	2016-11-19	T	85541	348	42.37	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4992	2016-11-21	0001	28315	208	114.41	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4993	2016-11-23	0023	7788	846	513.15	1	2016-11-01	1	3.421	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4994	2016-11-23	0002	29170	413	14.83	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4995	2016-11-22	0006	77663	59	16.95	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4996	2016-11-23	0001	41268	229	262.71	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4997	2016-11-29	F112	4662	191	109.24	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4998	2016-11-30	0001	4918	845	1745.08	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
4999	2016-11-30	0001	4919	845	1526.95	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5000	2016-11-30	F808	20305	271	41.78	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5001	2016-10-22	T002	109720	59	144.15	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5002	2016-10-28	F112	3553	191	120.64	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5003	2016-11-23	0001	391	847	4533.9	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5004	2016-11-22	0001	1149	744	6881.36	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5005	2016-11-25	0001	1160	744	5152.54	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5006	2016-11-18	0001	1146	744	6004.24	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5007	2016-11-21	0001	1148	744	4165.25	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5008	2016-11-14	0001	380	847	7203.39	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5009	2016-11-18	0001	384	847	6449.15	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5010	2016-11-28	0001	395	847	7449.15	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5011	2016-11-21	0001	388	847	4279.66	1	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5012	2016-11-01	002	2548	1	0	2	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5013	2016-11-03	002	2549	336	40695.2	2	2016-11-01	1	3.38	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5014	2016-11-04	002	2550	336	17238	2	2016-11-01	1	3.38	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5015	2016-11-01	002	2551	1	0	2	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5016	2016-11-01	002	2552	1	0	2	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5017	2016-11-11	002	2553	336	17370.6	2	2016-11-01	1	3.406	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5018	2016-11-11	002	2554	336	2639.65	2	2016-11-01	1	3.406	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5019	2016-11-16	002	2555	336	17462.4	2	2016-11-01	1	3.424	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5020	2016-11-01	002	2556	1	0	2	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5021	2016-11-16	002	2557	336	2054.4	2	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5022	2016-11-19	002	2558	848	900	2	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5023	2016-11-01	002	2559	1	0	2	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5024	2016-11-22	002	2560	697	406.78	2	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5025	2016-11-01	002	2561	1	0	2	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5026	2016-11-24	002	2562	697	406.78	2	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5027	2016-11-25	002	2563	848	1000	2	2016-11-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5028	2016-03-22	T102	8811	276	2057.04	1	2016-03-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5029	2016-03-18	TFG1	517584	849	101.57	1	2016-03-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5065	2016-07-05	FF08	7121	171	673.61	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5066	2016-07-05	FF08	7123	171	51.4	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5067	2016-07-06	0001	20	855	1102.9	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5068	2016-07-08	T001	184439	352	122.16	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5069	2016-07-18	0001	18128	252	475.46	1	2016-07-01	1	3.279	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5070	2016-07-20	0006	3248	853	319.49	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5071	2016-07-20	0001	20668	854	99	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5072	2016-07-30	T001	186525	352	122.16	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5073	2016-07-20	0001	680	856	5508.47	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5074	2016-07-25	0001	684	856	5084.75	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5075	2016-07-15	0001	651	739	5308.64	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5076	2016-07-25	0001	669	856	5508.47	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5077	2016-07-26	0001	1945	852	57.63	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5078	2015-12-15	T001	165042	352	82.2	1	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5079	2016-07-01	002	2299	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5080	2016-07-01	002	2300	470	237.29	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5081	2016-07-02	002	2301	16	1398.31	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5082	2016-07-02	002	2302	523	499.15	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5083	2016-07-01	002	2303	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5084	2016-07-05	002	2304	262	908.47	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5085	2016-07-01	002	2305	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5086	2016-07-01	002	2306	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5087	2016-07-05	002	2307	16	1864.41	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5088	2016-07-05	002	2308	491	761.02	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5089	2016-07-06	002	2309	881	42.37	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5090	2016-07-01	002	2310	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5091	2016-07-06	002	2311	881	1254.24	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5092	2016-07-06	002	2312	474	2457.63	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5093	2016-07-06	002	2313	799	583.05	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5094	2016-07-06	002	2314	829	59.32	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5095	2016-07-06	002	2315	395	271.19	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5096	2016-07-06	002	2316	325	1855.93	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5097	2016-07-09	002	2317	461	48.31	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5098	2016-07-09	002	2318	465	32.2	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5099	2016-07-09	002	2319	395	305.08	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5100	2016-07-01	002	2320	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5101	2016-07-01	002	2321	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5102	2016-07-11	002	2322	881	381.36	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5103	2016-07-11	002	2323	834	79.24	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5104	2016-07-11	002	2324	823	373.73	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5105	2016-07-11	002	2325	262	111.86	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5106	2016-07-01	002	2326	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5107	2016-07-11	002	2327	653	64.41	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5108	2016-07-12	002	2328	491	44.07	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5109	2016-07-13	002	2329	149	177.97	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5110	2016-07-14	002	2330	467	610.17	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5111	2016-07-14	002	2331	881	1144.07	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5112	2016-07-14	002	2332	474	1088.14	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5113	2016-07-14	002	2333	812	80.51	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5114	2016-07-14	002	2334	395	292.37	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5115	2016-07-16	002	2335	433	1588.98	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5116	2016-07-16	002	2336	120	974.58	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5117	2016-07-18	002	2337	245	1016.95	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5118	2016-07-18	002	2338	216	528.81	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5119	2016-07-01	002	2339	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5120	2016-07-01	002	2340	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5121	2016-07-18	002	2341	773	78.81	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5122	2016-07-01	002	2342	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5123	2016-07-19	002	2343	523	394.07	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5124	2016-07-19	002	2344	472	444.92	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5125	2016-07-20	002	2345	16	1901.69	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5126	2016-07-20	002	2346	262	44.49	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5127	2016-07-20	002	2347	800	932.2	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5128	2016-07-21	002	2348	881	1449.15	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5129	2016-07-21	002	2349	16	56.36	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5130	2016-07-21	002	2350	461	194.92	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5131	2016-07-21	002	2351	815	167.8	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5132	2016-07-22	002	2352	665	88.56	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5133	2016-07-22	002	2353	262	71.19	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5134	2016-07-22	002	2354	236	379.24	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5135	2016-07-22	002	2355	881	36.44	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5136	2016-07-01	002	2356	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5137	2016-07-22	002	2357	442	325.42	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5138	2016-07-01	002	2358	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5139	2016-07-23	002	2359	770	1169.49	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5140	2016-07-25	002	2360	262	1322.03	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5141	2016-07-01	002	2361	1	0	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5142	2016-07-26	002	2362	245	1271.19	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5143	2016-07-30	002	2363	404	320.34	2	2016-07-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5144	2016-08-25	T134	134911	204	89.75	1	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5145	2016-08-03	T001	323162	203	79.92	1	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5146	2016-08-24	0003	245781	857	118.14	1	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5147	2016-08-29	0004	33942	165	18683.84	1	2016-08-01	1	3.346	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5148	2016-08-05	0001	11279	859	35.59	1	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5149	2016-08-27	TF11	1459	191	120.68	1	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5150	2016-08-09	0001	18538	333	317.8	1	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5151	2016-08-11	0001	690	856	3728.81	1	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5152	2016-08-14	0001	693	856	4745.76	1	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5153	2016-04-07	0001	166	809	3504.92	1	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5154	2015-12-15	T101	76655	858	81.1	1	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5155	2015-12-29	0700	937399	598	8.47	1	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5156	2016-08-01	002	2364	1	0	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5157	2016-08-01	002	2365	865	1050.85	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5158	2016-08-02	002	2366	491	106.78	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5159	2016-08-02	002	2367	395	166.1	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5160	2016-08-03	002	2368	495	101.69	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5161	2016-08-08	002	2369	483	625.42	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5162	2016-08-08	002	2370	491	555.93	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5163	2016-08-09	002	2371	467	1495.76	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5164	2016-08-09	002	2372	862	1639.83	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5165	2016-08-09	002	2373	862	1639.83	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5166	2016-08-10	002	2374	286	366.1	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5167	2016-08-10	002	2375	465	64.41	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5168	2016-08-11	002	2376	777	677.97	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5169	2016-08-01	002	2377	1	0	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5170	2016-08-11	002	2378	140	953.39	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5171	2016-08-11	002	2379	798	335.17	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5172	2016-08-12	002	2380	860	1713.56	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5173	2016-08-13	002	2381	96	161.02	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5174	2016-08-15	002	2382	866	610.17	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5175	2016-08-15	002	2383	799	447.46	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5176	2016-08-15	002	2384	442	515.25	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5177	2016-08-16	002	2385	840	1303.39	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5178	2016-08-01	002	2386	1	0	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5179	2016-08-16	002	2387	262	2015.25	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5180	2016-08-01	002	2388	1	0	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5181	2016-08-16	002	2389	156	81.36	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5182	2016-08-16	002	2390	392	386.44	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5183	2016-08-17	002	2391	357	96.61	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5184	2016-08-17	002	2392	491	54.24	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5185	2016-08-18	002	2393	863	1603.39	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5186	2016-08-18	002	2394	771	597.46	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5187	2016-08-18	002	2395	262	610.17	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5188	2016-08-18	002	2396	491	96.61	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5189	2016-08-18	002	2397	502	97.46	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5190	2016-08-19	002	2398	474	2194.92	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5191	2016-08-20	002	2399	781	2396.61	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5192	2016-08-20	002	2400	16	1864.41	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5193	2016-08-22	002	2401	34	386.44	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5194	2016-08-22	002	2402	262	843.22	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5195	2016-08-22	002	2403	286	67.8	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5196	2016-08-22	002	2404	425	194.92	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5197	2016-08-22	002	2405	798	180.51	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5198	2016-08-19	002	2406	427	805.08	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5199	2016-08-23	002	2407	286	97.46	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5200	2016-08-24	002	2408	864	35.59	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5201	2016-08-25	002	2409	442	854.24	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5202	2016-08-25	002	2410	404	11.86	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5203	2016-08-25	002	2411	421	50.85	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5204	2016-08-25	002	2412	236	48.73	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5205	2016-08-26	002	2413	395	152.54	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5206	2016-08-26	002	2414	392	177.12	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5207	2016-08-26	002	2415	491	300	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5208	2016-08-26	002	2416	401	127.12	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5209	2016-08-26	002	2417	16	1864.41	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5210	2016-08-26	002	2418	863	1940.68	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5211	2016-08-29	002	2419	861	1851.69	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5212	2016-08-01	002	2420	1	0	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5213	2016-08-31	002	2421	236	402.54	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5214	2016-08-31	002	2422	419	95.76	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5215	2016-08-31	002	2423	800	682.2	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5216	2016-08-31	002	2424	120	177.97	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5217	2016-08-01	002	2425	1	0	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5218	2016-08-31	002	2426	401	101.69	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5219	2016-08-31	002	2427	395	185.17	2	2016-08-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5220	2016-09-22	0001	4793	845	2639.58	1	2016-09-01	1	3.381	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5221	2016-09-09	0001	1678	740	3813.56	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5222	2016-09-06	0001	1676	740	5084.75	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5223	2016-09-03	TF11	1689	191	121.91	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5224	2016-09-08	T001	190399	352	123.05	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5225	2016-09-21	F555	19407	172	9.41	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5226	2016-09-12	T002	107692	59	74.51	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5227	2016-09-22	0001	4794	845	2632.36	1	2016-09-01	1	3.381	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5228	2016-09-12	T002	107691	59	9.31	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5229	2016-09-27	0004	34119	165	7780.03	1	2016-09-01	1	3.366	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5230	2016-09-29	T006	75590	59	120.13	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5231	2016-09-13	0020	18444	222	6559.32	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5232	2016-09-19	0001	1687	740	6440.68	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5233	2016-09-19	TFF9	260140	348	125.72	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5234	2016-09-21	0001	1689	740	6271.19	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5235	2016-09-21	0001	4791	845	2297.63	1	2016-09-01	1	3.389	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5236	2016-09-12	0001	1679	740	6779.66	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5237	2016-09-21	F555	19405	172	48.59	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5238	2016-09-14	0001	1681	740	5508.47	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5239	2015-11-27	T104	441554	695	16.95	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5240	2015-11-27	0001	112035	12	82.97	1	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5241	2016-09-01	002	2428	425	389.83	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5242	2016-09-01	002	2429	463	94.92	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5243	2016-09-01	002	2430	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5244	2016-09-01	002	2431	490	762.71	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5245	2016-09-01	002	2432	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5246	2016-09-02	002	2433	155	127.12	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5247	2016-09-02	002	2434	483	593.22	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5248	2016-09-02	002	2435	476	40.68	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5249	2016-09-03	002	2436	463	40.68	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5250	2016-09-03	002	2437	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5251	2016-09-03	002	2438	634	345.76	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5252	2016-09-03	002	2439	155	127.12	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5253	2016-09-03	002	2440	96	142.37	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5254	2016-09-03	002	2441	836	161.02	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5255	2016-09-03	002	2442	483	233.05	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5256	2016-09-05	002	2443	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5257	2016-09-05	002	2444	768	1694.92	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5258	2016-09-05	002	2445	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5259	2016-09-05	002	2446	237	720.34	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5260	2016-09-05	002	2447	467	322.03	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5261	2016-09-05	002	2448	781	1864.41	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5262	2016-09-06	002	2449	474	2118.64	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5263	2016-09-06	002	2450	262	915.25	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5264	2016-09-07	002	2451	867	279.66	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5265	2016-09-07	002	2452	834	72.03	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5266	2016-09-07	002	2453	870	56.36	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5267	2016-09-07	002	2454	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5268	2016-09-07	002	2455	493	8.05	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5269	2016-09-07	002	2456	16	1864.41	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5270	2016-09-01	002	2457	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5271	2016-09-07	002	2458	493	80.51	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5272	2016-09-08	002	2459	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5273	2016-09-08	002	2460	155	1034.75	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5274	2016-09-08	002	2461	491	183.47	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5275	2016-09-08	002	2462	70	1084.75	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5276	2016-09-08	002	2463	395	172.88	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5277	2016-09-08	002	2464	869	893.22	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5278	2016-09-08	002	2465	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5279	2016-09-10	002	2466	247	213.56	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5280	2016-09-10	002	2467	139	9004.24	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5281	2016-09-10	002	2468	841	576.27	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5282	2016-09-10	002	2469	286	423.73	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5283	2016-09-12	002	2470	262	1372.88	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5284	2016-09-12	002	2471	483	135.59	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5285	2016-09-13	002	2472	871	81.36	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5286	2016-09-13	002	2473	91	66.95	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5287	2016-09-13	002	2474	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5288	2016-09-13	002	2475	461	850.85	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5289	2016-09-13	002	2476	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5290	2016-09-14	002	2477	873	2542.37	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5291	2016-09-14	002	2478	501	423.73	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5292	2016-09-15	002	2479	320	139.83	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5293	2016-09-15	002	2480	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5294	2016-09-15	002	2481	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5295	2016-09-15	002	2482	491	23.73	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5296	2016-09-15	002	2483	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5297	2016-09-15	002	2484	829	104.66	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5298	2016-09-15	002	2485	490	220.34	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5299	2016-09-16	002	2486	875	1059.32	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5300	2016-09-16	002	2487	778	1059.32	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5301	2016-09-17	002	2488	727	2711.86	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5302	2016-09-17	002	2489	262	2698.31	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5303	2016-09-17	002	2490	799	29.24	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5304	2016-09-19	002	2491	874	76.27	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5305	2016-09-19	002	2492	463	249.58	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5306	2016-09-19	002	2493	75	165.25	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5307	2016-09-20	002	2494	523	591.1	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5308	2016-09-20	002	2495	836	457.63	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5309	2016-09-21	002	2496	392	53.39	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5310	2016-09-21	002	2497	401	27.97	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5311	2016-09-21	002	2498	491	76.27	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5312	2016-09-22	002	2499	872	449.15	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5313	2016-09-23	002	2500	479	1483.05	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5314	2016-09-26	002	2501	291	135.59	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5315	2016-09-26	002	2502	868	2418.72	2	2016-09-01	1	3.357	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5316	2016-09-27	002	2503	868	2444.6	2	2016-09-01	1	3.366	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5317	2016-09-27	002	2504	465	56.36	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5318	2016-09-27	002	2505	785	380.08	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5319	2016-09-27	002	2506	442	135.59	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5320	2016-09-27	002	2507	483	203.39	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5321	2016-09-27	002	2508	325	254.24	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5322	2016-09-28	002	2509	770	1402.54	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5323	2016-09-28	002	2510	491	134.32	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5324	2016-09-28	002	2511	799	37.29	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5325	2016-09-29	002	2512	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5326	2016-09-01	002	2513	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5327	2016-09-29	002	2514	315	2118.64	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5328	2016-09-01	002	2515	1	0	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5329	2016-09-29	002	2516	868	2920.63	2	2016-09-01	1	3.378	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5330	2016-09-30	002	2517	803	3179.66	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5331	2016-09-30	002	2518	665	128.81	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5332	2016-09-30	002	2519	841	1779.66	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5333	2016-09-30	002	2520	16	1864.41	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5334	2016-09-30	002	2521	785	56.36	2	2016-09-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5335	2016-10-03	0001	29206	878	2895.78	1	2016-10-01	1	3.403	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5336	2016-10-04	FF08	9767	171	75.8	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5337	2016-10-07	0004	34206	165	9892.68	1	2016-10-01	1	3.411	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5338	2016-10-07	0004	270017	354	98.56	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5339	2016-10-10	0001	13866	879	88.14	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5340	2016-10-10	0001	5349	337	211.86	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5341	2016-10-11	0006	2432	342	84.75	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5342	2016-10-12	0004	270424	354	98.56	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5343	2016-10-13	0006	2435	342	20.34	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5344	2016-10-13	0006	2434	342	113.56	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5345	2016-10-14	T265	265003	348	16.95	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5346	2016-10-14	T265	265004	348	16.95	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5347	2016-10-18	0001	1778	131	84.75	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5348	2016-10-22	0001	29319	878	1448.84	1	2016-10-01	1	3.369	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5349	2016-10-22	0004	34284	165	9785.49	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5350	2016-10-22	0004	34283	165	9795.25	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5351	2016-10-24	T	268746	348	13.56	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5352	2016-10-25	0001	2360	876	11967.78	1	2016-10-01	1	3.352	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5353	2016-10-25	0001	4030	880	444.92	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5354	2016-10-25	0004	271814	354	29.66	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5355	2016-10-25	T	269154	348	22.71	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5356	2016-10-26	T	269502	348	15	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5357	2016-10-27	T	269946	348	19.24	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5358	2016-10-29	T270	270710	348	15.17	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5359	2016-10-31	T271	271470	348	19.15	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5360	2016-10-31	0001	29375	878	1528.31	1	2016-10-01	1	3.363	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5361	2016-10-31	0001	13887	411	289.83	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5362	2016-10-31	0004	12619	190	483.05	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5363	2016-10-31	0023	7639	846	566.4	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5364	2016-09-01	T211	551784	877	121.91	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5365	2016-04-05	FF04	6540	171	44.07	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5366	2016-10-04	0001	1751	131	152.54	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5367	2016-10-18	0001	995	744	3898.14	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5368	2016-10-10	0001	1634	827	5220.51	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5369	2016-10-21	0001	336	847	5932.2	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5370	2016-10-13	0001	321	847	5254.24	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5371	2016-10-17	0001	328	847	3220.34	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5372	2016-10-24	0001	340	847	4576.27	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5373	2016-10-27	0001	346	847	4406.78	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5374	2016-10-22	0001	998	744	10542.37	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5375	2016-10-12	0001	989	744	7796.61	1	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5376	2016-10-01	002	2522	1	0	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5377	2016-10-01	002	2523	491	56.36	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5378	2016-10-03	002	2524	336	17355.3	2	2016-10-01	1	3.403	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5379	2016-10-05	002	2525	336	14203.64	2	2016-10-01	1	3.398	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5380	2016-10-05	002	2526	1	0	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5381	2016-10-05	002	2527	1	0	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5382	2016-10-05	002	2528	336	1502.2	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5383	2016-10-11	002	2529	336	9667.31	2	2016-10-01	1	3.398	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5384	2016-10-13	002	2530	336	17380.8	2	2016-10-01	1	3.408	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5385	2016-10-13	002	2531	1	0	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5386	2016-10-14	002	2532	336	1571.8	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5387	2016-10-01	002	2533	1	0	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5388	2016-10-14	002	2534	336	680	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5389	2016-10-14	002	2535	336	1357.8	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5390	2016-10-24	002	2536	336	1100	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5391	2016-10-24	002	2537	336	1400	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5392	2016-10-24	002	2538	336	1623	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5393	2016-10-24	002	2539	336	11454.6	2	2016-10-01	1	3.369	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5394	2016-10-01	002	2540	1	0	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5395	2016-10-01	002	2541	1	0	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5396	2016-10-01	002	2542	1	0	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5397	2016-10-29	002	2543	336	7345.51	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5398	2016-10-29	002	2544	336	1000	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5399	2016-10-29	002	2545	336	3625	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5400	2016-10-01	002	2546	1	0	2	2016-10-01	1	0	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5401	2016-10-29	002	2547	336	19639.92	2	2016-10-01	1	3.363	1	2016-12-26 00:00:00	2016-12-26 00:00:00	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5412	2016-12-02	0002	002565	1	\N	2	2016-12-01	1	0	1	2017-01-10 01:12:28.972529	2017-01-10 01:12:28.972529	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5413	2016-12-04	0002	002566	336	600	2	2016-12-01	1	0	1	2017-01-10 01:13:36.428995	2017-01-10 01:13:36.428995	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5414	2016-12-02	T002	0111792	59	84.58	1	2016-12-01	1	0	1	2017-01-10 01:16:15.546047	2017-01-10 01:16:15.546047	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5415	2016-12-22	006	002486	342	77.97	1	2016-12-01	1	0	1	2017-01-10 01:17:37.674368	2017-01-17 05:17:58.76148	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5499	2017-01-04	2	1221	757	316.51375	1	2017-01-01	1	0	3	2017-01-28 04:05:03.578894	2017-01-28 04:07:49.003686	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5411	2016-12-01	0002	002564	1	0	2	2016-12-01	1	0	1	2017-01-10 01:11:13.742666	2017-01-29 20:10:41.050813	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5502	2017-01-30	002	2666	10	100	1	2017-01-01	1	0	3	2017-01-30 15:49:04.744457	2017-01-30 15:50:11.120123	1	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5504	2017-01-05	002	0054555	227	150	1	2017-01-01	1	0	3	2017-02-09 19:59:39.875537	2017-02-09 20:00:01.962351	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5505	2017-01-11	002	12121	200	121225	1	2017-01-01	1	0	3	2017-02-10 22:03:30.17354	2017-02-10 22:03:47.180225	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
5501	2016-01-04	0	0	881	50	2	2016-01-01	1	0	3	2017-01-28 13:23:22.460585	2017-01-28 13:23:55.9181	3	\N	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7289	2020-02-29	E001	13	1050	4915.254237288136	1	2020-02-01	1	0	1	2020-04-21 22:53:11.981517	2020-05-16 18:16:22.946149	7	59	1	\N	\N			\N	\N	0	5800	\N	\N	\N
7532	2020-07-05	E001	57	1179	784	2	2020-07-01	1	0	3	2020-09-07 14:59:36.725988	2020-09-07 14:59:36.726025	7	43	1	\N	\N	20601178339	Knowmad S.A.C	Venta	KNOWMAD S.A.C	0	925.12	\N	\N	\N
7504	2020-05-09	E001	17	1165	-650	2	2020-05-01	1	0	1	2020-08-18 13:57:57.892477	2020-08-18 22:51:52.490253	7	36	4	E001	54	20548173478	Industrias Eurocable E.I.R.L	nota de credito	INDUSTRIAS EUROCABLE E.I.R.L	0	-767	\N	\N	\N
7529	2020-07-03	F001	13401	1173	377.11864406779665	1	2020-07-01	1	0	3	2020-09-07 14:58:40.653843	2020-09-07 14:58:40.653894	7	71	1	\N	\N	20512900896	JC Medical Supplies SAC	Termometro y Mascarillas	JC MEDICAL SUPPLIES SAC	0	445	\N	\N	\N
7501	2020-05-09	E001	53	1164	555	2	2020-05-01	1	0	3	2020-08-18 13:57:57.892477	2020-08-18 13:57:57.892532	7	39	1	\N	\N	20601225566	Nativa Organics S.A.C	Venta	NATIVA ORGANICS S.A.C	0	654.9	\N	\N	\N
7530	2020-07-03	F001	4516	1178	50	1	2020-07-01	1	0	3	2020-09-07 14:58:40.653843	2020-09-07 14:58:40.653894	7	72	1	\N	\N	20492055116	Diajo SAC	Lentes	DIAJO SAC	0	59	\N	\N	\N
7502	2020-05-09	E001	54	1165	650	2	2020-05-01	1	0	3	2020-08-18 13:57:57.892477	2020-08-18 13:57:57.892532	7	40	1	\N	\N	20548173478	Industrias Eurocable E.I.R.L	Venta	INDUSTRIAS EUROCABLE E.I.R.L	0	767	\N	\N	\N
7503	2020-05-09	E001	55	1166	650	2	2020-05-01	1	0	3	2020-08-18 13:57:57.892477	2020-08-18 13:57:57.892532	7	41	1	\N	\N	20139082142	Industrias Euroluz E.I.R.L	Venta	INDUSTRIAS EUROLUZ E.I.R.L	0	767	\N	\N	\N
7531	2020-07-22	F001	13879	1173	216.10169491525426	1	2020-07-01	1	0	3	2020-09-07 14:58:40.653843	2020-09-07 14:58:40.653894	7	73	1	\N	\N	20512900896	JC Medical Supplies SAC	Termometro y Oximetro	JC MEDICAL SUPPLIES SAC	0	255	\N	\N	\N
7505	2020-05-09	E001	18	1166	-650	2	2020-05-01	1	0	1	2020-08-18 13:57:57.892477	2020-08-18 22:52:11.917535	7	37	4	E001	55	20139082142	Industrias Euroluz E.I.R.L	nota de credito	INDUSTRIAS EUROLUZ E.I.R.L	0	-767	\N	\N	\N
7506	2020-05-12	1	1974	1167	625	1	2020-05-01	1	0	3	2020-08-18 13:58:34.607184	2020-08-18 13:58:34.607238	7	67	1	\N	\N	20552006373	Rosval Inversiones y Servicios S.A.C	visor facial	ROSVAL INVERSIONES Y SERVICIOS S.A.C	0	737.5	\N	\N	\N
7507	2020-05-15	E001	18	1168	700	1	2020-05-01	1	0	3	2020-08-18 13:58:34.607184	2020-08-18 13:58:34.607238	7	68	1	\N	\N	20602008348	Electro Ingenieria FC S.A.C	termometro	ELECTRO INGENIERIA FC S.A.C	0	826	\N	\N	\N
7508	2020-05-27	F016	1	1078	32.20338983050848	1	2020-05-01	1	0	3	2020-08-18 13:58:34.607184	2020-08-18 13:58:34.607238	7	69	1	\N	\N	20601017106	Food & Beverage Invest SAC	consumo	FOOD & BEVERAGE INVEST SAC	0	38	\N	\N	\N
7546	2020-06-01	E001	2	1111	-54	2	2020-06-01	1	0	3	2020-09-09 16:19:52.717251	2020-09-09 16:19:52.717287	6	8	4	E001	17	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	-63.72	\N	\N	\N
7547	2020-06-05	E001	3	1111	-23	2	2020-06-01	1	0	1	2020-09-09 16:19:52.717251	2020-09-09 20:58:24.425259	6	13	4	E001	19	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	-27.14	\N	\N	\N
7548	2020-06-05	E001	4	1111	-46	2	2020-06-01	1	0	1	2020-09-09 16:19:52.717251	2020-09-09 20:58:51.63894	6	14	4	E001	20	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	-54.28	\N	\N	\N
7545	2020-06-18	E001	23	1169	50000	2	2020-06-01	1	0	3	2020-09-09 16:19:52.717251	2020-09-09 16:19:52.717287	6	16	1	\N	\N	20330401991	BANCO FALABELLA S.A.	varios	BANCO FALABELLA S.A.	0	59000	\N	\N	\N
7549	2020-06-18	E001	5	1169	-50	2	2020-06-01	1	0	1	2020-09-09 16:19:52.717251	2020-09-09 20:59:07.77769	6	17	4	E001	22	20330401991	BANCO FALABELLA S.A.	varios	BANCO FALABELLA S.A.	0	-59	\N	\N	\N
7248	2020-01-27	E001	18	1099	10000	2	2020-01-01	1	0	1	2020-02-20 18:37:31.323894	2020-02-20 18:37:51.695515	8	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7236	2020-01-12	F001	00565	1089	66.1	1	2020-01-01	1	0	1	2020-02-20 18:13:51.343678	2020-02-20 18:14:34.107527	8	1	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7241	2020-01-13	001	54	1094	66.5254	1	2020-01-01	1	0	1	2020-02-20 18:23:17.399495	2020-02-20 18:23:54.149429	8	2	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7238	2020-01-17	F029	595	1091	311.3559	1	2020-01-01	1	0	1	2020-02-20 18:19:58.8349	2020-02-20 18:21:16.954003	8	3	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7239	2020-01-18	001	14787	1092	21.19	1	2020-01-01	1	0	1	2020-02-20 18:21:55.616681	2020-02-20 18:22:14.840869	8	4	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7237	2020-01-18	F958	000595	1090	542.37	1	2020-01-01	1	0	1	2020-02-20 18:18:18.022966	2020-02-20 18:19:08.695132	8	5	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7240	2020-01-19	0001	4214	1093	60.17	1	2020-01-01	1	0	1	2020-02-20 18:22:40.936607	2020-02-20 18:22:54.307247	8	6	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7242	2020-01-20	E001	101	1095	10.17	1	2020-01-01	1	0	1	2020-02-20 18:24:16.395343	2020-02-20 18:24:37.819497	8	7	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7243	2020-01-21	FF01	2947	1097	101.6016	1	2020-01-01	1	0	1	2020-02-20 18:25:10.921631	2020-02-20 18:26:56.337501	8	8	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7244	2020-01-27	F002	131	1096	20.34	1	2020-01-01	1	0	1	2020-02-20 18:27:30.127371	2020-02-20 18:27:54.716784	8	9	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7247	2020-01-30	E001	114	1095	10.17	1	2020-01-01	1	0	1	2020-02-20 18:29:51.226234	2020-02-20 18:30:04.76851	8	10	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7245	2020-01-30	F002	143	1096	40.68	1	2020-01-01	1	0	1	2020-02-20 18:28:25.067807	2020-02-20 18:28:46.896501	8	11	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7246	2020-01-31	F002	148	1096	23.73	1	2020-01-01	1	0	1	2020-02-20 18:29:17.21134	2020-02-20 18:29:29.107277	8	12	\N	\N	\N	\N	\N	\N	\N	0	\N	\N	\N	\N
7443	2020-02-25	E001	20	1123	10000	2	2020-02-01	1	0	3	2020-07-06 16:47:20.226885	2020-07-06 16:47:20.22694	8	2	1	\N	\N	20604622558	NT MARKETING	servicio	NT MARKETING	0	11800	\N	\N	\N
7442	2020-02-26	E001	19	1124	5000	2	2020-02-01	1	0	3	2020-07-06 16:47:20.226885	2020-07-06 16:47:20.22694	8	3	1	\N	\N	20267178331	NEXUS TECHNOLOGY S.A.C,	servicio	NEXUS TECHNOLOGY S.A.C,	0	5900	\N	\N	\N
7444	2020-02-26	E001	21	1123	5000	2	2020-02-01	1	0	3	2020-07-06 16:47:20.226885	2020-07-06 16:47:20.22694	8	4	1	\N	\N	20604622558	NT MARKETING	servicio	NT MARKETING	0	5900	\N	\N	\N
7445	2020-02-26	E001	3	1124	-5000	2	2020-02-01	1	0	3	2020-07-06 16:47:20.226885	2020-07-06 16:47:20.22694	8	5	4	E001	19	20267178331	NEXUS TECHNOLOGY S.A.C.	otros	NEXUS TECHNOLOGY S.A.C.	0	-5900	\N	\N	\N
7446	2020-02-26	E001	4	1124	-10000	2	2020-02-01	1	0	3	2020-07-06 16:47:20.226885	2020-07-06 16:47:20.22694	8	6	4	E001	18	20267178331	NEXUS TECHNOLOGY S.A.C.	otros	NEXUS TECHNOLOGY S.A.C.	0	-11800	\N	\N	\N
7430	2020-01-09	E001	626	1119	27.118644067796613	1	2020-02-01	1	0	3	2020-07-06 16:11:07.716159	2020-07-06 16:11:07.716199	8	13	1	\N	\N	10459335582	povez esteban esperanza	VARIOS	POVEZ ESTEBAN ESPERANZA	0	32	\N	\N	\N
7429	2020-01-10	E001	627	1119	10.16949152542373	1	2020-02-01	1	0	3	2020-07-06 16:11:07.716159	2020-07-06 16:11:07.716199	8	14	1	\N	\N	10459335582	povez esteban esperanza	VARIOS	POVEZ ESTEBAN ESPERANZA	0	12	\N	\N	\N
7432	2020-02-03	F001	1799	1121	63.83050847457627	1	2020-02-01	1	0	3	2020-07-06 16:11:07.716159	2020-07-06 16:11:07.716199	8	15	1	\N	\N	20546399533	Pesart SAC	Consumo	PESART SAC	0	75.32	\N	\N	\N
7459	2020-02-06	FA34	11237	1128	2498.305084745763	1	2020-02-01	1	0	3	2020-07-06 16:55:27.70338	2020-07-06 16:55:27.703419	6	4	1	\N	\N	20493020618	TIENDAS PERUANAS S.A.	varios	TIENDAS PERUANAS S.A.	0	2948	\N	\N	\N
7431	2020-02-09	1	1970	1120	101.69491525423729	1	2020-02-01	1	0	3	2020-07-06 16:11:07.716159	2020-07-06 16:11:07.716199	8	16	1	\N	\N	20550895588	Sol y sabor inversiones EIRL	Consumo	SOL Y SABOR INVERSIONES EIRL	0	120	\N	\N	\N
7428	2020-02-11	E001	128	1095	10.16949152542373	1	2020-02-01	1	0	3	2020-07-06 16:11:07.716159	2020-07-06 16:11:07.716199	8	17	1	\N	\N	20605259759	agua martins peru	VARIOS	AGUA MARTINS PERU	0	12	\N	\N	\N
7426	2020-02-11	F011	966	1114	2537.042372881356	1	2020-02-01	1	0	3	2020-07-06 16:11:07.716159	2020-07-06 16:11:07.716199	8	18	1	\N	\N	20555190132	mt industrial sac	VARIOS	MT INDUSTRIAL SAC	0	2993.71	\N	\N	\N
7427	2020-02-11	F011	967	1114	39.83050847457627	1	2020-02-01	1	0	3	2020-07-06 16:11:07.716159	2020-07-06 16:11:07.716199	8	19	1	\N	\N	20555190132	mt industrial sac	VARIOS	MT INDUSTRIAL SAC	0	47	\N	\N	\N
7434	2020-02-15	2	292	1122	652.542372881356	1	2020-02-01	1	0	3	2020-07-06 16:11:07.716159	2020-07-06 16:11:07.716199	8	20	1	\N	\N	10466753462	judith genoveva carrasco	VARIOS	JUDITH GENOVEVA CARRASCO	0	770	\N	\N	\N
7425	2020-02-20	E001	143	1095	10.16949152542373	1	2020-02-01	1	0	3	2020-07-06 16:11:07.716159	2020-07-06 16:11:07.716199	8	21	1	\N	\N	20605259759	agua martins peru	bidon de agua	AGUA MARTINS PERU	0	12	\N	\N	\N
7433	2020-02-23	FA03	887820	358	332.5423728813559	1	2020-02-01	1	0	3	2020-07-06 16:11:07.716159	2020-07-06 16:11:07.716199	8	22	1	\N	\N	20536557858	Homecenters Peruanos	art.  De limpieza	HOMECENTERS PERUANOS	0	392.4	\N	\N	\N
7456	2020-02-07	FDSD	69	1126	2605.084745762712	1	2020-02-01	1	0	3	2020-07-06 16:55:27.70338	2020-07-06 16:55:27.703419	6	5	1	\N	\N	20100128056	Saga Falabella SA	varios	SAGA FALABELLA SA	0	3074	\N	\N	\N
7457	2020-02-20	1	20	1127	2415.2542372881358	1	2020-02-01	1	0	3	2020-07-06 16:55:27.70338	2020-07-06 16:55:27.703419	6	6	1	\N	\N	10316246759	Maria Rosas Colonia	varios	MARIA ROSAS COLONIA	0	2850	\N	\N	\N
7458	2020-02-21	1	21	1127	1949.1525423728815	1	2020-02-01	1	0	3	2020-07-06 16:55:27.70338	2020-07-06 16:55:27.703419	6	7	1	\N	\N	10316246759	Maria Rosas Colonia	varios	MARIA ROSAS COLONIA	0	2300	\N	\N	\N
7449	2020-02-24	FE31	6045	1125	188.98305084745763	1	2020-02-01	1	0	3	2020-07-06 16:55:27.70338	2020-07-06 16:55:27.703419	6	11	1	\N	\N	20505853521	Papelera General Sac	utiles de escritorio	PAPELERA GENERAL SAC	0	223	\N	\N	\N
7450	2020-02-24	F645	31938	189	188.135593220339	1	2020-02-01	1	0	3	2020-07-06 16:55:27.70338	2020-07-06 16:55:27.703419	6	8	1	\N	\N	20109072177	Cencosud Retail Peru SA	varios	CENCOSUD RETAIL PERU SA	0	222	\N	\N	\N
7451	2020-02-24	F647	31939	189	58.47457627118644	1	2020-02-01	1	0	3	2020-07-06 16:55:27.70338	2020-07-06 16:55:27.703419	6	9	1	\N	\N	20109072177	Cencosud Retail Peru SA	varios	CENCOSUD RETAIL PERU SA	0	69	\N	\N	\N
7453	2020-02-25	F029	813	1091	213.55932203389833	1	2020-02-01	1	0	3	2020-07-06 16:55:27.70338	2020-07-06 16:55:27.703419	6	12	1	\N	\N	20510069251	DH EMPRESAS PERU SA	varios	DH EMPRESAS PERU SA	0	252	\N	\N	\N
7447	2020-02-29	E001	12	1111	2500	2	2020-02-01	1	0	3	2020-07-06 16:55:02.614197	2020-07-06 16:55:02.614248	6	1	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	2950	\N	\N	\N
7448	2020-02-29	E001	13	1111	5800	2	2020-02-01	1	0	3	2020-07-06 16:55:02.614197	2020-07-06 16:55:02.614248	6	2	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	6844	\N	\N	\N
7452	2020-02-24	F647	31940	189	11.016949152542374	1	2020-02-01	1	0	3	2020-07-06 16:55:27.70338	2020-07-06 16:55:27.703419	6	10	1	\N	\N	20109072177	Cencosud Retail Peru SA	varios	CENCOSUD RETAIL PERU SA	0	13	\N	\N	\N
7455	2020-02-25	F965	3376	193	716.1016949152543	1	2020-02-01	1	0	3	2020-07-06 16:55:27.70338	2020-07-06 16:55:27.703419	6	13	1	\N	\N	20112273922	Tiendas de mejoramiento del hogar SA	varios	TIENDAS DE MEJORAMIENTO DEL HOGAR SA	0	845	\N	\N	\N
7454	2020-02-27	F679	8326	1102	81.35593220338984	1	2020-02-01	1	0	3	2020-07-06 16:55:27.70338	2020-07-06 16:55:27.703419	6	14	1	\N	\N	20508565934	Hipermercados Tottus SA	varios	HIPERMERCADOS TOTTUS SA	0	96	\N	\N	\N
7461	2020-03-07	F061	40173	1082	3402.3644067796613	1	2020-03-01	1	0	3	2020-07-14 04:33:12.212244	2020-07-14 04:33:12.212285	7	64	1	\N	\N	20100047137	Union Ychikawa S.A.	Set de Alcuza x 4pz	UNION YCHIKAWA S.A.	0	4014.79	\N	\N	\N
7463	2020-03-11	F003	3185	1081	5710.120000000001	1	2020-03-01	1	0	3	2020-07-14 04:33:12.212244	2020-07-14 04:33:12.212285	7	65	1	\N	\N	20501751384	Importadora Valeria S.A.	Jarra + Copas + Bowl	IMPORTADORA VALERIA S.A.	0	6737.9416	\N	\N	\N
7462	2020-03-11	F061	40342	1082	4283.5084745762715	1	2020-03-01	1	0	3	2020-07-14 04:33:12.212244	2020-07-14 04:33:12.212285	7	66	1	\N	\N	20100047137	Union Ychikawa S.A.	Set de Canister	UNION YCHIKAWA S.A.	0	5054.54	\N	\N	\N
7460	2020-03-05	F059	33627	1082	17.380000000000003	1	2020-03-01	1	0	3	2020-07-14 04:33:12.212244	2020-07-14 04:33:12.212285	7	63	1	\N	\N	20100047137	Union Ychikawa S.A.	Muestras	UNION YCHIKAWA S.A.	0	20.5084	\N	\N	\N
7464	2020-03-04	E001	50	1087	9915.250000000002	2	2020-03-01	1	0	3	2020-07-14 04:33:40.580768	2020-07-14 04:33:40.580832	7	34	1	\N	\N	20265815830	Corporacion Turistica Peruana SAC	Venta	CORPORACION TURISTICA PERUANA SAC	0	11699.995	\N	\N	\N
7465	2020-03-04	E001	49	1087	5.000000000000001	2	2020-03-01	1	0	3	2020-07-14 04:33:40.580768	2020-07-14 04:33:40.580832	7	33	1	\N	\N	20265815830	Corporacion Turistica Peruana SAC	Venta	CORPORACION TURISTICA PERUANA SAC	0	5.9	\N	\N	\N
7467	2020-03-12	E001	1	1111	-8474.57627118644	2	2020-03-01	1	0	1	2020-07-15 18:10:07.84317	2020-07-15 18:21:06.074189	6	3	4	E001	14	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	-10000	\N	\N	\N
7509	2020-05-15	E001	15	1169	23800	2	2020-05-01	1	0	3	2020-08-19 02:26:27.829589	2020-08-19 02:26:27.829646	6	5	1	\N	\N	20330401991	BANCO FALABELLA PERU S.A	varios	BANCO FALABELLA PERU S.A	0	28084	\N	\N	\N
7469	2020-03-04	1	681	1129	4152.542372881356	1	2020-03-01	1	0	3	2020-07-15 18:10:30.784402	2020-07-15 18:10:30.784457	6	16	1	\N	\N	20543562778	Ticona Hnos. Factoria S.A.C	varios	TICONA HNOS. FACTORIA S.A.C	0	4900	\N	\N	\N
7470	2020-03-10	F014	646931	189	1082.2033898305085	1	2020-03-01	1	0	3	2020-07-15 18:10:30.784402	2020-07-15 18:10:30.784457	6	17	1	\N	\N	20109072177	Cencosud Retail Peru S.A.	varios	CENCOSUD RETAIL PERU S.A.	0	1277	\N	\N	\N
7472	2020-03-14	F023	21403	1091	132.24576271186442	1	2020-03-01	1	0	3	2020-07-15 18:10:30.784402	2020-07-15 18:10:30.784457	6	18	1	\N	\N	20510069251	DH EMPRESAS PERU S.A.	varios	DH EMPRESAS PERU S.A.	0	156.05	\N	\N	\N
7473	2020-03-14	FA16	2060097	1128	211.0169491525424	1	2020-03-01	1	0	3	2020-07-15 18:10:30.784402	2020-07-15 18:10:30.784457	6	19	1	\N	\N	20493020618	TIENDAS PERUANAS S.A.	varios	TIENDAS PERUANAS S.A.	0	249	\N	\N	\N
7471	2020-03-14	FA49	1176075	174	211.0169491525424	1	2020-03-01	1	0	3	2020-07-15 18:10:30.784402	2020-07-15 18:10:30.784457	6	20	1	\N	\N	20100070970	SUPERMERCADOS PERUANOS S.A.	varios	SUPERMERCADOS PERUANOS S.A.	0	249	\N	\N	\N
7510	2020-05-27	E001	16	1169	23800	2	2020-05-01	1	0	3	2020-08-19 02:26:27.829589	2020-08-19 02:26:27.829646	6	6	1	\N	\N	20330401991	BANCO FALABELLA PERU S.A	varios	BANCO FALABELLA PERU S.A	0	28084	\N	\N	\N
7466	2020-03-12	E001	14	1111	8474.57627118644	2	2020-03-01	1	0	3	2020-07-15 18:10:07.84317	2020-07-15 18:10:07.843228	6	4	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	10000	\N	\N	\N
7475	2020-03-05	E001	23	1123	978.8135593220339	2	2020-03-01	2	3.425	1	2020-07-15 18:11:12.748646	2020-07-15 19:29:11.566771	8	8	1			20604622558	NT MARKETING	servicio	NT MARKETING	0	1155	\N	\N	\N
7536	2020-06-23	F001	2016	1171	2250	1	2020-06-01	1	0	3	2020-09-09 16:18:40.042292	2020-09-09 16:18:40.042334	6	30	1	\N	\N	20392500121	J.I. GENERAL INVESTMENTS S.A.C	varios	J.I. GENERAL INVESTMENTS S.A.C	0	2655	\N	\N	\N
7516	2020-05-08	1	687	1129	5372.881355932203	1	2020-05-01	1	0	3	2020-08-19 02:27:37.846868	2020-08-19 02:27:37.846934	6	21	1	\N	\N	20543562778	Ticona Hnos. Factoria S.A.C.	varios	TICONA HNOS. FACTORIA S.A.C.	0	6340	\N	\N	\N
7468	2019-12-04	1	661	1129	4067.796610169492	1	2020-03-01	1	0	3	2020-07-15 18:10:30.784402	2020-07-15 18:10:30.784457	6	15	1	\N	\N	20543562778	Ticona Hnos. Factoria S.A.C	varios	TICONA HNOS. FACTORIA S.A.C	0	4800	\N	\N	\N
7474	2020-03-05	E001	22	1123	22074.57627118644	2	2020-03-01	2	3.425	1	2020-07-15 18:11:12.748646	2020-07-15 19:29:56.852253	8	7	1			20604622558	NT MARKETING	servicio	NT MARKETING	0	26048	\N	\N	\N
7514	2020-05-19	F0001	11215	1173	14830.508474576272	1	2020-05-01	1	0	3	2020-08-19 02:27:37.846868	2020-08-19 02:27:37.846934	6	22	1	\N	\N	20512900896	J.C. MEDICAL SUPPLIES S.A.C.	varios	J.C. MEDICAL SUPPLIES S.A.C.	0	17500	\N	\N	\N
7512	2020-05-19	F0001	1970	1171	35	1	2020-05-01	1	0	3	2020-08-19 02:27:37.846868	2020-08-19 02:27:37.846934	6	23	1	\N	\N	20392500121	J.I. GENERAL INVESTMENTS S.A.C	varios	J.I. GENERAL INVESTMENTS S.A.C	0	41.3	\N	\N	\N
7511	2020-05-20	FF01	7809	1170	44.00000000000001	1	2020-05-01	1	0	3	2020-08-19 02:27:37.846868	2020-08-19 02:27:37.846934	6	24	1	\N	\N	20544998413	Sociendad Distribuidora Ferretera SAC	varios	SOCIENDAD DISTRIBUIDORA FERRETERA SAC	0	51.92	\N	\N	\N
7513	2020-05-22	E001	516	1172	22360	1	2020-05-01	1	0	3	2020-08-19 02:27:37.846868	2020-08-19 02:27:37.846934	6	25	1	\N	\N	20538045781	TESSILE FORZA E.I.R.L.	varios	TESSILE FORZA E.I.R.L.	0	26384.8	\N	\N	\N
7515	2020-05-26	F001	12374	1173	14851.694915254238	1	2020-05-01	1	0	3	2020-08-19 02:27:37.846868	2020-08-19 02:27:37.846934	6	26	1	\N	\N	20512900896	J.C. MEDICAL SUPPLIES S.A.C.	varios	J.C. MEDICAL SUPPLIES S.A.C.	0	17525	\N	\N	\N
7535	2020-06-22	F001	4386	1181	8800	1	2020-06-01	1	0	3	2020-09-09 16:18:40.042292	2020-09-09 16:18:40.042334	6	29	1	\N	\N	20546854834	NAZCA TEX SAC	varios	NAZCA TEX SAC	0	10384	\N	\N	\N
7538	2020-06-30	1	1052	1182	127.11864406779662	1	2020-06-01	1	0	3	2020-09-09 16:18:40.042292	2020-09-09 16:18:40.042334	6	32	1	\N	\N	20601033446	R&R SERVICIOS AUTOMOTRICES S.A.C	varios	R&R SERVICIOS AUTOMOTRICES S.A.C	0	150	\N	\N	\N
7537	2020-06-23	FL01	8350	1173	40850	1	2020-06-01	1	0	3	2020-09-09 16:18:40.042292	2020-09-09 16:18:40.042334	6	31	1	\N	\N	20512900896	J.C. MEDICAL SUPPLIES S.A.C.	varios	J.C. MEDICAL SUPPLIES S.A.C.	0	48203	\N	\N	\N
7517	2020-05-29	E001	3	1174	2203.389830508475	1	2020-05-01	1	0	3	2020-08-20 13:26:05.219047	2020-08-20 13:26:05.219084	8	23	1	\N	\N	20553597685	GRUPO INGETALENTO E.I.R.L.	varios	GRUPO INGETALENTO E.I.R.L.	0	2600	\N	\N	\N
7520	2020-05-29	E001	5558	1175	1949.1610169491528	1	2020-05-01	1	0	3	2020-08-20 13:26:05.219047	2020-08-20 13:26:05.219084	8	24	1	\N	\N	20602881556	MANTENIMIENTOS "LA GOLONDRINA" E.I.R.L	varios	MANTENIMIENTOS "LA GOLONDRINA" E.I.R.L	0	2300.01	\N	\N	\N
7521	2020-05-29	E001	5569	1175	983.042372881356	1	2020-05-01	1	0	3	2020-08-20 13:26:05.219047	2020-08-20 13:26:05.219084	8	25	1	\N	\N	20602881556	MANTENIMIENTOS "LA GOLONDRINA" E.I.R.L	varios	MANTENIMIENTOS "LA GOLONDRINA" E.I.R.L	0	1159.99	\N	\N	\N
7518	2020-05-29	E001	8	1174	254.23728813559325	1	2020-05-01	1	0	3	2020-08-20 13:26:05.219047	2020-08-20 13:26:05.219084	8	26	1	\N	\N	20553597685	GRUPO INGETALENTO E.I.R.L.	varios	GRUPO INGETALENTO E.I.R.L.	0	300	\N	\N	\N
7519	2020-05-30	E001	13	1174	2203.389830508475	1	2020-05-01	1	0	3	2020-08-20 13:26:05.219047	2020-08-20 13:26:05.219084	8	27	1	\N	\N	20553597685	GRUPO INGETALENTO E.I.R.L.	varios	GRUPO INGETALENTO E.I.R.L.	0	2600	\N	\N	\N
7522	2020-05-30	E001	5581	1175	1840.5338983050847	1	2020-05-01	1	0	3	2020-08-20 13:26:05.219047	2020-08-20 13:26:05.219084	8	28	1	\N	\N	20602881556	MANTENIMIENTOS "LA GOLONDRINA" E.I.R.L	varios	MANTENIMIENTOS "LA GOLONDRINA" E.I.R.L	0	2171.83	\N	\N	\N
7523	2020-05-30	E001	5589	1175	566.3050847457628	1	2020-05-01	1	0	3	2020-08-20 13:26:05.219047	2020-08-20 13:26:05.219084	8	29	1	\N	\N	20602881556	MANTENIMIENTOS "LA GOLONDRINA" E.I.R.L	varios	MANTENIMIENTOS "LA GOLONDRINA" E.I.R.L	0	668.24	\N	\N	\N
7524	2020-05-02	E001	24	1123	10000	2	2020-05-01	1	0	3	2020-08-20 13:29:54.353446	2020-08-20 13:29:54.353481	8	9	1	\N	\N	20604622558	NT MARKETING	servicio	NT MARKETING	0	11800	\N	\N	\N
7525	2020-05-04	E001	25	1123	10000	2	2020-05-01	1	0	3	2020-08-20 13:29:54.353446	2020-08-20 13:29:54.353481	8	10	1	\N	\N	20604622558	NT MARKETING	servicio	NT MARKETING	0	11800	\N	\N	\N
7526	2020-05-18	E001	26	1176	3000	2	2020-05-01	1	0	3	2020-08-20 13:29:54.353446	2020-08-20 13:29:54.353481	8	11	1	\N	\N	20454870591	BS GRUPO S.A.C.	renovacion	BS GRUPO S.A.C.	0	3540	\N	\N	\N
7533	2020-06-04	F102	18440	1180	198.26271186440678	1	2020-06-01	1	0	1	2020-09-09 16:18:40.042292	2020-09-09 21:01:00.580961	6	27	1			20106566721	CLASS POINT S.A.	varios	CLASS POINT S.A.	0	233.95	\N	\N	\N
7534	2020-06-05	E001	524	1172	6880	1	2020-06-01	1	0	1	2020-09-09 16:18:40.042292	2020-09-09 21:01:22.786349	6	28	1			20538045781	TESSILE FORZA E.I.R.L.	varios	TESSILE FORZA E.I.R.L.	0	8118.4	\N	\N	\N
7563	2020-07-07	F952	8361	193	699.9152542372882	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	38	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	825.9	\N	\N	\N
7553	2020-07-08	F001	4480	1181	6600	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	39	1	\N	\N	20546854834	NAZCA TEX SAC	varios	NAZCA TEX SAC	0	7788	\N	\N	\N
7554	2020-07-16	F033	7543	1183	155.9322033898305	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	40	1	\N	\N	20512002090	MIFARMA SAC	varios	MIFARMA SAC	0	184	\N	\N	\N
7540	2020-06-01	E001	18	1169	29900	2	2020-06-01	1	0	3	2020-09-09 16:19:52.717251	2020-09-09 16:19:52.717287	6	7	1	\N	\N	20330401991	BANCO FALABELLA S.A.	varios	BANCO FALABELLA S.A.	0	35282	\N	\N	\N
7539	2020-06-02	E001	17	1111	54	2	2020-06-01	1	0	3	2020-09-09 16:19:52.717251	2020-09-09 16:19:52.717287	6	9	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	63.72	\N	\N	\N
7541	2020-06-05	E001	19	1111	23	2	2020-06-01	1	0	3	2020-09-09 16:19:52.717251	2020-09-09 16:19:52.717287	6	10	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	27.14	\N	\N	\N
7542	2020-06-05	E001	20	1111	46	2	2020-06-01	1	0	3	2020-09-09 16:19:52.717251	2020-09-09 16:19:52.717287	6	11	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	54.28	\N	\N	\N
7543	2020-06-05	E001	21	1169	9200	2	2020-06-01	1	0	3	2020-09-09 16:19:52.717251	2020-09-09 16:19:52.717287	6	12	1	\N	\N	20330401991	BANCO FALABELLA S.A.	varios	BANCO FALABELLA S.A.	0	10856	\N	\N	\N
7544	2020-06-18	E001	22	1169	50	2	2020-06-01	1	0	3	2020-09-09 16:19:52.717251	2020-09-09 16:19:52.717287	6	15	1	\N	\N	20330401991	BANCO FALABELLA S.A.	varios	BANCO FALABELLA S.A.	0	59	\N	\N	\N
7890	2020-11-05	F212	149266	189	69.0677966101695	1	2020-12-01	1	\N	3	2021-01-22 19:25:36.194035	2021-01-22 19:25:36.194071	6	76	1	\N	\N	20109072177	CENCOSUD RETAIL PERU S.A.	varios	CENCOSUD RETAIL PERU S.A.	0	81.5	\N	\N	\N
7558	2020-07-21	F647	5040639	189	126.35	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	41	1	\N	\N	20109072177	CENCOSUD RETAIL PERU S.A	varios	CENCOSUD RETAIL PERU S.A	0	149.093	\N	\N	\N
7557	2020-07-23	F120	705	1184	506.7300000000001	1	2020-07-01	1	0	1	2020-09-17 23:08:46.461379	2020-09-17 23:46:09.252448	6	42	1			20431062870	COMEXA COMERCIALIZADORA EXTRANJERA S.A	varios	COMEXA COMERCIALIZADORA EXTRANJERA S.A	0	597.9414	\N	\N	\N
7551	2020-07-24	F001	4588	1181	8800	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	43	1	\N	\N	20546854834	NAZCA TEX SAC	varios	NAZCA TEX SAC	0	10384	\N	\N	\N
7561	2020-07-25	FB24	390819	174	67.94915254237289	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	44	1	\N	\N	20100070970	SUPERMERCADOS PERUANOS SA	varios	SUPERMERCADOS PERUANOS SA	0	80.18	\N	\N	\N
7559	2020-07-30	F023	917	1185	45.38	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	45	1	\N	\N	20107463705	CLINICA SAN PABLO S.A.C.	varios	CLINICA SAN PABLO S.A.C.	0	53.5484	\N	\N	\N
7556	2020-07-30	F608	1844	1058	28.400000000000002	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	46	1	\N	\N	20600686691	DPP CORP S.A	varios	DPP CORP S.A	0	33.512	\N	\N	\N
7889	2020-11-05	F212	149267	189	58.974576271186436	1	2020-12-01	1	\N	3	2021-01-22 19:25:36.194035	2021-01-22 19:25:36.194071	6	77	1	\N	\N	20109072177	CENCOSUD RETAIL PERU S.A.	varios	CENCOSUD RETAIL PERU S.A.	0	69.99	\N	0.4	\N
7892	2020-11-06	F127	1805	1126	84.66101694915255	1	2020-12-01	1	\N	3	2021-01-22 19:25:36.194035	2021-01-22 19:25:36.194071	6	78	1	\N	\N	20100128056	SAGA FALABELLA S.A.	varios	SAGA FALABELLA S.A.	0	99.9	\N	\N	\N
7891	2020-11-06	F657	2004	193	69.57627118644068	1	2020-12-01	1	\N	3	2021-01-22 19:25:36.194035	2021-01-22 19:25:36.194071	6	79	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	82.1	\N	\N	\N
7893	2020-11-13	F207	3405	1126	744.9152542372882	1	2020-12-01	1	\N	3	2021-01-22 19:25:36.194035	2021-01-22 19:25:36.194071	6	80	1	\N	\N	20100128056	SAGA FALABELLA S.A.	varios	SAGA FALABELLA S.A.	0	879	\N	\N	\N
7555	2020-07-30	FA49	1310198	174	54.983050847457626	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	47	1	\N	\N	20100070970	SUPERMERCADOS PERUANOS SA	varios	SUPERMERCADOS PERUANOS SA	0	64.88	\N	\N	\N
7565	2020-03-05	FP12	953552	219	1100.8474576271187	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	33	1	\N	\N	20337564373	TIENDAS POR DEPARTAMENTO RIPLEY S.A	varios	TIENDAS POR DEPARTAMENTO RIPLEY S.A	0	1299	\N	\N	\N
7560	2020-07-31	F024	661	1185	31.305084745762713	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	48	1	\N	\N	20107463705	CLINICA SAN PABLO S.A.C.	varios	CLINICA SAN PABLO S.A.C.	0	36.94	\N	\N	\N
7564	2020-06-25	F046	2133	1185	540.3474576271187	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	34	1	\N	\N	20107463705	CLINICA SAN PABLO S.A.C.	varios	CLINICA SAN PABLO S.A.C.	0	637.61	\N	\N	\N
7562	2020-07-01	1	1053	1182	169.49152542372883	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	35	1	\N	\N	20601033446	R&R SERVICIOS AUTOMOTRICES S.A.C.	varios	R&R SERVICIOS AUTOMOTRICES S.A.C.	0	200	\N	\N	\N
7550	2020-07-01	F001	4428	1181	13200	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	36	1	\N	\N	20546854834	NAZCA TEX SAC	varios	NAZCA TEX SAC	0	15576	\N	\N	\N
7552	2020-07-03	F001	4450	1181	4400	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	37	1	\N	\N	20546854834	NAZCA TEX SAC	varios	NAZCA TEX SAC	0	5192	\N	\N	\N
7631	2020-08-03	F001	4642	1181	13200	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	51	1	\N	\N	20546854834	NAZCA TEX SAC	varios	NAZCA TEX SAC	0	15576	\N	\N	\N
7569	2020-07-07	E001	26	1169	46000	2	2020-07-01	1	0	3	2020-09-17 23:10:21.952092	2020-09-17 23:10:21.952132	6	20	1	\N	\N	20330401991	BANCO FALABELLA S.A.	varios	BANCO FALABELLA S.A.	0	54280	\N	\N	\N
7566	2020-11-05	F984	2740	193	463.3898305084746	1	2020-07-01	1	0	3	2020-09-17 23:08:46.461379	2020-09-17 23:08:46.461455	6	49	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	546.8	\N	\N	\N
7574	2020-07-07	E001	6	1169	-46000	2	2020-07-01	1	0	3	2020-09-17 23:10:21.952092	2020-09-17 23:10:21.952132	6	21	4	E001	24	20330401991	BANCO FALABELLA S.A.	varios	BANCO FALABELLA S.A.	0	-54280	\N	\N	\N
7570	2020-07-08	E001	27	1111	25	2	2020-07-01	1	0	3	2020-09-17 23:10:21.952092	2020-09-17 23:10:21.952132	6	22	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	29.5	\N	\N	\N
7571	2020-07-08	E001	28	1111	50	2	2020-07-01	1	0	3	2020-09-17 23:10:21.952092	2020-09-17 23:10:21.952132	6	23	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	59	\N	\N	\N
7572	2020-07-09	E001	29	1111	25	2	2020-07-01	1	0	3	2020-09-17 23:10:21.952092	2020-09-17 23:10:21.952132	6	24	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	29.5	\N	\N	\N
7578	2020-07-10	E001	10	1111	-46	2	2020-07-01	1	0	3	2020-09-17 23:10:21.952092	2020-09-17 23:10:21.952132	6	25	4	E001	25	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	-54.28	\N	\N	\N
7573	2020-07-10	E001	30	1169	23000	2	2020-07-01	1	0	3	2020-09-17 23:10:21.952092	2020-09-17 23:10:21.952132	6	26	1	\N	\N	20330401991	BANCO FALABELLA S.A.	varios	BANCO FALABELLA S.A.	0	27140	\N	\N	\N
7575	2020-07-10	E001	7	1111	-25	2	2020-07-01	1	0	3	2020-09-17 23:10:21.952092	2020-09-17 23:10:21.952132	6	27	4	E001	27	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	-29.5	\N	\N	\N
7576	2020-07-10	E001	8	1111	-50	2	2020-07-01	1	0	3	2020-09-17 23:10:21.952092	2020-09-17 23:10:21.952132	6	28	4	E001	28	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	-59	\N	\N	\N
7577	2020-07-10	E001	9	1111	-25	2	2020-07-01	1	0	3	2020-09-17 23:10:21.952092	2020-09-17 23:10:21.952132	6	29	4	E001	29	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	-29.5	\N	\N	\N
7586	2020-02-01	FE93	149	1191	1270.3389830508474	1	2020-07-01	1	0	3	2020-09-17 23:38:49.466163	2020-09-17 23:38:49.466201	8	30	1	\N	\N	20141189850	CONECTA RETAIL S.A	varios	CONECTA RETAIL S.A	0	1499	\N	\N	\N
7583	2020-07-08	1	352	1189	745.7627118644068	1	2020-07-01	1	0	3	2020-09-17 23:38:49.466163	2020-09-17 23:38:49.466201	8	32	1	\N	\N	20522442187	INVERSIONES DECOR CENTRO S.A.C.	varios	INVERSIONES DECOR CENTRO S.A.C.	0	880	\N	\N	\N
7602	2020-08-14	E001	19	1050	-200	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	44	4	E001	58	20603468148	Corporación Dahlee S.A.C	Nota de credito	CORPORACIÓN DAHLEE S.A.C	0	-236	\N	\N	\N
7580	2020-07-16	FE01	25	1187	583.0508474576271	1	2020-07-01	1	0	3	2020-09-17 23:38:49.466163	2020-09-17 23:38:49.466201	8	33	1	\N	\N	20601916704	DISTRIBUIDORA Y ACABADOS EDWARD S.A.C.	varios	DISTRIBUIDORA Y ACABADOS EDWARD S.A.C.	0	688	\N	\N	\N
7579	2020-07-23	E001	27	1186	6000	2	2020-07-01	1	0	3	2020-09-17 23:38:08.318227	2020-09-17 23:38:08.318274	8	12	1	\N	\N	20160766191	UNIVERSIDAD NACIONAL DE SAN MARTIN	servicio	UNIVERSIDAD NACIONAL DE SAN MARTIN	0	7080	\N	\N	\N
7582	2020-07-27	E001	10	1188	360.1694915254237	1	2020-07-01	1	0	3	2020-09-17 23:38:49.466163	2020-09-17 23:38:49.466201	8	34	1	\N	\N	10418182640	CALDERON MEDINA SERGIO ELEODORO	varios	CALDERON MEDINA SERGIO ELEODORO	0	425	\N	\N	\N
7567	2020-07-06	E001	24	1169	46000	2	2020-07-01	1	0	3	2020-09-17 23:10:21.952092	2020-09-17 23:10:21.952132	6	18	1	\N	\N	20330401991	BANCO FALABELLA S.A.	varios	BANCO FALABELLA S.A.	0	54280	\N	\N	\N
7568	2020-07-07	E001	25	1111	46	2	2020-07-01	1	0	3	2020-09-17 23:10:21.952092	2020-09-17 23:10:21.952132	6	19	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	54.28	\N	\N	\N
7581	2020-07-27	E001	236	1095	10.16949152542373	1	2020-07-01	1	0	3	2020-09-17 23:38:49.466163	2020-09-17 23:38:49.466201	8	35	1	\N	\N	20605259759	AGUA MARTHIM'S PERU E.I.R.L.	varios	AGUA MARTHIM'S PERU E.I.R.L.	0	12	\N	\N	\N
7584	2020-07-31	1	3372	1190	35.59322033898305	1	2020-07-01	1	0	3	2020-09-17 23:38:49.466163	2020-09-17 23:38:49.466201	8	36	1	\N	\N	20602023118	CORPORACION LAS AMAZONAS V & A S.A.C.	varios	CORPORACION LAS AMAZONAS V & A S.A.C.	0	42	\N	\N	\N
7603	2020-08-14	E001	20	1050	-100	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	45	4	E001	59	20603468148	Corporación Dahlee S.A.C	Nota de credito	CORPORACIÓN DAHLEE S.A.C	0	-118	\N	\N	\N
7604	2020-08-14	E001	21	1164	0	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	46	4	E001	60	20601225566	Nativa Organics S.A.C	Nota de credito	NATIVA ORGANICS S.A.C	0	0	\N	\N	\N
7601	2020-08-25	E001	67	1087	4830.51	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	60	1	\N	\N	20265815830	Corporación Turística Peruana S.A.C	Venta	CORPORACIÓN TURÍSTICA PERUANA S.A.C	0	5700.0018	\N	\N	\N
7633	2020-08-13	3	2982	1197	43.22033898305085	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	53	1	\N	\N	\t20557292552	EDH PERU E.I.R.L.	varios	EDH PERU E.I.R.L.	0	51	\N	\N	\N
7628	2020-08-05	E001	14	1111	-40.00000000000001	2	2020-08-01	1	0	3	2020-10-13 15:01:54.947482	2020-10-13 15:01:54.947553	6	38	4	E001	34	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	-47.2	\N	\N	\N
7634	2020-08-15	FH15	15090	174	19.152542372881356	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	54	1	\N	\N	20100070970	SUPERMERCADOS PERUANOS S.A.	varios	SUPERMERCADOS PERUANOS S.A.	0	22.6	\N	\N	\N
7629	2020-08-05	E001	15	1169	-36	2	2020-08-01	1	0	3	2020-10-13 15:01:54.947482	2020-10-13 15:01:54.947553	6	39	4	E001	35	20330401991	BANCO FALABELLA PERU S.A	varios	BANCO FALABELLA PERU S.A	0	-42.48	\N	\N	\N
7636	2020-08-21	F001	542	1199	593.2203389830509	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	56	1	\N	\N	20136532597	GENETICA SOCIEDAD CIVIL DE RESP.LIMITADA	varios	GENETICA SOCIEDAD CIVIL DE RESP.LIMITADA	0	700	\N	\N	\N
7632	2020-08-11	FB24	376057	174	166.03	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	52	1	\N	\N	20100070970	SUPERMERCADOS PERUANOS S.A.	varios	SUPERMERCADOS PERUANOS S.A.	0	195.9154	\N	\N	\N
7635	2020-08-20	FB39	6411	1198	19.491525423728813	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	55	1	\N	\N	20605254315	SAIDEL S.A.C	varios	SAIDEL S.A.C	0	23	\N	\N	\N
7630	2020-08-02	FB24	376010	174	108.8220338983051	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	50	1	\N	\N	20100070970	SUPERMERCADOS PERUANOS S.A.	varios	SUPERMERCADOS PERUANOS S.A.	0	128.41	\N	\N	\N
7596	2020-08-14	E001	62	1164	250	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	55	1	\N	\N	20601225566	Nativa Organics S.A.C	Venta	NATIVA ORGANICS S.A.C	0	295	\N	\N	\N
7585	2020-06-30	E001	220	1095	10.16949152542373	1	2020-07-01	1	0	3	2020-09-17 23:38:49.466163	2020-09-17 23:38:49.466201	8	31	1	\N	\N	20605259759	AGUA MARTHIM'S PERU E.I.R.L.	varios	AGUA MARTHIM'S PERU E.I.R.L.	0	12	\N	\N	\N
7597	2020-08-14	E001	63	1164	50	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	56	1	\N	\N	20601225566	Nativa Organics S.A.C	Venta	NATIVA ORGANICS S.A.C	0	59	\N	\N	\N
7598	2020-08-14	E001	64	1050	20.000000000000004	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	57	1	\N	\N	20603468148	Corporación Dahlee S.A.C	Venta	CORPORACIÓN DAHLEE S.A.C	0	23.6	\N	\N	\N
7599	2020-08-25	E001	65	1087	3635.5899999999997	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	58	1	\N	\N	20265815830	Corporación Turística Peruana S.A.C	Venta	CORPORACIÓN TURÍSTICA PERUANA S.A.C	0	4289.9962	\N	\N	\N
7600	2020-08-25	E001	66	1087	12711.87	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	59	1	\N	\N	20265815830	Corporación Turística Peruana S.A.C	Venta	CORPORACIÓN TURÍSTICA PERUANA S.A.C	0	15000.0066	\N	\N	\N
7587	2020-08-08	F618	11078	1056	855.6694915254238	1	2020-08-01	1	0	3	2020-10-07 16:30:14.832319	2020-10-07 16:30:14.832357	7	74	1	\N	\N	20378890161	Rash Peru S.A.C	Varios	RASH PERU S.A.C	0	1009.69	\N	\N	\N
7588	2020-08-09	F002	56	1084	42.96610169491526	1	2020-08-01	1	0	3	2020-10-07 16:30:14.832319	2020-10-07 16:30:14.832357	7	75	1	\N	\N	20549498478	Parrilla Campoverde E.I.R.L	Consumo	PARRILLA CAMPOVERDE E.I.R.L	0	50.7	\N	\N	\N
7589	2020-08-17	E001	32	1192	110.17	1	2020-08-01	1	0	3	2020-10-07 16:30:14.832319	2020-10-07 16:30:14.832357	7	76	1	\N	\N	20600156242	Conceptos & Negocios S.A.C	Etiquetas	CONCEPTOS & NEGOCIOS S.A.C	0	130.0006	\N	\N	\N
7590	2020-08-20	F016	271	1078	16.19	1	2020-08-01	1	0	3	2020-10-07 16:30:14.832319	2020-10-07 16:30:14.832357	7	77	1	\N	\N	20601017106	Food & Beverage Invest SAC	Consumo	FOOD & BEVERAGE INVEST SAC	0	19.1042	\N	\N	\N
7591	2020-08-25	F001	14793	1173	213.56	1	2020-08-01	1	0	3	2020-10-07 16:30:14.832319	2020-10-07 16:30:14.832357	7	78	1	\N	\N	20512900896	JC Medical Supplies SAC	Termometro y Oximetro	JC MEDICAL SUPPLIES SAC	0	252.0008	\N	\N	\N
7592	2020-08-14	E001	58	1050	200	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	51	1	\N	\N	20603468148	Corporación Dahlee S.A.C	Venta	CORPORACIÓN DAHLEE S.A.C	0	236	\N	\N	\N
7593	2020-08-14	E001	59	1050	100	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	52	1	\N	\N	20603468148	Corporación Dahlee S.A.C	Venta	CORPORACIÓN DAHLEE S.A.C	0	118	\N	\N	\N
7594	2020-08-14	E001	60	1164	200	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	53	1	\N	\N	20601225566	Nativa Organics S.A.C	Venta	NATIVA ORGANICS S.A.C	0	236	\N	\N	\N
7595	2020-08-14	E001	61	1164	100	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	54	1	\N	\N	20601225566	Nativa Organics S.A.C	Venta	NATIVA ORGANICS S.A.C	0	118	\N	\N	\N
7910	2020-12-31	E001	24	1111	-85	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	71	4	E001	32	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-100.3	\N	\N	\N
7911	2020-12-31	E001	25	1111	-85	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	72	4	E001	33	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-100.3	\N	\N	\N
7912	2020-12-31	E001	26	1111	-85	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	73	4	E001	34	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-100.3	\N	\N	\N
7913	2020-12-31	E001	27	1111	-85	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	74	4	E001	35	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-100.3	\N	\N	\N
7914	2020-12-31	E001	28	1111	-10.000000000000002	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	75	4	E001	36	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-11.8	\N	\N	\N
7915	2020-12-31	E001	29	1111	-75	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	76	4	E001	37	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-88.5	\N	\N	\N
7894	2020-12-31	E001	32	1111	85	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	77	1	\N	\N	10092676124	Carmen Perez Vega	varios	CARMEN PEREZ VEGA	0	100.3	\N	\N	\N
7621	2020-08-04	E001	33	1111	100	2	2020-08-01	1	0	3	2020-10-13 15:01:54.947482	2020-10-13 15:01:54.947553	6	35	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	118	\N	\N	\N
7622	2020-08-04	E001	34	1111	40.00000000000001	2	2020-08-01	1	0	3	2020-10-13 15:01:54.947482	2020-10-13 15:01:54.947553	6	36	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	47.2	\N	\N	\N
7605	2020-08-14	E001	22	1164	-100	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	47	4	E001	61	20601225566	Nativa Organics S.A.C	Nota de credito	NATIVA ORGANICS S.A.C	0	-118	\N	\N	\N
7606	2020-08-14	E001	23	1164	-250	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	48	4	E001	62	20601225566	Nativa Organics S.A.C	Nota de credito	NATIVA ORGANICS S.A.C	0	-295	\N	\N	\N
7607	2020-08-14	E001	24	1164	-50	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	49	4	E001	63	20601225566	Nativa Organics S.A.C	Nota de credito	NATIVA ORGANICS S.A.C	0	-59	\N	\N	\N
7608	2020-08-14	E001	25	1050	0	2	2020-08-01	1	0	3	2020-10-07 16:31:18.519537	2020-10-07 16:31:18.519578	7	50	4	E001	64	20603468148	Corporación Dahlee S.A.C	Nota de credito	CORPORACIÓN DAHLEE S.A.C	0	0	\N	\N	\N
7623	2020-08-04	E001	35	1169	36	2	2020-08-01	1	0	3	2020-10-13 15:01:54.947482	2020-10-13 15:01:54.947553	6	37	1	\N	\N	20330401991	BANCO FALABELLA PERU S.A	varios	BANCO FALABELLA PERU S.A	0	42.48	\N	\N	\N
7624	2020-08-05	E001	36	1169	36000	2	2020-08-01	1	0	3	2020-10-13 15:01:54.947482	2020-10-13 15:01:54.947553	6	40	1	\N	\N	20330401991	BANCO FALABELLA PERU S.A	varios	BANCO FALABELLA PERU S.A	0	42480	\N	\N	\N
7616	2020-08-05	E001	28	1195	3000	2	2020-08-01	1	0	3	2020-10-07 16:41:58.377636	2020-10-07 16:41:58.377709	8	13	1	\N	\N	20138149022 	UNIVERSIDAD DE SAN MARTIN DE PORRES 	servicio	UNIVERSIDAD DE SAN MARTIN DE PORRES 	0	3540	\N	\N	\N
7617	2020-08-12	E001	29	1123	15000	2	2020-08-01	1	0	3	2020-10-07 16:41:58.377636	2020-10-07 16:41:58.377709	8	14	1	\N	\N	20604622558	NT MARKETING SOCIEDAD ANONIMA CERRADA - NT MARKETING S.A.C. 	servicio	NT MARKETING SOCIEDAD ANONIMA CERRADA - NT MARKETING S.A.C. 	0	17700	\N	\N	\N
7618	2020-08-20	E001	30	1196	4000	2	2020-08-01	1	0	3	2020-10-07 16:41:58.377636	2020-10-07 16:41:58.377709	8	15	1	\N	\N	20138122256 	UNIVERSIDAD PERUANA UNION 	servicio	UNIVERSIDAD PERUANA UNION 	0	4720	\N	\N	\N
7614	2020-02-27	F029	833	1091	253.3050847457627	1	2020-08-01	1	0	3	2020-10-07 16:38:07.429742	2020-10-07 16:38:07.429806	8	37	1	\N	\N	20510069251	DH EMPRESAS PERU S.A.	varios	DH EMPRESAS PERU S.A.	0	298.9	\N	\N	\N
7615	2020-03-02	FA56	1546700	174	139.40677966101697	1	2020-08-01	1	0	3	2020-10-07 16:38:07.429742	2020-10-07 16:38:07.429806	8	38	1	\N	\N	20100070970	SUPERMERCADOS PERUANOS S.A.	varios	SUPERMERCADOS PERUANOS S.A.	0	164.5	\N	\N	\N
7609	2020-08-20	F401	3265	1193	384.60169491525426	1	2020-08-01	1	0	3	2020-10-07 16:38:07.429742	2020-10-07 16:38:07.429806	8	39	1	\N	\N	20466776336	CENTRO CERAMICO LAS FLORES S.A.C.	varios	CENTRO CERAMICO LAS FLORES S.A.C.	0	453.83	\N	\N	\N
7610	2020-08-21	FE01	41	1187	63.45762711864407	1	2020-08-01	1	0	3	2020-10-07 16:38:07.429742	2020-10-07 16:38:07.429806	8	40	1	\N	\N	20601916704	DISTRIBUIDORA Y ACABADOS EDWARD S.A.C.	varios	DISTRIBUIDORA Y ACABADOS EDWARD S.A.C.	0	74.88	\N	\N	\N
7611	2020-08-31	E001	1	1194	2911.0169491525426	1	2020-08-01	1	0	3	2020-10-07 16:38:07.429742	2020-10-07 16:38:07.429806	8	41	1	\N	\N	20550653819	MUEBLES JIREH EIRL	varios	MUEBLES JIREH EIRL	0	3435	\N	\N	\N
7612	2020-08-31	E001	19	1174	2864.406779661017	1	2020-08-01	1	0	3	2020-10-07 16:38:07.429742	2020-10-07 16:38:07.429806	8	42	1	\N	\N	20553597685	GRUPO INGETALENTO E.I.R.L.	varios	GRUPO INGETALENTO E.I.R.L.	0	3380	\N	\N	\N
7613	2020-08-31	E001	6253	1175	2699.161016949153	1	2020-08-01	1	0	3	2020-10-07 16:38:07.429742	2020-10-07 16:38:07.429806	8	43	1	\N	\N	20602881556	MANTENIMIENTOS LA GOLONDRINA E.I.R.L	varios	MANTENIMIENTOS LA GOLONDRINA E.I.R.L	0	3185.01	\N	\N	\N
7625	2020-08-04	E001	11	1111	-40.00000000000001	2	2020-08-01	1	0	3	2020-10-13 15:01:54.947482	2020-10-13 15:01:54.947553	6	30	4	E001	31	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	-47.2	\N	\N	\N
7626	2020-08-04	E001	12	1111	-20.000000000000004	2	2020-08-01	1	0	3	2020-10-13 15:01:54.947482	2020-10-13 15:01:54.947553	6	31	4	E001	32	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	-23.6	\N	\N	\N
7627	2020-08-04	E001	13	1111	-100	2	2020-08-01	1	0	3	2020-10-13 15:01:54.947482	2020-10-13 15:01:54.947553	6	32	4	E001	33	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	-118	\N	\N	\N
7619	2020-08-04	E001	31	1111	40.00000000000001	2	2020-08-01	1	0	3	2020-10-13 15:01:54.947482	2020-10-13 15:01:54.947553	6	33	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	47.2	\N	\N	\N
7620	2020-08-04	E001	32	1111	20.000000000000004	2	2020-08-01	1	0	3	2020-10-13 15:01:54.947482	2020-10-13 15:01:54.947553	6	34	1	\N	\N	10092676124	PEREZ VEGA CARMEN	varios	PEREZ VEGA CARMEN	0	23.6	\N	\N	\N
7642	2020-08-27	F644	21155	1056	67.71186440677967	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	62	1	\N	\N	20378890161	RASH PERU S.A.C	varios	RASH PERU S.A.C	0	79.9	\N	\N	\N
7643	2020-08-31	F208	71785	189	207.95762711864407	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	63	1	\N	\N	20109072177	CENCOSUD RETAIL PERU S.A.	varios	CENCOSUD RETAIL PERU S.A.	0	245.39	\N	\N	\N
7637	2020-08-21	F215	123022	189	118.46610169491525	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	57	1	\N	\N	20109072177	CENCOSUD RETAIL PERU S.A.	varios	CENCOSUD RETAIL PERU S.A.	0	139.79	\N	\N	\N
7638	2020-08-25	F001	14809	1173	14.40677966101695	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	58	1	\N	\N	20512900896	 J.C MEDICAL SUPPLIES S.A.C.	varios	 J.C MEDICAL SUPPLIES S.A.C.	0	17	\N	\N	\N
7639	2020-08-26	F001	4823	1181	8800	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	59	1	\N	\N	20546854834	NAZCA TEX SAC	varios	NAZCA TEX SAC	0	10384	\N	\N	\N
7640	2020-08-27	F102	18734	1180	237.3813559322034	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	60	1	\N	\N	20106566721	CLASS POINT S.A.	varios	CLASS POINT S.A.	0	280.11	\N	\N	\N
7641	2020-08-27	F120	731	1184	50.59322033898306	1	2020-08-01	1	0	3	2020-10-13 15:02:47.872161	2020-10-13 15:02:47.872232	6	61	1	\N	\N	20431062870	COMEXA COMERCIALIZADORA EXTRANJERA S.A	varios	COMEXA COMERCIALIZADORA EXTRANJERA S.A	0	59.7	\N	\N	\N
7644	2020-09-03	E001	79	1188	245.76271186440678	1	2020-09-01	1	0	3	2020-10-19 17:46:00.28947	2020-10-19 17:46:00.28957	8	44	1	\N	\N	10418182640	CALDERON MEDINA SERGIO ELEODORO	varios	CALDERON MEDINA SERGIO ELEODORO	0	290	\N	\N	\N
7645	2020-09-03	F581	2735831	1200	483.0508474576271	1	2020-09-01	1	0	3	2020-10-19 17:46:00.28947	2020-10-19 17:46:00.28957	8	45	1	\N	\N	20100041953	RIMAC SEGUROS Y REASEGUROS	varios	RIMAC SEGUROS Y REASEGUROS	0	570	\N	\N	\N
7646	2020-09-03	F581	2735832	1200	458.4745762711865	1	2020-09-01	1	0	3	2020-10-19 17:46:00.28947	2020-10-19 17:46:00.28957	8	46	1	\N	\N	20100041953	RIMAC SEGUROS Y REASEGUROS	varios	RIMAC SEGUROS Y REASEGUROS	0	541	\N	\N	\N
7647	2020-09-04	E001	83	1188	56.779661016949156	1	2020-09-01	1	0	3	2020-10-19 17:46:00.28947	2020-10-19 17:46:00.28957	8	47	1	\N	\N	10418182640	CALDERON MEDINA SERGIO ELEODORO	varios	CALDERON MEDINA SERGIO ELEODORO	0	67	\N	\N	\N
7659	2020-09-24	F205	5182	1204	30.262711864406782	1	2020-09-01	1	0	3	2020-10-19 17:46:59.947266	2020-10-19 17:46:59.947335	7	81	1	\N	\N	20552991371	Rong Wei S.A.C	Varios	RONG WEI S.A.C	0	35.71	\N	\N	\N
7648	2020-09-07	1	3523	1190	27.118644067796613	1	2020-09-01	1	0	3	2020-10-19 17:46:00.28947	2020-10-19 17:46:00.28957	8	48	1	\N	\N	20602023118	CORPORACION LAS AMAZONAS V & A S.A.C.	varios	CORPORACION LAS AMAZONAS V & A S.A.C.	0	32	\N	\N	\N
7649	2020-09-08	E001	91	1188	24.576271186440678	1	2020-09-01	1	0	3	2020-10-19 17:46:00.28947	2020-10-19 17:46:00.28957	8	49	1	\N	\N	10418182640	CALDERON MEDINA SERGIO ELEODORO	varios	CALDERON MEDINA SERGIO ELEODORO	0	29	\N	\N	\N
7651	2020-09-09	E001	270	1095	10.16949152542373	1	2020-09-01	1	0	3	2020-10-19 17:46:00.28947	2020-10-19 17:46:00.28957	8	50	1	\N	\N	20605259759	AGUA MARTHIM'S PERU E.I.R.L.	varios	AGUA MARTHIM'S PERU E.I.R.L.	0	12	\N	\N	\N
7650	2020-09-09	E001	94	1188	32.20338983050848	1	2020-09-01	1	0	3	2020-10-19 17:46:00.28947	2020-10-19 17:46:00.28957	8	51	1	\N	\N	10418182640	CALDERON MEDINA SERGIO ELEODORO	varios	CALDERON MEDINA SERGIO ELEODORO	0	38	\N	\N	\N
7652	2020-09-20	F019	77123	1201	144.91525423728814	1	2020-09-01	1	0	3	2020-10-19 17:46:00.28947	2020-10-19 17:46:00.28957	8	52	1	\N	\N	20147720492	LABORATORIOS ROE S.A	varios	LABORATORIOS ROE S.A	0	171	\N	\N	\N
7653	2020-09-21	F769	9253	193	305.08474576271186	1	2020-09-01	1	0	3	2020-10-19 17:46:00.28947	2020-10-19 17:46:00.28957	8	53	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	360	\N	\N	\N
7654	2020-09-21	FA17	724912	358	259.3220338983051	1	2020-09-01	1	0	3	2020-10-19 17:46:00.28947	2020-10-19 17:46:00.28957	8	54	1	\N	\N	20536557858	HOMECENTERS PERUANOS S.A.	varios	HOMECENTERS PERUANOS S.A.	0	306	\N	\N	\N
7663	2020-09-18	FT03	1155220	1206	513.8813559322034	1	2020-09-01	1	0	3	2020-10-20 17:55:23.982561	2020-10-20 17:55:23.982604	6	68	1	\N	\N	20492092313	MAKRO SUPERMAYORISTA S.A.	varios	MAKRO SUPERMAYORISTA S.A.	0	606.38	\N	\N	\N
7655	2020-09-04	FA30	183892	358	23.220338983050848	1	2020-09-01	1	0	3	2020-10-19 17:46:59.947266	2020-10-19 17:46:59.947335	7	79	1	\N	\N	20536557858	Homecenters Peruanas S.A	Varios	HOMECENTERS PERUANAS S.A	0	27.4	\N	\N	\N
7656	2020-09-21	F410	15144	1056	170.0762711864407	1	2020-09-01	1	0	3	2020-10-19 17:46:59.947266	2020-10-19 17:46:59.947335	7	80	1	\N	\N	20378890161	Rash Peru S.A.C	Varios	RASH PERU S.A.C	0	200.69	\N	\N	\N
7664	2020-09-19	1	1123	1182	152.54237288135593	1	2020-09-01	1	0	3	2020-10-20 17:55:23.982561	2020-10-20 17:55:23.982604	6	69	1	\N	\N	20601033446	R & R SERVICIOS AUTOMOTRICES S.A.C.	varios	R & R SERVICIOS AUTOMOTRICES S.A.C.	0	180	\N	\N	\N
7658	2020-09-25	F037	461	1203	62.203389830508485	1	2020-09-01	1	0	3	2020-10-19 17:46:59.947266	2020-10-19 17:46:59.947335	7	82	1	\N	\N	20536676865	Villa Invest S.A.C	Varios	VILLA INVEST S.A.C	0	73.4	\N	\N	\N
7657	2020-09-27	F001	17115	1202	146.33898305084747	1	2020-09-01	1	0	3	2020-10-19 17:46:59.947266	2020-10-19 17:46:59.947335	7	83	1	\N	\N	20602310711	Inversiones Justafor Dos S.A.C	Varios	INVERSIONES JUSTAFOR DOS S.A.C	0	172.68	\N	\N	\N
7665	2020-08-31	E001	228	1207	8474.57627118644	1	2020-09-01	1	0	3	2020-10-20 17:55:23.982561	2020-10-20 17:55:23.982604	6	64	1	\N	\N	20605986162	BLASCOLOR PERU E.I.R.L.	varios	BLASCOLOR PERU E.I.R.L.	0	10000	\N	\N	\N
7660	2020-09-04	F001	4871	1181	13200	1	2020-09-01	1	0	3	2020-10-20 17:55:23.982561	2020-10-20 17:55:23.982604	6	65	1	\N	\N	20546854834	NAZCA TEX SAC	varios	NAZCA TEX SAC	0	15576	\N	\N	\N
7661	2020-09-07	E001	150	1205	4466.1016949152545	1	2020-09-01	1	0	3	2020-10-20 17:55:23.982561	2020-10-20 17:55:23.982604	6	66	1	\N	\N	20522533905	GENWA INTERNACIONAL E.I.R.L	varios	GENWA INTERNACIONAL E.I.R.L	0	5270	\N	\N	\N
7662	2020-09-07	E001	151	1205	55.07627118644068	1	2020-09-01	1	0	3	2020-10-20 17:55:23.982561	2020-10-20 17:55:23.982604	6	67	1	\N	\N	20522533905	GENWA INTERNACIONAL E.I.R.L	varios	GENWA INTERNACIONAL E.I.R.L	0	64.99	\N	\N	\N
7667	2020-09-02	E001	38	1208	24	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	42	1	\N	\N	20330401991 	BANCO FALABELLA PERU S.A 	varios	BANCO FALABELLA PERU S.A 	0	28.32	\N	\N	\N
7668	2020-09-03	E001	39	1209	24	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	43	1	\N	\N	10101503882	HUANACUNI CANDIA RAUL	varios	HUANACUNI CANDIA RAUL	0	28.32	\N	\N	\N
7666	2020-09-02	E001	37	1208	24	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	41	1	\N	\N	20330401991 	BANCO FALABELLA PERU S.A 	varios	BANCO FALABELLA PERU S.A 	0	28.32	\N	\N	\N
7669	2020-09-03	E001	40	1209	24	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	44	1	\N	\N	10101503882	HUANACUNI CANDIA RAUL	varios	HUANACUNI CANDIA RAUL	0	28.32	\N	\N	\N
7673	2020-09-04	E001	16	1208	-24	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	45	4	E001	37	20330401991 	BANCO FALABELLA PERU S.A 	varios	BANCO FALABELLA PERU S.A 	0	-28.32	\N	\N	\N
7679	2020-09-12	E001	617	1172	2039.6016949152543	1	2020-09-01	1	0	3	2020-10-20 18:02:23.972167	2020-10-20 18:02:23.972226	9	1	1	\N	\N	20538045781	Tessile Forza E.I.R.L	Producción Sabrina	TESSILE FORZA E.I.R.L	0	2406.73	\N	\N	\N
7674	2020-09-04	E001	17	1208	-24	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	46	4	E001	38	20330401991 	BANCO FALABELLA PERU S.A 	varios	BANCO FALABELLA PERU S.A 	0	-28.32	\N	\N	\N
7675	2020-09-04	E001	18	1209	-24	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	47	4	E001	39	10101503882	HUANACUNI CANDIA RAUL	varios	HUANACUNI CANDIA RAUL	0	-28.32	\N	\N	\N
7676	2020-09-04	E001	19	1209	-24	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	48	4	E001	40	10101503882	HUANACUNI CANDIA RAUL	varios	HUANACUNI CANDIA RAUL	0	-28.32	\N	\N	\N
7670	2020-09-04	E001	41	1208	36000	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	49	1	\N	\N	20330401991 	BANCO FALABELLA PERU S.A 	varios	BANCO FALABELLA PERU S.A 	0	42480	\N	\N	\N
7671	2020-09-17	E001	42	1210	472.00000000000006	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	50	1	\N	\N	20605941568	NOVENTAYOCHO PUBLICIDAD S.A.C.	varios	NOVENTAYOCHO PUBLICIDAD S.A.C.	0	556.96	\N	\N	\N
7672	2020-09-17	E001	43	1210	400	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	51	1	\N	\N	20605941568	NOVENTAYOCHO PUBLICIDAD S.A.C.	varios	NOVENTAYOCHO PUBLICIDAD S.A.C.	0	472	\N	\N	\N
7677	2020-09-25	E001	20	1210	-472.00000000000006	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	52	4	E001	42	20605941568	NOVENTAYOCHO PUBLICIDAD S.A.C.	varios	NOVENTAYOCHO PUBLICIDAD S.A.C.	0	-556.96	\N	\N	\N
7678	2020-09-25	E001	21	1210	-400	2	2020-09-01	1	0	3	2020-10-20 17:57:05.523088	2020-10-20 17:57:05.523151	6	53	4	E001	43	20605941568	NOVENTAYOCHO PUBLICIDAD S.A.C.	varios	NOVENTAYOCHO PUBLICIDAD S.A.C.	0	-472	\N	\N	\N
7695	2020-09-17	EB01	12	1215	184.74576271186442	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	13	2	\N	\N	47504483 	ANDREA SYLVIA BOLOÑA CUEVAS	Conjunto Sabrina	ANDREA SYLVIA BOLOÑA CUEVAS	0	218	\N	\N	\N
7680	2020-09-14	1	3819	1211	435	1	2020-09-01	1	0	3	2020-10-20 18:02:23.972167	2020-10-20 18:02:23.972226	9	2	1	\N	\N	20468557879	FBR Impresiones E.I.R.L	Bolsas Ecológicas y Etiquetas	FBR IMPRESIONES E.I.R.L	0	513.3	\N	\N	\N
7681	2020-09-15	E001	195	1212	42.37288135593221	1	2020-09-01	1	0	3	2020-10-20 18:02:23.972167	2020-10-20 18:02:23.972226	9	3	1	\N	\N	20555957042	Le Coquelicot E.I.R.L	Taller Online	LE COQUELICOT E.I.R.L	0	50	\N	\N	\N
7682	2020-09-19	F155	3502	1213	0.8474576271186441	1	2020-09-01	1	0	3	2020-10-20 18:02:23.972167	2020-10-20 18:02:23.972226	9	4	1	\N	\N	20467534026	América Móvil Perú S.A.C.	Chip	AMÉRICA MÓVIL PERÚ S.A.C.	0	1	\N	\N	\N
7683	2020-09-20	T001	8498297	1213	43.64406779661017	1	2020-09-01	1	0	3	2020-10-20 18:02:23.972167	2020-10-20 18:02:23.972226	9	5	1	\N	\N	20467534026	América Móvil Perú S.A.C.	Linea Telefonica	AMÉRICA MÓVIL PERÚ S.A.C.	0	51.5	\N	\N	\N
7688	2020-09-08	EB01	5	1214	92.37288135593221	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	8	2	\N	\N	73190852 	CLAUDIA ALEJANDRA MEZA VELIT 	Conjunto Sabrina	CLAUDIA ALEJANDRA MEZA VELIT 	0	109	\N	\N	\N
7696	2020-09-30	E001	1	1111	100	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	14	1	\N	\N	10092676124	Carmen Perez Vega	Mascarillas	CARMEN PEREZ VEGA	0	118	\N	\N	\N
7694	2020-09-08	EB01	11	1215	75.42372881355932	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	4	2	\N	\N	47504483 	ANDREA SYLVIA BOLOÑA CUEVAS	Conjunto Sabrina	ANDREA SYLVIA BOLOÑA CUEVAS	0	89	\N	\N	\N
7685	2020-09-08	EB01	2	1214	75.42372881355932	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	5	2	\N	\N	73190852 	CLAUDIA ALEJANDRA MEZA VELIT 	Conjunto Sabrina	CLAUDIA ALEJANDRA MEZA VELIT 	0	89	\N	\N	\N
7689	2020-09-08	EB01	6	1214	92.37288135593221	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	9	2	\N	\N	73190852 	CLAUDIA ALEJANDRA MEZA VELIT 	Conjunto Sabrina	CLAUDIA ALEJANDRA MEZA VELIT 	0	109	\N	\N	\N
7690	2020-09-08	EB01	7	1214	75.42372881355932	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	10	2	\N	\N	73190852 	CLAUDIA ALEJANDRA MEZA VELIT 	Conjunto Sabrina	CLAUDIA ALEJANDRA MEZA VELIT 	0	89	\N	\N	\N
7691	2020-09-08	EB01	8	1214	75.42372881355932	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	11	2	\N	\N	73190852 	CLAUDIA ALEJANDRA MEZA VELIT 	Conjunto Sabrina	CLAUDIA ALEJANDRA MEZA VELIT 	0	89	\N	\N	\N
7692	2020-09-08	EB01	9	1214	92.37288135593221	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	12	2	\N	\N	73190852 	CLAUDIA ALEJANDRA MEZA VELIT 	Conjunto Sabrina	CLAUDIA ALEJANDRA MEZA VELIT 	0	109	\N	\N	\N
7686	2020-09-08	EB01	3	1214	92.37288135593221	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	6	2	\N	\N	73190852 	CLAUDIA ALEJANDRA MEZA VELIT 	Conjunto Sabrina	CLAUDIA ALEJANDRA MEZA VELIT 	0	109	\N	\N	\N
7693	2020-09-08	EB01	10	1215	92.37288135593221	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	3	2	\N	\N	47504483 	ANDREA SYLVIA BOLOÑA CUEVAS	Conjunto Sabrina	ANDREA SYLVIA BOLOÑA CUEVAS	0	109	\N	\N	\N
7687	2020-09-08	EB01	4	1214	92.37288135593221	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	7	2	\N	\N	73190852 	CLAUDIA ALEJANDRA MEZA VELIT 	Conjunto Sabrina	CLAUDIA ALEJANDRA MEZA VELIT 	0	109	\N	\N	\N
7705	2020-10-07	F002	2920	1220	61.74576271186441	1	2020-10-01	1	0	3	2020-11-17 18:05:57.854662	2020-11-17 18:05:57.854717	9	9	1	\N	\N	20521788942	Estudio Textil S.A.C	Muestra Rib Acanalado	ESTUDIO TEXTIL S.A.C	0	72.86	\N	\N	\N
7707	2020-10-13	F001	2265	1221	54.24000000000001	1	2020-10-01	1	0	3	2020-11-17 18:05:57.854662	2020-11-17 18:05:57.854717	9	10	1	\N	\N	20601523851	Pada Textil S.A.C	Rib Acanalado	PADA TEXTIL S.A.C	0	64.0032	\N	\N	\N
7708	2020-10-20	SB01	7440583	1213	42.28	1	2020-10-01	1	0	3	2020-11-17 18:05:57.854662	2020-11-17 18:05:57.854717	9	11	1	\N	\N	20467534026	América Móvil Perú S.A.C.	Recibo Claro	AMÉRICA MÓVIL PERÚ S.A.C.	0	49.8904	\N	\N	\N
7697	2020-09-08	EB01	1	1214	0	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	1	4	EB01	1	73190852 	CLAUDIA ALEJANDRA MEZA VELIT 	nota de credito	CLAUDIA ALEJANDRA MEZA VELIT 	0	0	\N	\N	\N
7684	2020-09-08	EB01	1	1214	92.37288135593221	2	2020-09-01	1	0	3	2020-10-20 18:03:25.352064	2020-10-20 18:03:25.352104	9	2	2	\N	\N	73190852 	CLAUDIA ALEJANDRA MEZA VELIT 	Conjunto Sabrina	CLAUDIA ALEJANDRA MEZA VELIT 	0	109	\N	\N	\N
7896	2020-12-31	E001	34	1111	85	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	79	1	\N	\N	10092676124	Carmen Perez Vega	varios	CARMEN PEREZ VEGA	0	100.3	\N	\N	\N
7897	2020-12-31	E001	35	1111	85	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	80	1	\N	\N	10092676124	Carmen Perez Vega	varios	CARMEN PEREZ VEGA	0	100.3	\N	\N	\N
7898	2020-12-31	E001	36	1111	10.000000000000002	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	81	1	\N	\N	10092676124	Carmen Perez Vega	varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
7703	2020-10-01	E001	106	1218	2400	1	2020-10-01	1	0	3	2020-11-17 18:05:57.854662	2020-11-17 18:05:57.854717	9	6	1	\N	\N	20605815805	Montana Peru S.A.C	Mandiles	MONTANA PERU S.A.C	0	2832	\N	\N	\N
7706	2020-10-07	E001	110	1218	9600	1	2020-10-01	1	0	3	2020-11-17 18:05:57.854662	2020-11-17 18:05:57.854717	9	7	1	\N	\N	20605815805	Montana Peru S.A.C	Mandiles	MONTANA PERU S.A.C	0	11328	\N	\N	\N
7704	2020-10-07	F001	2136	1219	61.02000000000001	1	2020-10-01	1	0	3	2020-11-17 18:05:57.854662	2020-11-17 18:05:57.854717	9	8	1	\N	\N	20600643127	Textiles Gonzalo E.I.R.L	Muestra Tela Denim	TEXTILES GONZALO E.I.R.L	0	72.0036	\N	\N	\N
7698	2020-10-13	F001	16146	1173	44.067796610169495	1	2020-10-01	1	0	3	2020-11-17 16:27:36.568308	2020-11-17 16:27:36.568389	7	84	1	\N	\N	20512900896	J.C MEDICAL SUPPLIES S.A.C.	Varios	J.C MEDICAL SUPPLIES S.A.C.	0	52	\N	\N	\N
7699	2020-10-25	F001	936	1216	54.237288135593225	1	2020-10-01	1	0	3	2020-11-17 16:27:36.568308	2020-11-17 16:27:36.568389	7	85	1	\N	\N	20521704943	Pizzas & Pastas Bambino Due E.I.R.L	Varios	PIZZAS & PASTAS BAMBINO DUE E.I.R.L	0	64	\N	\N	\N
7700	2020-10-26	F001	392	1217	159.33050847457628	1	2020-10-01	1	0	3	2020-11-17 16:27:36.568308	2020-11-17 16:27:36.568389	7	86	1	\N	\N	20603706804	PORMAYOR.PE S.A.	Varios	PORMAYOR.PE S.A.	0	188.01	\N	\N	\N
7899	2020-12-31	E001	37	1111	75	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	82	1	\N	\N	10092676124	Carmen Perez Vega	varios	CARMEN PEREZ VEGA	0	88.5	\N	\N	\N
7900	2020-12-31	E001	38	1169	1000	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	83	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	varios	BANCO FALABELLA PERU S.A.C	0	1180	\N	\N	\N
7901	2020-12-14	E001	15	1111	-59.32203389830509	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	62	4	E001	17	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-70	\N	\N	\N
7902	2020-12-14	E001	16	1111	-29.661016949152543	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	63	4	E001	18	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-35	\N	\N	\N
7903	2020-12-14	E001	17	1111	-73.72881355932203	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	64	4	E001	20	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-87	\N	\N	\N
7904	2020-12-14	E001	18	1111	-70	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	65	4	E001	24	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-82.6	\N	\N	\N
7905	2020-12-14	E001	19	1111	-80.00000000000001	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	66	4	E001	25	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-94.4	\N	\N	\N
7906	2020-12-14	E001	20	1111	-10.000000000000002	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	67	4	E001	26	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-11.8	\N	\N	\N
7907	2020-12-14	E001	21	1111	-35	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	68	4	E001	27	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-41.3	\N	\N	\N
7895	2020-12-31	E001	33	1111	85	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	78	1	\N	\N	10092676124	Carmen Perez Vega	varios	CARMEN PEREZ VEGA	0	100.3	\N	\N	\N
7715	2020-10-03	E001	2	1111	100	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	16	1	\N	\N	10092676124	Carmen Perez Vega	Mascarillas	CARMEN PEREZ VEGA	0	118	\N	\N	\N
7716	2020-10-12	E001	3	1111	126.27118600000001	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	20	1	\N	\N	10092676124	Carmen Perez Vega	Conjunto Sabrina	CARMEN PEREZ VEGA	0	148.99999948	\N	\N	\N
7717	2020-10-12	E001	4	1111	126.27118600000001	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	21	1	\N	\N	10092676124	Carmen Perez Vega	Conjunto Sabrina	CARMEN PEREZ VEGA	0	148.99999948	\N	\N	\N
7718	2020-10-12	E001	5	1111	10.000000000000002	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	22	1	\N	\N	10092676124	Carmen Perez Vega	Mascarillas	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
7719	2020-10-12	E001	6	1111	10.000000000000002	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	23	1	\N	\N	10092676124	Carmen Perez Vega	Mascarillas	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
7710	2020-10-23	F001	16438	1173	353.39000000000004	1	2020-10-01	1	0	3	2020-11-17 18:05:57.854662	2020-11-17 18:05:57.854717	9	12	1	\N	\N	20512900896	JC Medical Supplies	Termometro Infrarrojo	JC MEDICAL SUPPLIES	0	417.0002	\N	\N	\N
7709	2020-10-23	F002	504	1222	2838.98	1	2020-10-01	1	0	3	2020-11-17 18:05:57.854662	2020-11-17 18:05:57.854717	9	13	1	\N	\N	20552688512	Importaciones Tradiano S.A.C	Muñecos Navideños	IMPORTACIONES TRADIANO S.A.C	0	3349.9964	\N	\N	\N
7711	2020-10-25	FC10	13590	1223	79.37288135593221	1	2020-10-01	1	0	3	2020-11-17 18:05:57.854662	2020-11-17 18:05:57.854717	9	14	1	\N	\N	20543722309	Cindel S.A	Consumo	CINDEL S.A	0	93.66	\N	\N	\N
7712	2020-10-26	E001	114	1218	2400	1	2020-10-01	1	0	3	2020-11-17 18:05:57.854662	2020-11-17 18:05:57.854717	9	15	1	\N	\N	20605815805	Montana Peru S.A.C	Mandiles	MONTANA PERU S.A.C	0	2832	\N	\N	\N
7713	2020-10-27	F002	546	1222	762.71	1	2020-10-01	1	0	3	2020-11-17 18:05:57.854662	2020-11-17 18:05:57.854717	9	16	1	\N	\N	20552688512	Importaciones Tradiano S.A.C	Muñecos Navideños	IMPORTACIONES TRADIANO S.A.C	0	899.9978	\N	\N	\N
7714	2020-10-28	1	2446	1224	1203.39	1	2020-10-01	1	0	3	2020-11-17 18:05:57.854662	2020-11-17 18:05:57.854717	9	17	1	\N	\N	20600505166	Etibor E.I.R.L	Botones y Placas	ETIBOR E.I.R.L	0	1420.0002	\N	\N	\N
7720	2020-10-12	E001	7	1111	120	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	24	1	\N	\N	10092676124	Carmen Perez Vega	Termometro	CARMEN PEREZ VEGA	0	141.6	\N	\N	\N
7721	2020-10-12	E001	8	1111	100	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	25	1	\N	\N	10092676124	Carmen Perez Vega	Mascarillas	CARMEN PEREZ VEGA	0	118	\N	\N	\N
7722	2020-10-12	E001	9	1111	10.000000000000002	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	26	1	\N	\N	10092676124	Carmen Perez Vega	Mascarillas	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
7739	2020-10-31	E001	10	1111	-120	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	36	4	E001	10	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-141.6	\N	\N	\N
7740	2020-10-31	E001	11	1111	-115	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	37	4	E001	11	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-135.7	\N	\N	\N
7749	2020-10-24	F903	13977	1056	43.22033898305085	1	2020-10-01	1	0	3	2020-11-19 22:03:30.841491	2020-11-19 22:03:30.841597	8	64	1	\N	\N	20378890161	RASH PERU S.A.C.	varios	RASH PERU S.A.C.	0	51	\N	\N	\N
7741	2020-10-31	E001	12	1111	-100.847458	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	38	4	E001	13	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-119.00000044	\N	\N	\N
7730	2020-10-03	E001	1	1111	-100	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	15	4	E001	1	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-118	\N	\N	\N
7723	2020-10-12	E001	10	1111	120	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	17	1	\N	\N	10092676124	Carmen Perez Vega	Termometro	CARMEN PEREZ VEGA	0	141.6	\N	\N	\N
7724	2020-10-12	E001	11	1111	115	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	18	1	\N	\N	10092676124	Carmen Perez Vega	Conjunto Tomas	CARMEN PEREZ VEGA	0	135.7	\N	\N	\N
7725	2020-10-12	E001	12	1169	19800	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	19	1	\N	\N	20330401991	Banco Falabella Perua S.A.C	Mandiles Notex	BANCO FALABELLA PERUA S.A.C	0	23364	\N	\N	\N
7726	2020-10-29	E001	13	1111	100.847458	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	27	1	\N	\N	10092676124	Carmen Perez Vega	Conjunto Tomas S	CARMEN PEREZ VEGA	0	119.00000044	\N	\N	\N
7727	2020-10-29	E001	14	1111	10.000000000000002	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	28	1	\N	\N	10092676124	Carmen Perez Vega	Mascarillas	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
7728	2020-10-29	E001	15	1111	5.000000000000001	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	29	1	\N	\N	10092676124	Carmen Perez Vega	Mascarillas	CARMEN PEREZ VEGA	0	5.9	\N	\N	\N
7742	2020-10-31	E001	13	1111	-10.000000000000002	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	39	4	E001	14	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-11.8	\N	\N	\N
7743	2020-10-31	E001	14	1111	-5.000000000000001	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	40	4	E001	15	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-5.9	\N	\N	\N
7736	2020-10-31	E001	7	1111	-120	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	41	4	E001	7	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-141.6	\N	\N	\N
7737	2020-10-31	E001	8	1111	-100	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	42	4	E001	8	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-118	\N	\N	\N
7755	0202-10-08	E001	31	1123	10000	2	2020-10-01	1	0	3	2020-11-19 22:04:49.565989	2020-11-19 22:04:49.566062	8	16	1	\N	\N	20604622558	 NT MARKETING S.A.C. 	Servicio	 NT MARKETING S.A.C. 	0	11800	\N	\N	\N
7738	2020-10-31	E001	9	1111	-10.000000000000002	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	43	4	E001	9	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-11.8	\N	\N	\N
7729	2020-10-29	E001	16	1169	500	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	30	1	\N	\N	20330401991	Banco Falabella Perua S.A.C	Termometro	BANCO FALABELLA PERUA S.A.C	0	590	\N	\N	\N
7731	2020-10-29	E001	2	1111	-100	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	31	4	E001	2	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-118	\N	\N	\N
7732	2020-10-29	E001	3	1111	-126.27118600000001	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	32	4	E001	3	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-148.99999948	\N	\N	\N
7753	2020-09-23	F769	9301	193	578.3135593220339	1	2020-10-01	1	0	3	2020-11-19 22:03:30.841491	2020-11-19 22:03:30.841597	8	58	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	682.41	\N	\N	\N
7733	2020-10-29	E001	4	1111	-126.27118600000001	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	33	4	E001	4	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-148.99999948	\N	\N	\N
7734	2020-10-29	E001	5	1111	-10.000000000000002	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	34	4	E001	5	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-11.8	\N	\N	\N
7735	2020-10-29	E001	6	1111	-10.000000000000002	2	2020-10-01	1	0	3	2020-11-17 18:43:50.175961	2020-11-17 18:43:50.176022	9	35	4	E001	6	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-11.8	\N	\N	\N
7746	2020-10-15	F160	930	1226	348.89830508474574	1	2020-10-01	1	0	3	2020-11-19 22:03:30.841491	2020-11-19 22:03:30.841597	8	61	1	\N	\N	20101308678	CIA INDUSTRIAL CONTINENTAL S.A.C.	varios	CIA INDUSTRIAL CONTINENTAL S.A.C.	0	411.7	\N	\N	\N
7751	2020-09-12	FK85	5465	1072	107.33898305084746	1	2020-10-01	1	0	3	2020-11-19 22:03:30.841491	2020-11-19 22:03:30.841597	8	55	1	\N	\N	20100123330	DELOSI S.A.	consumo	DELOSI S.A.	0	126.66	\N	\N	\N
7754	2020-09-20	F212	146278	189	347.1101694915254	1	2020-10-01	1	0	3	2020-11-19 22:03:30.841491	2020-11-19 22:03:30.841597	8	56	1	\N	\N	20109072177	 CENCOSUD RETAIL PERU S.A.	varios	 CENCOSUD RETAIL PERU S.A.	0	409.59	\N	\N	\N
7750	2020-10-29	FB39	6590	1198	59.067796610169495	1	2020-10-01	1	0	3	2020-11-19 22:03:30.841491	2020-11-19 22:03:30.841597	8	65	1	\N	\N	20605254315	SAIDEL S.A.C.	consumo	SAIDEL S.A.C.	0	69.7	\N	\N	\N
7747	2020-10-17	F496	1619	1227	509.9152542372882	1	2020-10-01	1	0	3	2020-11-19 22:03:30.841491	2020-11-19 22:03:30.841597	8	62	1	\N	\N	20600892470	SUPERDEPORTE PLUS PERU S.A.C.	varios	SUPERDEPORTE PLUS PERU S.A.C.	0	601.7	\N	\N	\N
7748	2020-10-24	F737	4311	189	157.70338983050848	1	2020-10-01	1	0	3	2020-11-19 22:03:30.841491	2020-11-19 22:03:30.841597	8	63	1	\N	\N	20109072177	 CENCOSUD RETAIL PERU S.A.	varios	 CENCOSUD RETAIL PERU S.A.	0	186.09	\N	\N	\N
7744	2020-10-03	F121	2375	1225	52.03389830508475	1	2020-10-01	1	0	3	2020-11-19 22:03:30.841491	2020-11-19 22:03:30.841597	8	59	1	\N	\N	20553596441	CHIFAS DEL PERU SAC	consumo	CHIFAS DEL PERU SAC	0	61.4	\N	\N	\N
7745	2020-10-13	E001	304	1095	10.16949152542373	1	2020-10-01	1	0	3	2020-11-19 22:03:30.841491	2020-11-19 22:03:30.841597	8	60	1	\N	\N	20605259759	AGUA MARTHIM'S PERU E.I.R.L.	Agua	AGUA MARTHIM'S PERU E.I.R.L.	0	12	\N	\N	\N
7752	2020-09-22	F767	16683	193	1035.4237288135594	1	2020-10-01	1	0	3	2020-11-19 22:03:30.841491	2020-11-19 22:03:30.841597	8	57	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	1221.8	\N	\N	\N
7756	2020-11-30	E001	24	1174	2460.0000000000005	1	2020-11-01	1	0	3	2020-12-18 12:59:12.357017	2020-12-18 12:59:12.357074	8	71	1	\N	\N	20553597685	GRUPO INGETALENTO E.I.R.L.	varios	GRUPO INGETALENTO E.I.R.L.	0	2902.8	\N	\N	\N
7774	2020-11-21	1	141	1231	2415.2542372881358	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	30	1	\N	\N	10487215436	Eguiguren Carrillo Andrea Junet	Mandiles	EGUIGUREN CARRILLO ANDREA JUNET	0	2850	\N	\N	\N
7762	2020-11-16	E001	33	1124	4466.35	2	2020-11-01	2	3.646	1	2020-12-18 13:00:11.835965	2020-12-18 13:00:42.291328	8	18	1			20267178331	NEXUS TECHNOLOGY S.A.C.	Asesoria	NEXUS TECHNOLOGY S.A.C.	0	5270.293	\N	\N	\N
7757	2020-11-13	E001	339	1095	8.466101694915254	1	2020-11-01	1	0	3	2020-12-18 12:59:12.357017	2020-12-18 12:59:12.357074	8	66	1	\N	\N	20605259759	AGUA MARTHIM'S PERU E.I.R.L.	agua	AGUA MARTHIM'S PERU E.I.R.L.	0	9.99	\N	\N	\N
7761	2020-11-18	F011	6317	1229	38.52	1	2020-11-01	1	0	3	2020-12-18 12:59:12.357017	2020-12-18 12:59:12.357074	8	67	1	\N	\N	20508647311	CAFE EL POLO S.A.C.	varios	CAFE EL POLO S.A.C.	0	45.4536	\N	\N	\N
7759	2020-11-21	F260	989	1184	238.22000000000003	1	2020-11-01	1	0	3	2020-12-18 12:59:12.357017	2020-12-18 12:59:12.357074	8	68	1	\N	\N	20431062870	COMEXA COMERCIALIZADORA EXTRANJERA S.A.	varios	COMEXA COMERCIALIZADORA EXTRANJERA S.A.	0	281.0996	\N	\N	\N
7758	2020-11-25	F003	853	1228	685.5932203389831	1	2020-11-01	1	0	3	2020-12-18 12:59:12.357017	2020-12-18 12:59:12.357074	8	69	1	\N	\N	10180058066	ALAYO SALVATIERRA MARIA FRANCISCA	consumo	ALAYO SALVATIERRA MARIA FRANCISCA	0	809	\N	\N	\N
7760	2020-11-28	F037	4740	1056	262.54237288135596	1	2020-11-01	1	0	3	2020-12-18 12:59:12.357017	2020-12-18 12:59:12.357074	8	70	1	\N	\N	20378890161	RASH PERU S.A.C.	varios	RASH PERU S.A.C.	0	309.8	\N	\N	\N
7763	2020-11-03	E001	32	1124	687.2300000000001	2	2020-11-01	2	3.617	1	2020-12-18 13:00:11.835965	2021-01-22 19:28:01.114886	8	17	1			20267178331	NEXUS TECHNOLOGY S.A.C.	sala zoom	NEXUS TECHNOLOGY S.A.C.	0	810.9314	\N	\N	\N
7769	2020-11-25	F001	17239	1173	338.98305084745766	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	32	1	\N	\N	20512900896	JC Medical Supplies	Termometro Infrarrojo	JC MEDICAL SUPPLIES	0	400	\N	\N	\N
7767	2020-11-28	1	609	1230	2100	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	33	1	\N	\N	10102541273	Marcelina Elena Apaza Meza	Mandiles	MARCELINA ELENA APAZA MEZA	0	2478	\N	\N	\N
7768	2020-11-30	1	615	1230	2139.1525423728813	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	34	1	\N	\N	10102541273	Marcelina Elena Apaza Meza	Mandiles	MARCELINA ELENA APAZA MEZA	0	2524.2	\N	\N	\N
7764	2020-11-03	E001	120	1218	9600	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	18	1	\N	\N	20605815805	Montana Peru S.A.C	Mandiles	MONTANA PERU S.A.C	0	11328	\N	\N	\N
7765	2020-11-04	E001	667	1172	688.8000000000001	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	19	1	\N	\N	20538045781	Tessile Forza E.I.R.L	Buzos Hombre	TESSILE FORZA E.I.R.L	0	812.784	\N	\N	\N
7775	2020-11-04	E001	77	1172	-28.184745762711866	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	20	4	E001	617	20538045781	Tessile Forza E.I.R.L	Error	TESSILE FORZA E.I.R.L	0	-33.258	\N	\N	\N
7773	2020-11-09	1	127	1231	2796.6101694915255	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	21	1	\N	\N	10487215436	Eguiguren Carrillo Andrea Junet	Mandiles	EGUIGUREN CARRILLO ANDREA JUNET	0	3300	\N	\N	\N
7772	2020-11-12	1	134	1231	2542.3728813559323	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	22	1	\N	\N	10487215436	Eguiguren Carrillo Andrea Junet	Mandiles	EGUIGUREN CARRILLO ANDREA JUNET	0	3000	\N	\N	\N
7771	2020-11-16	1	137	1231	2669.491525423729	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	25	1	\N	\N	10487215436	Eguiguren Carrillo Andrea Junet	Mandiles	EGUIGUREN CARRILLO ANDREA JUNET	0	3150	\N	\N	\N
7770	2020-11-19	1	139	1231	2288.135593220339	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	26	1	\N	\N	10487215436	Eguiguren Carrillo Andrea Junet	Mandiles	EGUIGUREN CARRILLO ANDREA JUNET	0	2700	\N	\N	\N
7776	2020-11-19	1	761	1232	1042.3728813559323	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	27	1	\N	\N	10444697577	PARISUAÑA BARRANTES BERTHA GENOVEVA	Varios	PARISUAÑA BARRANTES BERTHA GENOVEVA	0	1230	\N	\N	\N
7766	2020-11-20	SB01	17905596	1213	42.28	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	29	1	\N	\N	20467534026	América Móvil Perú S.A.C.	Recibo Claro	AMÉRICA MÓVIL PERÚ S.A.C.	0	49.8904	\N	\N	\N
7784	2020-11-04	E001	20	1111	73.72881355932203	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	47	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	87	\N	\N	\N
7785	2020-11-04	E001	21	1111	29.661016949152543	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	48	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	35	\N	\N	\N
7786	2020-11-04	E001	22	1111	29.661016949152543	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	49	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	35	\N	\N	\N
7787	2020-11-04	E001	23	1169	19800	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	50	1	\N	\N	20330401991	Banco Falabella Perua S.A.C	Mandiles Notex	BANCO FALABELLA PERUA S.A.C	0	23364	\N	\N	\N
7788	2020-11-27	E001	24	1111	70	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	54	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	82.6	\N	\N	\N
7778	2020-11-13	1	754	1232	1949.1525423728815	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	23	1	\N	\N	10444697577	PARISUAÑA BARRANTES BERTHA GENOVEVA	Varios	PARISUAÑA BARRANTES BERTHA GENOVEVA	0	2300	\N	\N	\N
7779	2020-11-15	1	757	1232	1737.2881355932204	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	24	1	\N	\N	10444697577	PARISUAÑA BARRANTES BERTHA GENOVEVA	Varios	PARISUAÑA BARRANTES BERTHA GENOVEVA	0	2050	\N	\N	\N
7780	2020-11-20	1	1995	1233	1949.1525423728815	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	28	1	\N	\N	20600663829	ANDRE & MATHIAS E.I.R.L.	Varios	ANDRE & MATHIAS E.I.R.L.	0	2300	\N	\N	\N
7777	2020-11-25	1	1999	1233	2372.8813559322034	1	2020-11-01	1	0	3	2020-12-18 13:08:01.020503	2020-12-18 13:08:01.020594	9	31	1	\N	\N	20600663829	ANDRE & MATHIAS E.I.R.L.	Varios	ANDRE & MATHIAS E.I.R.L.	0	2800	\N	\N	\N
7923	2020-11-03	F165	1314	715	84.49152542372882	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	75	1	\N	\N	20101920721	COMERCIAL MONT S.A.C.	VARIOS	COMERCIAL MONT S.A.C.	0	99.7	\N	\N	\N
7921	2020-11-09	F046	2332	1185	215	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	79	1	\N	\N	20107463705	CLINICA SAN PABLO S.A.C.	CLINICA	CLINICA SAN PABLO S.A.C.	0	253.7	\N	\N	\N
7908	2020-12-14	E001	22	1111	-100	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	69	4	E001	28	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-118	\N	\N	\N
7909	2020-12-14	E001	23	1111	-69	2	2020-12-01	1	\N	3	2021-01-22 19:26:53.149478	2021-01-22 19:26:53.149515	9	70	4	E001	29	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-81.42	\N	\N	\N
7922	2020-11-13	F046	2339	1185	1408.6355932203392	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	80	1	\N	\N	20107463705	CLINICA SAN PABLO S.A.C.	CLINICA	CLINICA SAN PABLO S.A.C.	0	1662.19	\N	\N	\N
7917	2020-12-08	F103	7260	1239	74.37288135593221	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	83	1	\N	\N	20430040180	POLLOS EL ACANTILADO S.A.TING S.A.C. 	CONSUMO	POLLOS EL ACANTILADO S.A.TING S.A.C. 	0	95.2	\N	\N	7.44
7924	2020-12-18	FDS0	380	1126	80.67796610169492	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	84	1	\N	\N	20100128056	SAGA FALABELLA S.A.	VARIOS	SAGA FALABELLA S.A.	0	95.2	\N	\N	\N
7918	2020-12-18	FM15	1004	1102	49.14406779661017	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	85	1	\N	\N	20508565934	HIPERMERCADOS TOTTUS S.A	VARIOS	HIPERMERCADOS TOTTUS S.A	0	57.99	\N	\N	\N
7916	2020-12-07	E001	34	1238	10000	2	2020-12-01	1	\N	3	2021-01-22 19:28:26.110416	2021-01-22 19:28:26.110449	8	19	1	\N	\N	20604622558 	NT MARKETING S.A.C. 	Servicio	NT MARKETING S.A.C. 	0	11800	\N	\N	\N
7781	2020-11-04	E001	17	1111	59.32203389830509	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	44	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	70	\N	\N	\N
7782	2020-11-04	E001	18	1111	29.661016949152543	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	45	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	35	\N	\N	\N
7783	2020-11-04	E001	19	1111	29.661016949152543	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	46	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	35	\N	\N	\N
7925	2020-12-30	FA03	934258	358	86.1864406779661	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	87	1	\N	\N	20536557858	HOMECENTERS PERUANOS S.A.	VARIOS	HOMECENTERS PERUANOS S.A.	0	101.7	\N	\N	\N
7920	2020-08-28	F001	2834	1241	222.03389830508476	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	72	1	\N	\N	10101354224	DIAZ DELGADO ROQUE ALBERTO	NOTARIA	DIAZ DELGADO ROQUE ALBERTO	0	262	\N	\N	\N
7919	2020-10-30	F001	339	1240	79.66101694915254	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	73	1	\N	\N	20605541128	EMPRESA GASTRONÓMICA MIRAMAR S.A.C.	CONSUMO	EMPRESA GASTRONÓMICA MIRAMAR S.A.C.	0	94	\N	\N	\N
7926	2020-11-03	F001	2082	1121	26.406779661016948	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	74	1	\N	\N	20546399533	PESART S.A.C	VARIOS	PESART S.A.C	0	33.8	\N	\N	2.64
7885	2020-09-11	FB24	390955	174	71.40677966101696	1	2020-12-01	1	\N	3	2021-01-22 19:25:36.194035	2021-01-22 19:25:36.194071	6	71	1	\N	\N	20100070970	SUPERMERCADOS PERUANOS S.A.	varios	SUPERMERCADOS PERUANOS S.A.	0	96.26	\N	\N	12
7883	2020-09-14	F177	46168	193	237.11864406779662	1	2020-12-01	1	\N	3	2021-01-22 19:25:36.194035	2021-01-22 19:25:36.194071	6	72	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	279.8	\N	\N	\N
7886	2020-10-10	F647	3559	189	226.1864406779661	1	2020-12-01	1	\N	3	2021-01-22 19:25:36.194035	2021-01-22 19:25:36.194071	6	73	1	\N	\N	20109072177	CENCOSUD RETAIL PERU S.A.	varios	CENCOSUD RETAIL PERU S.A.	0	291.62	\N	0.3	24.42
7888	2020-10-15	F212	5098135	189	1656.0593220338985	1	2020-12-01	1	\N	3	2021-01-22 19:25:36.194035	2021-01-22 19:25:36.194071	6	74	1	\N	\N	20109072177	CENCOSUD RETAIL PERU S.A.	varios	CENCOSUD RETAIL PERU S.A.	0	1954.15	\N	\N	\N
7880	2020-11-06	F001	335	1237	356.2542372881356	1	2020-12-01	1	\N	3	2021-01-22 19:23:10.495879	2021-01-22 19:23:10.495915	9	35	1	\N	\N	20603606486	Don Nico La Mar S.A.C	varios	DON NICO LA MAR S.A.C	0	456.01	\N	0	35.63
7881	2020-12-04	E001	170	1224	183.89830508474577	1	2020-12-01	1	\N	3	2021-01-22 19:23:10.495879	2021-01-22 19:23:10.495915	9	36	1	\N	\N	20600505166	Etibor E.I.R.L	varios	ETIBOR E.I.R.L	0	217	\N	0	\N
7797	2020-11-06	EB01	13	1235	1881.35593220339	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	51	2	\N	\N	42470189	LUIS ALBERTO TACCA JUSTO	Muñecos Navideños	LUIS ALBERTO TACCA JUSTO	0	2220	\N	\N	\N
7882	2020-12-18	F001	17771	1173	692.3728813559322	1	2020-12-01	1	\N	3	2021-01-22 19:23:10.495879	2021-01-22 19:23:10.495915	9	37	1	\N	\N	20512900896	JC Medical Supplies S.A.C	termometros	JC MEDICAL SUPPLIES S.A.C	0	817	\N	0	\N
7796	2020-11-06	EB01	14	1234	940.677966101695	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	52	2	\N	\N	42470186	JOSE JOEL ORTIZ SANTA MARIA	Muñecos Navideños	JOSE JOEL ORTIZ SANTA MARIA	0	1110	\N	\N	\N
7798	2020-11-06	EB01	2	1235	-1881.35593220339	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	53	4	EB01	13	42470189	LUIS ALBERTO TACCA JUSTO	NC	LUIS ALBERTO TACCA JUSTO	0	-2220	\N	\N	\N
7789	2020-11-27	E001	25	1111	80.00000000000001	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	55	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	94.4	\N	\N	\N
7790	2020-11-27	E001	26	1111	10.000000000000002	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	56	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
7791	2020-11-27	E001	27	1111	35	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	57	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	41.3	\N	\N	\N
7792	2020-11-27	E001	28	1111	100	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	58	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	118	\N	\N	\N
7793	2020-11-27	E001	29	1111	69	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	59	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	81.42	\N	\N	\N
7794	2020-11-27	E001	30	1169	500	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	60	1	\N	\N	20330401991	Banco Falabella Perua S.A.C	Termometros	BANCO FALABELLA PERUA S.A.C	0	590	\N	\N	\N
7795	2020-11-27	E001	31	1169	19800	2	2020-11-01	1	0	3	2020-12-18 13:09:08.101189	2020-12-18 13:09:08.101264	9	61	1	\N	\N	20330401991	Banco Falabella Perua S.A.C	Mandiles Notex	BANCO FALABELLA PERUA S.A.C	0	23364	\N	\N	\N
7887	2020-10-15	F212	5098136	189	338.135593220339	1	2020-12-01	1	\N	3	2021-01-22 19:25:36.194035	2021-01-22 19:25:36.194071	6	75	1	\N	\N	20109072177	CENCOSUD RETAIL PERU S.A.	varios	CENCOSUD RETAIL PERU S.A.	0	399	\N	\N	\N
7884	2020-09-08	F509	19490	712	176.18644067796612	1	2020-12-01	1	\N	3	2021-01-22 19:25:36.194035	2021-01-22 19:25:36.194071	6	70	1	\N	\N	20331066703	INRETAIL PHARMA S.A.	varios	INRETAIL PHARMA S.A.	0	207.9	\N	\N	\N
7930	2020-11-03	F410	84	1243	301.4406779661017	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	76	1	\N	\N	20602933327	INVERSIONES & REPRESENTACIONES ANGEL S.A.C.	VARIOS	INVERSIONES & REPRESENTACIONES ANGEL S.A.C.	0	355.7	\N	\N	\N
7929	2020-11-07	FA03	994457	358	417.7457627118644	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	78	1	\N	\N	20536557858	HOMECENTERS PERUANOS S.A.	VARIOS	HOMECENTERS PERUANOS S.A.	0	492.94	\N	\N	\N
7927	2020-11-15	F001	353	1242	75.42372881355932	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	81	1	\N	\N	20605482148	CONSORCIO LU & VER E.I.R.L.	VARIOS	CONSORCIO LU & VER E.I.R.L.	0	89	\N	\N	\N
7928	2020-11-16	F644	21679	1056	93.22033898305085	1	2020-12-01	1	\N	3	2021-01-22 19:28:55.293018	2021-01-22 19:28:55.293047	8	82	1	\N	\N	20378890161	RASH PERU S.A.C.	VARIOS	RASH PERU S.A.C.	0	110	\N	\N	\N
7932	2020-12-29	FF18	697	1244	1126.1864406779662	1	2020-12-01	1	\N	1	2021-01-22 19:28:55.293018	2021-01-27 12:17:19.348585	8	86	1			20601844916	QUE TAL COMPRA DEL PERU S.A.C.	ACTIVO	QUE TAL COMPRA DEL PERU S.A.C.	0	1328.9	\N	\N	\N
7931	2020-11-07	FA03	994456	358	206.61016949152545	1	2020-12-01	1	\N	1	2021-01-22 19:28:55.293018	2021-01-27 13:09:19.298166	8	77	1			20536557858	HOMECENTERS PERUANOS S.A.	VARIOS	HOMECENTERS PERUANOS S.A.	0	243.8	\N	\N	\N
8152	2021-07-08	FA01	16331	1264	42.37288135593221	1	2021-07-01	1	\N	3	2021-08-18 17:46:04.830068	2021-08-18 17:46:04.830068	10	3	1	\N	\N	20600016432	A & L ADMINISTRACION S.A.C.	VARIOS	A & L ADMINISTRACION S.A.C.	0	50	\N	\N	\N
7939	2021-01-30	E001	278	1247	8474.57627118644	1	2021-01-01	1	\N	3	2021-03-09 21:05:55.596782	2021-03-09 21:05:55.596782	9	46	1	\N	\N	20602870619	Merch 360 Publicidad S.A.C	Mandiles blancos	MERCH 360 PUBLICIDAD S.A.C	0	10000	\N	\N	\N
8150	2021-07-08	F737	10026828	189	55.84745762711865	1	2021-07-01	1	\N	3	2021-08-18 17:46:04.830068	2021-08-18 17:46:04.830068	10	2	1	\N	\N	20109072177	CENCOSUD RETAIL PERU S.A.	VARIOS	CENCOSUD RETAIL PERU S.A.	0	65.9	\N	\N	\N
8149	2021-07-15	FA03	1009079	358	679.4915254237288	1	2021-07-01	1	\N	3	2021-08-18 17:46:04.830068	2021-08-18 17:46:04.830068	10	4	1	\N	\N	20536557858	HOME CENTERS PERUANOS S.A.	VARIOS	HOME CENTERS PERUANOS S.A.	0	801.8	\N	\N	\N
7935	2021-01-06	F001	18116	1173	692.3728813559322	1	2021-01-01	1	\N	3	2021-03-09 21:05:55.596782	2021-03-09 21:05:55.596782	9	40	1	\N	\N	20512900896	JC Medical Supplies S.A.C	Termometros	JC MEDICAL SUPPLIES S.A.C	0	817	\N	\N	\N
7936	2021-01-09	F500	17943	1246	18.73728813559322	1	2021-01-01	1	\N	3	2021-03-09 21:05:55.596782	2021-03-09 21:05:55.596782	9	41	1	\N	\N	20475815247	Capriccio Miraflores S.A.C	Consumo	CAPRICCIO MIRAFLORES S.A.C	0	23.99	\N	\N	1.88
8151	2021-07-08	F737	10026827	189	63.26271186440679	1	2021-07-01	1	\N	3	2021-08-18 17:46:04.830068	2021-08-18 17:46:04.830068	10	1	1	\N	\N	20109072177	CENCOSUD RETAIL PERU S.A.	VARIOS	CENCOSUD RETAIL PERU S.A.	0	74.65	\N	\N	\N
7937	2021-01-14	E001	275	1247	105.08474576271188	1	2021-01-01	1	\N	3	2021-03-09 21:05:55.596782	2021-03-09 21:05:55.596782	9	42	1	\N	\N	20602870619	Merch 360 Publicidad S.A.C	Sombrillas con soporte tipo mochila	MERCH 360 PUBLICIDAD S.A.C	0	124	\N	\N	\N
7938	2021-01-27	F001	18812	1173	1202.542372881356	1	2021-01-01	1	\N	3	2021-03-09 21:05:55.596782	2021-03-09 21:05:55.596782	9	43	1	\N	\N	20512900896	JC Medical Supplies S.A.C	Termometros	JC MEDICAL SUPPLIES S.A.C	0	1419	\N	\N	\N
7944	2020-01-13	E001	41	1169	45.00000000000001	2	2021-01-01	1	\N	3	2021-03-09 21:08:00.321672	2021-03-09 21:08:00.321672	9	86	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Muestra Sombrilla con soporte mochila	BANCO FALABELLA PERU S.A.C	0	53.1	\N	\N	\N
7940	2021-01-29	FW03	14193	166	185.59322033898306	1	2021-01-01	1	\N	3	2021-03-09 21:05:55.596782	2021-03-09 21:05:55.596782	9	44	1	\N	\N	20100016681	Importaciones Hiraoka S.A.C	Impresora	IMPORTACIONES HIRAOKA S.A.C	0	219	\N	\N	\N
7933	2020-12-19	1	775	1245	1694.9152542372883	1	2021-01-01	1	\N	3	2021-03-09 21:05:55.596782	2021-03-09 21:05:55.596782	9	38	1	\N	\N	10773272170	Anthony Jean Pierre Verastegui Quispe	Mandiles blancos	ANTHONY JEAN PIERRE VERASTEGUI QUISPE	0	2000	\N	\N	\N
7934	2020-12-21	1	742	1230	1694.9152542372883	1	2021-01-01	1	\N	3	2021-03-09 21:05:55.596782	2021-03-09 21:05:55.596782	9	39	1	\N	\N	10102541273	Marcelina Elena Apaza Meza	Mandiles blancos	MARCELINA ELENA APAZA MEZA	0	2000	\N	\N	\N
7941	2021-01-29	FW03	14194	166	16.10169491525424	1	2021-01-01	1	\N	3	2021-03-09 21:05:55.596782	2021-03-09 21:05:55.596782	9	45	1	\N	\N	20100016681	Importaciones Hiraoka S.A.C	Transporte	IMPORTACIONES HIRAOKA S.A.C	0	19	\N	\N	\N
7942	2020-01-13	E001	39	1169	45.00000000000001	2	2021-01-01	1	\N	3	2021-03-09 21:08:00.321672	2021-03-09 21:08:00.321672	9	84	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Muestra Sombrilla con soporte mochila	BANCO FALABELLA PERU S.A.C	0	53.1	\N	\N	\N
7943	2020-01-13	E001	40	1169	45.00000000000001	2	2021-01-01	1	\N	3	2021-03-09 21:08:00.321672	2021-03-09 21:08:00.321672	9	85	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Muestra Sombrilla con soporte mochila	BANCO FALABELLA PERU S.A.C	0	53.1	\N	\N	\N
7945	2020-01-20	E001	42	1111	10.000000000000002	2	2021-01-01	1	\N	3	2021-03-09 21:08:00.321672	2021-03-09 21:08:00.321672	9	87	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
7946	2020-01-20	E001	43	1111	15	2	2021-01-01	1	\N	3	2021-03-09 21:08:00.321672	2021-03-09 21:08:00.321672	9	88	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
7947	2020-01-20	E001	44	1169	1000	2	2021-01-01	1	\N	3	2021-03-09 21:08:00.321672	2021-03-09 21:08:00.321672	9	89	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Termometros	BANCO FALABELLA PERU S.A.C	0	1180	\N	\N	\N
7948	2020-01-20	E001	45	1169	19800	2	2021-01-01	1	\N	3	2021-03-09 21:08:00.321672	2021-03-09 21:08:00.321672	9	90	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles blancos	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8171	2021-07-20	E001	51	1209	20.000000000000004	2	2021-07-01	1	\N	3	2021-08-18 20:51:15.795333	2021-08-18 20:51:15.795333	6	65	1	\N	\N	10101503882	HUANACUNI CANDIA RAUL	VARIOS	HUANACUNI CANDIA RAUL	0	23.6	\N	\N	\N
8166	2021-07-16	FG10	1593	1183	77.28813559322035	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	94	1	\N	\N	20512002090	MIFARMA S.A.C.	Varios	MIFARMA S.A.C.	0	91.2	\N	\N	\N
8165	2021-07-16	FM21	1263	1102	518.4661016949152	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	95	1	\N	\N	20508565934	HIPERMERCADOS TOTTUS S.A	Varios	HIPERMERCADOS TOTTUS S.A	0	664.86	\N	\N	53.07
8155	2021-07-17	1	332	1266	1694.9152542372883	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	96	1	\N	\N	20606732296	NEGOCIACIONES & INVERSIONES ROQUE E.I.R.L.	Varios	NEGOCIACIONES & INVERSIONES ROQUE E.I.R.L.	0	2000	\N	\N	\N
8164	2021-07-24	F121	4423	1225	111.72033898305087	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	97	1	\N	\N	20553596441	CHIFAS DEL PERU SAC	Varios	CHIFAS DEL PERU SAC	0	143	\N	\N	11.17
8168	2021-07-24	F244	3669	1126	55.04237288135594	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	98	1	\N	\N	20100128056	SAGA FALABELLA S A	Varios	SAGA FALABELLA S A	0	64.95	\N	\N	\N
8163	2021-07-24	F649	38129	193	88.17796610169492	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	99	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	Varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	104.05	\N	\N	\N
8172	2021-07-22	E001	52	1209	40.00000000000001	2	2021-07-01	1	\N	3	2021-08-18 20:51:15.795333	2021-08-18 20:51:15.795333	6	68	1	\N	\N	10101503882	HUANACUNI CANDIA RAUL	VARIOS	HUANACUNI CANDIA RAUL	0	47.2	\N	\N	\N
8161	2021-07-26	FB10	3334	1198	33.04237288135594	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	100	1	\N	\N	20605254315	SAIDEL S.A.C.	Varios	SAIDEL S.A.C.	0	40	\N	\N	1.01
8162	2021-07-26	FP12	520983	219	63.7542372881356	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	101	1	\N	\N	20337564373	TIENDAS POR DEPARTAMENTO RIPLEY S.A.	Varios	TIENDAS POR DEPARTAMENTO RIPLEY S.A.	0	75.23	\N	\N	\N
8160	2021-07-30	FA16	362346	1128	57.7542372881356	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	102	1	\N	\N	20493020618	TIENDAS PERUANAS SA	Varios	TIENDAS PERUANAS SA	0	68.15	\N	\N	\N
8173	2021-07-22	E001	53	1087	9200	2	2021-07-01	1	\N	3	2021-08-18 20:51:15.795333	2021-08-18 20:51:15.795333	6	69	1	\N	\N	20265815830	CORPORACION TURISTICA PERUANA S.A.C	PROTECTOR FACIAL CON MONTURA	CORPORACION TURISTICA PERUANA S.A.C	0	10856	\N	\N	\N
7949	2021-02-04	E001	46	1111	50	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	96	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	59	\N	\N	\N
7950	2021-02-04	E001	47	1111	50	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	97	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	59	\N	\N	\N
7951	2021-02-04	E001	48	1111	10.000000000000002	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	98	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
7952	2021-02-04	E001	49	1111	15	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	99	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
7953	2021-02-04	E001	50	1111	25	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	100	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
8159	2021-07-30	FA16	765228	1128	106.1864406779661	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	103	1	\N	\N	20493020618	TIENDAS PERUANAS SA	Varios	TIENDAS PERUANAS SA	0	125.3	\N	\N	\N
8169	2021-07-01	E001	49	1087	7200	2	2021-07-01	1	\N	3	2021-08-18 20:51:15.795333	2021-08-18 20:51:15.795333	6	63	1	\N	\N	20265815830	CORPORACION TURISTICA PERUANA S.A.C	PROTECTOR FACIAL CON MONTURA	CORPORACION TURISTICA PERUANA S.A.C	0	8496	\N	\N	\N
8157	2021-07-31	E001	10	1265	2000	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	104	1	\N	\N	20292973048	FACTORIA TICONA SRL	Repuestos	FACTORIA TICONA SRL	0	2360	\N	\N	\N
8158	2021-07-08	1	3422	1268	1141.5254237288136	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	90	1	\N	\N	20543459683	SIPROSA E.I.R.L	Repuestos	SIPROSA E.I.R.L	0	1347	\N	\N	\N
8156	2021-07-08	F001	58750	1267	16.949152542372882	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	91	1	\N	\N	20601507065	TRANSPORTES DHARMA E.I.R.L.	Varios	TRANSPORTES DHARMA E.I.R.L.	0	20	\N	\N	\N
8167	2021-07-09	FDSP	829	1126	188.5677966101695	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	92	1	\N	\N	20100128056	SAGA FALABELLA S A	Varios	SAGA FALABELLA S A	0	222.51	\N	\N	\N
8153	2021-07-13	E001	35	1257	2881.35593220339	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	93	1	\N	\N	20601872197	SERVICIOS GENERALES BARRIOS E.I.R.L.	caretas	SERVICIOS GENERALES BARRIOS E.I.R.L.	0	3400	\N	\N	\N
8154	2021-07-31	E001	9	1265	2500	1	2021-07-01	1	\N	3	2021-08-18 20:46:01.184552	2021-08-18 20:46:01.184552	6	105	1	\N	\N	20292973048	FACTORIA TICONA SRL	Repuestos	FACTORIA TICONA SRL	0	2950	\N	\N	\N
8170	2021-07-12	E001	50	1269	2573.0338983050847	2	2021-07-01	1	\N	3	2021-08-18 20:51:15.795333	2021-08-18 20:51:15.795333	6	64	1	\N	\N	20606544244	AGRICOLA SAN GALLAN SOCIEDAD ANONIMA CERRADA	VARIOS	AGRICOLA SAN GALLAN SOCIEDAD ANONIMA CERRADA	0	3036.18	\N	\N	\N
8174	2021-07-22	E001	26	1209	-20.000000000000004	2	2021-07-01	1	\N	3	2021-08-18 20:51:15.795333	2021-08-18 20:51:15.795333	6	66	4	E001	51	10101503882	HUANACUNI CANDIA RAUL	\N	HUANACUNI CANDIA RAUL	0	-23.6	\N	\N	\N
8175	2021-07-22	E001	27	1209	-40.00000000000001	2	2021-07-01	1	\N	3	2021-08-18 20:51:15.795333	2021-08-18 20:51:15.795333	6	67	4	E001	52	10101503882	HUANACUNI CANDIA RAUL	\N	HUANACUNI CANDIA RAUL	0	-47.2	\N	\N	\N
8243	2021-11-05	E001	126	1169	19800	2	2021-11-01	1	\N	3	2021-12-20 15:43:25.077442	2021-12-20 15:43:25.077442	9	186	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8244	2021-11-05	E001	127	1169	4950	2	2021-11-01	1	\N	3	2021-12-20 15:43:25.077442	2021-12-20 15:43:25.077442	9	187	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles	BANCO FALABELLA PERU S.A.C	0	5841	\N	\N	\N
8267	2022-01-10	E001	136	1169	725	2	2022-01-01	1	\N	3	2022-02-18 01:20:35.609962	2022-02-18 01:20:35.609962	9	196	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Canguros	BANCO FALABELLA PERU S.A.C	0	855.5	\N	\N	\N
7975	2021-02-26	E001	39	1111	-50	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	111	4	E001	57	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-59	\N	\N	\N
7960	2021-02-26	E001	57	1111	50	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	112	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	59	\N	\N	\N
7961	2021-02-26	E001	58	1111	25	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	113	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
7962	2021-02-26	E001	59	1111	28	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	114	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	33.04	\N	\N	\N
7963	2021-02-26	E001	60	1111	224.5762711864407	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	115	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	265	\N	\N	\N
7964	2021-02-26	E001	61	1111	10.000000000000002	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	116	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
7965	2021-02-26	E001	62	1169	19800	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	117	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles blancos	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8272	2021-12-22	1	397	1248	2814.406779661017	1	2022-01-01	\N	\N	3	2022-02-18 01:21:44.29195	2022-02-18 01:21:44.29195	9	105	\N	\N	\N	20602570291	Consorcio Textil & Moda EIRL	\N	CONSORCIO TEXTIL & MODA EIRL	0	3321	\N	\N	\N
8271	2021-12-17	1	395	1248	3121.1268313702967	1	2022-01-01	1	\N	3	2022-02-18 01:21:44.29195	2022-02-18 01:21:44.29195	9	104	1	\N	\N	20602570291	Consorcio Textil & Moda EIRL	Mandiles	CONSORCIO TEXTIL & MODA EIRL	0	3682.92966101695	\N	\N	\N
8269	2022-01-28	F001	700	1263	4720.17	1	2022-01-01	1	\N	3	2022-02-18 01:21:44.29195	2022-02-18 01:21:44.29195	9	106	1	\N	\N	20606431881	Marna Peru World Import	Mandiles	MARNA PERU WORLD IMPORT	0	5569.8006	\N	\N	\N
8270	2021-12-14	1	394	1248	2860.169491525424	1	2022-01-01	1	\N	3	2022-02-18 01:21:44.29195	2022-02-18 01:21:44.29195	9	103	1	\N	\N	20602570291	Consorcio Textil & Moda EIRL	Mandiles	CONSORCIO TEXTIL & MODA EIRL	0	3375	\N	\N	\N
7966	2021-02-04	E001	30	1111	-25	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	91	4	E001	50	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-29.5	\N	\N	\N
7967	2021-02-04	E001	31	1111	-15	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	92	4	E001	49	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-17.7	\N	\N	\N
7968	2021-02-04	E001	32	1111	-10.000000000000002	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	93	4	E001	48	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-11.8	\N	\N	\N
7969	2021-02-04	E001	33	1111	-50	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	94	4	E001	46	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-59	\N	\N	\N
8273	2022-02-04	E001	138	1111	15	2	2022-02-01	1	\N	3	2022-03-19 00:48:13.087252	2022-03-19 00:48:13.087252	9	198	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
7970	2021-02-04	E001	34	1111	-50	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	95	4	E001	47	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-59	\N	\N	\N
7954	2021-02-04	E001	51	1169	2000	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	101	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Termometros	BANCO FALABELLA PERU S.A.C	0	2360	\N	\N	\N
7955	2021-02-04	E001	52	1169	19800	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	102	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles blancos	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
7956	2021-02-18	E001	53	1111	10.000000000000002	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	103	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
7957	2021-02-18	E001	54	1111	5.000000000000001	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	104	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	5.9	\N	\N	\N
7958	2021-02-18	E001	55	1111	15	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	105	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
7959	2021-02-18	E001	56	1169	750	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	106	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Canguros	BANCO FALABELLA PERU S.A.C	0	885	\N	\N	\N
7971	2021-02-26	E001	35	1111	-9.898305084745763	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	107	4	E001	61	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-11.68	\N	\N	\N
7972	2021-02-26	E001	36	1111	-224.57999999999998	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	108	4	E001	60	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-265.0044	\N	\N	\N
7973	2021-02-26	E001	37	1111	-28	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	109	4	E001	59	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-33.04	\N	\N	\N
7974	2021-02-26	E001	38	1111	-25	2	2021-02-01	1	\N	3	2021-03-17 16:14:27.647793	2021-03-17 16:14:27.647793	9	110	4	E001	58	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-29.5	\N	\N	\N
7976	2021-02-08	1	361	1248	550	1	2021-02-01	1	\N	3	2021-03-17 16:16:02.304311	2021-03-17 16:16:02.304311	9	48	1	\N	\N	20602570291	Consorcio Textil & Moda E.I.R.L	Canguros de tela	CONSORCIO TEXTIL & MODA E.I.R.L	0	649	\N	\N	\N
7977	2021-02-08	1	819	1245	2271.1864406779664	1	2021-02-01	1	\N	3	2021-03-17 16:16:02.304311	2021-03-17 16:16:02.304311	9	49	1	\N	\N	10773272170	Anthony Jean Pierre Verastegui Quispe	Mandiles blancos	ANTHONY JEAN PIERRE VERASTEGUI QUISPE	0	2680	\N	\N	\N
7978	2021-02-10	1	822	1245	2254.237288135593	1	2021-02-01	1	\N	3	2021-03-17 16:16:02.304311	2021-03-17 16:16:02.304311	9	50	1	\N	\N	10773272170	Anthony Jean Pierre Verastegui Quispe	Mandiles blancos	ANTHONY JEAN PIERRE VERASTEGUI QUISPE	0	2660	\N	\N	\N
7980	2021-02-14	F016	1241	1078	35.42372881355932	1	2021-02-01	1	\N	3	2021-03-17 16:16:02.304311	2021-03-17 16:16:02.304311	9	51	1	\N	\N	20601017106	Food & Beverage Invest SAC	Consumo	FOOD & BEVERAGE INVEST SAC	0	41.8	\N	\N	\N
7979	2021-02-22	1	350	1249	2254.237288135593	1	2021-02-01	1	\N	3	2021-03-17 16:16:02.304311	2021-03-17 16:16:02.304311	9	54	1	\N	\N	10402913369	Gomez Machuca Florinda Haydee	Mandiles blancos	GOMEZ MACHUCA FLORINDA HAYDEE	0	2660	\N	\N	\N
7992	2021-03-24	E001	65	1111	10.000000000000002	2	2021-03-01	1	\N	3	2021-04-22 01:40:59.173356	2021-04-22 01:40:59.173356	9	120	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
7993	2021-03-24	E001	66	1169	3150	2	2021-03-01	1	\N	3	2021-04-22 01:40:59.173356	2021-04-22 01:40:59.173356	9	121	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Canguros	BANCO FALABELLA PERU S.A.C	0	3717	\N	\N	\N
7990	2021-03-24	E001	63	1111	100	2	2021-03-01	1	\N	1	2021-04-22 01:40:59.173356	2021-04-29 00:32:55.225095	9	118	1			10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	118	\N	\N	\N
7988	2021-02-24	E001	94	1253	251.6949	1	2021-03-01	1	\N	3	2021-04-22 01:37:57.330896	2021-04-22 01:37:57.330896	9	57	1	\N	\N	20525260942	Peña Linda Bungalows S.A.C	Alojamiento	PEÑA LINDA BUNGALOWS S.A.C	0	296.999982	\N	\N	\N
7987	2021-03-10	E001	1513	1252	2330.5084745762715	1	2021-03-01	1	\N	3	2021-04-22 01:37:57.330896	2021-04-22 01:37:57.330896	9	58	1	\N	\N	20545482658	Negociaciones Mundo Global S.A.C	Notex	NEGOCIACIONES MUNDO GLOBAL S.A.C	0	2750	\N	\N	\N
7986	2021-03-19	1	362	1248	2310.0000000000005	1	2021-03-01	1	\N	3	2021-04-22 01:37:57.330896	2021-04-22 01:37:57.330896	9	59	1	\N	\N	20602570291	Consorcio Textil & Moda E.I.R.L	Canguros de tela	CONSORCIO TEXTIL & MODA E.I.R.L	0	2725.8	\N	\N	\N
7989	2021-03-19	F003	61	1254	6567.796610169492	1	2021-03-01	1	\N	3	2021-04-22 01:37:57.330896	2021-04-22 01:37:57.330896	9	60	1	\N	\N	20537302136	Synthetic Insumos S.A.C	Tela Notex	SYNTHETIC INSUMOS S.A.C	0	7750	\N	\N	\N
7981	2021-02-02	F001	937	1250	4237.28813559322	1	2021-02-01	1	\N	3	2021-03-17 16:16:02.304311	2021-03-17 16:16:02.304311	9	47	1	\N	\N	20601485801	Importadora WYCAF E.I.R.L.	Tela Notex 80gr	IMPORTADORA WYCAF E.I.R.L.	0	5000	\N	\N	\N
7983	2021-02-15	2	680	1251	2669.491525423729	1	2021-02-01	1	\N	3	2021-03-17 16:16:02.304311	2021-03-17 16:16:02.304311	9	52	1	\N	\N	10441296849	PORTOCARRERO MENDOZA CRISTHIAN GABRIEL	Mandiles blancos	PORTOCARRERO MENDOZA CRISTHIAN GABRIEL	0	3150	\N	\N	\N
7984	2021-02-18	2	683	1251	2555.084745762712	1	2021-02-01	1	\N	3	2021-03-17 16:16:02.304311	2021-03-17 16:16:02.304311	9	53	1	\N	\N	10441296849	PORTOCARRERO MENDOZA CRISTHIAN GABRIEL	Mandiles blancos	PORTOCARRERO MENDOZA CRISTHIAN GABRIEL	0	3015	\N	\N	\N
7985	2021-02-22	2	686	1251	2402.542372881356	1	2021-02-01	1	\N	3	2021-03-17 16:16:02.304311	2021-03-17 16:16:02.304311	9	55	1	\N	\N	10441296849	PORTOCARRERO MENDOZA CRISTHIAN GABRIEL	Mandiles blancos	PORTOCARRERO MENDOZA CRISTHIAN GABRIEL	0	2835	\N	\N	\N
7982	2021-02-26	2	689	1251	847.4576271186442	1	2021-02-01	1	\N	3	2021-03-17 16:16:02.304311	2021-03-17 16:16:02.304311	9	56	1	\N	\N	10441296849	PORTOCARRERO MENDOZA CRISTHIAN GABRIEL	Mandiles blancos	PORTOCARRERO MENDOZA CRISTHIAN GABRIEL	0	1000	\N	\N	\N
8194	2021-08-09	E001	43	1111	-30	2	2021-08-01	1	\N	3	2021-09-17 12:55:33.564499	2021-09-17 12:55:33.564499	9	168	4	E001	104	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-35.4	\N	\N	\N
8184	2021-07-06	E001	100	1111	10.000000000000002	2	2021-07-01	1	\N	3	2021-08-18 23:04:32.17769	2021-08-18 23:04:32.17769	9	154	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8185	2021-07-06	E001	101	1169	19800	2	2021-07-01	1	\N	3	2021-08-18 23:04:32.17769	2021-08-18 23:04:32.17769	9	155	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8186	2021-07-06	E001	102	1169	2550	2	2021-07-01	1	\N	3	2021-08-18 23:04:32.17769	2021-08-18 23:04:32.17769	9	156	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	3009	\N	\N	\N
8183	2021-07-06	E001	99	1111	50	2	2021-07-01	1	\N	3	2021-08-18 23:04:32.17769	2021-08-18 23:04:32.17769	9	157	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	59	\N	\N	\N
8176	2021-07-06	1	412	1270	2881.3525423728815	1	2021-07-01	1	\N	3	2021-08-18 23:04:01.238475	2021-08-18 23:04:01.238475	9	70	1	\N	\N	20601925045	Globe HD Intersys SAC	Notex	GLOBE HD INTERSYS SAC	0	3399.996	\N	\N	\N
8181	2021-07-07	1	316	1272	2838.983050847458	1	2021-07-01	1	\N	3	2021-08-18 23:04:01.238475	2021-08-18 23:04:01.238475	9	71	1	\N	\N	20607101664	Corporacion Yexica Importaciones SAC	Mts Notex	CORPORACION YEXICA IMPORTACIONES SAC	0	3350	\N	\N	\N
8182	2021-07-14	1	323	1272	2881.35593220339	1	2021-07-01	1	\N	3	2021-08-18 23:04:01.238475	2021-08-18 23:04:01.238475	9	72	1	\N	\N	20607101664	Corporacion Yexica Importaciones SAC	Mts Notex	CORPORACION YEXICA IMPORTACIONES SAC	0	3400	\N	\N	\N
8177	2021-07-14	1	428	1270	2881.3525423728815	1	2021-07-01	1	\N	3	2021-08-18 23:04:01.238475	2021-08-18 23:04:01.238475	9	73	1	\N	\N	20601925045	Globe HD Intersys SAC	Notex	GLOBE HD INTERSYS SAC	0	3399.996	\N	\N	\N
8180	2021-07-21	1	327	1272	2754.233898305085	1	2021-07-01	1	\N	3	2021-08-18 23:04:01.238475	2021-08-18 23:04:01.238475	9	74	1	\N	\N	20607101664	Corporacion Yexica Importaciones SAC	Mts Notex	CORPORACION YEXICA IMPORTACIONES SAC	0	3249.996	\N	\N	\N
7991	2021-03-24	E001	64	1111	10.000000000000002	2	2021-03-01	1	\N	3	2021-04-22 01:40:59.173356	2021-04-22 01:40:59.173356	9	119	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8178	2021-07-21	1	436	1270	2711.8644067796613	1	2021-07-01	1	\N	3	2021-08-18 23:04:01.238475	2021-08-18 23:04:01.238475	9	75	1	\N	\N	20601925045	Globe HD Intersys SAC	Uniformes de tela notex	GLOBE HD INTERSYS SAC	0	3200	\N	\N	\N
8179	2021-07-24	F001	1065	1271	847.4576271186442	1	2021-07-01	1	\N	3	2021-08-18 23:04:01.238475	2021-08-18 23:04:01.238475	9	76	1	\N	\N	20551544738	Lumined Import SAC	Termometros TP500	LUMINED IMPORT SAC	0	1000	\N	\N	\N
8187	2021-08-09	E001	103	1111	10.000000000000002	2	2021-08-01	1	\N	3	2021-09-17 12:55:33.564499	2021-09-17 12:55:33.564499	9	158	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8190	2021-08-09	E001	106	1111	20.000000000000004	2	2021-08-01	1	\N	3	2021-09-17 12:55:33.564499	2021-09-17 12:55:33.564499	9	161	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	23.6	\N	\N	\N
8191	2021-08-09	E001	107	1111	40.00000000000001	2	2021-08-01	1	\N	3	2021-09-17 12:55:33.564499	2021-09-17 12:55:33.564499	9	162	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	47.2	\N	\N	\N
8192	2021-08-09	E001	108	1169	2400	2	2021-08-01	1	\N	3	2021-09-17 12:55:33.564499	2021-09-17 12:55:33.564499	9	163	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Termometros	BANCO FALABELLA PERU S.A.C	0	2832	\N	\N	\N
8193	2021-08-09	E001	109	1169	19800	2	2021-08-01	1	\N	3	2021-09-17 12:55:33.564499	2021-09-17 12:55:33.564499	9	164	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8188	2021-08-09	E001	104	1111	30	2	2021-08-01	1	\N	3	2021-09-17 12:55:33.564499	2021-09-17 12:55:33.564499	9	159	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	35.4	\N	\N	\N
8189	2021-08-09	E001	105	1111	5.000000000000001	2	2021-08-01	1	\N	3	2021-09-17 12:55:33.564499	2021-09-17 12:55:33.564499	9	160	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	5.9	\N	\N	\N
8203	2021-08-26	1	948	1231	1686.4406779661017	1	2021-08-01	1	\N	3	2021-09-17 12:56:20.711758	2021-09-17 12:56:20.711758	9	84	1	\N	\N	10487215436	Andrea Junet Eguiguren Carrillo	Mts Notex	ANDREA JUNET EGUIGUREN CARRILLO	0	1990	\N	\N	\N
8198	2021-08-09	E001	40	1111	-40.00000000000001	2	2021-08-01	1	\N	3	2021-09-17 12:55:33.564499	2021-09-17 12:55:33.564499	9	165	4	E001	107	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-47.2	\N	\N	\N
8197	2021-08-09	E001	41	1111	-20.000000000000004	2	2021-08-01	1	\N	3	2021-09-17 12:55:33.564499	2021-09-17 12:55:33.564499	9	166	4	E001	106	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-23.6	\N	\N	\N
8196	2021-08-09	E001	42	1111	-5.000000000000001	2	2021-08-01	1	\N	3	2021-09-17 12:55:33.564499	2021-09-17 12:55:33.564499	9	167	4	E001	105	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-5.9	\N	\N	\N
8195	2021-08-09	E001	44	1111	-10.000000000000002	2	2021-08-01	1	\N	3	2021-09-17 12:55:33.564499	2021-09-17 12:55:33.564499	9	169	4	E001	103	10092676124	Carmen Perez Vega	NC	CARMEN PEREZ VEGA	0	-11.8	\N	\N	\N
8254	2021-11-05	E001	40	1274	3000	2	2021-11-01	1	\N	3	2021-12-21 04:20:44.537953	2021-12-21 04:20:44.537953	8	27	1	\N	\N	20138122256	UNIVERSIDAD PERUANA UNION	RENOVACION DE CONTRATO ACADEMY SUPPORT CENTER. CONSTA DE LOS SIGUIENTES PROGRAMAS: CURSOS BASICOS, IT ESSENTIALS, CCNA, CCNA SECURITY. DURACION: 12 MESES (01 DE AGOSTO DE 2021 AL 31 DE JULIO DEL 2022)	UNIVERSIDAD PERUANA UNION	0	3540	\N	\N	\N
8252	2021-03-22	1	125	1279	59.32203389830509	1	2021-11-01	1	\N	3	2021-12-21 04:11:36.353179	2021-12-21 04:11:36.353179	8	97	1	\N	\N	10789701852	CANCHANYA VARGAS PAMELA JUANA	varios	CANCHANYA VARGAS PAMELA JUANA	0	70	\N	\N	\N
8253	2021-03-22	1	7207	1280	65.67796610169492	1	2021-11-01	1	\N	3	2021-12-21 04:11:36.353179	2021-12-21 04:11:36.353179	8	98	1	\N	\N	20492796396	FERRETERIA JORGE E.I.R.L.	varios	FERRETERIA JORGE E.I.R.L.	0	77.5	\N	\N	\N
8250	2021-03-22	F001	4027	1277	86.4406779661017	1	2021-11-01	1	\N	3	2021-12-21 04:11:36.353179	2021-12-21 04:11:36.353179	8	99	1	\N	\N	10436946088	COLLAO AQUINO ALEX	varios	COLLAO AQUINO ALEX	0	102	\N	\N	\N
8251	2021-03-23	F002	288	1278	124.32203389830508	1	2021-11-01	1	\N	3	2021-12-21 04:11:36.353179	2021-12-21 04:11:36.353179	8	100	1	\N	\N	20563553597	DISTRIBUIDORA CINTHYA E.I.R.L.	varios	DISTRIBUIDORA CINTHYA E.I.R.L.	0	146.7	\N	\N	\N
8245	2021-11-24	F001	1046	1276	328.81355932203394	1	2021-11-01	1	\N	3	2021-12-21 04:11:36.353179	2021-12-21 04:11:36.353179	8	101	1	\N	\N	20602327664	TANKAR SOLUCIONES INTEGRALES SAC	varios	TANKAR SOLUCIONES INTEGRALES SAC	0	388	\N	\N	\N
8249	2021-11-24	FB13	127977	166	126.18644067796612	1	2021-11-01	1	\N	3	2021-12-21 04:11:36.353179	2021-12-21 04:11:36.353179	8	102	1	\N	\N	20100016681	IMPORTACIONES HIRAOKA S.A.C.	varios	IMPORTACIONES HIRAOKA S.A.C.	0	148.9	\N	\N	\N
8247	2021-11-26	F967	650	193	1219.2796610169491	1	2021-11-01	1	\N	3	2021-12-21 04:11:36.353179	2021-12-21 04:11:36.353179	8	103	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	1438.75	\N	\N	\N
8201	2021-06-15	F016	1825	1078	20.340000000000003	1	2021-08-01	1	\N	3	2021-09-17 12:56:20.711758	2021-09-17 12:56:20.711758	9	77	1	\N	\N	20601017106	Food & Beverage Invest SAC	Uniformes de tela notex	FOOD & BEVERAGE INVEST SAC	0	24.0012	\N	\N	\N
8200	2021-06-26	F001	1700	1273	500	1	2021-08-01	1	\N	3	2021-09-17 12:56:20.711758	2021-09-17 12:56:20.711758	9	78	1	\N	\N	10336655477	Sanchez Sanchez Victor Guillermo	Notex	SANCHEZ SANCHEZ VICTOR GUILLERMO	0	590	\N	\N	\N
8202	2021-07-15	F001	361	1263	2175.425	1	2021-08-01	1	\N	3	2021-09-17 12:56:20.711758	2021-09-17 12:56:20.711758	9	79	1	\N	\N	20606431881	Marna Peru World Imports S.A.C	Termometros TP500	MARNA PERU WORLD IMPORTS S.A.C	0	2567.0015	\N	\N	\N
8199	2021-08-06	F001	399	1263	4614.406779661017	1	2021-08-01	1	\N	3	2021-09-17 12:56:20.711758	2021-09-17 12:56:20.711758	9	80	1	\N	\N	20606431881	Marna Peru World Imports S.A.C	Notex	MARNA PERU WORLD IMPORTS S.A.C	0	5445	\N	\N	\N
8204	2021-08-13	1	932	1231	2084.7457627118647	1	2021-08-01	1	\N	3	2021-09-17 12:56:20.711758	2021-09-17 12:56:20.711758	9	81	1	\N	\N	10487215436	Andrea Junet Eguiguren Carrillo	Mts Notex	ANDREA JUNET EGUIGUREN CARRILLO	0	2460	\N	\N	\N
8206	2021-08-16	1	936	1231	2161.0169491525426	1	2021-08-01	1	\N	3	2021-09-17 12:56:20.711758	2021-09-17 12:56:20.711758	9	82	1	\N	\N	10487215436	Andrea Junet Eguiguren Carrillo	Mts Notex	ANDREA JUNET EGUIGUREN CARRILLO	0	2550	\N	\N	\N
8205	2021-08-18	1	938	1231	2542.3728813559323	1	2021-08-01	1	\N	3	2021-09-17 12:56:20.711758	2021-09-17 12:56:20.711758	9	83	1	\N	\N	10487215436	Andrea Junet Eguiguren Carrillo	Mts Notex	ANDREA JUNET EGUIGUREN CARRILLO	0	3000	\N	\N	\N
8255	2021-11-10	E001	41	1176	3000	2	2021-11-01	1	\N	3	2021-12-21 04:20:44.537953	2021-12-21 04:20:44.537953	8	28	1	\N	\N	20454870591	BS GRUPO S.A.C.	RENOVACION DE LICENCIAMIENTO Y SOPORTE ANUAL OCTUBRE 2021 OCTUBRE 2022: LICENCIA ILIMITADA DE USO DE LOS CURSOS EN LA PLATAFORMA WWW.NETACAD.COM DEL PROGRAMA CISCO NETWORKING ACADEMY.	BS GRUPO S.A.C.	0	3540	\N	\N	\N
8248	2021-11-26	F967	651	193	122.21186440677967	1	2021-11-01	1	\N	3	2021-12-21 04:11:36.353179	2021-12-21 04:11:36.353179	8	104	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	144.21	\N	\N	\N
8256	2021-11-27	1	320	1281	2966.1016949152545	1	2021-12-01	1	\N	3	2022-01-20 03:49:52.057111	2022-01-20 03:49:52.057111	9	102	1	\N	\N	20608439464	Macedo EIRL	Mandiles	MACEDO EIRL	0	3500	\N	\N	\N
8246	2021-11-26	FM13	1404	1102	419.36440677966107	1	2021-11-01	1	\N	3	2021-12-21 04:11:36.353179	2021-12-21 04:11:36.353179	8	105	1	\N	\N	20508565934	HIPERMERCADOS TOTTUS S.A	varios	HIPERMERCADOS TOTTUS S.A	0	494.85	\N	\N	\N
8257	2021-11-20	1	524	1282	2966.1016949152545	1	2021-12-01	1	\N	3	2022-01-20 03:49:52.057111	2022-01-20 03:49:52.057111	9	100	1	\N	\N	20608504436	Comercializadora Textil Orikata EIRL	Mandiles	COMERCIALIZADORA TEXTIL ORIKATA EIRL	0	3500	\N	\N	\N
8258	2021-11-24	1	314	1281	2966.1016949152545	1	2021-12-01	1	\N	3	2022-01-20 03:49:52.057111	2022-01-20 03:49:52.057111	9	101	1	\N	\N	20608439464	Macedo EIRL	Mandiles	MACEDO EIRL	0	3500	\N	\N	\N
8262	2021-12-02	E001	131	1169	4950	2	2021-12-01	1	\N	3	2022-01-20 03:50:52.305145	2022-01-20 03:50:52.305145	9	191	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles	BANCO FALABELLA PERU S.A.C	0	5841	\N	\N	\N
8263	2021-12-02	E001	132	1169	19800	2	2021-12-01	1	\N	3	2022-01-20 03:50:52.305145	2022-01-20 03:50:52.305145	9	192	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8259	2021-12-02	E001	128	1111	15	2	2021-12-01	1	\N	3	2022-01-20 03:50:52.305145	2022-01-20 03:50:52.305145	9	188	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8260	2021-12-02	E001	129	1111	5.000000000000001	2	2021-12-01	1	\N	3	2022-01-20 03:50:52.305145	2022-01-20 03:50:52.305145	9	189	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	5.9	\N	\N	\N
8261	2021-12-02	E001	130	1111	20.000000000000004	2	2021-12-01	1	\N	3	2022-01-20 03:50:52.305145	2022-01-20 03:50:52.305145	9	190	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	23.6	\N	\N	\N
8265	2022-01-10	E001	134	1111	20.000000000000004	2	2022-01-01	1	\N	3	2022-02-18 01:20:35.609962	2022-02-18 01:20:35.609962	9	194	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	23.6	\N	\N	\N
8266	2022-01-10	E001	135	1111	10.000000000000002	2	2022-01-01	1	\N	3	2022-02-18 01:20:35.609962	2022-02-18 01:20:35.609962	9	195	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8264	2022-01-10	E001	133	1111	40.00000000000001	2	2022-01-01	1	\N	3	2022-02-18 01:20:35.609962	2022-02-18 01:20:35.609962	9	193	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	47.2	\N	\N	\N
8218	2021-09-21	1	743	1272	2129.237288135593	1	2021-09-01	1	\N	3	2021-10-20 17:58:18.647927	2021-10-20 17:58:18.647927	9	86	1	\N	\N	20607101664	Corporacion Yexika Importaciones SAC	Mandiles	CORPORACION YEXIKA IMPORTACIONES SAC	0	2512.5	\N	\N	\N
8219	2021-09-22	1	744	1272	2116.5254237288136	1	2021-09-01	1	\N	3	2021-10-20 17:58:18.647927	2021-10-20 17:58:18.647927	9	87	1	\N	\N	20607101664	Corporacion Yexika Importaciones SAC	Mandiles	CORPORACION YEXIKA IMPORTACIONES SAC	0	2497.5	\N	\N	\N
8221	2021-09-25	1	749	1272	2135.593220338983	1	2021-09-01	1	\N	3	2021-10-20 17:58:18.647927	2021-10-20 17:58:18.647927	9	88	1	\N	\N	20607101664	Corporacion Yexika Importaciones SAC	Mandiles	CORPORACION YEXIKA IMPORTACIONES SAC	0	2520	\N	\N	\N
8220	2021-09-27	1	750	1272	2122.8813559322034	1	2021-09-01	1	\N	3	2021-10-20 17:58:18.647927	2021-10-20 17:58:18.647927	9	89	1	\N	\N	20607101664	Corporacion Yexika Importaciones SAC	Mandiles	CORPORACION YEXIKA IMPORTACIONES SAC	0	2505	\N	\N	\N
8209	2021-08-17	E001	38	1123	10000	2	2021-08-01	1	\N	3	2021-09-20 18:52:27.303622	2021-09-20 18:52:27.303622	8	24	1	\N	\N	20604622558	NT MARKETING S.A.C.	SERVICIO DE SOLUCION TECNOLOGICA DE OUTSOURCING	NT MARKETING S.A.C.	0	11800	\N	\N	\N
8210	2021-08-17	E001	6	1123	-10000	2	2021-08-01	1	\N	3	2021-09-20 18:52:27.303622	2021-09-20 18:52:27.303622	8	25	4	E001	38	20604622558	NT MARKETING S.A.C.	ANULACION DE LA OPERACION	NT MARKETING S.A.C.	0	-11800	\N	\N	\N
8231	2021-09-06	1	343	1275	2203.389830508475	1	2021-10-01	1	\N	3	2021-11-18 13:13:37.470482	2021-11-18 13:13:37.470482	9	92	1	\N	\N	10406776285	Erick Roger Fuentes Calderon	Mandiles	ERICK ROGER FUENTES CALDERON	0	2600	\N	\N	\N
8224	2021-10-05	E001	117	1111	15	2	2021-10-01	1	\N	3	2021-11-18 13:06:46.551822	2021-11-18 13:06:46.551822	9	177	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8211	2021-09-10	E001	110	1111	15	2	2021-09-01	1	\N	3	2021-10-20 17:57:42.285459	2021-10-20 17:57:42.285459	9	170	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8212	2021-09-10	E001	111	1111	10.000000000000002	2	2021-09-01	1	\N	3	2021-10-20 17:57:42.285459	2021-10-20 17:57:42.285459	9	171	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8213	2021-09-10	E001	112	1111	12	2	2021-09-01	1	\N	3	2021-10-20 17:57:42.285459	2021-10-20 17:57:42.285459	9	172	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	14.16	\N	\N	\N
8214	2021-09-10	E001	113	1111	7	2	2021-09-01	1	\N	3	2021-10-20 17:57:42.285459	2021-10-20 17:57:42.285459	9	173	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	8.26	\N	\N	\N
8215	2021-09-10	E001	114	1111	25	2	2021-09-01	1	\N	3	2021-10-20 17:57:42.285459	2021-10-20 17:57:42.285459	9	174	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
8216	2021-09-10	E001	115	1169	19800	2	2021-09-01	1	\N	3	2021-10-20 17:57:42.285459	2021-10-20 17:57:42.285459	9	175	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8225	2021-10-05	E001	118	1111	25	2	2021-10-01	1	\N	3	2021-11-18 13:06:46.551822	2021-11-18 13:06:46.551822	9	178	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
8217	2021-09-02	E001	317	1247	20000	1	2021-09-01	1	\N	3	2021-10-20 17:58:18.647927	2021-10-20 17:58:18.647927	9	85	1	\N	\N	20602870619	Merch 360 Publicidad SAC	Notex	MERCH 360 PUBLICIDAD SAC	0	23600	\N	\N	\N
8226	2021-10-05	E001	119	1169	19800	2	2021-10-01	1	\N	3	2021-11-18 13:06:46.551822	2021-11-18 13:06:46.551822	9	179	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8227	2021-10-07	E001	120	1111	15	2	2021-10-01	1	\N	3	2021-11-18 13:06:46.551822	2021-11-18 13:06:46.551822	9	180	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8228	2021-10-07	E001	121	1169	2400	2	2021-10-01	1	\N	3	2021-11-18 13:06:46.551822	2021-11-18 13:06:46.551822	9	181	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Termometros	BANCO FALABELLA PERU S.A.C	0	2832	\N	\N	\N
8234	2021-10-16	2	635	1272	1868.6440677966102	1	2021-10-01	1	\N	3	2021-11-18 13:13:37.470482	2021-11-18 13:13:37.470482	9	96	1	\N	\N	20607101664	Corporacion Yexika Importaciones SAC	Mandiles	CORPORACION YEXIKA IMPORTACIONES SAC	0	2205	\N	\N	\N
8237	2021-10-25	1	951	1275	2966.1016949152545	1	2021-10-01	1	\N	3	2021-11-18 13:13:37.470482	2021-11-18 13:13:37.470482	9	98	1	\N	\N	10406776285	Erick Roger Fuentes Calderon	Mandiles	ERICK ROGER FUENTES CALDERON	0	3500	\N	\N	\N
8223	2021-10-05	E001	116	1111	30	2	2021-10-01	1	\N	3	2021-11-18 13:06:46.551822	2021-11-18 13:06:46.551822	9	176	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	35.4	\N	\N	\N
8074	2021-04-06	E001	67	1111	10.000000000000002	2	2021-04-01	1	\N	3	2021-05-19 20:51:57.228926	2021-05-19 20:51:57.228926	9	122	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8075	2021-04-06	E001	68	1111	10.000000000000002	2	2021-04-01	1	\N	3	2021-05-19 20:51:57.228926	2021-05-19 20:51:57.228926	9	123	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8076	2021-04-06	E001	69	1111	10.000000000000002	2	2021-04-01	1	\N	3	2021-05-19 20:51:57.228926	2021-05-19 20:51:57.228926	9	124	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8236	2021-10-22	1	388	1248	826.271186440678	1	2021-10-01	1	\N	3	2021-11-18 13:13:37.470482	2021-11-18 13:13:37.470482	9	97	1	\N	\N	20602570291	Consorcio Textil &Moda EIRL	Polos en Jersey	CONSORCIO TEXTIL &MODA EIRL	0	975	\N	\N	\N
8077	2021-04-06	E001	70	1111	10.000000000000002	2	2021-04-01	1	\N	3	2021-05-19 20:51:57.228926	2021-05-19 20:51:57.228926	9	125	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8078	2021-04-06	E001	71	1111	10.000000000000002	2	2021-04-01	1	\N	3	2021-05-19 20:51:57.228926	2021-05-19 20:51:57.228926	9	126	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8079	2021-04-06	E001	72	1111	10.000000000000002	2	2021-04-01	1	\N	3	2021-05-19 20:51:57.228926	2021-05-19 20:51:57.228926	9	127	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8230	2021-08-19	1	335	1275	2542.3728813559323	1	2021-10-01	1	\N	3	2021-11-18 13:13:37.470482	2021-11-18 13:13:37.470482	9	90	1	\N	\N	10406776285	Erick Roger Fuentes Calderon	Mandiles	ERICK ROGER FUENTES CALDERON	0	3000	\N	\N	\N
8232	2021-09-30	F001	521	1263	4411.02	1	2021-10-01	1	\N	3	2021-11-18 13:13:37.470482	2021-11-18 13:13:37.470482	9	93	1	\N	\N	20606431881	Marna Peru World Imports SAC	Notex Blanco	MARNA PERU WORLD IMPORTS SAC	0	5205.0036	\N	\N	\N
8233	2021-10-12	2	628	1272	2370.762711864407	1	2021-10-01	1	\N	3	2021-11-18 13:13:37.470482	2021-11-18 13:13:37.470482	9	94	1	\N	\N	20607101664	Corporacion Yexika Importaciones SAC	Mandiles	CORPORACION YEXIKA IMPORTACIONES SAC	0	2797.5	\N	\N	\N
8235	2021-10-15	1	387	1248	2033.898305084746	1	2021-10-01	1	\N	3	2021-11-18 13:13:37.470482	2021-11-18 13:13:37.470482	9	95	1	\N	\N	20602570291	Consorcio Textil &Moda EIRL	Mandiles	CONSORCIO TEXTIL &MODA EIRL	0	2400	\N	\N	\N
8229	2021-09-02	1	345	1275	2033.898305084746	1	2021-10-01	1	\N	3	2021-11-18 13:13:37.470482	2021-11-18 13:13:37.470482	9	91	1	\N	\N	10406776285	Erick Roger Fuentes Calderon	Mandiles	ERICK ROGER FUENTES CALDERON	0	2400	\N	\N	\N
8222	2021-09-14	E001	39	1274	4000	2	2021-09-01	1	\N	3	2021-10-20 19:24:59.62289	2021-10-20 19:24:59.62289	8	26	1	\N	\N	20138122256	UNIVERSIDAD PERUANA UNION	RENOVACION DE LICENCIA Y SOPORTE ANUAL DE JUNIO 2021 A JUNIO 2022: LICENCIA ILIMITADA DE USO DE LOS CURSOS EN LA PLATAFORMA NETACAD.COM DEL PROGRAMA CISCO NETOWRKING ACADEM	UNIVERSIDAD PERUANA UNION	0	4720	\N	\N	\N
8238	2021-10-28	1	956	1275	2966.1016949152545	1	2021-10-01	1	\N	3	2021-11-18 13:13:37.470482	2021-11-18 13:13:37.470482	9	99	1	\N	\N	10406776285	Erick Roger Fuentes Calderon	Mandiles	ERICK ROGER FUENTES CALDERON	0	3500	\N	\N	\N
8104	2021-05-24	E001	32	1257	1525.4406779661017	1	2021-05-01	1	\N	3	2021-06-18 16:16:53.718308	2021-06-18 16:16:53.718308	6	82	1	\N	\N	20601872197	SERVICIOS GENERALES BARRIOS E.I.R.L.	caretas	SERVICIOS GENERALES BARRIOS E.I.R.L.	0	1800.02	\N	\N	\N
8097	2021-05-04	E001	79	1111	10.000000000000002	2	2021-05-01	1	\N	3	2021-06-16 17:29:53.362343	2021-06-16 17:29:53.362343	9	134	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8268	2022-01-10	E001	137	1169	19800	2	2022-01-01	1	\N	3	2022-02-18 01:20:35.609962	2022-02-18 01:20:35.609962	9	197	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8086	2021-04-12	F001	20759	1173	1287.29	1	2021-04-01	1	\N	3	2021-05-19 20:56:56.342147	2021-05-19 20:56:56.342147	9	62	1	\N	\N	20512900896	JC Medical Supplies S.A.C	Termometros	JC MEDICAL SUPPLIES S.A.C	0	1519.0022	\N	\N	\N
8087	2021-04-20	1	482	1255	2711.8644067796613	1	2021-04-01	1	\N	3	2021-05-19 20:56:56.342147	2021-05-19 20:56:56.342147	9	64	1	\N	\N	20607515035	CORPORACION YALEO'S E.I.R.L.	Mandiles	CORPORACION YALEO'S E.I.R.L.	0	3200	\N	\N	\N
8088	2021-04-15	1	5383	881	2372.8813559322034	1	2021-04-01	1	\N	1	2021-05-19 20:56:56.342147	2021-05-19 20:58:17.221501	9	63	1			20602486134	COMERCIAL ARCHO E.I.R.L.	Mandiles	COMERCIAL ARCHO E.I.R.L.	0	2800	\N	\N	\N
8089	2021-04-03	E001	112	1253	251.69	1	2021-04-01	1	\N	1	2021-05-19 20:56:56.342147	2021-05-19 21:02:55.793157	9	61	1			20525260942	Pena Linda Bungalows S.A.C	Alojamiento	PEÑA LINDA BUNGALOWS S.A.C	0	296.9942	\N	\N	\N
8098	2021-05-04	E001	80	1111	65	2	2021-05-01	1	\N	3	2021-06-16 17:29:53.362343	2021-06-16 17:29:53.362343	9	135	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	76.7	\N	\N	\N
8099	2021-05-04	E001	81	1111	10.000000000000002	2	2021-05-01	1	\N	3	2021-06-16 17:29:53.362343	2021-06-16 17:29:53.362343	9	136	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8080	2021-04-06	E001	73	1169	19800	2	2021-04-01	1	\N	3	2021-05-19 20:51:57.228926	2021-05-19 20:51:57.228926	9	128	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8081	2021-04-19	E001	74	1111	25	2	2021-04-01	1	\N	3	2021-05-19 20:51:57.228926	2021-05-19 20:51:57.228926	9	129	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
8082	2021-04-19	E001	75	1111	25	2	2021-04-01	1	\N	3	2021-05-19 20:51:57.228926	2021-05-19 20:51:57.228926	9	130	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
8083	2021-04-19	E001	76	1111	25	2	2021-04-01	1	\N	3	2021-05-19 20:51:57.228926	2021-05-19 20:51:57.228926	9	131	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
8084	2021-04-19	E001	77	1111	25	2	2021-04-01	1	\N	3	2021-05-19 20:51:57.228926	2021-05-19 20:51:57.228926	9	132	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
8085	2021-04-19	E001	78	1169	2400	2	2021-04-01	1	\N	3	2021-05-19 20:51:57.228926	2021-05-19 20:51:57.228926	9	133	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Termometros	BANCO FALABELLA PERU S.A.C	0	2832	\N	\N	\N
8100	2021-05-04	E001	82	1111	65	2	2021-05-01	1	\N	3	2021-06-16 17:29:53.362343	2021-06-16 17:29:53.362343	9	137	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	76.7	\N	\N	\N
8101	2021-05-04	E001	83	1111	15	2	2021-05-01	1	\N	3	2021-06-16 17:29:53.362343	2021-06-16 17:29:53.362343	9	138	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8090	2021-04-14	E001	35	1176	3000	2	2021-04-01	1	\N	3	2021-05-20 20:10:23.526145	2021-05-20 20:10:23.526145	8	20	1	\N	\N	20454870591	BS GRUPO S.A.C.	Servicio	BS GRUPO S.A.C.	0	3540	\N	\N	\N
8102	2021-05-04	E001	84	1169	19800	2	2021-05-01	1	\N	3	2021-06-16 17:29:53.362343	2021-06-16 17:29:53.362343	9	139	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8096	2021-05-05	E001	1580	1252	3050.84745744	1	2021-05-01	1	\N	3	2021-06-16 17:28:51.182004	2021-06-16 17:28:51.182004	9	65	1	\N	\N	20545482658	Negociaciones Mundo Global S.A.C	Notex	NEGOCIACIONES MUNDO GLOBAL S.A.C	0	3599.9999997792	\N	\N	\N
8095	2021-05-06	E001	1583	1252	4194.9152542	1	2021-05-01	1	\N	3	2021-06-16 17:28:51.182004	2021-06-16 17:28:51.182004	9	66	1	\N	\N	20545482658	Negociaciones Mundo Global S.A.C	Notex	NEGOCIACIONES MUNDO GLOBAL S.A.C	0	4949.999999956	\N	\N	\N
8094	2021-05-10	F015	20204	1256	4065.2542372881358	1	2021-05-01	1	\N	3	2021-06-16 17:28:51.182004	2021-06-16 17:28:51.182004	9	67	1	\N	\N	20513118849	Grupo Textil Casas S.A.C	Denim	GRUPO TEXTIL CASAS S.A.C	0	4797	\N	\N	\N
8105	2021-06-25	FF23	954	1244	1151.5932203389832	1	2021-06-01	1	\N	3	2021-07-19 20:32:19.791733	2021-07-19 20:32:19.791733	8	96	1	\N	\N	20601844916	QUE TAL COMPRA DEL PERU S.A.C.	celular	QUE TAL COMPRA DEL PERU S.A.C.	0	1358.88	\N	\N	\N
8103	2021-03-04	F452	1332	1056	1050.5932203389832	1	2021-05-01	1	\N	3	2021-06-18 16:16:53.718308	2021-06-18 16:16:53.718308	6	81	1	\N	\N	20378890161	RASH PERU S.A.C.	celular	RASH PERU S.A.C.	0	1239.7	\N	\N	\N
8108	2021-03-13	1	1360	1258	440.67796610169495	1	2021-06-01	1	\N	3	2021-07-19 20:32:19.791733	2021-07-19 20:32:19.791733	8	90	1	\N	\N	10102463213	ROJAS CHOCCA ARMANDO	varios	ROJAS CHOCCA ARMANDO	0	520	\N	\N	\N
8109	2021-03-17	F001	674	1242	61.016949152542374	1	2021-06-01	1	\N	3	2021-07-19 20:32:19.791733	2021-07-19 20:32:19.791733	8	91	1	\N	\N	20605482148	CONSORCIO LU & VER E.I.R.L.	varios	CONSORCIO LU & VER E.I.R.L.	0	72	\N	\N	\N
8110	2021-03-19	F001	7428	1259	126.27118644067798	1	2021-06-01	1	\N	3	2021-07-19 20:32:19.791733	2021-07-19 20:32:19.791733	8	92	1	\N	\N	20514745464	FERRETERIA SEDANO S.R.L.	varios	FERRETERIA SEDANO S.R.L.	0	149	\N	\N	\N
8112	2021-03-19	F666	5603	1102	127.5	1	2021-06-01	1	\N	3	2021-07-19 20:32:19.791733	2021-07-19 20:32:19.791733	8	93	1	\N	\N	20508565934	HIPERMERCADOS TOTTUS S.A	varios	HIPERMERCADOS TOTTUS S.A	0	150.45	\N	\N	\N
8113	2021-02-26	F001	1451	1260	127.62711864406779	1	2021-06-01	1	\N	3	2021-07-19 20:32:19.791733	2021-07-19 20:32:19.791733	8	88	1	\N	\N	20492115461	INVERSIONES DECOCERAMICA S.A.C.	varios	INVERSIONES DECOCERAMICA S.A.C.	0	150.6	\N	\N	\N
8111	2021-03-10	F001	7284	1259	38.13559322033898	1	2021-06-01	1	\N	3	2021-07-19 20:32:19.791733	2021-07-19 20:32:19.791733	8	89	1	\N	\N	20514745464	FERRETERIA SEDANO S.R.L.	varios	FERRETERIA SEDANO S.R.L.	0	45	\N	\N	\N
8107	2021-03-25	E001	998	1119	23.389830508474578	1	2021-06-01	1	\N	3	2021-07-19 20:32:19.791733	2021-07-19 20:32:19.791733	8	94	1	\N	\N	10459335582	POVEZ ESTEBAN ESPERANZA	varios	POVEZ ESTEBAN ESPERANZA	0	27.6	\N	\N	\N
8106	2021-05-24	E001	32	1257	1525.4406779661017	1	2021-06-01	1	\N	3	2021-07-19 20:32:19.791733	2021-07-19 20:32:19.791733	8	95	1	\N	\N	20601872197	SERVICIOS GENERALES BARRIOS E.I.R.L.	caretas	SERVICIOS GENERALES BARRIOS E.I.R.L.	0	1800.02	\N	\N	\N
8115	2021-06-11	FA16	2449	1128	104.91525423728814	1	2021-06-01	1	\N	3	2021-07-19 20:39:18.762082	2021-07-19 20:39:18.762082	6	87	1	\N	\N	20493020618	TIENDAS PERUANAS SA	varios	TIENDAS PERUANAS SA	0	123.8	\N	\N	\N
8116	2021-06-11	F001	2760	1261	158.47457627118644	1	2021-06-01	1	\N	3	2021-07-19 20:39:18.762082	2021-07-19 20:39:18.762082	6	85	1	\N	\N	20257759882	VIREYES S.R.LTDA.	varios	VIREYES S.R.LTDA.	0	187	\N	\N	\N
8114	2021-06-26	E001	34	1257	2211.8644067796613	1	2021-06-01	1	\N	3	2021-07-19 20:39:18.762082	2021-07-19 20:39:18.762082	6	89	1	\N	\N	20601872197	SERVICIOS GENERALES BARRIOS E.I.R.L.	caretas	SERVICIOS GENERALES BARRIOS E.I.R.L.	0	2610	\N	\N	\N
8117	2021-06-11	F148	1410	1126	209.0084745762712	1	2021-06-01	1	\N	3	2021-07-19 20:39:18.762082	2021-07-19 20:39:18.762082	6	86	1	\N	\N	20100128056	SAGA FALABELLA S A	varios	SAGA FALABELLA S A	0	246.63	\N	\N	\N
8132	2021-06-24	E001	5	1124	-4826.500000000001	2	2021-06-01	1	\N	3	2021-07-19 21:04:10.377222	2021-07-19 21:04:10.377222	8	23	4	E001	36	20267178331	NEXUS TECHNOLOGY S.A.C.	ANULACION DE LA OPERACION	NEXUS TECHNOLOGY S.A.C.	0	-5695.27	\N	\N	\N
8138	2021-06-02	E001	88	1111	20.000000000000004	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	143	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	23.6	\N	\N	\N
8120	2020-10-22	1	3258	1262	167.3728813559322	1	2021-06-01	1	\N	3	2021-07-19 20:39:18.762082	2021-07-19 20:39:18.762082	6	83	1	\N	\N	20600268202	JUSTIN RESTOBAR S.A.C.	varios	JUSTIN RESTOBAR S.A.C.	0	197.5	\N	\N	\N
8118	2021-06-04	FA16	166811	1128	196.4491525423729	1	2021-06-01	1	\N	3	2021-07-19 20:39:18.762082	2021-07-19 20:39:18.762082	6	84	1	\N	\N	20493020618	TIENDAS PERUANAS SA	varios	TIENDAS PERUANAS SA	0	231.81	\N	\N	\N
8119	2021-06-25	FA47	1337917	174	90.20338983050847	1	2021-06-01	1	\N	3	2021-07-19 20:39:18.762082	2021-07-19 20:39:18.762082	6	88	1	\N	\N	20100070970	SUPERMERCADOS PERUANOS SOCIEDAD ANONIMA 'O ' S.P.S.A.	varios	SUPERMERCADOS PERUANOS SOCIEDAD ANONIMA 'O ' S.P.S.A.	0	112.25	\N	\N	5.81
8240	2021-11-05	E001	123	1111	25	2	2021-11-01	1	\N	3	2021-12-20 15:43:25.077442	2021-12-20 15:43:25.077442	9	183	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
8241	2021-11-05	E001	124	1111	10.000000000000002	2	2021-11-01	1	\N	3	2021-12-20 15:43:25.077442	2021-12-20 15:43:25.077442	9	184	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8242	2021-11-05	E001	125	1111	12	2	2021-11-01	1	\N	3	2021-12-20 15:43:25.077442	2021-12-20 15:43:25.077442	9	185	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	14.16	\N	\N	\N
8143	2021-06-02	E001	93	1169	19800	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	148	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8130	2021-06-21	E001	36	1124	4826.500000000001	2	2021-06-01	1	3.94	3	2021-07-19 21:04:10.377222	2021-07-19 21:04:10.377222	8	21	1	\N	\N	20267178331	NEXUS TECHNOLOGY S.A.C.	ASESORIA E-COMMERCE: SERVICIO DE CONSULTORIA ESPECIALIZADA PARA EL CIERRE DEL PROYECTO DE IMPLEMENTACION DEL SITIO DE COMERCIO ELECTRONICO NEXUS TECHNOLOGY.	NEXUS TECHNOLOGY S.A.C.	0	5695.27	\N	\N	\N
8131	2021-06-24	E001	37	1124	5075.775000000001	2	2021-06-01	1	3.981	3	2021-07-19 21:04:10.377222	2021-07-19 21:04:10.377222	8	22	1	\N	\N	20267178331	NEXUS TECHNOLOGY S.A.C.	ASESORIA E-COMMERCE: SERVICIO DE CONSULTORIA ESPECIALIZADA PARA EL CIERRE DEL PROYECTO DE IMPLEMENTACION DEL SITIO DE COMERCIO ELECTRONICO NEXUS TECHNOLOGY.	NEXUS TECHNOLOGY S.A.C.	0	5989.4145	\N	\N	\N
8144	2021-06-30	E001	94	1111	10.000000000000002	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	149	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8133	2021-06-15	F001	312	1263	6214.400000000001	1	2021-06-01	1	\N	3	2021-07-20 03:23:35.769991	2021-07-20 03:23:35.769991	9	68	1	\N	\N	20606431881	Marna Peru World Imports S.A.C	caretas	MARNA PERU WORLD IMPORTS S.A.C	0	7332.992	\N	\N	\N
8134	2021-06-24	F020	7284	1256	539.83	1	2021-06-01	1	\N	3	2021-07-20 03:23:35.769991	2021-07-20 03:23:35.769991	9	69	1	\N	\N	20513118849	Grupo Textil Casas S.A.C	varios	GRUPO TEXTIL CASAS S.A.C	0	636.9994	\N	\N	\N
8239	2021-11-05	E001	122	1111	15	2	2021-11-01	1	\N	3	2021-12-20 15:43:25.077442	2021-12-20 15:43:25.077442	9	182	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8121	2021-06-02	E001	44	1087	5600	2	2021-06-01	1	\N	3	2021-07-19 20:49:42.653031	2021-07-19 20:49:42.653031	6	54	1	\N	\N	20265815830	CORPORACION TURISTICA PERUANA S.A.C.	PROTECTOR FACIAL CON MONTURA	CORPORACION TURISTICA PERUANA S.A.C.	0	6608	\N	\N	\N
8122	2021-06-25	E001	45	1209	30	2	2021-06-01	1	\N	3	2021-07-19 20:49:42.653031	2021-07-19 20:49:42.653031	6	55	1	\N	\N	10101503882	HUANACUNI CANDIA RAUL	VARIOS	HUANACUNI CANDIA RAUL	0	35.4	\N	\N	\N
8123	2021-06-25	E001	46	1209	25	2	2021-06-01	1	\N	3	2021-07-19 20:49:42.653031	2021-07-19 20:49:42.653031	6	56	1	\N	\N	10101503882	HUANACUNI CANDIA RAUL	VARIOS	HUANACUNI CANDIA RAUL	0	29.5	\N	\N	\N
8124	2021-06-26	E001	47	1209	25	2	2021-06-01	1	\N	3	2021-07-19 20:49:42.653031	2021-07-19 20:49:42.653031	6	57	1	\N	\N	10101503882	HUANACUNI CANDIA RAUL	VARIOS	HUANACUNI CANDIA RAUL	0	29.5	\N	\N	\N
8125	2021-06-26	E001	48	1209	25	2	2021-06-01	1	\N	3	2021-07-19 20:49:42.653031	2021-07-19 20:49:42.653031	6	58	1	\N	\N	10101503882	HUANACUNI CANDIA RAUL	VARIOS	HUANACUNI CANDIA RAUL	0	29.5	\N	\N	\N
8126	2021-06-27	E001	22	1209	-30	2	2021-06-01	1	\N	3	2021-07-19 20:49:42.653031	2021-07-19 20:49:42.653031	6	59	4	E001	45	10101503882	HUANACUNI CANDIA RAUL	\N	HUANACUNI CANDIA RAUL	0	-35.4	\N	\N	\N
8127	2021-06-27	E001	23	1209	-25	2	2021-06-01	1	\N	3	2021-07-19 20:49:42.653031	2021-07-19 20:49:42.653031	6	60	4	E001	46	10101503882	HUANACUNI CANDIA RAUL	\N	HUANACUNI CANDIA RAUL	0	-29.5	\N	\N	\N
8128	2021-06-27	E001	24	1209	-25	2	2021-06-01	1	\N	3	2021-07-19 20:49:42.653031	2021-07-19 20:49:42.653031	6	61	4	E001	47	10101503882	HUANACUNI CANDIA RAUL	\N	HUANACUNI CANDIA RAUL	0	-29.5	\N	\N	\N
8129	2021-06-27	E001	25	1209	-25	2	2021-06-01	1	\N	3	2021-07-19 20:49:42.653031	2021-07-19 20:49:42.653031	6	62	4	E001	48	10101503882	HUANACUNI CANDIA RAUL	\N	HUANACUNI CANDIA RAUL	0	-29.5	\N	\N	\N
8148	2021-06-30	E001	98	1169	1000	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	153	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Termometros	BANCO FALABELLA PERU S.A.C	0	1180	\N	\N	\N
8135	2021-06-02	E001	85	1111	10.000000000000002	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	140	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8145	2021-06-30	E001	95	1111	50	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	150	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	59	\N	\N	\N
8139	2021-06-02	E001	89	1111	10.000000000000002	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	144	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8140	2021-06-02	E001	90	1111	50	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	145	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	59	\N	\N	\N
8146	2021-06-30	E001	96	1111	10.000000000000002	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	151	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8147	2021-06-30	E001	97	1111	11.000000000000002	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	152	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	12.98	\N	\N	\N
8136	2021-06-02	E001	86	1111	50	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	141	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	59	\N	\N	\N
8141	2021-06-02	E001	91	1111	4	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	146	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	4.72	\N	\N	\N
8137	2021-06-02	E001	87	1111	15	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	142	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8142	2021-06-02	E001	92	1111	10.000000000000002	2	2021-06-01	1	\N	3	2021-07-20 03:24:19.326025	2021-07-20 03:24:19.326025	9	147	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8296	2022-04-10	1	359	1287	1672.8813559322034	1	2022-04-01	1	\N	3	2022-05-20 01:56:11.686119	2022-05-20 01:56:11.686119	9	114	1	\N	\N	20609234335	Multinegocios Rivas & Ferreiros	\N	MULTINEGOCIOS RIVAS & FERREIROS	0	1974	\N	\N	\N
8274	2022-02-04	E001	139	1111	10.34	2	2022-02-01	1	\N	3	2022-03-19 00:48:13.087252	2022-03-19 00:48:13.087252	9	199	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	12.2012	\N	\N	\N
8275	2022-02-04	E001	140	1111	20.000000000000004	2	2022-02-01	1	\N	3	2022-03-19 00:48:13.087252	2022-03-19 00:48:13.087252	9	200	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	23.6	\N	\N	\N
8276	2022-02-04	E001	141	1111	25	2	2022-02-01	1	\N	3	2022-03-19 00:48:13.087252	2022-03-19 00:48:13.087252	9	201	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
8277	2022-02-04	E001	142	1169	19800	2	2022-02-01	1	\N	3	2022-03-19 00:48:13.087252	2022-03-19 00:48:13.087252	9	202	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8282	2021-03-16	F001	801	1263	3008.98	1	2022-03-01	1	\N	3	2022-04-22 16:49:07.745209	2022-04-22 16:49:07.745209	9	110	1	\N	\N	20606431881	Marna Peru World Import SAC	\N	MARNA PERU WORLD IMPORT SAC	0	3550.5964	\N	\N	\N
8283	2021-03-16	F001	801	1263	3146.78	1	2022-03-01	1	\N	3	2022-04-22 16:49:07.745209	2022-04-22 16:49:07.745209	9	111	1	\N	\N	20606431881	Marna Peru World Import SAC	\N	MARNA PERU WORLD IMPORT SAC	0	3713.2004	\N	\N	\N
8281	2022-03-07	F001	784	1263	3008.98	1	2022-03-01	1	\N	3	2022-04-22 16:49:07.745209	2022-04-22 16:49:07.745209	9	112	1	\N	\N	20606431881	Marna Peru World Import SAC	\N	MARNA PERU WORLD IMPORT SAC	0	3550.5964	\N	\N	\N
8279	2022-02-15	1	538	1284	2966.1016949152545	1	2022-02-01	1	\N	3	2022-03-19 00:49:13.686541	2022-03-19 00:49:13.686541	9	107	1	\N	\N	20608769618	Negoinversiones Casique EIRL	\N	NEGOINVERSIONES CASIQUE EIRL	0	3500	\N	\N	\N
8280	2022-02-20	1	1189	1285	2966.1016949152545	1	2022-02-01	1	\N	3	2022-03-19 00:49:13.686541	2022-03-19 00:49:13.686541	9	108	1	\N	\N	10486928315	Luci Vanesa Perez Vasquez	\N	LUCI VANESA PEREZ VASQUEZ	0	3500	\N	\N	\N
8278	2022-02-25	E001	2278	1283	8474.57622	1	2022-02-01	1	\N	3	2022-03-19 00:49:13.686541	2022-03-19 00:49:13.686541	9	109	1	\N	\N	10438642035	Alfaro Olaya Luz Maria	\N	ALFARO OLAYA LUZ MARIA	0	9999.9999396	\N	\N	\N
8297	2022-04-10	1	512	1288	1627.1186440677966	1	2022-04-01	1	\N	3	2022-05-20 01:56:11.686119	2022-05-20 01:56:11.686119	9	115	1	\N	\N	20609103940	Textil Myreyatex	\N	TEXTIL MYREYATEX	0	1920	\N	\N	\N
8284	2022-03-08	E001	143	1111	25	2	2022-03-01	1	\N	3	2022-04-22 16:49:55.837431	2022-04-22 16:49:55.837431	9	203	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
8285	2022-03-08	E001	144	1111	20.000000000000004	2	2022-03-01	1	\N	3	2022-04-22 16:49:55.837431	2022-04-22 16:49:55.837431	9	204	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	23.6	\N	\N	\N
8286	2022-03-08	E001	145	1111	35	2	2022-03-01	1	\N	3	2022-04-22 16:49:55.837431	2022-04-22 16:49:55.837431	9	205	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	41.3	\N	\N	\N
8287	2022-03-08	E001	146	1111	35	2	2022-03-01	1	\N	3	2022-04-22 16:49:55.837431	2022-04-22 16:49:55.837431	9	206	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	41.3	\N	\N	\N
8288	2022-03-08	E001	147	1169	19800	2	2022-03-01	1	\N	3	2022-04-22 16:49:55.837431	2022-04-22 16:49:55.837431	9	207	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8289	2022-03-23	E001	148	1111	40.00000000000001	2	2022-03-01	1	\N	3	2022-04-22 16:49:55.837431	2022-04-22 16:49:55.837431	9	208	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	47.2	\N	\N	\N
8294	2022-04-18	E001	294	1286	8474.576094	1	2022-04-01	1	\N	3	2022-05-20 01:56:11.686119	2022-05-20 01:56:11.686119	9	116	1	\N	\N	10472917159	Trujillo Mavila Jose	\N	TRUJILLO MAVILA JOSE	0	9999.99979092	\N	\N	\N
8301	2022-04-07	E001	155	1169	19800	2	2022-04-01	1	\N	3	2022-05-20 01:56:50.63906	2022-05-20 01:56:50.63906	9	215	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Mandiles	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8290	2022-03-23	E001	149	1111	15	2	2022-03-01	1	\N	3	2022-04-22 16:49:55.837431	2022-04-22 16:49:55.837431	9	209	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8291	2022-03-23	E001	150	1111	20.000000000000004	2	2022-03-01	1	\N	3	2022-04-22 16:49:55.837431	2022-04-22 16:49:55.837431	9	210	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	23.6	\N	\N	\N
8295	2022-04-20	1	366	1287	1672.8813559322034	1	2022-04-01	1	\N	3	2022-05-20 01:56:11.686119	2022-05-20 01:56:11.686119	9	117	1	\N	\N	20609234335	Multinegocios Rivas & Ferreiros	\N	MULTINEGOCIOS RIVAS & FERREIROS	0	1974	\N	\N	\N
8292	2022-03-23	E001	151	1111	10.000000000000002	2	2022-03-01	1	\N	3	2022-04-22 16:49:55.837431	2022-04-22 16:49:55.837431	9	211	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8293	2022-03-23	E001	152	1169	750	2	2022-03-01	1	\N	3	2022-04-22 16:49:55.837431	2022-04-22 16:49:55.837431	9	212	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	885	\N	\N	\N
8298	2022-04-01	F001	845	1263	2202.75	1	2022-04-01	1	\N	3	2022-05-20 01:56:11.686119	2022-05-20 01:56:11.686119	9	113	1	\N	\N	20606431881	Marna Peru World Import SAC	\N	MARNA PERU WORLD IMPORT SAC	0	2599.245	\N	\N	\N
8305	2022-04-20	E001	46	1111	35	2	2022-04-01	1	\N	3	2022-05-20 01:56:50.63906	2022-05-20 01:56:50.63906	9	217	4	E001	146	10092676124	Carmen Perez Vega	nota de credito	CARMEN PEREZ VEGA	0	41.3	\N	\N	\N
8302	2022-04-30	E001	156	1111	30	2	2022-04-01	1	\N	3	2022-05-20 01:56:50.63906	2022-05-20 01:56:50.63906	9	219	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	35.4	\N	\N	\N
8303	2022-04-30	E001	157	1111	20.000000000000004	2	2022-04-01	1	\N	3	2022-05-20 01:56:50.63906	2022-05-20 01:56:50.63906	9	220	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	23.6	\N	\N	\N
8304	2022-04-30	E001	158	1169	1500	2	2022-04-01	1	\N	3	2022-05-20 01:56:50.63906	2022-05-20 01:56:50.63906	9	221	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Canguros	BANCO FALABELLA PERU S.A.C	0	1770	\N	\N	\N
8299	2022-04-07	E001	153	1111	15	2	2022-04-01	1	\N	3	2022-05-20 01:56:50.63906	2022-05-20 01:56:50.63906	9	213	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8300	2022-04-07	E001	154	1111	39.00000000000001	2	2022-04-01	1	\N	3	2022-05-20 01:56:50.63906	2022-05-20 01:56:50.63906	9	214	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	46.02	\N	\N	\N
8306	2022-04-20	E001	45	1111	25	2	2022-04-01	1	\N	3	2022-05-20 01:56:50.63906	2022-05-20 01:56:50.63906	9	216	4	E001	143	10092676124	Carmen Perez Vega	nota de credito	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
8307	2022-04-20	E001	47	1111	40.00000000000001	2	2022-04-01	1	\N	3	2022-05-20 01:56:50.63906	2022-05-20 01:56:50.63906	9	218	4	E001	148	10092676124	Carmen Perez Vega	nota de credito	CARMEN PEREZ VEGA	0	47.2	\N	\N	\N
8313	2021-07-16	F965	11371	193	15.084745762711865	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	106	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	17.8	\N	\N	\N
8314	2021-07-24	F666	5882	1102	102.08474576271188	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	107	1	\N	\N	20508565934	HIPERMERCADOS TOTTUS S.A	varios	HIPERMERCADOS TOTTUS S.A	0	134.02	\N	\N	13.56
8315	2021-07-26	FA49	1413254	174	43.74576271186441	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	108	1	\N	\N	20100070970	SUPERMERCADOS PERUANOS S.A.	varios	SUPERMERCADOS PERUANOS S.A.	0	51.62	\N	\N	\N
8319	2021-08-13	F676	8716	1102	219.61016949152548	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	112	1	\N	\N	20508565934	HIPERMERCADOS TOTTUS S.A	varios	HIPERMERCADOS TOTTUS S.A	0	269.92	\N	\N	10.78
8318	2021-08-13	FP12	58222	219	130.5084745762712	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	113	1	\N	\N	20337564373	TIENDAS POR DEPARTAMENTO RIPLEY S.A.	varios	TIENDAS POR DEPARTAMENTO RIPLEY S.A.	0	154	\N	\N	\N
8310	2022-05-05	1	52	1289	1672.8813559322034	1	2022-05-01	1	\N	3	2022-06-21 00:40:44.166717	2022-06-21 00:40:44.166717	9	118	1	\N	\N	20609473925	Textileria Corpac's EIRL	\N	TEXTILERIA CORPAC'S EIRL	0	1974	\N	\N	\N
8309	2022-05-10	1	57	1289	2313.5593220338983	1	2022-05-01	1	\N	3	2022-06-21 00:40:44.166717	2022-06-21 00:40:44.166717	9	119	1	\N	\N	20609473925	Textileria Corpac's EIRL	\N	TEXTILERIA CORPAC'S EIRL	0	2730	\N	\N	\N
8308	2022-05-19	1	232	1289	2313.5593220338983	1	2022-05-01	1	\N	3	2022-06-21 00:40:44.166717	2022-06-21 00:40:44.166717	9	120	1	\N	\N	20609473925	Textileria Corpac's EIRL	\N	TEXTILERIA CORPAC'S EIRL	0	2730	\N	\N	\N
8311	2022-05-30	E001	2247	1290	8474.577041	1	2022-05-01	1	\N	3	2022-06-21 00:40:44.166717	2022-06-21 00:40:44.166717	9	121	1	\N	\N	20606685379	Servicios Generales Colonna	\N	SERVICIOS GENERALES COLONNA	0	10000.00090838	\N	\N	\N
8316	2021-09-03	F647	42658	189	275.04237288135596	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	114	1	\N	\N	20109072177	CENCOSUD RETAIL PERU S.A.	varios	CENCOSUD RETAIL PERU S.A.	0	349.11	\N	\N	24.56
8312	2022-05-02	E000	159	1169	19800	2	2022-05-01	1	\N	3	2022-06-21 00:45:26.189497	2022-06-21 00:45:26.189497	9	222	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8317	2021-09-04	FA46	150283	1128	98.55932203389831	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	115	1	\N	\N	20493020618	TIENDAS PERUANAS SA	varios	TIENDAS PERUANAS SA	0	116.3	\N	\N	\N
8320	2021-09-10	FA16	61995	1128	204.3305084745763	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	117	1	\N	\N	20493020618	TIENDAS PERUANAS SA	varios	TIENDAS PERUANAS SA	0	241.11	\N	\N	\N
8325	2021-08-03	F054	143	1078	64.15254237288136	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	109	1	\N	\N	20601017106	FOOD & BEVETAGE INVEST S.A.C.	varios	FOOD & BEVETAGE INVEST S.A.C.	0	75.7	\N	\N	\N
8323	2021-08-06	F196	3061	1126	97.21186440677965	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	110	1	\N	\N	20100128056	SAGA FALABELLA S A	varios	SAGA FALABELLA S A	0	114.71	\N	\N	\N
8324	2021-08-06	FA49	1413308	174	35.11864406779661	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	111	1	\N	\N	20100070970	SUPERMERCADOS PERUANOS S.A.	varios	SUPERMERCADOS PERUANOS S.A.	0	41.44	\N	\N	\N
8321	2021-09-06	F655	23207	193	75.59322033898306	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	116	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	89.2	\N	\N	\N
8322	2021-10-01	F202	10443	1126	3059.322033898305	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	118	1	\N	\N	20100128056	SAGA FALABELLA S A	varios	SAGA FALABELLA S A	0	3610	\N	\N	\N
8326	2022-07-05	F652	44353	193	190.0847457627119	1	2022-06-01	1	\N	3	2022-07-21 01:37:45.136929	2022-07-21 01:37:45.136929	6	119	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	224.3	\N	\N	\N
8333	2022-06-08	E001	164	1169	19800	2	2022-06-01	1	\N	3	2022-07-21 02:08:21.4194	2022-07-21 02:08:21.4194	9	227	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	23364	\N	\N	\N
8353	2022-07-27	2	10	1292	2860.169491525424	1	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	127	1	\N	\N	10075199517	Orrego Rodriguez Fabricius Roani	\N	ORREGO RODRIGUEZ FABRICIUS ROANI	0	3375	\N	\N	\N
8354	2022-07-27	2	8	1292	2814.406779661017	1	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	128	1	\N	\N	10075199517	Orrego Rodriguez Fabricius Roani	\N	ORREGO RODRIGUEZ FABRICIUS ROANI	0	3321	\N	\N	\N
8355	2022-07-28	1	834	1293	1694.9152542372883	1	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	129	1	\N	\N	20609467054	Bussines Corporation Lucia EIRL	\N	BUSSINES CORPORATION LUCIA EIRL	0	2000	\N	\N	\N
8356	2022-07-04	E001	165	1111	15	2	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	228	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8357	2022-07-04	E001	166	1111	20.000000000000004	2	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	229	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	23.6	\N	\N	\N
8358	2022-07-04	E001	167	1169	9900	2	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	230	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	11682	\N	\N	\N
8327	2022-06-15	1	201	1291	1694.9152542372883	1	2022-06-01	1	\N	3	2022-07-21 02:06:49.768291	2022-07-21 02:06:49.768291	9	122	1	\N	\N	20609480361	CORPORACION MUNDO TEXTIL NAYSHA & KATHERRINE E.I.R.L.	\N	CORPORACION MUNDO TEXTIL NAYSHA & KATHERRINE E.I.R.L.	0	2000	\N	\N	\N
8359	2022-07-06	E001	168	1111	15	2	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	231	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8328	2022-06-25	1	206	1291	1694.9152542372883	1	2022-06-01	1	\N	3	2022-07-21 02:06:49.768291	2022-07-21 02:06:49.768291	9	123	1	\N	\N	20609480361	CORPORACION MUNDO TEXTIL NAYSHA & KATHERRINE E.I.R.L.	\N	CORPORACION MUNDO TEXTIL NAYSHA & KATHERRINE E.I.R.L.	0	2000	\N	\N	\N
8329	2022-06-08	E001	160	1111	20.000000000000004	2	2022-06-01	1	\N	3	2022-07-21 02:08:21.4194	2022-07-21 02:08:21.4194	9	223	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	23.6	\N	\N	\N
8350	2022-07-10	1	699	1289	1694.9152542372883	1	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	124	1	\N	\N	20609473925	Textileria Corpacs EIRL	\N	TEXTILERIA CORPACS EIRL	0	2000	\N	\N	\N
8351	2022-07-20	1	699	1289	1694.9152542372883	1	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	125	1	\N	\N	20609473925	Textileria Corpacs EIRL	\N	TEXTILERIA CORPACS EIRL	0	2000	\N	\N	\N
8352	2022-07-26	2	7	1292	2806.7796610169494	1	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	126	1	\N	\N	10075199517	Orrego Rodriguez Fabricius Roani	\N	ORREGO RODRIGUEZ FABRICIUS ROANI	0	3312	\N	\N	\N
8360	2022-07-06	E001	169	1169	2000	2	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	232	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	2360	\N	\N	\N
8361	2022-07-27	E001	170	1111	15	2	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	233	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8330	2022-06-08	E001	161	1111	15	2	2022-06-01	1	\N	3	2022-07-21 02:08:21.4194	2022-07-21 02:08:21.4194	9	224	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8331	2022-06-08	E001	162	1111	12	2	2022-06-01	1	\N	3	2022-07-21 02:08:21.4194	2022-07-21 02:08:21.4194	9	225	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	14.16	\N	\N	\N
8332	2022-06-08	E001	163	1111	25	2	2022-06-01	1	\N	3	2022-07-21 02:08:21.4194	2022-07-21 02:08:21.4194	9	226	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	29.5	\N	\N	\N
8400	2022-09-29	E001	180	1169	14220	2	2022-09-01	1	\N	3	2022-10-19 17:16:14.496193	2022-10-19 17:16:14.496193	9	246	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	16779.6	\N	\N	\N
8391	2022-09-22	E001	1574	1299	1566.3983050847457	1	2022-09-01	1	\N	3	2022-10-19 14:21:55.425448	2022-10-19 14:21:55.425448	11	1	1	\N	\N	20124203075	IMPORTACIONES GUILLERMO BECERRA NINA S.A.C	\N	IMPORTACIONES GUILLERMO BECERRA NINA S.A.C	0	1848.35	\N	\N	\N
8362	2022-07-27	E001	171	1111	10.000000000000002	2	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	234	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8363	2022-07-27	E001	172	1169	17820	2	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	235	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	21027.6	\N	\N	\N
8364	2022-07-27	E001	173	1169	17820	2	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	236	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	21027.6	\N	\N	\N
8365	2022-07-27	E001	48	1169	-17820	2	2022-07-01	1	\N	3	2022-08-30 16:53:57.524186	2022-08-30 16:53:57.524186	9	237	4	E001	172	20330401991	Banco Falabella Peru S.A.C	Nota de credito	BANCO FALABELLA PERU S.A.C	0	-21027.6	\N	\N	\N
8375	2022-08-10	F001	14	1296	1779.6610169491526	1	2022-08-01	1	\N	3	2022-09-14 02:37:29.286622	2022-09-14 02:37:29.286622	9	130	1	\N	\N	20607508535	Laboratorio Medic Lab Peru SAC	\N	LABORATORIO MEDIC LAB PERU SAC	0	2100	\N	\N	\N
8373	2022-08-25	1	54	1295	1688.1355932203392	1	2022-08-01	1	\N	3	2022-09-14 02:37:29.286622	2022-09-14 02:37:29.286622	9	131	1	\N	\N	20609651386	Multinegocios Nuevo Mundo EIRL	\N	MULTINEGOCIOS NUEVO MUNDO EIRL	0	1992	\N	\N	\N
8374	2022-08-26	1	62	1295	1677.9661016949153	1	2022-08-01	1	\N	3	2022-09-14 02:37:29.286622	2022-09-14 02:37:29.286622	9	132	1	\N	\N	20609651386	Multinegocios Nuevo Mundo EIRL	\N	MULTINEGOCIOS NUEVO MUNDO EIRL	0	1980	\N	\N	\N
8372	2022-08-26	E001	521	1294	601.6949152542373	1	2022-08-01	1	\N	3	2022-09-14 02:37:29.286622	2022-09-14 02:37:29.286622	9	133	1	\N	\N	20606664673	Industrias Sanar SAC	\N	INDUSTRIAS SANAR SAC	0	710	\N	\N	\N
8376	2022-08-02	E001	174	1169	14220	2	2022-08-01	1	\N	3	2022-09-14 02:37:29.286622	2022-09-14 02:37:29.286622	9	238	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	16779.6	\N	\N	\N
8377	2022-08-02	E001	49	1169	-17820	2	2022-08-01	1	\N	3	2022-09-14 02:37:29.286622	2022-09-14 02:37:29.286622	9	239	4	E001	173	20330401991	Banco Falabella Peru S.A.C	Nota de credito	BANCO FALABELLA PERU S.A.C	0	-21027.6	\N	\N	\N
8387	2022-02-03	F002	564	1242	108.47457627118645	1	2022-08-01	1	\N	3	2022-09-21 18:14:40.947358	2022-09-21 18:14:40.947358	8	106	1	\N	\N	20605482148	CONSORCIO LU & VER E.I.R.L.	1	CONSORCIO LU & VER E.I.R.L.	0	128	\N	\N	\N
8402	2022-03-20	F202	11508	1126	2879.661016949153	1	2022-09-01	1	\N	3	2022-10-21 14:15:18.667377	2022-10-21 14:15:18.667377	6	122	1	\N	\N	20100128056	SAGA FALABELLA S A	varios	SAGA FALABELLA S A	0	3398	\N	\N	\N
8393	2022-09-13	E001	124	1300	8262.71186440678	1	2022-09-01	1	\N	3	2022-10-19 17:16:14.496193	2022-10-19 17:16:14.496193	9	134	1	\N	\N	10447657070	Huaman Tapullima Dalia Margarita	\N	HUAMAN TAPULLIMA DALIA MARGARITA	0	9750	\N	\N	\N
8401	2022-08-02	E001	50	1169	-14220	2	2022-09-01	1	\N	3	2022-10-19 17:16:14.496193	2022-10-19 17:16:14.496193	9	240	4	E001	180	20330401991	Banco Falabella Peru S.A.C	Nota de credito	BANCO FALABELLA PERU S.A.C	0	-16779.6	\N	\N	\N
8395	2022-09-01	E001	175	1111	15	2	2022-09-01	1	\N	3	2022-10-19 17:16:14.496193	2022-10-19 17:16:14.496193	9	241	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8396	2022-09-01	E001	176	1111	10.000000000000002	2	2022-09-01	1	\N	3	2022-10-19 17:16:14.496193	2022-10-19 17:16:14.496193	9	242	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8405	2022-09-24	E001	54	1301	508.4745762711865	2	2022-09-01	1	\N	3	2022-10-21 14:15:18.667377	2022-10-21 14:19:19.457493	6	70	1			20519121957	DIMEGSA EIRL	M Y D ACCESORIOS DE TURBO	DIMEGSA EIRL	0	600	\N	\N	\N
8397	2022-09-01	E001	177	1169	14220	2	2022-09-01	1	\N	3	2022-10-19 17:16:14.496193	2022-10-19 17:16:14.496193	9	243	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	16779.6	\N	\N	\N
8398	2022-09-29	E001	178	1111	20.000000000000004	2	2022-09-01	1	\N	3	2022-10-19 17:16:14.496193	2022-10-19 17:16:14.496193	9	244	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	23.6	\N	\N	\N
8399	2022-09-29	E001	179	1111	15	2	2022-09-01	1	\N	3	2022-10-19 17:16:14.496193	2022-10-19 17:16:14.496193	9	245	1	\N	\N	10092676124	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	17.7	\N	\N	\N
8386	2022-02-05	FA17	870960	358	93.13559322033899	1	2022-08-01	1	\N	3	2022-09-21 18:14:40.947358	2022-09-21 18:14:40.947358	8	107	1	\N	\N	20536557858	HOMECENTERS PERUANOS SA	1	HOMECENTERS PERUANOS SA	0	109.9	\N	\N	\N
8404	2022-02-05	F647	46475	189	832.7288135593221	1	2022-09-01	1	\N	3	2022-10-21 14:15:18.667377	2022-10-21 14:15:18.667377	6	120	1	\N	\N	20109072177	CENCOSUD RETAIL PERU S.A.	varios	CENCOSUD RETAIL PERU S.A.	0	982.62	\N	\N	\N
8403	2022-03-20	F202	11507	1126	1875.4237288135594	1	2022-09-01	1	\N	3	2022-10-21 14:15:18.667377	2022-10-21 14:15:18.667377	6	121	1	\N	\N	20100128056	SAGA FALABELLA S A	varios	SAGA FALABELLA S A	0	2213	\N	\N	\N
8388	2022-02-05	FA17	887137	358	591.0677966101696	1	2022-08-01	1	\N	3	2022-09-21 18:14:40.947358	2022-09-21 18:14:40.947358	8	108	1	\N	\N	20536557858	HOMECENTERS PERUANOS SA	1	HOMECENTERS PERUANOS SA	0	697.46	\N	\N	\N
8407	2022-10-12	E001	227	1302	1694.898305084746	1	2022-10-01	1	\N	3	2022-11-17 16:07:14.221074	2022-11-17 16:07:14.221074	11	2	1	\N	\N	10421806832	VALLADARES AGUILAR KARIN VANESSA	BOCAMAZAS DELANTERO TOYOTA HILUX	VALLADARES AGUILAR KARIN VANESSA	0	1999.98	\N	\N	\N
8408	2022-10-19	FF01	4754	1303	11276.27	1	2022-10-01	2	3.842	3	2022-11-17 16:07:14.221074	2022-11-17 16:07:14.221074	11	3	1	\N	\N	20504507832	IMPORT.Y REPRESENTACIONES FRANCO SAC	BOCAMAZAS 2KD ZSG	IMPORT.Y REPRESENTACIONES FRANCO SAC	0	13305.9986	\N	\N	\N
8409	2022-10-24	E001	1	1304	813.5593220338983	2	2022-10-01	1	\N	3	2022-11-17 16:07:14.221074	2022-11-17 16:07:14.221074	11	1	1	\N	\N	20609479451	UNIVERSO IMPORT PERU S.A.C.	BOCAMAZAS TOYOTA 1GD	UNIVERSO IMPORT PERU S.A.C.	0	960	\N	\N	\N
8389	2022-08-08	E001	42	1274	4000	2	2022-08-01	1	\N	3	2022-09-21 18:14:40.947358	2022-09-21 18:14:40.947358	8	29	1	\N	\N	20138122256	UNIVERSIDAD PERUANA UNION	Varios	UNIVERSIDAD PERUANA UNION	0	4720	\N	\N	\N
8431	2022-10-06	FA01	1566	1262	61.016949152542374	1	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	115	1	\N	\N	20600268202	JUSTIN RESTOBAR S.A.C.	\N	JUSTIN RESTOBAR S.A.C.	0	72	\N	\N	\N
8432	2022-10-07	F779	22882	1056	110.00000000000001	1	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	116	1	\N	\N	20378890161	RASH PERU S.A.C.	\N	RASH PERU S.A.C.	0	129.8	\N	\N	\N
8435	2022-10-13	E001	43	1195	3000	2	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	30	1	\N	\N	20138149022 	UNIVERSIDAD DE SAN MARTIN DE PORRES	RENOVACION DE CONTRATO	UNIVERSIDAD DE SAN MARTIN DE PORRES	0	3540	\N	\N	\N
8436	2022-10-18	E001	44	1195	3000	2	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	31	1	\N	\N	20138149022 	UNIVERSIDAD DE SAN MARTIN DE PORRES	RENOVACION DE CONTRATO	UNIVERSIDAD DE SAN MARTIN DE PORRES	0	3540	\N	\N	\N
8439	2022-10-18	E001	7	1195	-3000	2	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	32	4	E001	43	20138149022 	UNIVERSIDAD DE SAN MARTIN DE PORRES	ANULACION DE LA OPERACIÓN	UNIVERSIDAD DE SAN MARTIN DE PORRES	0	-3540	\N	\N	\N
8437	2022-10-19	E001	45	1195	3000	2	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	33	1	\N	\N	20138149022 	UNIVERSIDAD DE SAN MARTIN DE PORRES	RENOVACION DE CONTRATO	UNIVERSIDAD DE SAN MARTIN DE PORRES	0	3540	\N	\N	\N
8421	2022-10-26	1	62	1305	1661.0169491525426	1	2022-10-01	1	\N	3	2022-11-18 13:19:52.661258	2022-11-18 13:19:52.661258	9	135	1	\N	\N	20610139664	Corporation Kafejsg EIRL	\N	CORPORATION KAFEJSG EIRL	0	1960	\N	\N	\N
8419	2022-10-27	1	308	1295	1610.1694915254238	1	2022-10-01	1	\N	3	2022-11-18 13:19:52.661258	2022-11-18 13:19:52.661258	9	136	1	\N	\N	20609651386	Multinegocios Nuevo Mundo EIRL	\N	MULTINEGOCIOS NUEVO MUNDO EIRL	0	1900	\N	\N	\N
8424	2022-10-27	1	702	1306	898.3050847457628	1	2022-10-01	1	\N	3	2022-11-18 13:19:52.661258	2022-11-18 13:19:52.661258	9	137	1	\N	\N	20609861640	Inversiones Multiples Liam EIRL	\N	INVERSIONES MULTIPLES LIAM EIRL	0	1060	\N	\N	\N
8420	2022-10-28	1	65	1305	1661.0169491525426	1	2022-10-01	1	\N	3	2022-11-18 13:19:52.661258	2022-11-18 13:19:52.661258	9	138	1	\N	\N	20610139664	Corporation Kafejsg EIRL	\N	CORPORATION KAFEJSG EIRL	0	1960	\N	\N	\N
8423	2022-10-29	1	708	1306	898.3050847457628	1	2022-10-01	1	\N	3	2022-11-18 13:19:52.661258	2022-11-18 13:19:52.661258	9	139	1	\N	\N	20609861640	Inversiones Multiples Liam EIRL	\N	INVERSIONES MULTIPLES LIAM EIRL	0	1060	\N	\N	\N
8422	2022-10-31	1	68	1305	1661.0169491525426	1	2022-10-01	1	\N	3	2022-11-18 13:19:52.661258	2022-11-18 13:19:52.661258	9	140	1	\N	\N	20610139664	Corporation Kafejsg EIRL	\N	CORPORATION KAFEJSG EIRL	0	1960	\N	\N	\N
8425	2022-10-02	E001	181	1169	14220	2	2022-10-01	1	\N	3	2022-11-18 13:19:52.661258	2022-11-18 13:19:52.661258	9	247	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	16779.6	\N	\N	\N
8440	2022-10-20	E001	8	1195	-3000	2	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	34	4	E001	44	20138149022 	UNIVERSIDAD DE SAN MARTIN DE PORRES	ANULACION DE LA OPERACIÓN	UNIVERSIDAD DE SAN MARTIN DE PORRES	0	-3540	\N	\N	\N
8438	2022-10-28	E001	46	881	3000	2	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	35	1	\N	\N	20454870591 	BS GRUPO S.A.C.	RENOVACION DE CONTRATO	no encuentra ruc	0	3540	\N	\N	\N
8441	2022-10-28	E001	9	1195	-3000	2	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	36	4	E001	45	20138149022 	UNIVERSIDAD DE SAN MARTIN DE PORRES	ANULACION DE LA OPERACIÓN	UNIVERSIDAD DE SAN MARTIN DE PORRES	0	-3540	\N	\N	\N
8434	2022-08-08	F581	4373091	1200	108.5169491525424	1	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	109	1	\N	\N	20100041953	RIMAC SEGUROS Y REASEGUROS	\N	RIMAC SEGUROS Y REASEGUROS	0	128.05	\N	\N	\N
8433	2022-08-31	F581	4421805	1200	497.4576271186441	1	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	110	1	\N	\N	20100041953	RIMAC SEGUROS Y REASEGUROS	\N	RIMAC SEGUROS Y REASEGUROS	0	587	\N	\N	\N
8427	2022-10-01	FP54	1180	1307	163.05084745762713	1	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	111	1	\N	\N	20538225763	TELEPIZZA ANDINA S.A.C.	\N	TELEPIZZA ANDINA S.A.C.	0	199.1	\N	\N	6.7
8428	2022-10-04	F071	47319	1308	39.20338983050848	1	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	112	1	\N	\N	20509076945	CINCO MILLAS S.A.C.	\N	CINCO MILLAS S.A.C.	0	49.63	\N	\N	3.37
8430	2022-10-05	FA17	758331	358	665.0847457627118	1	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	113	1	\N	\N	20536557858	HOMECENTERS PERUANOS S.A.	\N	HOMECENTERS PERUANOS S.A.	0	784.8	\N	\N	\N
8429	2022-10-05	FA17	934638	358	34.83050847457628	1	2022-10-01	1	\N	3	2022-11-18 18:16:18.076841	2022-11-18 18:16:18.076841	8	114	1	\N	\N	20536557858	HOMECENTERS PERUANOS S.A.	\N	HOMECENTERS PERUANOS S.A.	0	41.1	\N	\N	\N
8472	2022-11-06	F002	143	1314	250.8050847457627	1	2022-11-01	1	\N	3	2022-12-20 19:20:30.158218	2022-12-20 19:20:30.158218	6	128	1	\N	\N	20603829507	PAY PAYY BUSINESS E.I.R.L.	TABLET	PAY PAYY BUSINESS E.I.R.L.	0	295.95	\N	\N	\N
8475	2022-11-02	E001	58	1301	656.7796610169491	2	2022-11-01	1	\N	3	2022-12-20 19:20:30.158218	2022-12-20 19:20:30.158218	6	75	1	\N	\N	20519121957	DIMEGSA EIRL	VARIOS	DIMEGSA EIRL	0	775	\N	\N	\N
8449	2022-07-26	F656	15019	193	195.2542372881356	1	2022-10-01	1	\N	3	2022-11-21 15:41:09.591823	2022-11-21 15:41:09.591823	6	123	1	\N	\N	20112273922	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	varios	TIENDAS DEL MEJORAMIENTO DEL HOGAR S.A.	0	230.4	\N	\N	\N
8450	2022-07-31	F042	784	1309	94.91525423728814	1	2022-10-01	1	\N	3	2022-11-21 15:41:09.591823	2022-11-21 15:41:09.591823	6	124	1	\N	\N	20606109343	SOLANA COMERCIAL S.A.C.	varios	SOLANA COMERCIAL S.A.C.	0	112	\N	\N	\N
8448	2022-10-12	FF21	11406	1244	699.6186440677966	1	2022-10-01	1	\N	3	2022-11-21 15:41:09.591823	2022-11-21 15:41:09.591823	6	125	1	\N	\N	20601844916	QUE TAL COMPRA DEL PERU S.A.C.	varios	QUE TAL COMPRA DEL PERU S.A.C.	0	825.55	\N	\N	\N
8451	2022-10-19	E001	55	1209	11.000000000000002	2	2022-10-01	1	\N	3	2022-11-21 15:41:09.591823	2022-11-21 15:41:09.591823	6	71	1	\N	\N	10101503882	HUANACUNI CANDIA RAUL	VARIOS	HUANACUNI CANDIA RAUL	0	12.98	\N	\N	\N
8452	2022-10-19	E001	56	1301	538.135593220339	2	2022-10-01	1	\N	3	2022-11-21 15:41:09.591823	2022-11-21 15:41:09.591823	6	72	1	\N	\N	20519121957	DIMEGSA EIRL	VARIOS	DIMEGSA EIRL	0	635	\N	\N	\N
8453	2022-10-20	E001	57	1301	326.271186440678	2	2022-10-01	1	\N	3	2022-11-21 15:41:09.591823	2022-11-21 15:41:09.591823	6	73	1	\N	\N	20519121957	DIMEGSA EIRL	VARIOS	DIMEGSA EIRL	0	385	\N	\N	\N
8454	2022-10-31	E001	28	1209	-11.000000000000002	2	2022-10-01	1	\N	3	2022-11-21 15:41:09.591823	2022-11-21 15:41:09.591823	6	74	4	E001	55	10101503882	HUANACUNI CANDIA RAUL	ANULACION DE LA OPERACIÓN	HUANACUNI CANDIA RAUL	0	-12.98	\N	\N	\N
8483	2022-11-07	E001	186	1169	1500	2	2022-11-01	1	\N	3	2022-12-21 02:08:08.436512	2022-12-21 02:08:08.436512	9	252	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	1770	\N	\N	\N
8479	2022-11-07	E001	182	1111	30	2	2022-11-01	1	\N	3	2022-12-21 02:08:08.436512	2022-12-21 02:08:08.436512	9	248	1	\N	\N	10092676124	PEREZ VEGA CARMEN	Varios	PEREZ VEGA CARMEN	0	35.4	\N	\N	\N
8473	2022-07-31	FP54	1032	1307	84.51694915254238	1	2022-11-01	1	\N	3	2022-12-20 19:20:30.158218	2022-12-20 19:20:30.158218	6	126	1	\N	\N	20538225763	TELEPIZZA ANDINA S.A.C.	varios	TELEPIZZA ANDINA S.A.C.	0	106.97	\N	\N	7.24
8474	2022-10-26	FE06	5053	1102	98.64406779661017	1	2022-11-01	1	\N	3	2022-12-20 19:20:30.158218	2022-12-20 19:20:30.158218	6	127	1	\N	\N	20508565934	HIPERMERCADOS TOTTUS S.A	varios	HIPERMERCADOS TOTTUS S.A	0	116.4	\N	\N	\N
8480	2022-11-07	E001	183	1111	25	2	2022-11-01	1	\N	3	2022-12-21 02:08:08.436512	2022-12-21 02:08:08.436512	9	249	1	\N	\N	10092676124	PEREZ VEGA CARMEN	Varios	PEREZ VEGA CARMEN	0	29.5	\N	\N	\N
8481	2022-11-07	E001	184	1111	15	2	2022-11-01	1	\N	3	2022-12-21 02:08:08.436512	2022-12-21 02:08:08.436512	9	250	1	\N	\N	10092676124	PEREZ VEGA CARMEN	Varios	PEREZ VEGA CARMEN	0	17.7	\N	\N	\N
8482	2022-11-07	E001	185	1169	3950	2	2022-11-01	1	\N	3	2022-12-21 02:08:08.436512	2022-12-21 02:08:08.436512	9	251	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	4661	\N	\N	\N
8478	2022-11-18	F001	1343	1263	2344.92	1	2022-11-01	1	\N	3	2022-12-21 02:08:08.436512	2022-12-21 02:08:08.436512	9	141	1	\N	\N	20606431881	Marna Peru World Imports SAC	\N	MARNA PERU WORLD IMPORTS SAC	0	2767.0056	\N	\N	\N
8486	2022-11-07	E001	10	1195	-3000	2	2022-11-01	1	\N	3	2022-12-21 03:35:39.127128	2022-12-21 03:35:39.127128	8	38	4	E001	47	20138149022 	UNIVERSIDAD DE SAN MARTIN DE PORRES	ANULACION DE LA OPERACIÓN	UNIVERSIDAD DE SAN MARTIN DE PORRES	0	-3540	\N	\N	\N
8485	2022-11-07	E001	48	1195	3000	2	2022-11-01	1	\N	3	2022-12-21 03:35:39.127128	2022-12-21 03:35:39.127128	8	39	1	\N	\N	20138149022 	UNIVERSIDAD DE SAN MARTIN DE PORRES	RENOVACION DE CONTRATO	UNIVERSIDAD DE SAN MARTIN DE PORRES	0	3540	\N	\N	\N
8484	2022-11-02	E001	47	1195	3000	2	2022-11-01	1	\N	3	2022-12-21 03:35:39.127128	2022-12-21 03:35:39.127128	8	37	1	\N	\N	20138149022 	UNIVERSIDAD DE SAN MARTIN DE PORRES	RENOVACION DE CONTRATO	UNIVERSIDAD DE SAN MARTIN DE PORRES	0	3540	\N	\N	\N
8457	2022-11-04	FF01	4817	1303	11660.755000000001	1	2022-11-01	2	3.973	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	4	1	\N	\N	20504507832	IMPORT.Y REPRESENTACIONES FRANCO SAC	BOCAMAZAS 2KD ZSG	IMPORT.Y REPRESENTACIONES FRANCO SAC	0	13759.6909	\N	\N	\N
8455	2022-11-08	E001	401	1310	1694.9152542372883	1	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	5	1	\N	\N	10447516786	CARBONEL CHEIN YASSER AHMED HASSAN	AMORTIGUADORES	CARBONEL CHEIN YASSER AHMED HASSAN	0	2000	\N	\N	\N
8456	2022-11-08	E001	404	1310	1694.906779661017	1	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	6	1	\N	\N	10447516786	CARBONEL CHEIN YASSER AHMED HASSAN	RADIADOR	CARBONEL CHEIN YASSER AHMED HASSAN	0	1999.99	\N	\N	\N
8458	2022-11-14	E001	3	1311	1652.542372881356	2	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	2	1	\N	\N	20543066525	MULTISERVICIOS VIDAL E.I.R.L	BOCAMAZAS HILUX ZSG	MULTISERVICIOS VIDAL E.I.R.L	0	1950	\N	\N	\N
8459	2022-11-14	E001	4	1312	1631.35593220339	2	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	3	1	\N	\N	10447570454	OSORIO MALPARTIDA KELLY YEMIRA	PALIERES	OSORIO MALPARTIDA KELLY YEMIRA	0	1925	\N	\N	\N
8460	2022-11-14	E001	5	1313	1186.4406779661017	2	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	4	1	\N	\N	20603753896	W & D REPUESTOS E.I.R.L.	1 KIT DE EMBRAGUE	W & D REPUESTOS E.I.R.L.	0	1400	\N	\N	\N
8461	2022-11-15	E001	6	1311	1156.7796610169491	2	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	5	1	\N	\N	20543066525	MULTISERVICIOS VIDAL E.I.R.L	BOCAMAZAS HILUX ZSG	MULTISERVICIOS VIDAL E.I.R.L	0	1365	\N	\N	\N
8462	2022-11-15	E001	7	1311	1377.1186440677966	2	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	6	1	\N	\N	20543066525	MULTISERVICIOS VIDAL E.I.R.L	BOCAMAZAS HILUX ZSG	MULTISERVICIOS VIDAL E.I.R.L	0	1625	\N	\N	\N
8465	2022-11-16	E001	10	1311	1542.3728813559323	2	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	7	1	\N	\N	20543066525	MULTISERVICIOS VIDAL E.I.R.L	BOCAMAZAS HILUX ZSG	MULTISERVICIOS VIDAL E.I.R.L	0	1820	\N	\N	\N
8463	2022-11-16	E001	8	1312	1483.0508474576272	2	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	8	1	\N	\N	10447570454	OSORIO MALPARTIDA KELLY YEMIRA	BOCAMAZAS HILUX ZSG	OSORIO MALPARTIDA KELLY YEMIRA	0	1750	\N	\N	\N
8464	2022-11-16	E001	9	1313	1101.6949152542375	2	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	9	1	\N	\N	20603753896	W & D REPUESTOS E.I.R.L.	RODAJAS HILUX ZSG	W & D REPUESTOS E.I.R.L.	0	1300	\N	\N	\N
8466	2022-11-17	E001	11	1311	1487.2881355932204	2	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	10	1	\N	\N	20543066525	MULTISERVICIOS VIDAL E.I.R.L	BOCAMAZAS HILUX ZSG	MULTISERVICIOS VIDAL E.I.R.L	0	1755	\N	\N	\N
8467	2022-11-17	E001	12	1313	1059.322033898305	2	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	11	1	\N	\N	20603753896	W & D REPUESTOS E.I.R.L.	BOMBAS DE ACEITE	W & D REPUESTOS E.I.R.L.	0	1250	\N	\N	\N
8468	2022-11-19	E001	13	1311	1266.949152542373	2	2022-11-01	1	\N	3	2022-12-19 04:47:11.737635	2022-12-19 04:47:11.737635	11	12	1	\N	\N	20543066525	MULTISERVICIOS VIDAL E.I.R.L	BOCAMAZAS HILUX ZSG	MULTISERVICIOS VIDAL E.I.R.L	0	1495	\N	\N	\N
8495	2022-12-02	E001	806	1315	1440.677966101695	1	2022-12-01	1	\N	3	2023-01-19 01:15:36.760759	2023-01-19 01:15:36.760759	11	7	1	\N	\N	20605380523	DJM IMPORTADOR DE RODAMIENTOS E.I.R.L.	RODAJES	DJM IMPORTADOR DE RODAMIENTOS E.I.R.L.	0	1700	\N	\N	\N
8498	2022-12-22	FF01	11898	1317	1584.7372881355934	1	2022-12-01	1	\N	3	2023-01-19 01:15:36.760759	2023-01-19 01:15:36.760759	11	10	1	\N	\N	10087415282	BECERRA NINA LUIS GUILLERMO	BOCAMAZA 54KWH01 	BECERRA NINA LUIS GUILLERMO	0	1869.99	\N	\N	\N
8496	2022-12-09	E001	240	1302	1525.4237288135594	1	2022-12-01	1	\N	3	2023-01-19 01:15:36.760759	2023-01-19 01:15:36.760759	11	8	1	\N	\N	10421806832	VALLADARES AGUILAR KARIN VANESSA	CREMALLERAS	VALLADARES AGUILAR KARIN VANESSA	0	1800	\N	\N	\N
8497	2022-12-13	E001	50	1316	3524.3389830508477	1	2022-12-01	2	3.84	3	2023-01-19 01:15:36.760759	2023-01-19 01:15:49.919845	11	9	1			20606713275	STAR INDUSTRIES S.A.C	PALIER TO-014	STAR INDUSTRIES S.A.C	0	4158.72	\N	\N	\N
8502	2022-12-06	E001	189	1169	11850	2	2022-12-01	1	\N	3	2023-01-21 00:27:55.314687	2023-01-21 00:27:55.314687	9	255	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	13983	\N	\N	\N
8499	2022-12-18	1	313	1295	1610.1694915254238	1	2022-12-01	1	\N	3	2023-01-21 00:27:55.314687	2023-01-21 00:27:55.314687	9	142	1	\N	\N	20609651386	MULTINEGOCIOS NUEVO MUNDOS E.I.R.L.	\N	MULTINEGOCIOS NUEVO MUNDOS E.I.R.L.	0	1900	\N	\N	\N
8500	2022-12-06	E001	187	1111	20.000000000000004	2	2022-12-01	1	\N	3	2023-01-21 00:27:55.314687	2023-01-21 00:27:55.314687	9	253	1	\N	\N	10092676124	PEREZ VEGA CARMEN	Varios	PEREZ VEGA CARMEN	0	23.6	\N	\N	\N
8501	2022-12-06	E001	188	1111	15	2	2022-12-01	1	\N	3	2023-01-21 00:27:55.314687	2023-01-21 00:27:55.314687	9	254	1	\N	\N	10092676124	PEREZ VEGA CARMEN	Varios	PEREZ VEGA CARMEN	0	17.7	\N	\N	\N
8504	2022-10-22	FA86	225370	1319	111	1	2022-12-01	1	\N	3	2023-01-23 17:23:51.727993	2023-01-23 17:23:51.727993	6	129	1	\N	\N	20608300393	COMPAÑIA FOOD RETAIL S.A.C.	varios	COMPAÑIA FOOD RETAIL S.A.C.	0	130.98	\N	\N	\N
8503	2022-12-11	F135	1271	1318	568.8644067796611	1	2022-12-01	1	\N	3	2023-01-23 17:23:51.727993	2023-01-23 17:23:51.727993	6	130	1	\N	\N	20417531026	TRIATHLON S.A.C.	varios	TRIATHLON S.A.C.	0	672.06	\N	0.8	\N
8505	2022-12-06	E001	59	1301	656.7796610169491	2	2022-12-01	1	\N	3	2023-01-23 17:23:51.727993	2023-01-23 17:23:51.727993	6	76	1	\N	\N	20519121957	DIMEGSA EIRL	VARIOS	DIMEGSA EIRL	0	775	\N	\N	\N
8506	2022-12-06	E001	60	1301	177.96610169491527	2	2022-12-01	1	\N	3	2023-01-23 17:23:51.727993	2023-01-23 17:23:51.727993	6	77	1	\N	\N	20519121957	DIMEGSA EIRL	VARIOS	DIMEGSA EIRL	0	210	\N	\N	\N
8507	2022-12-16	E001	61	1320	296.6101694915254	2	2022-12-01	1	\N	3	2023-01-23 17:23:51.727993	2023-01-23 17:23:51.727993	6	78	1	\N	\N	20122499694	TRANSPORTES VILLANTOY S.R.LTDA	VARIOS	TRANSPORTES VILLANTOY S.R.LTDA	0	350	\N	\N	\N
8508	2022-12-16	E001	62	1320	296.6101694915254	2	2022-12-01	1	\N	3	2023-01-23 17:23:51.727993	2023-01-23 17:23:51.727993	6	79	1	\N	\N	20122499694	TRANSPORTES VILLANTOY S.R.LTDA	VARIOS	TRANSPORTES VILLANTOY S.R.LTDA	0	350	\N	\N	\N
8510	2022-12-20	E001	29	1320	-296.6101694915254	2	2022-12-01	1	\N	3	2023-01-23 17:23:51.727993	2023-01-23 17:43:55.17164	6	80	4	E001	61	20122499694	TRANSPORTES VILLANTOY S.R.LTDA	Nota de credito	TRANSPORTES VILLANTOY S.R.LTDA	0	-350	\N	\N	\N
8509	2022-12-21	E001	63	1301	296.6101694915254	2	2022-12-01	1	\N	3	2023-01-23 17:23:51.727993	2023-01-23 17:23:51.727993	6	81	1	\N	\N	20519121957	DIMEGSA EIRL	VARIOS	DIMEGSA EIRL	0	350	\N	\N	\N
8517	2023-01-04	E001	899	1315	1567.7966101694917	1	2023-01-01	1	\N	3	2023-02-17 16:33:24.260494	2023-02-17 16:33:24.260494	11	11	1	\N	\N	20605380523	DJM IMPORTADOR DE RODAMIENTOS E.I.R.L.	TERMINALES	DJM IMPORTADOR DE RODAMIENTOS E.I.R.L.	0	1850	\N	\N	\N
8518	2023-01-06	FF01	12012	1317	1584.7372881355934	1	2023-01-01	1	\N	3	2023-02-17 16:33:24.260494	2023-02-17 16:33:24.260494	11	12	1	\N	\N	10087415282	BECERRA NINA LUIS GUILLERMO	BOCAMAZA 54KWH01 	BECERRA NINA LUIS GUILLERMO	0	1869.99	\N	\N	\N
8519	2023-01-11	E001	14	1312	1457.6271186440679	2	2023-01-01	1	\N	3	2023-02-17 16:33:24.260494	2023-02-17 16:33:24.260494	11	13	1	\N	\N	10447570454	OSORIO MALPARTIDA KELLY YEMIRA	Terminales	OSORIO MALPARTIDA KELLY YEMIRA	0	1720	\N	\N	\N
8522	2022-12-15	1	327	1322	1610.1694915254238	1	2023-01-01	1	\N	3	2023-02-21 02:22:15.215136	2023-02-21 02:22:15.215136	9	143	1	\N	\N	20609618451	Multinegocios M&G EIRL	\N	MULTINEGOCIOS M&G EIRL	0	1900	\N	\N	\N
8521	2023-01-18	E001	79	1321	1578.1355932203392	1	2023-01-01	1	\N	3	2023-02-21 02:22:15.215136	2023-02-21 02:22:15.215136	9	144	1	\N	\N	10062475213	Agreda Quezada Miguel Luis	\N	AGREDA QUEZADA MIGUEL LUIS	0	1862.2	\N	\N	\N
8520	2023-01-20	E001	78	1321	1642.2033898305085	1	2023-01-01	1	\N	3	2023-02-21 02:22:15.215136	2023-02-21 02:22:15.215136	9	145	1	\N	\N	10062475213	Agreda Quezada Miguel Luis	\N	AGREDA QUEZADA MIGUEL LUIS	0	1937.8	\N	\N	\N
8524	2023-01-11	E001	191	1169	7900	2	2023-01-01	1	\N	3	2023-02-21 02:22:15.215136	2023-02-21 02:22:15.215136	9	257	1	\N	\N	20330401991	Banco Falabella Peru S.A.C	Varios	BANCO FALABELLA PERU S.A.C	0	9322	\N	\N	\N
8523	2023-01-11	E001	190	1111	10.000000000000002	2	2023-01-01	1	\N	3	2023-02-21 02:22:15.215136	2023-02-21 02:26:25.579304	9	256	1			10092676125	Carmen Perez Vega	Varios	CARMEN PEREZ VEGA	0	11.8	\N	\N	\N
8525	2023-01-27	E001	64	1301	508.4745762711865	2	2023-01-01	1	\N	3	2023-02-21 16:53:12.363239	2023-02-21 16:53:12.363239	6	82	1	\N	\N	20519121957	DIMEGSA EIRL	VARIOS	DIMEGSA EIRL	0	600	\N	\N	\N
\.


--
-- Data for Name: parameters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.parameters (id, empresa, origen, mes, created_at, updated_at, sele, sele1, sele2, sele3) FROM stdin;
1	6	1	2023-01-01	2017-01-01 00:00:00	2023-02-21 16:52:54.309185	82	\N	\N	\N
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, nombre, descripcion, precio, moneda, unidad, client_id, material, lote, proceso, equivalente, conversion, created_at, updated_at, peso, activo, user_id) FROM stdin;
15	Documento		\N	\N	\N	299		\N	\N	\N	\N	2019-10-20 16:18:51.887757	2019-10-20 16:18:51.887757	\N	t	1
8	MONEDA		\N	1	1	881		1	3	8	1	2017-03-01 01:17:05.214052	2017-03-01 01:17:05.36114	\N	t	3
3	perilla inyectada	perilla de zamac inyectada	10	2	1	881		1	1	3	1	2017-01-28 04:14:42.751096	2017-01-28 04:14:43.285629	0.25	t	3
4	zamac 5	zamac en lingotes	2.35	2	1	165		1	1	4	1	2017-01-28 04:15:45.710463	2017-01-28 04:15:45.850132	\N	t	3
5	placa b245		0.55	1	1	881		1	1	5	1	2017-01-28 18:00:01.555035	2017-01-28 18:00:01.700585	\N	t	3
6	LInea de Vida Tipo Y		63.5593	1	1	881		1	1	6	1	2017-02-15 02:40:14.268178	2017-02-15 02:40:14.429686	\N	t	3
9	UNIDAD		\N	1	1	881		1	3	9	1	2017-03-01 01:18:52.907532	2017-03-01 01:18:53.046838	\N	t	3
10	EMPRESA		\N	1	1	881		1	1	10	1	2017-03-01 01:20:17.618701	2017-03-01 01:20:17.746739	\N	t	3
11	ORIGEN		\N	1	1	881		1	3	11	1	2017-03-01 01:22:21.961394	2017-03-01 01:22:22.103057	\N	t	3
7	PROCESO		\N	1	1	881		1	3	7	1	2017-03-01 01:14:58.800089	2017-03-01 01:22:49.070031	\N	t	3
16	Documento		\N	\N	\N	299		\N	1	\N	\N	2019-10-20 16:20:06.349199	2019-10-20 16:20:06.349199	\N	t	1
12	ORIGEN CENTRO		\N	1	1	881		1	3	12	1	2017-03-01 01:27:06.318232	2017-03-01 01:29:00.682877	\N	t	3
13	TIPO		\N	1	1	881		1	3	13	1	2017-03-01 01:29:23.739327	2017-03-01 01:29:24.045127	\N	t	3
14	buje		\N	\N	\N	881		1	1	14	1	2017-03-06 00:39:08.806683	2017-03-06 00:39:09.029472	\N	t	3
17	Compras		\N	\N	\N	881		\N	3	\N	\N	2020-06-23 17:03:15.414361	2020-06-23 17:03:15.414361	\N	t	1
18	Ventas		\N	\N	\N	881		\N	3	\N	\N	2020-06-23 17:03:47.295657	2020-06-23 17:03:47.295657	\N	t	1
20	conexion	0 sin conexion 1 con conexion	0	\N	\N	358		\N	3	\N	\N	2020-07-06 16:05:48.769284	2020-07-14 04:39:52.12747	\N	t	1
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20161127190912
20161129155422
20161130234722
20161219182454
20161225155227
20170101192457
20170109172054
20170109174852
20170113223936
20170123160754
20170123225344
20170123235944
20170124160432
20170124225512
20170125160204
20170204213218
20170228210914
20170228223646
20191013180724
20191013215511
20200426155620
20200503170135
20200503170177
20200515024236
20200619013150
20210112141924
20210112005832
20210427175644
20210427192808
\.


--
-- Data for Name: tickets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tickets (id, title, body, user_id, created_at, updated_at) FROM stdin;
33	empressss	veremos	1	2021-05-05 01:26:00.396972	2021-05-05 01:26:00.396972
34	tickets-1	veremos con ticket	1	2021-05-05 01:28:30.34276	2021-05-05 01:28:30.34276
35	ticket-1	probando	1	2021-05-05 01:33:01.482327	2021-05-05 01:33:01.482327
36	ticket-2	sin datos	1	2021-05-05 01:37:52.565918	2021-05-05 01:37:52.565918
37	ticket-3	veremos menos pesado	1	2021-05-05 01:41:44.649552	2021-05-05 01:41:44.649552
38	ticket ver	ver	1	2021-05-05 01:44:17.62082	2021-05-05 01:44:17.62082
39	ticket-4	items cortado	1	2021-05-05 01:45:42.810256	2021-05-05 01:45:42.810256
40	ticket-5	debe ser funcionb	1	2021-05-05 01:52:20.623753	2021-05-05 01:52:20.623753
41	ticket-6	poniendo 17	1	2021-05-05 01:54:51.547407	2021-05-05 01:54:51.547407
42	ticket-6	sin dentro	1	2021-05-05 01:56:04.924115	2021-05-05 01:56:04.924115
43	ticket-7	repitiendo	1	2021-05-05 02:00:00.284539	2021-05-05 02:00:00.284539
44	ticket-8	ahora si quitando formukla	1	2021-05-05 02:04:46.279329	2021-05-05 02:04:46.279329
45	ticket-9	item origen1	1	2021-05-05 02:08:07.397911	2021-05-05 02:08:07.397911
46	ticket-10	sin item	1	2021-05-05 02:09:28.990574	2021-05-05 02:09:28.990574
47	ticket 12	con item sin interior	1	2021-05-05 02:10:32.474465	2021-05-05 02:10:32.474465
48	ticket 13	si item mayor que 0	1	2021-05-05 02:14:20.708756	2021-05-05 02:14:20.708756
49	ticket-14	con locals	1	2021-05-05 02:18:28.103073	2021-05-05 02:18:28.103073
50	sunat 1	ahora con sunat	1	2021-05-05 02:21:30.518023	2021-05-05 02:21:30.518023
51	sunat estilo	sunat con estilos	1	2021-05-05 13:16:15.139062	2021-05-05 13:16:15.139062
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, name, permission_level, created_at, updated_at, admin, categoria, empresa, periodo, sele) FROM stdin;
2	jdvizarraga@gmail.com	$2a$12$NjCAS7GYZ0c2J/XtBL2C4.v52iZP0nRRAe9IFFHtMo8h29URHUbsq	\N	\N	\N	9	2016-12-28 23:02:35.214471	2016-12-28 21:55:43.271497	127.0.0.1	127.0.0.1	\N	\N	2016-12-25 16:04:29.103847	2021-05-03 13:45:14.852523	f	2	\N	\N	\N
3	jjorge300@hotmail.com	$2a$11$wWu4V74QvvlUvK993k.4IeWf.fWlyKVTn6N0BL3QVi8IBzhWknKGq	\N	\N	\N	75	2022-11-17 16:06:27.750299	2022-10-18 20:32:51.115909	179.6.217.0	179.6.209.68	\N	\N	2017-01-25 16:52:48.237087	2022-11-17 16:06:27.750806	t	1	\N	\N	\N
1	jaduran0102@gmail.com	$2a$11$hcGg3lxeSwttYW6VzmYjkuSJwzfZ6HxhFceN77NbPuxQ87jZsi3hC	d74453e6612179959046f72ec8cef4256192659348adf66986cafd21d45dbf0f	2021-03-03 14:51:20.224617	\N	257	2022-11-21 15:36:56.848578	2022-11-17 16:20:48.176601	167.249.10.179	190.233.236.206	\N	\N	2016-12-16 22:08:46.288948	2023-01-15 01:25:38.452906	t	1	\N	\N	\N
\.


--
-- Name: chunk_constraint_name; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_catalog.chunk_constraint_name', 1, false);


--
-- Name: chunk_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_catalog.chunk_id_seq', 1, false);


--
-- Name: dimension_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_catalog.dimension_id_seq', 1, false);


--
-- Name: dimension_slice_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_catalog.dimension_slice_id_seq', 1, false);


--
-- Name: hypertable_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_catalog; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_catalog.hypertable_id_seq', 1, false);


--
-- Name: bgw_job_id_seq; Type: SEQUENCE SET; Schema: _timescaledb_config; Owner: postgres
--

SELECT pg_catalog.setval('_timescaledb_config.bgw_job_id_seq', 1000, false);


--
-- Name: action_mailbox_inbound_emails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.action_mailbox_inbound_emails_id_seq', 58, true);


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_admin_comments_id_seq', 1, false);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 59, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 59, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_id_seq', 1323, true);


--
-- Name: details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.details_id_seq', 7650, true);


--
-- Name: formulas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.formulas_id_seq', 117, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_id_seq', 8525, true);


--
-- Name: parameters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.parameters_id_seq', 2, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 20, true);


--
-- Name: tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tickets_id_seq', 51, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: action_mailbox_inbound_emails action_mailbox_inbound_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.action_mailbox_inbound_emails
    ADD CONSTRAINT action_mailbox_inbound_emails_pkey PRIMARY KEY (id);


--
-- Name: active_admin_comments active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);


--
-- Name: details details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.details
    ADD CONSTRAINT details_pkey PRIMARY KEY (id);


--
-- Name: formulas formulas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formulas
    ADD CONSTRAINT formulas_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: parameters parameters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parameters
    ADD CONSTRAINT parameters_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: tickets tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_action_mailbox_inbound_emails_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_action_mailbox_inbound_emails_uniqueness ON public.action_mailbox_inbound_emails USING btree (message_id, message_checksum);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON public.active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_admin_comments_on_namespace ON public.active_admin_comments USING btree (namespace);


--
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON public.active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_clients_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_clients_on_user_id ON public.clients USING btree (user_id);


--
-- Name: index_details_on_item_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_details_on_item_id ON public.details USING btree (item_id);


--
-- Name: index_details_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_details_on_product_id ON public.details USING btree (product_id);


--
-- Name: index_details_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_details_on_user_id ON public.details USING btree (user_id);


--
-- Name: index_formulas_on_product_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_formulas_on_product_id ON public.formulas USING btree (product_id);


--
-- Name: index_formulas_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_formulas_on_user_id ON public.formulas USING btree (user_id);


--
-- Name: index_items_on_client_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_items_on_client_id ON public.items USING btree (client_id);


--
-- Name: index_items_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_items_on_user_id ON public.items USING btree (user_id);


--
-- Name: index_products_on_client_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_on_client_id ON public.products USING btree (client_id);


--
-- Name: index_products_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_products_on_user_id ON public.products USING btree (user_id);


--
-- Name: index_tickets_on_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_tickets_on_user_id ON public.tickets USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: clients fk_rails_21c421fd41; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT fk_rails_21c421fd41 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: formulas fk_rails_340d74e02b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formulas
    ADD CONSTRAINT fk_rails_340d74e02b FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: tickets fk_rails_538a036fb9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT fk_rails_538a036fb9 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: details fk_rails_70e26b5abc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.details
    ADD CONSTRAINT fk_rails_70e26b5abc FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: details fk_rails_77aa393cf6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.details
    ADD CONSTRAINT fk_rails_77aa393cf6 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: items fk_rails_bfc3e85c77; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT fk_rails_bfc3e85c77 FOREIGN KEY (client_id) REFERENCES public.clients(id);


--
-- Name: formulas fk_rails_c0277a6e08; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.formulas
    ADD CONSTRAINT fk_rails_c0277a6e08 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: items fk_rails_d4b6334db2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT fk_rails_d4b6334db2 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: products fk_rails_dee2631783; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_dee2631783 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: details fk_rails_e2c1c0fe64; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.details
    ADD CONSTRAINT fk_rails_e2c1c0fe64 FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- Name: products fk_rails_f312597213; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_f312597213 FOREIGN KEY (client_id) REFERENCES public.clients(id);


--
-- PostgreSQL database dump complete
--

