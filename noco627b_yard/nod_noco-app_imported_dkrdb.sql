--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: xc_au_nc_9j1b___Non-Conformance_updated_at(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public."xc_au_nc_9j1b___Non-Conformance_updated_at"() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
                          BEGIN
                            NEW."updated_at" = NOW();
                            RETURN NEW;
                          END;
                          $$;


--
-- Name: xc_au_nc_9j1b___NoticeOfDeviation_updated_at(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public."xc_au_nc_9j1b___NoticeOfDeviation_updated_at"() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
                          BEGIN
                            NEW."updated_at" = NOW();
                            RETURN NEW;
                          END;
                          $$;


--
-- Name: xc_au_nc_9j1b___Sheet-1_updated_at(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public."xc_au_nc_9j1b___Sheet-1_updated_at"() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
                          BEGIN
                            NEW."updated_at" = NOW();
                            RETURN NEW;
                          END;
                          $$;


--
-- Name: xc_au_nc_9j1b___WorkCell_updated_at(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public."xc_au_nc_9j1b___WorkCell_updated_at"() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
                          BEGIN
                            NEW."updated_at" = NOW();
                            RETURN NEW;
                          END;
                          $$;


--
-- Name: xc_au_nc_xwok___deviation_updated_at(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.xc_au_nc_xwok___deviation_updated_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
                          BEGIN
                            NEW."updated_at" = NOW();
                            RETURN NEW;
                          END;
                          $$;


--
-- Name: xc_au_nc_xwok___feature_updated_at(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.xc_au_nc_xwok___feature_updated_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
                          BEGIN
                            NEW."updated_at" = NOW();
                            RETURN NEW;
                          END;
                          $$;


--
-- Name: xc_au_nc_xwok___test310_updated_at(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.xc_au_nc_xwok___test310_updated_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
                          BEGIN
                            NEW."updated_at" = NOW();
                            RETURN NEW;
                          END;
                          $$;


--
-- Name: xc_au_nc_xwok___work_cell_updated_at(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.xc_au_nc_xwok___work_cell_updated_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
                          BEGIN
                            NEW."updated_at" = NOW();
                            RETURN NEW;
                          END;
                          $$;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: nc_9j1b___Non-Conformance; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."nc_9j1b___Non-Conformance" (
    id integer NOT NULL,
    "Feature Num" character varying,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    "Description of Non Conformance" text,
    "Specification/Standard" text,
    "Actual" text
);


--
-- Name: nc_9j1b___Non-Conformance_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."nc_9j1b___Non-Conformance_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_9j1b___Non-Conformance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."nc_9j1b___Non-Conformance_id_seq" OWNED BY public."nc_9j1b___Non-Conformance".id;


--
-- Name: nc_9j1b___NoticeOfDeviation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."nc_9j1b___NoticeOfDeviation" (
    id integer NOT NULL,
    "Deviation Initiated By" character varying,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    "DeviationStart" text,
    "Qty Affected or Duration" character varying,
    "WO#" character varying,
    "Process Initiating Deviation" character varying,
    "Machine No" character varying,
    "RepeatDev" boolean DEFAULT false,
    "Reason for Deviation" text,
    "Enhanced Inspection Requirements" text,
    "nc_9j1b___WorkCell_id" integer,
    "ENG Mgr Approval" boolean DEFAULT false,
    "Quality Mgr Approval" boolean DEFAULT false,
    "P ENG Review" character varying,
    "Q ENG Review" character varying,
    "nc_9j1b___WorkCell_id1" integer
);


--
-- Name: nc_9j1b___NoticeOfDeviation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."nc_9j1b___NoticeOfDeviation_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_9j1b___NoticeOfDeviation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."nc_9j1b___NoticeOfDeviation_id_seq" OWNED BY public."nc_9j1b___NoticeOfDeviation".id;


--
-- Name: nc_9j1b___WorkCell; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."nc_9j1b___WorkCell" (
    id integer NOT NULL,
    "Operations" character varying,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


--
-- Name: nc_9j1b___WorkCell_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."nc_9j1b___WorkCell_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_9j1b___WorkCell_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."nc_9j1b___WorkCell_id_seq" OWNED BY public."nc_9j1b___WorkCell".id;


--
-- Name: nc_9j1b___nc_m2m__w442b2pgo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_9j1b___nc_m2m__w442b2pgo (
    table2_id integer NOT NULL,
    table1_id integer NOT NULL
);


--
-- Name: nc_acl; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_acl (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255) DEFAULT 'db'::character varying,
    tn character varying(255),
    acl text,
    type character varying(255) DEFAULT 'table'::character varying,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_acl_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_acl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_acl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_acl_id_seq OWNED BY public.nc_acl.id;


--
-- Name: nc_api_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_api_tokens (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255),
    description character varying(255),
    permissions text,
    token text,
    expiry character varying(255),
    enabled boolean DEFAULT true,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    fk_user_id character varying(20)
);


--
-- Name: nc_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_api_tokens_id_seq OWNED BY public.nc_api_tokens.id;


--
-- Name: nc_audit; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_audit (
    id integer NOT NULL,
    "user" character varying(255),
    ip character varying(255),
    project_id character varying(255),
    db_alias character varying(255),
    model_name character varying(100),
    model_id character varying(100),
    op_type character varying(255),
    op_sub_type character varying(255),
    status character varying(255),
    description text,
    details text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_audit_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_audit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_audit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_audit_id_seq OWNED BY public.nc_audit.id;


--
-- Name: nc_audit_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_audit_v2 (
    id character varying(20) NOT NULL,
    "user" character varying(255),
    ip character varying(255),
    base_id character varying(20),
    project_id character varying(128),
    fk_model_id character varying(20),
    row_id character varying(255),
    op_type character varying(255),
    op_sub_type character varying(255),
    status character varying(255),
    description text,
    details text,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_bases_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_bases_v2 (
    id character varying(20) NOT NULL,
    project_id character varying(128),
    alias character varying(255),
    config text,
    meta text,
    is_meta boolean,
    type character varying(255),
    inflection_column character varying(255),
    inflection_table character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    enabled boolean DEFAULT true,
    "order" real
);


--
-- Name: nc_col_barcode_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_col_barcode_v2 (
    id character varying(20) NOT NULL,
    fk_column_id character varying(20),
    fk_barcode_value_column_id character varying(20),
    barcode_format character varying(15),
    deleted boolean,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_col_formula_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_col_formula_v2 (
    id character varying(20) NOT NULL,
    fk_column_id character varying(20),
    formula text NOT NULL,
    formula_raw text,
    error text,
    deleted boolean,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_col_lookup_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_col_lookup_v2 (
    id character varying(20) NOT NULL,
    fk_column_id character varying(20),
    fk_relation_column_id character varying(20),
    fk_lookup_column_id character varying(20),
    deleted boolean,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_col_qrcode_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_col_qrcode_v2 (
    id character varying(20) NOT NULL,
    fk_column_id character varying(20),
    fk_qr_value_column_id character varying(20),
    deleted boolean,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_col_relations_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_col_relations_v2 (
    id character varying(20) NOT NULL,
    ref_db_alias character varying(255),
    type character varying(255),
    virtual boolean,
    db_type character varying(255),
    fk_column_id character varying(20),
    fk_related_model_id character varying(20),
    fk_child_column_id character varying(20),
    fk_parent_column_id character varying(20),
    fk_mm_model_id character varying(20),
    fk_mm_child_column_id character varying(20),
    fk_mm_parent_column_id character varying(20),
    ur character varying(255),
    dr character varying(255),
    fk_index_name character varying(255),
    deleted boolean,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_col_rollup_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_col_rollup_v2 (
    id character varying(20) NOT NULL,
    fk_column_id character varying(20),
    fk_relation_column_id character varying(20),
    fk_rollup_column_id character varying(20),
    rollup_function character varying(255),
    deleted boolean,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_col_select_options_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_col_select_options_v2 (
    id character varying(20) NOT NULL,
    fk_column_id character varying(20),
    title character varying(255),
    color character varying(255),
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_columns_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_columns_v2 (
    id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    fk_model_id character varying(20),
    title character varying(255),
    column_name character varying(255),
    uidt character varying(255),
    dt character varying(255),
    np character varying(255),
    ns character varying(255),
    clen character varying(255),
    cop character varying(255),
    pk boolean,
    pv boolean,
    rqd boolean,
    un boolean,
    ct text,
    ai boolean,
    "unique" boolean,
    cdf text,
    cc text,
    csn character varying(255),
    dtx character varying(255),
    dtxp text,
    dtxs character varying(255),
    au boolean,
    validate text,
    virtual boolean,
    deleted boolean,
    system boolean DEFAULT false,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    meta text
);


--
-- Name: nc_cron; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_cron (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255) DEFAULT 'db'::character varying,
    title character varying(255),
    description character varying(255),
    env character varying(255),
    pattern character varying(255),
    webhook character varying(255),
    timezone character varying(255) DEFAULT 'America/Los_Angeles'::character varying,
    active boolean DEFAULT true,
    cron_handler text,
    payload text,
    headers text,
    retries integer DEFAULT 0,
    retry_interval integer DEFAULT 60000,
    timeout integer DEFAULT 60000,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_cron_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_cron_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_cron_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_cron_id_seq OWNED BY public.nc_cron.id;


--
-- Name: nc_disabled_models_for_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_disabled_models_for_role (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(45),
    title character varying(45),
    type character varying(45),
    role character varying(45),
    disabled boolean DEFAULT true,
    tn character varying(255),
    rtn character varying(255),
    cn character varying(255),
    rcn character varying(255),
    relation_type character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    parent_model_title character varying(255)
);


--
-- Name: nc_disabled_models_for_role_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_disabled_models_for_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_disabled_models_for_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_disabled_models_for_role_id_seq OWNED BY public.nc_disabled_models_for_role.id;


--
-- Name: nc_disabled_models_for_role_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_disabled_models_for_role_v2 (
    id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    fk_view_id character varying(20),
    role character varying(45),
    disabled boolean DEFAULT true,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_evolutions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_evolutions (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    "titleDown" character varying(255),
    description character varying(255),
    batch integer,
    checksum character varying(255),
    status integer,
    created timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_evolutions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_evolutions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_evolutions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_evolutions_id_seq OWNED BY public.nc_evolutions.id;


--
-- Name: nc_filter_exp_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_filter_exp_v2 (
    id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    fk_view_id character varying(20),
    fk_hook_id character varying(20),
    fk_column_id character varying(20),
    fk_parent_id character varying(20),
    logical_op character varying(255),
    comparison_op character varying(255),
    value character varying(255),
    is_group boolean,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_form_view_columns_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_form_view_columns_v2 (
    id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    fk_view_id character varying(20),
    fk_column_id character varying(20),
    uuid character varying(255),
    label character varying(255),
    help character varying(255),
    description text,
    required boolean,
    show boolean,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    meta text
);


--
-- Name: nc_form_view_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_form_view_v2 (
    base_id character varying(20),
    project_id character varying(128),
    fk_view_id character varying(20) NOT NULL,
    heading character varying(255),
    subheading character varying(255),
    success_msg text,
    redirect_url text,
    redirect_after_secs character varying(255),
    email character varying(255),
    submit_another_form boolean,
    show_blank_form boolean,
    uuid character varying(255),
    banner_image_url text,
    logo_url text,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    meta text
);


--
-- Name: nc_gallery_view_columns_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_gallery_view_columns_v2 (
    id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    fk_view_id character varying(20),
    fk_column_id character varying(20),
    uuid character varying(255),
    label character varying(255),
    help character varying(255),
    show boolean,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_gallery_view_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_gallery_view_v2 (
    base_id character varying(20),
    project_id character varying(128),
    fk_view_id character varying(20) NOT NULL,
    next_enabled boolean,
    prev_enabled boolean,
    cover_image_idx integer,
    fk_cover_image_col_id character varying(20),
    cover_image character varying(255),
    restrict_types character varying(255),
    restrict_size character varying(255),
    restrict_number character varying(255),
    public boolean,
    dimensions character varying(255),
    responsive_columns character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    meta text
);


--
-- Name: nc_grid_view_columns_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_grid_view_columns_v2 (
    id character varying(20) NOT NULL,
    fk_view_id character varying(20),
    fk_column_id character varying(20),
    base_id character varying(20),
    project_id character varying(128),
    uuid character varying(255),
    label character varying(255),
    help character varying(255),
    width character varying(255) DEFAULT '200px'::character varying,
    show boolean,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_grid_view_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_grid_view_v2 (
    fk_view_id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    uuid character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    meta text,
    row_height integer
);


--
-- Name: nc_hook_logs_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_hook_logs_v2 (
    id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    fk_hook_id character varying(20),
    type character varying(255),
    event character varying(255),
    operation character varying(255),
    test_call boolean DEFAULT true,
    payload text,
    conditions text,
    notification text,
    error_code character varying(255),
    error_message character varying(255),
    error text,
    execution_time integer,
    response character varying(255),
    triggered_by character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_hooks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_hooks (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255) DEFAULT 'db'::character varying,
    title character varying(255),
    description character varying(255),
    env character varying(255) DEFAULT 'all'::character varying,
    tn character varying(255),
    type character varying(255),
    event character varying(255),
    operation character varying(255),
    async boolean DEFAULT false,
    payload boolean DEFAULT true,
    url text,
    headers text,
    condition text,
    notification text,
    retries integer DEFAULT 0,
    retry_interval integer DEFAULT 60000,
    timeout integer DEFAULT 60000,
    active boolean DEFAULT true,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_hooks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_hooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_hooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_hooks_id_seq OWNED BY public.nc_hooks.id;


--
-- Name: nc_hooks_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_hooks_v2 (
    id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    fk_model_id character varying(20),
    title character varying(255),
    description character varying(255),
    env character varying(255) DEFAULT 'all'::character varying,
    type character varying(255),
    event character varying(255),
    operation character varying(255),
    async boolean DEFAULT false,
    payload boolean DEFAULT true,
    url text,
    headers text,
    condition boolean DEFAULT false,
    notification text,
    retries integer DEFAULT 0,
    retry_interval integer DEFAULT 60000,
    timeout integer DEFAULT 60000,
    active boolean DEFAULT true,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_kanban_view_columns_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_kanban_view_columns_v2 (
    id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    fk_view_id character varying(20),
    fk_column_id character varying(20),
    uuid character varying(255),
    label character varying(255),
    help character varying(255),
    show boolean,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_kanban_view_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_kanban_view_v2 (
    fk_view_id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    show boolean,
    "order" real,
    uuid character varying(255),
    title character varying(255),
    public boolean,
    password character varying(255),
    show_all_fields boolean,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    fk_grp_col_id character varying(20),
    fk_cover_image_col_id character varying(20),
    meta text
);


--
-- Name: nc_loaders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_loaders (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255) DEFAULT 'db'::character varying,
    title character varying(255),
    parent character varying(255),
    child character varying(255),
    relation character varying(255),
    resolver character varying(255),
    functions text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_loaders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_loaders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_loaders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_loaders_id_seq OWNED BY public.nc_loaders.id;


--
-- Name: nc_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_migrations (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255),
    up text,
    down text,
    title character varying(255) NOT NULL,
    title_down character varying(255),
    description character varying(255),
    batch integer,
    checksum character varying(255),
    status integer,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_migrations_id_seq OWNED BY public.nc_migrations.id;


--
-- Name: nc_models; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_models (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255) DEFAULT 'db'::character varying,
    title character varying(255),
    alias character varying(255),
    type character varying(255) DEFAULT 'table'::character varying,
    meta text,
    schema text,
    schema_previous text,
    services text,
    messages text,
    enabled boolean DEFAULT true,
    parent_model_title character varying(255),
    show_as character varying(255) DEFAULT 'table'::character varying,
    query_params text,
    list_idx integer,
    tags character varying(255),
    pinned boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    mm integer,
    m_to_m_meta text,
    "order" real,
    view_order real
);


--
-- Name: nc_models_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_models_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_models_id_seq OWNED BY public.nc_models.id;


--
-- Name: nc_models_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_models_v2 (
    id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    table_name character varying(255),
    title character varying(255),
    type character varying(255) DEFAULT 'table'::character varying,
    meta text,
    schema text,
    enabled boolean DEFAULT true,
    mm boolean DEFAULT false,
    tags character varying(255),
    pinned boolean,
    deleted boolean,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_orgs_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_orgs_v2 (
    id character varying(20) NOT NULL,
    title character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_plugins; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_plugins (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255),
    title character varying(45),
    description text,
    active boolean DEFAULT false,
    rating real,
    version character varying(255),
    docs character varying(255),
    status character varying(255) DEFAULT 'install'::character varying,
    status_details character varying(255),
    logo character varying(255),
    icon character varying(255),
    tags character varying(255),
    category character varying(255),
    input_schema text,
    input text,
    creator character varying(255),
    creator_website character varying(255),
    price character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_plugins_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_plugins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_plugins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_plugins_id_seq OWNED BY public.nc_plugins.id;


--
-- Name: nc_plugins_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_plugins_v2 (
    id character varying(20) NOT NULL,
    title character varying(45),
    description text,
    active boolean DEFAULT false,
    rating real,
    version character varying(255),
    docs character varying(255),
    status character varying(255) DEFAULT 'install'::character varying,
    status_details character varying(255),
    logo character varying(255),
    icon character varying(255),
    tags character varying(255),
    category character varying(255),
    input_schema text,
    input text,
    creator character varying(255),
    creator_website character varying(255),
    price character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_project_users_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_project_users_v2 (
    project_id character varying(128),
    fk_user_id character varying(20),
    roles text,
    starred boolean,
    pinned boolean,
    "group" character varying(255),
    color character varying(255),
    "order" real,
    hidden real,
    opened_date timestamp with time zone,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_projects (
    id character varying(128) NOT NULL,
    title character varying(255),
    status character varying(255),
    description text,
    config text,
    meta text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_projects_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_projects_users (
    project_id character varying(255),
    user_id integer,
    roles text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_projects_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_projects_v2 (
    id character varying(128) NOT NULL,
    title character varying(255),
    prefix character varying(255),
    status character varying(255),
    description text,
    meta text,
    color character varying(255),
    uuid character varying(255),
    password character varying(255),
    roles character varying(255),
    deleted boolean DEFAULT false,
    is_meta boolean,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_relations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_relations (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255),
    tn character varying(255),
    rtn character varying(255),
    _tn character varying(255),
    _rtn character varying(255),
    cn character varying(255),
    rcn character varying(255),
    _cn character varying(255),
    _rcn character varying(255),
    referenced_db_alias character varying(255),
    type character varying(255),
    db_type character varying(255),
    ur character varying(255),
    dr character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    fkn character varying(255)
);


--
-- Name: nc_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_relations_id_seq OWNED BY public.nc_relations.id;


--
-- Name: nc_resolvers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_resolvers (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255) DEFAULT 'db'::character varying,
    title character varying(255),
    resolver text,
    type character varying(255),
    acl text,
    functions text,
    handler_type integer DEFAULT 1,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_resolvers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_resolvers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_resolvers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_resolvers_id_seq OWNED BY public.nc_resolvers.id;


--
-- Name: nc_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_roles (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255) DEFAULT 'db'::character varying,
    title character varying(255),
    type character varying(255) DEFAULT 'CUSTOM'::character varying,
    description character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_roles_id_seq OWNED BY public.nc_roles.id;


--
-- Name: nc_routes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_routes (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255) DEFAULT 'db'::character varying,
    title character varying(255),
    tn character varying(255),
    tnp character varying(255),
    tnc character varying(255),
    relation_type character varying(255),
    path text,
    type character varying(255),
    handler text,
    acl text,
    "order" integer,
    functions text,
    handler_type integer DEFAULT 1,
    is_custom boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_routes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_routes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_routes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_routes_id_seq OWNED BY public.nc_routes.id;


--
-- Name: nc_rpc; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_rpc (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255) DEFAULT 'db'::character varying,
    title character varying(255),
    tn character varying(255),
    service text,
    tnp character varying(255),
    tnc character varying(255),
    relation_type character varying(255),
    "order" integer,
    type character varying(255),
    acl text,
    functions text,
    handler_type integer DEFAULT 1,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_rpc_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_rpc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_rpc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_rpc_id_seq OWNED BY public.nc_rpc.id;


--
-- Name: nc_shared_bases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_shared_bases (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255),
    roles character varying(255) DEFAULT 'viewer'::character varying,
    shared_base_id character varying(255),
    enabled boolean DEFAULT true,
    password character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_shared_bases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_shared_bases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_shared_bases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_shared_bases_id_seq OWNED BY public.nc_shared_bases.id;


--
-- Name: nc_shared_views; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_shared_views (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255),
    model_name character varying(255),
    meta text,
    query_params text,
    view_id character varying(255),
    show_all_fields boolean,
    allow_copy boolean,
    password character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    view_type character varying(255),
    view_name character varying(255)
);


--
-- Name: nc_shared_views_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_shared_views_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_shared_views_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_shared_views_id_seq OWNED BY public.nc_shared_views.id;


--
-- Name: nc_shared_views_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_shared_views_v2 (
    id character varying(20) NOT NULL,
    fk_view_id character varying(20),
    meta text,
    query_params text,
    view_id character varying(255),
    show_all_fields boolean,
    allow_copy boolean,
    password character varying(255),
    deleted boolean,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_sort_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_sort_v2 (
    id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    fk_view_id character varying(20),
    fk_column_id character varying(20),
    direction character varying(255) DEFAULT 'false'::character varying,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_store; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_store (
    id integer NOT NULL,
    project_id character varying(255),
    db_alias character varying(255) DEFAULT 'db'::character varying,
    key character varying(255),
    value text,
    type character varying(255),
    env character varying(255),
    tag character varying(255),
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: nc_store_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_store_id_seq OWNED BY public.nc_store.id;


--
-- Name: nc_sync_logs_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_sync_logs_v2 (
    id character varying(20) NOT NULL,
    project_id character varying(128),
    fk_sync_source_id character varying(20),
    time_taken integer,
    status character varying(255),
    status_details text,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_sync_source_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_sync_source_v2 (
    id character varying(20) NOT NULL,
    title character varying(255),
    type character varying(255),
    details text,
    deleted boolean,
    enabled boolean DEFAULT true,
    "order" real,
    project_id character varying(128),
    fk_user_id character varying(20),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    base_id character varying(20)
);


--
-- Name: nc_team_users_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_team_users_v2 (
    org_id character varying(20),
    user_id character varying(20),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_teams_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_teams_v2 (
    id character varying(20) NOT NULL,
    title character varying(255),
    org_id character varying(20),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: nc_users_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_users_v2 (
    id character varying(20) NOT NULL,
    email character varying(255),
    password character varying(255),
    salt character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    refresh_token character varying(255),
    invite_token character varying(255),
    invite_token_expires character varying(255),
    reset_password_expires timestamp with time zone,
    reset_password_token character varying(255),
    email_verification_token character varying(255),
    email_verified boolean,
    roles character varying(255) DEFAULT 'editor'::character varying,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    token_version character varying(255)
);


--
-- Name: nc_views_v2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_views_v2 (
    id character varying(20) NOT NULL,
    base_id character varying(20),
    project_id character varying(128),
    fk_model_id character varying(20),
    title character varying(255),
    type integer,
    is_default boolean,
    show_system_fields boolean,
    lock_type character varying(255) DEFAULT 'collaborative'::character varying,
    uuid character varying(255),
    password character varying(255),
    show boolean,
    "order" real,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    meta text
);


--
-- Name: nc_xwok___deviation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_xwok___deviation (
    id integer NOT NULL,
    dev_initiated_by character varying,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    partnum character varying,
    process character varying,
    machine character varying,
    qa_approval character varying,
    eng_approval character varying,
    assigned_process_engineer character varying,
    repeat_deviation boolean DEFAULT false,
    nc_xwok___work_cell_id integer
);


--
-- Name: nc_xwok___deviation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_xwok___deviation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_xwok___deviation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_xwok___deviation_id_seq OWNED BY public.nc_xwok___deviation.id;


--
-- Name: nc_xwok___feature; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_xwok___feature (
    id integer NOT NULL,
    title character varying,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    feature_number character varying,
    description_of_nonconformance character varying,
    spec character varying,
    actual character varying
);


--
-- Name: nc_xwok___feature_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_xwok___feature_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_xwok___feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_xwok___feature_id_seq OWNED BY public.nc_xwok___feature.id;


--
-- Name: nc_xwok___test310; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_xwok___test310 (
    id integer NOT NULL,
    title character varying,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    title5 character varying
);


--
-- Name: nc_xwok___test310_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_xwok___test310_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_xwok___test310_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_xwok___test310_id_seq OWNED BY public.nc_xwok___test310.id;


--
-- Name: nc_xwok___work_cell; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nc_xwok___work_cell (
    id integer NOT NULL,
    title character varying,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


--
-- Name: nc_xwok___work_cell_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.nc_xwok___work_cell_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: nc_xwok___work_cell_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.nc_xwok___work_cell_id_seq OWNED BY public.nc_xwok___work_cell.id;


--
-- Name: xc_knex_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.xc_knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);


--
-- Name: xc_knex_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.xc_knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: xc_knex_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.xc_knex_migrations_id_seq OWNED BY public.xc_knex_migrations.id;


--
-- Name: xc_knex_migrations_lock; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.xc_knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);


--
-- Name: xc_knex_migrations_lock_index_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.xc_knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: xc_knex_migrations_lock_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.xc_knex_migrations_lock_index_seq OWNED BY public.xc_knex_migrations_lock.index;


--
-- Name: xc_knex_migrationsv2; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.xc_knex_migrationsv2 (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);


--
-- Name: xc_knex_migrationsv2_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.xc_knex_migrationsv2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: xc_knex_migrationsv2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.xc_knex_migrationsv2_id_seq OWNED BY public.xc_knex_migrationsv2.id;


--
-- Name: xc_knex_migrationsv2_lock; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.xc_knex_migrationsv2_lock (
    index integer NOT NULL,
    is_locked integer
);


--
-- Name: xc_knex_migrationsv2_lock_index_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.xc_knex_migrationsv2_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: xc_knex_migrationsv2_lock_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.xc_knex_migrationsv2_lock_index_seq OWNED BY public.xc_knex_migrationsv2_lock.index;


--
-- Name: nc_9j1b___Non-Conformance id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."nc_9j1b___Non-Conformance" ALTER COLUMN id SET DEFAULT nextval('public."nc_9j1b___Non-Conformance_id_seq"'::regclass);


--
-- Name: nc_9j1b___NoticeOfDeviation id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."nc_9j1b___NoticeOfDeviation" ALTER COLUMN id SET DEFAULT nextval('public."nc_9j1b___NoticeOfDeviation_id_seq"'::regclass);


--
-- Name: nc_9j1b___WorkCell id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."nc_9j1b___WorkCell" ALTER COLUMN id SET DEFAULT nextval('public."nc_9j1b___WorkCell_id_seq"'::regclass);


--
-- Name: nc_acl id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_acl ALTER COLUMN id SET DEFAULT nextval('public.nc_acl_id_seq'::regclass);


--
-- Name: nc_api_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.nc_api_tokens_id_seq'::regclass);


--
-- Name: nc_audit id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_audit ALTER COLUMN id SET DEFAULT nextval('public.nc_audit_id_seq'::regclass);


--
-- Name: nc_cron id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_cron ALTER COLUMN id SET DEFAULT nextval('public.nc_cron_id_seq'::regclass);


--
-- Name: nc_disabled_models_for_role id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_disabled_models_for_role ALTER COLUMN id SET DEFAULT nextval('public.nc_disabled_models_for_role_id_seq'::regclass);


--
-- Name: nc_evolutions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_evolutions ALTER COLUMN id SET DEFAULT nextval('public.nc_evolutions_id_seq'::regclass);


--
-- Name: nc_hooks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_hooks ALTER COLUMN id SET DEFAULT nextval('public.nc_hooks_id_seq'::regclass);


--
-- Name: nc_loaders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_loaders ALTER COLUMN id SET DEFAULT nextval('public.nc_loaders_id_seq'::regclass);


--
-- Name: nc_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_migrations ALTER COLUMN id SET DEFAULT nextval('public.nc_migrations_id_seq'::regclass);


--
-- Name: nc_models id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_models ALTER COLUMN id SET DEFAULT nextval('public.nc_models_id_seq'::regclass);


--
-- Name: nc_plugins id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_plugins ALTER COLUMN id SET DEFAULT nextval('public.nc_plugins_id_seq'::regclass);


--
-- Name: nc_relations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_relations ALTER COLUMN id SET DEFAULT nextval('public.nc_relations_id_seq'::regclass);


--
-- Name: nc_resolvers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_resolvers ALTER COLUMN id SET DEFAULT nextval('public.nc_resolvers_id_seq'::regclass);


--
-- Name: nc_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_roles ALTER COLUMN id SET DEFAULT nextval('public.nc_roles_id_seq'::regclass);


--
-- Name: nc_routes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_routes ALTER COLUMN id SET DEFAULT nextval('public.nc_routes_id_seq'::regclass);


--
-- Name: nc_rpc id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_rpc ALTER COLUMN id SET DEFAULT nextval('public.nc_rpc_id_seq'::regclass);


--
-- Name: nc_shared_bases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_shared_bases ALTER COLUMN id SET DEFAULT nextval('public.nc_shared_bases_id_seq'::regclass);


--
-- Name: nc_shared_views id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_shared_views ALTER COLUMN id SET DEFAULT nextval('public.nc_shared_views_id_seq'::regclass);


--
-- Name: nc_store id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_store ALTER COLUMN id SET DEFAULT nextval('public.nc_store_id_seq'::regclass);


--
-- Name: nc_xwok___deviation id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_xwok___deviation ALTER COLUMN id SET DEFAULT nextval('public.nc_xwok___deviation_id_seq'::regclass);


--
-- Name: nc_xwok___feature id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_xwok___feature ALTER COLUMN id SET DEFAULT nextval('public.nc_xwok___feature_id_seq'::regclass);


--
-- Name: nc_xwok___test310 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_xwok___test310 ALTER COLUMN id SET DEFAULT nextval('public.nc_xwok___test310_id_seq'::regclass);


--
-- Name: nc_xwok___work_cell id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_xwok___work_cell ALTER COLUMN id SET DEFAULT nextval('public.nc_xwok___work_cell_id_seq'::regclass);


--
-- Name: xc_knex_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.xc_knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.xc_knex_migrations_id_seq'::regclass);


--
-- Name: xc_knex_migrations_lock index; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.xc_knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.xc_knex_migrations_lock_index_seq'::regclass);


--
-- Name: xc_knex_migrationsv2 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.xc_knex_migrationsv2 ALTER COLUMN id SET DEFAULT nextval('public.xc_knex_migrationsv2_id_seq'::regclass);


--
-- Name: xc_knex_migrationsv2_lock index; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.xc_knex_migrationsv2_lock ALTER COLUMN index SET DEFAULT nextval('public.xc_knex_migrationsv2_lock_index_seq'::regclass);


--
-- Data for Name: nc_9j1b___Non-Conformance; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."nc_9j1b___Non-Conformance" (id, "Feature Num", created_at, updated_at, "Description of Non Conformance", "Specification/Standard", "Actual") FROM stdin;
2	Refer to final inspection	2023-03-13 12:21:55.480087	2023-03-13 12:24:51.6078	Auto Gauge is down, sensors broken.	Auto Gauge completes Final inspection	Measurements to be done manually.
4	Blend	2023-03-13 12:29:22.423806	2023-03-16 13:31:28.238298	Customer Testing, new blend		New Blend code
5	Trial	2023-03-16 13:35:50.818839	2023-03-16 13:35:50.818839	hello	12	14
6	test trial	2023-03-16 13:36:18.963131	2023-03-16 13:36:18.963131	test	12	14
7	123	2023-03-16 13:40:10.312631	2023-03-16 13:40:10.312631	4341	12314	1242
8	4325	2023-03-16 13:40:23.775416	2023-03-16 13:40:23.775416	253	\N	5325
9	33	2023-03-17 02:20:19.302088	2023-03-17 02:20:19.302088	blue	green	red
\.


--
-- Data for Name: nc_9j1b___NoticeOfDeviation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."nc_9j1b___NoticeOfDeviation" (id, "Deviation Initiated By", created_at, updated_at, "DeviationStart", "Qty Affected or Duration", "WO#", "Process Initiating Deviation", "Machine No", "RepeatDev", "Reason for Deviation", "Enhanced Inspection Requirements", "nc_9j1b___WorkCell_id", "ENG Mgr Approval", "Quality Mgr Approval", "P ENG Review", "Q ENG Review", "nc_9j1b___WorkCell_id1") FROM stdin;
8	DG	2023-03-13 11:06:01.845793	2023-03-16 13:47:43.177661	AUTO - 	\N	\N	\N	\N	f	\N	\N	\N	f	f	\N	\N	\N
10	Calvin Kwan	2023-03-13 12:29:41.625358	2023-03-16 13:47:43.177661	AUTO - 	20Pcs	1125	Blending	320	f	New blend formula requested by customer	Check formula %	3	f	f	Sai	Cindy	\N
11	2	2023-03-13 14:03:49.522202	2023-03-16 13:47:43.177661	AUTO - 	\N	\N	\N	\N	f	\N	\N	\N	f	f	\N	\N	\N
13	5	2023-03-13 14:03:55.431165	2023-03-16 13:47:43.177661	AUTO - 	\N	\N	\N	\N	f	\N	\N	\N	f	f	\N	\N	\N
14	1563	2023-03-13 14:04:25.567458	2023-03-16 13:47:43.177661	AUTO - 	\N	\N	\N	\N	f	\N	\N	\N	f	f	\N	\N	\N
9	Test	2023-03-13 12:11:48.22623	2023-03-16 13:47:43.177661	AUTO - 	\N	\N	\N	\N	f	\N	\N	\N	f	f	\N	\N	\N
15	\N	2023-03-16 13:19:11.318345	2023-03-16 13:47:43.177661	AUTO - 	\N	\N	\N	\N	f	\N	\N	\N	f	f	\N	\N	\N
16		2023-03-16 13:19:11.569071	2023-03-16 13:47:43.177661	AUTO - 	\N	\N	\N	\N	f	\N	\N	\N	f	f	\N	\N	\N
18	dsa	2023-03-16 13:20:30.55335	2023-03-16 13:47:43.177661	AUTO - 	\N	\N	\N	\N	f	\N	\N	\N	f	f	\N	\N	\N
19	\N	2023-03-16 13:23:12.586465	2023-03-16 13:47:43.177661	AUTO - 	\N	\N	\N	\N	f	\N	\N	\N	f	f	\N	\N	\N
7	Ck	2023-03-10 19:50:52.923839	2023-03-16 13:47:43.177661	AUTO - 	50 pcs	1299	Compact	291	f	\N	\N	\N	t	t	\N	\N	\N
20	\N	2023-03-16 13:33:06.62531	2023-03-16 13:47:43.177661	AUTO - 	\N	\N	\N	\N	f	\N	\N	\N	f	f	\N	\N	\N
6	CK	2023-03-10 19:41:59.183596	2023-03-16 13:47:43.177661	AUTO - 	1 Week	1298	Auto Gauge	9211	\N	Gauge down	Use Manual gauge to inspect 100%	12	t	t	\N	\N	\N
5	CK	2023-03-10 19:34:20.284079	2023-03-16 13:47:46.769473	FUEL - 	2 Weeks	0022	Auto Gauge	9211	\N	Gauge down	Use manual gauge to inspect 100%	12	t	t	\N	\N	12
21	Calvin KWan	2023-03-16 14:14:12.145126	2023-03-16 14:14:12.542655	FUEL - 	1	\N	Blending	\N	f	Test NOD	NOD Test	3	f	f	\N	\N	3
22	dg	2023-03-16 14:14:37.297901	2023-03-16 14:14:37.297901	FUEL - 	3	\N	d	\N	f	s David Gleba	s	\N	f	f	\N	\N	\N
23	Calvin K	2023-03-16 14:21:52.10089	2023-03-16 14:21:52.10089	FUEL - 	14	\N	g	\N	f	3	2	\N	f	f	\N	\N	\N
24	2	2023-03-16 14:34:21.017322	2023-03-16 14:34:21.017322	FUEL - 	3	\N	4	\N	f	6	5	\N	f	f	\N	\N	\N
25		2023-03-17 02:21:20.249614	2023-03-17 11:33:26.426046	FUEL - 	a	d	d	d	t	black	grey	3	f	f	\N	\N	3
\.


--
-- Data for Name: nc_9j1b___WorkCell; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."nc_9j1b___WorkCell" (id, "Operations", created_at, updated_at) FROM stdin;
5	Compact	2023-03-10 19:46:58.969613	2023-03-10 19:46:59.404224
6	Coining/Sizing	2023-03-10 19:47:02.239022	2023-03-10 19:47:02.398484
7	Deburr	2023-03-10 19:47:04.450445	2023-03-10 19:47:04.825487
9	Densification	2023-03-10 19:47:09.78965	2023-03-10 19:47:09.973565
10	Double Disk Grind	2023-03-10 19:47:13.536991	2023-03-10 19:47:13.536991
11	Drilling	2023-03-10 19:47:17.404079	2023-03-10 19:47:19.061399
12	Final Inspect/Argo	2023-03-10 19:47:21.620511	2023-03-10 19:47:22.899394
13	Grinding	2023-03-10 19:47:25.424126	2023-03-10 19:47:25.424126
14	Polishing	2023-03-10 19:47:27.464429	2023-03-10 19:47:27.464429
15	Hard Turning	2023-03-10 19:47:30.367574	2023-03-10 19:47:32.31025
16	Heat Treat	2023-03-10 19:47:33.519621	2023-03-10 19:47:33.842935
17	Hobbing	2023-03-10 19:47:34.501413	2023-03-10 19:47:37.399336
18	Honning	2023-03-10 19:47:41.994696	2023-03-10 19:47:41.994696
19	Laser Marking	2023-03-10 19:47:44.402757	2023-03-10 19:47:45.636543
20	Milling	2023-03-10 19:47:47.590098	2023-03-10 19:47:48.568804
21	NDT System	2023-03-10 19:47:50.375178	2023-03-10 19:47:50.642422
22	Oxidation	2023-03-10 19:47:52.743808	2023-03-10 19:47:52.743808
23	Pre-Turn	2023-03-10 19:47:54.881451	2023-03-10 19:47:55.009757
24	Seal Assembly	2023-03-10 19:47:57.680279	2023-03-10 19:47:57.9239
25	Sinter	2023-03-10 19:47:59.4289	2023-03-10 19:47:59.848815
26	Soft Turn 1,2,3	2023-03-10 19:48:00.692001	2023-03-10 19:48:02.734916
27	Toothroll	2023-03-10 19:48:06.098269	2023-03-10 19:48:07.423818
28	Turning	2023-03-10 19:48:09.526474	2023-03-10 19:48:09.869587
29	Vision System	2023-03-10 19:48:10.956021	2023-03-10 19:48:12.266799
30	Wash/Rust Inhibitor	2023-03-10 19:48:14.788709	2023-03-10 19:48:17.093338
2	Bearing Assembly	2023-03-10 19:46:46.016892	2023-03-10 19:59:04.894434
8	Delube	2023-03-10 19:47:06.834996	2023-03-10 20:00:28.921463
1	Annealing	2023-03-10 19:46:42.681229	2023-03-10 20:16:45.570713
3	Blending	2023-03-10 19:46:53.681925	2023-03-13 11:00:11.622893
4	Burnishing	2023-03-10 19:46:56.281153	2023-03-13 11:00:13.174738
\.


--
-- Data for Name: nc_9j1b___nc_m2m__w442b2pgo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_9j1b___nc_m2m__w442b2pgo (table2_id, table1_id) FROM stdin;
2	5
2	6
5	6
7	7
8	7
7	21
9	25
\.


--
-- Data for Name: nc_acl; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_acl (id, project_id, db_alias, tn, acl, type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_api_tokens; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_api_tokens (id, project_id, db_alias, description, permissions, token, expiry, enabled, created_at, updated_at, fk_user_id) FROM stdin;
\.


--
-- Data for Name: nc_audit; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_audit (id, "user", ip, project_id, db_alias, model_name, model_id, op_type, op_sub_type, status, description, details, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_audit_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_audit_v2 (id, "user", ip, base_id, project_id, fk_model_id, row_id, op_type, op_sub_type, status, description, details, created_at, updated_at) FROM stdin;
adt_mi15nda8kn2zrh	dgleba@stackpole.com	::ffff:10.5.252.152	\N	\N	\N	\N	AUTHENTICATION	SIGNUP	\N	signed up 	\N	2023-03-09 03:59:01.028685+00	2023-03-09 03:59:01.028685+00
adt_qliequ4o0iq9zb	dgleba@stackpole.com	::ffff:10.4.170.83	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-03-09 19:34:49.275357+00	2023-03-09 19:34:49.275357+00
adt_w0nlne6zuj6dpa	dgleba@stackpole.com	::ffff:10.4.170.83	\N	\N	\N	\N	ORG_USER	INVITE	\N	invited ckwan@stackple.com to undefined project 	\N	2023-03-09 19:35:31.067893+00	2023-03-09 19:35:31.067893+00
adt_he49yvc8uesdea	dgleba@stackpole.com	::ffff:10.4.170.83	\N	\N	\N	\N	AUTHENTICATION	PASSWORD_FORGOT	\N	requested for password reset 	\N	2023-03-09 19:50:26.497811+00	2023-03-09 19:50:26.497811+00
adt_xxod9bfs3257mm	dgleba@stackpole.com	::ffff:10.4.170.83	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-03-09 19:52:42.791662+00	2023-03-09 19:52:42.791662+00
adt_8ci9o3gs1k3swx	dgleba@stackpole.com	::ffff:10.4.170.83	\N	p_kayxefr8e1a3r7	\N	\N	AUTHENTICATION	INVITE	\N	invited ckwan@stackple.com to p_kayxefr8e1a3r7 project 	\N	2023-03-09 19:53:56.696378+00	2023-03-09 19:53:56.696378+00
adt_xnd8e1vgwjzvy8	dgleba@stackpole.com	::ffff:10.4.170.83	\N	\N	\N	\N	AUTHENTICATION	ROLES_MANAGEMENT	\N	updated roles for ckwan@stackple.com with creator 	\N	2023-03-09 19:54:22.218145+00	2023-03-09 19:54:22.218145+00
adt_zbkihnnp6dimpu	dgleba@stackpole.com	::ffff:10.4.170.83	\N	\N	\N	\N	AUTHENTICATION	PASSWORD_FORGOT	\N	requested for password reset 	\N	2023-03-09 19:54:55.513247+00	2023-03-09 19:54:55.513247+00
adt_kg7523xq48tm2j	dgleba@stackpole.com	::ffff:10.4.170.83	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-03-09 19:56:09.704296+00	2023-03-09 19:56:09.704296+00
adt_7a0xmkdc7xoark	ckwan@stackple.com	::ffff:10.4.170.83	\N	\N	\N	\N	ORG_USER	RESEND_INVITE	\N	resent a invite to ckwan@stackple.com 	\N	2023-03-09 19:56:45.369427+00	2023-03-09 19:56:45.369427+00
adt_72fzmsdt75k9e5	dgleba@stackpole.com	::ffff:10.4.170.83	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	TABLE	CREATED	\N	created table nc_xwok___deviation with alias deviation  	\N	2023-03-09 19:57:41.732195+00	2023-03-09 19:57:41.732195+00
adt_7p8bqubxe57eec	dgleba@stackpole.com	::ffff:10.4.170.83	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column partnum with alias partnum from table nc_xwok___deviation	\N	2023-03-09 19:58:49.948478+00	2023-03-09 19:58:49.948478+00
adt_ql06u2tu3kgl3w	dgleba@stackpole.com	::ffff:10.4.170.83	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title with alias Title from table nc_xwok___deviation	\N	2023-03-09 20:00:20.974838+00	2023-03-09 20:00:20.974838+00
adt_j7vfg7smus3hwk	dgleba@stackpole.com	::ffff:10.4.170.83	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column process with alias process from table nc_xwok___deviation	\N	2023-03-09 20:01:38.375629+00	2023-03-09 20:01:38.375629+00
adt_l22aqnvpfuhy24	dgleba@stackpole.com	::ffff:10.4.170.83	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column machine with alias machine from table nc_xwok___deviation	\N	2023-03-09 20:01:43.552595+00	2023-03-09 20:01:43.552595+00
adt_ulmc6hqhp8qfvy	dgleba@stackpole.com	::ffff:10.4.170.83	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column qa_approval with alias qa_approval from table nc_xwok___deviation	\N	2023-03-09 20:03:26.345802+00	2023-03-09 20:03:26.345802+00
adt_4p9dxk8alonosq	dgleba@stackpole.com	::ffff:10.4.170.83	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column eng_approval with alias eng_approval from table nc_xwok___deviation	\N	2023-03-09 20:04:15.298233+00	2023-03-09 20:04:15.298233+00
adt_4fl6wnj90u6l1v	ckwan@stackpole.com	::ffff:10.4.136.96	\N	\N	\N	\N	AUTHENTICATION	SIGNUP	\N	signed up 	\N	2023-03-10 12:07:08.907067+00	2023-03-10 12:07:08.907067+00
adt_wc03s85nshsspz	dgleba@stackpole.com	::ffff:10.4.12.34	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-03-10 16:37:08.713825+00	2023-03-10 16:37:08.713825+00
adt_jrnczyxu4uykih	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	AUTHENTICATION	INVITE	\N	invited ckwan@stackpole.com to p_kayxefr8e1a3r7 project 	\N	2023-03-10 16:38:45.716812+00	2023-03-10 16:38:45.716812+00
adt_t48g57cbhujcu7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-03-10 16:39:19.516107+00	2023-03-10 16:39:19.516107+00
adt_hzb5gvk4bwzvvz	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column engineer with alias engineer from table nc_xwok___deviation	\N	2023-03-10 16:39:32.96348+00	2023-03-10 16:39:32.96348+00
adt_05642tknabr051	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column engineer with alias engineer from table nc_xwok___deviation	\N	2023-03-10 16:41:37.844177+00	2023-03-10 16:41:37.844177+00
adt_ne9xzjbllfz2i4	dgleba@stackpole.com	::ffff:10.4.12.34	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	TABLE	CREATED	\N	created table nc_xwok___test310 with alias test310  	\N	2023-03-10 16:50:48.445446+00	2023-03-10 16:50:48.445446+00
adt_idydi1dmz812z5	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	INSERT	\N	1 inserted into deviation	\N	2023-03-10 16:51:37.585627+00	2023-03-10 16:51:37.585627+00
adt_vccz9eunow2wdz	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column repeat_deviation with alias repeat_deviation from table nc_xwok___deviation	\N	2023-03-10 17:00:28.532801+00	2023-03-10 17:00:28.532801+00
adt_3acz28s4qsh8u5	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	UPDATE	\N	1 updated in deviation	\N	2023-03-10 17:00:37.396964+00	2023-03-10 17:00:37.396964+00
adt_myyzko4i6w1mwp	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	UPDATE	\N	Table nc_xwok___deviation : field repeat_deviation got changed from   to true	<span class="">repeat_deviation</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-10 17:00:37.46121+00	2023-03-10 17:00:37.46121+00
adt_0thtcf84gbc29a	dgleba@stackpole.com	::ffff:10.4.12.34	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	TABLE	CREATED	\N	created table nc_xwok___work_cell with alias work_cell  	\N	2023-03-10 17:07:23.599863+00	2023-03-10 17:07:23.599863+00
adt_i2p1kfbva939bb	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	1	DATA	INSERT	\N	1 inserted into work_cell	\N	2023-03-10 17:08:03.07793+00	2023-03-10 17:08:03.07793+00
adt_9l1s4rfh87h3np	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	1	DATA	UPDATE	\N	1 updated in work_cell	\N	2023-03-10 17:08:05.388193+00	2023-03-10 17:08:05.388193+00
adt_034ad292woodba	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	1	DATA	UPDATE	\N	Table nc_xwok___work_cell : field Title got changed from  Hart  to Hard Turnin	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Hart </span>\n  <span class="black--text green lighten-4 px-2">Hard Turnin</span>	2023-03-10 17:08:05.419291+00	2023-03-10 17:08:05.419291+00
adt_mnjb7ef9y3w1n2	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	1	DATA	UPDATE	\N	1 updated in work_cell	\N	2023-03-10 17:08:05.933171+00	2023-03-10 17:08:05.933171+00
adt_za7qikxt0mp194	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	1	DATA	UPDATE	\N	Table nc_xwok___work_cell : field Title got changed from  Hard Turnin to Hard Turning	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Hard Turnin</span>\n  <span class="black--text green lighten-4 px-2">Hard Turning</span>	2023-03-10 17:08:05.963395+00	2023-03-10 17:08:05.963395+00
adt_77lkxvx7a5y9nh	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	2	DATA	INSERT	\N	2 inserted into work_cell	\N	2023-03-10 17:08:08.993511+00	2023-03-10 17:08:08.993511+00
adt_m1bomwr67qjf0i	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	2	DATA	UPDATE	\N	2 updated in work_cell	\N	2023-03-10 17:08:15.883765+00	2023-03-10 17:08:15.883765+00
adt_4y0smdh7jui6cw	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	2	DATA	UPDATE	\N	Table nc_xwok___work_cell : field Title got changed from  S to Sinter	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">S</span>\n  <span class="black--text green lighten-4 px-2">Sinter</span>	2023-03-10 17:08:15.911581+00	2023-03-10 17:08:15.911581+00
adt_3vkxm8yrciifk2	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	3	DATA	INSERT	\N	3 inserted into work_cell	\N	2023-03-10 17:08:23.027805+00	2023-03-10 17:08:23.027805+00
adt_g0mrahda0t6q4v	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	3	DATA	UPDATE	\N	3 updated in work_cell	\N	2023-03-10 17:08:23.068196+00	2023-03-10 17:08:23.068196+00
adt_lb9htchdx5cja8	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	3	DATA	UPDATE	\N	Table nc_xwok___work_cell : field Title got changed from  Oxidation to Oxidation	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Oxidation</span>\n  <span class="black--text green lighten-4 px-2">Oxidation</span>	2023-03-10 17:08:23.092656+00	2023-03-10 17:08:23.092656+00
adt_g9de4swpordun7	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column affected_operation with alias affected_operation from table nc_xwok___deviation	\N	2023-03-10 17:09:21.058672+00	2023-03-10 17:09:21.058672+00
adt_m4we0svbs2itxj	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:1] record in deviation	\N	2023-03-10 17:17:53.420551+00	2023-03-10 17:17:53.420551+00
adt_0y4hw1stdjcry4	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:1] record in deviation	\N	2023-03-10 17:18:00.265631+00	2023-03-10 17:18:00.265631+00
adt_7zfxl0lymr00ky	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column null with alias affected_operation from table nc_xwok___deviation	\N	2023-03-10 17:18:51.86413+00	2023-03-10 17:18:51.86413+00
adt_4frxi5mv5819mp	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:1] record linked with record [id:1] record in deviation	\N	2023-03-10 17:19:22.831448+00	2023-03-10 17:19:22.831448+00
adt_hzkzv2ly41uavg	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	UNLINK_RECORD	\N	Record [id:2] record unlinked with record [id:1] record in deviation	\N	2023-03-10 17:19:35.66451+00	2023-03-10 17:19:35.66451+00
adt_ujc6ed5qphn3a7	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	UNLINK_RECORD	\N	Record [id:3] record unlinked with record [id:1] record in deviation	\N	2023-03-10 17:19:37.724144+00	2023-03-10 17:19:37.724144+00
adt_mic4jbwjh5wvkk	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:1] record in deviation	\N	2023-03-10 17:20:48.175541+00	2023-03-10 17:20:48.175541+00
adt_bsoyng3tszgonc	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column title13 with alias title13 from table nc_xwok___deviation	\N	2023-03-10 17:30:53.483399+00	2023-03-10 17:30:53.483399+00
adt_ifs85197k1b6ae	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column null with alias affected_operation from table nc_xwok___deviation	\N	2023-03-10 17:31:08.658644+00	2023-03-10 17:31:08.658644+00
adt_zxuu5uwo7lqbf0	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	4	DATA	INSERT	\N	4 inserted into work_cell	\N	2023-03-10 17:08:26.256328+00	2023-03-10 17:08:26.256328+00
adt_fhcwv09g4yf2ka	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column affected_operation with alias affected_operation from table nc_xwok___deviation	\N	2023-03-10 17:33:44.524752+00	2023-03-10 17:33:44.524752+00
adt_4e2fndly38hvxs	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:1] record linked with record [id:1] record in deviation	\N	2023-03-10 17:33:55.767967+00	2023-03-10 17:33:55.767967+00
adt_gazif2jq6b344c	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column corrected_in_operation with alias corrected_in_operation from table nc_xwok___deviation	\N	2023-03-10 17:34:19.649299+00	2023-03-10 17:34:19.649299+00
adt_o9vct5kklh7dwv	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column corrected_in_operation with alias corrected_in_operation from table nc_xwok___deviation	\N	2023-03-10 17:34:44.016277+00	2023-03-10 17:34:44.016277+00
adt_vbcrwo1535ozec	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column corrected_in_operation with alias corrected_in_operation from table nc_xwok___deviation	\N	2023-03-10 17:34:59.92654+00	2023-03-10 17:34:59.92654+00
adt_0q0bgya98s3gvx	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column corrected_in_operation with alias corrected_in_operation from table nc_xwok___deviation	\N	2023-03-10 17:35:09.127309+00	2023-03-10 17:35:09.127309+00
adt_r0dbgqxtw8mqf8	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:1] record in deviation	\N	2023-03-10 17:35:12.879061+00	2023-03-10 17:35:12.879061+00
adt_6y4s8sagnqjtth	dgleba@stackpole.com	::ffff:10.4.12.34	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	TABLE	CREATED	\N	created table nc_xwok___feature with alias feature  	\N	2023-03-10 17:37:17.597957+00	2023-03-10 17:37:17.597957+00
adt_052stqxotdjp57	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column feature_number with alias feature_number from table nc_xwok___feature	\N	2023-03-10 17:38:04.777353+00	2023-03-10 17:38:04.777353+00
adt_uc1o1k8yrvtwf5	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column description_of_nonconformance with alias description_of_nonconformance from table nc_xwok___feature	\N	2023-03-10 17:38:19.736186+00	2023-03-10 17:38:19.736186+00
adt_tjawxfh2bufthm	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column spec with alias spec from table nc_xwok___feature	\N	2023-03-10 17:38:27.345004+00	2023-03-10 17:38:27.345004+00
adt_vzasb8pzak3e15	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column actual with alias actual from table nc_xwok___feature	\N	2023-03-10 17:38:35.066962+00	2023-03-10 17:38:35.066962+00
adt_8l059knkoupqlu	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column features with alias features from table nc_xwok___deviation	\N	2023-03-10 17:39:30.035391+00	2023-03-10 17:39:30.035391+00
adt_j3ov05kwdx4cvd	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column null with alias nc_xwok___nc_m2m_xy70mqb6ua List from table nc_xwok___deviation	\N	2023-03-10 17:40:16.73752+00	2023-03-10 17:40:16.73752+00
adt_g3u5rg7kxsy4m6	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column features with alias features from table nc_xwok___deviation	\N	2023-03-10 17:40:35.463313+00	2023-03-10 17:40:35.463313+00
adt_xibieuhy710596	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	1	DATA	INSERT	\N	1 inserted into feature	\N	2023-03-10 17:42:19.031196+00	2023-03-10 17:42:19.031196+00
adt_8t4u9i3g1jsfu9	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	1	DATA	LINK_RECORD	\N	Record [id:1] record linked with record [id:1] record in feature	\N	2023-03-10 17:42:19.064753+00	2023-03-10 17:42:19.064753+00
adt_wogx43tjrxbtd0	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column null with alias features from table nc_xwok___deviation	\N	2023-03-10 17:44:27.742224+00	2023-03-10 17:44:27.742224+00
adt_aosukjb3fhvm9a	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column features with alias features from table nc_xwok___deviation	\N	2023-03-10 17:44:45.581031+00	2023-03-10 17:44:45.581031+00
adt_m9pm7b5bvpk1c8	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:1] record linked with record [id:1] record in deviation	\N	2023-03-10 17:44:55.539722+00	2023-03-10 17:44:55.539722+00
adt_gzxfmt3lp35s99	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	\N	DATA	DELETE	\N	undefined deleted from feature	\N	2023-03-10 17:45:11.960927+00	2023-03-10 17:45:11.960927+00
adt_12xtacbms4iyme	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	INSERT	\N	2 inserted into feature	\N	2023-03-10 17:46:50.245686+00	2023-03-10 17:46:50.245686+00
adt_hb2jd1zptp50xm	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	2 updated in feature	\N	2023-03-10 17:46:53.023819+00	2023-03-10 17:46:53.023819+00
adt_3licxjz9j54y16	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	Table nc_xwok___feature : field description_of_nonconformance got changed from   to nn h	<span class="">description_of_nonconformance</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">nn h</span>	2023-03-10 17:46:53.062993+00	2023-03-10 17:46:53.062993+00
adt_ahh109mstz60b9	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	2 updated in feature	\N	2023-03-10 17:46:54.969577+00	2023-03-10 17:46:54.969577+00
adt_wkg7iyefzwtn5e	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	Table nc_xwok___feature : field description_of_nonconformance got changed from  nn h to nn zone	<span class="">description_of_nonconformance</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">nn h</span>\n  <span class="black--text green lighten-4 px-2">nn zone</span>	2023-03-10 17:46:55.045653+00	2023-03-10 17:46:55.045653+00
adt_7cldtmgfie7d2y	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	2 updated in feature	\N	2023-03-10 17:46:55.562063+00	2023-03-10 17:46:55.562063+00
adt_qt0f4es7t8i0vo	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	Table nc_xwok___feature : field description_of_nonconformance got changed from  nn zone to nn zone 	<span class="">description_of_nonconformance</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">nn zone</span>\n  <span class="black--text green lighten-4 px-2">nn zone </span>	2023-03-10 17:46:55.588427+00	2023-03-10 17:46:55.588427+00
adt_5soiglnuwns71q	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	2 updated in feature	\N	2023-03-10 17:46:56.266023+00	2023-03-10 17:46:56.266023+00
adt_bwpd0wqjd8xnuw	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	Table nc_xwok___feature : field description_of_nonconformance got changed from  nn zone  to nn zone 2	<span class="">description_of_nonconformance</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">nn zone </span>\n  <span class="black--text green lighten-4 px-2">nn zone 2</span>	2023-03-10 17:46:56.294485+00	2023-03-10 17:46:56.294485+00
adt_vwdtrfrb607hnz	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	2 updated in feature	\N	2023-03-10 17:47:00.225644+00	2023-03-10 17:47:00.225644+00
adt_klvtg0ti22mviu	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	Table nc_xwok___feature : field spec got changed from   to -10 	<span class="">spec</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">-10 </span>	2023-03-10 17:47:00.249517+00	2023-03-10 17:47:00.249517+00
adt_jzrzy16oxs3h4g	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	2 updated in feature	\N	2023-03-10 17:47:01.300438+00	2023-03-10 17:47:01.300438+00
adt_1k8ivqttc0qtg9	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	Table nc_xwok___feature : field spec got changed from  -10  to -10 +	<span class="">spec</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">-10 </span>\n  <span class="black--text green lighten-4 px-2">-10 +</span>	2023-03-10 17:47:01.327364+00	2023-03-10 17:47:01.327364+00
adt_c3924fgkntghj7	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	2 updated in feature	\N	2023-03-10 17:47:02.690153+00	2023-03-10 17:47:02.690153+00
adt_nqsotbi8pig64x	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	Table nc_xwok___feature : field spec got changed from  -10 + to -10 +50	<span class="">spec</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">-10 +</span>\n  <span class="black--text green lighten-4 px-2">-10 +50</span>	2023-03-10 17:47:02.718642+00	2023-03-10 17:47:02.718642+00
adt_80du942zp2djcr	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	2 updated in feature	\N	2023-03-10 17:47:41.820919+00	2023-03-10 17:47:41.820919+00
adt_pui9nm0im34udi	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	2	DATA	UPDATE	\N	Table nc_xwok___feature : field actual got changed from   to 10 60	<span class="">actual</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">10 60</span>	2023-03-10 17:47:41.84854+00	2023-03-10 17:47:41.84854+00
adt_ptzuj9455yvmq4	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:1] record in deviation	\N	2023-03-10 17:48:56.883782+00	2023-03-10 17:48:56.883782+00
adt_2iwu6519v1p42y	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	UNLINK_RECORD	\N	Record [id:2] record unlinked with record [id:1] record in deviation	\N	2023-03-10 17:49:09.296766+00	2023-03-10 17:49:09.296766+00
adt_x4yes9ws7x3zup	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	UNLINK_RECORD	\N	Record [id:1] record unlinked with record [id:1] record in deviation	\N	2023-03-10 17:49:31.006511+00	2023-03-10 17:49:31.006511+00
adt_bbr37m1newvbr0	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:1] record linked with record [id:1] record in deviation	\N	2023-03-10 17:49:48.774837+00	2023-03-10 17:49:48.774837+00
adt_ykpte4c69o95md	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:1] record in deviation	\N	2023-03-10 17:49:52.694545+00	2023-03-10 17:49:52.694545+00
adt_mx8okgpoiu33yk	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	3	DATA	INSERT	\N	3 inserted into feature	\N	2023-03-10 17:50:14.175936+00	2023-03-10 17:50:14.175936+00
adt_hld7d15v0b6khd	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	3	DATA	UPDATE	\N	3 updated in feature	\N	2023-03-10 17:50:16.224421+00	2023-03-10 17:50:16.224421+00
adt_q6245kglrhp5tq	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	3	DATA	UPDATE	\N	Table nc_xwok___feature : field description_of_nonconformance got changed from   to zone	<span class="">description_of_nonconformance</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">zone</span>	2023-03-10 17:50:16.25482+00	2023-03-10 17:50:16.25482+00
adt_2nho4uchl44tk2	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	3	DATA	UPDATE	\N	3 updated in feature	\N	2023-03-10 17:50:17.128876+00	2023-03-10 17:50:17.128876+00
adt_teih2kgglun402	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	3	DATA	UPDATE	\N	Table nc_xwok___feature : field description_of_nonconformance got changed from  zone to zone 3	<span class="">description_of_nonconformance</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">zone</span>\n  <span class="black--text green lighten-4 px-2">zone 3</span>	2023-03-10 17:50:17.153095+00	2023-03-10 17:50:17.153095+00
adt_ps2f8w0cja4az1	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	3	DATA	UPDATE	\N	3 updated in feature	\N	2023-03-10 17:50:19.2933+00	2023-03-10 17:50:19.2933+00
adt_y97z2z7i1u089o	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	3	DATA	UPDATE	\N	Table nc_xwok___feature : field spec got changed from   to x	<span class="">spec</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">x</span>	2023-03-10 17:50:19.316273+00	2023-03-10 17:50:19.316273+00
adt_56qid3uqvmwm4e	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	3	DATA	UPDATE	\N	3 updated in feature	\N	2023-03-10 17:50:20.706478+00	2023-03-10 17:50:20.706478+00
adt_vsee1ffennfsrs	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	3	DATA	UPDATE	\N	Table nc_xwok___feature : field actual got changed from   to y	<span class="">actual</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">y</span>	2023-03-10 17:50:20.733756+00	2023-03-10 17:50:20.733756+00
adt_45wdfccvjrgzg9	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column title15 with alias title15 from table nc_xwok___deviation	\N	2023-03-10 18:26:52.294899+00	2023-03-10 18:26:52.294899+00
adt_elsg863ht101ml	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column title15 with alias title15 from table nc_xwok___deviation	\N	2023-03-10 18:27:17.136216+00	2023-03-10 18:27:17.136216+00
adt_99g000ownohcvp	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:1] record in deviation	\N	2023-03-10 18:27:32.10269+00	2023-03-10 18:27:32.10269+00
adt_le61755zd8mt1y	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column null with alias affected_operation from table nc_xwok___deviation	\N	2023-03-10 18:27:53.268038+00	2023-03-10 18:27:53.268038+00
adt_4eq7rvoudc1r1e	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column null with alias corrected_in_operation from table nc_xwok___deviation	\N	2023-03-10 18:27:57.127085+00	2023-03-10 18:27:57.127085+00
adt_imd2v1fcmdw1w3	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column null with alias features from table nc_xwok___deviation	\N	2023-03-10 18:30:20.086788+00	2023-03-10 18:30:20.086788+00
adt_3icyzgp4myichz	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column features with alias features from table nc_xwok___deviation	\N	2023-03-10 18:30:48.651836+00	2023-03-10 18:30:48.651836+00
adt_6l9wtozdtlivbp	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column null with alias features from table nc_xwok___deviation	\N	2023-03-10 18:30:55.919564+00	2023-03-10 18:30:55.919564+00
adt_yzcqoenyqzjst9	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column feas with alias feas from table nc_xwok___deviation	\N	2023-03-10 18:31:11.755768+00	2023-03-10 18:31:11.755768+00
adt_2qmr2dnpj3saln	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column null with alias feas from table nc_xwok___deviation	\N	2023-03-10 18:32:02.402134+00	2023-03-10 18:32:02.402134+00
adt_okziyw384fis2v	ckwan@stackpole.com	::ffff:10.4.136.96	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	TABLE	CREATED	\N	created table nc_9j1b___NoticeOfDeviation with alias NoticeOfDeviation  	\N	2023-03-10 18:32:20.325848+00	2023-03-10 18:32:20.325848+00
adt_n57mv4bfbvaym2	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column title5 with alias title5 from table nc_xwok___work_cell	\N	2023-03-10 18:33:12.715766+00	2023-03-10 18:33:12.715766+00
adt_tt7rtrvo8b8gy4	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column null with alias title5 from table nc_xwok___work_cell	\N	2023-03-10 18:33:21.922161+00	2023-03-10 18:33:21.922161+00
adt_ggj5kkpbb3ga1u	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column deviation_id with alias deviation_id from table nc_xwok___work_cell	\N	2023-03-10 18:34:06.772182+00	2023-03-10 18:34:06.772182+00
adt_zbshgky4zowjve	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:1] record in deviation	\N	2023-03-10 18:34:17.00109+00	2023-03-10 18:34:17.00109+00
adt_ot8ryqszhvewb3	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:1] record in deviation	\N	2023-03-10 18:34:22.705899+00	2023-03-10 18:34:22.705899+00
adt_ewpbp03pdc2ec9	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:1] record in deviation	\N	2023-03-10 18:34:31.13796+00	2023-03-10 18:34:31.13796+00
adt_t5wkb1xhokw7eb	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	\N	\N	TABLE_COLUMN	CREATED	\N	created column title5 with alias title5 from table nc_xwok___test310	\N	2023-03-10 18:39:55.242846+00	2023-03-10 18:39:55.242846+00
adt_fcwl1032zmhucb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column title5 with alias title5 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:42:55.752645+00	2023-03-10 18:42:55.752645+00
adt_mrv646rix7uwzk	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title5 with alias title5 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:43:16.482057+00	2023-03-10 18:43:16.482057+00
adt_ijs3d9601chd9a	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Num with alias Num from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:46:17.151812+00	2023-03-10 18:46:17.151812+00
adt_wqhlg6yuh1ocu1	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Deviation No. with alias Deviation No. from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:48:54.685844+00	2023-03-10 18:48:54.685844+00
adt_v1r8tw227fqj3a	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column Deviation No. with alias Deviation No. from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:49:20.6612+00	2023-03-10 18:49:20.6612+00
adt_8efdxtokuug6qk	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column Num with alias Num from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:49:23.836126+00	2023-03-10 18:49:23.836126+00
adt_zrswxxxhpwzi2w	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Deviation No. with alias Deviation No. from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:50:04.393499+00	2023-03-10 18:50:04.393499+00
adt_8cinlim9rsbpos	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Deviation No. with alias Deviation No. from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:51:21.560624+00	2023-03-10 18:51:21.560624+00
adt_6qo2he2zr49vkp	ckwan@stackpole.com	::ffff:10.4.136.96	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	TABLE	DELETED	\N	Deleted table nc_9j1b___NoticeOfDeviation with alias NoticeOfDeviation  	\N	2023-03-10 18:52:01.524072+00	2023-03-10 18:52:01.524072+00
adt_2x4nactrfa0pep	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	2	DATA	INSERT	\N	2 inserted into deviation	\N	2023-03-10 18:52:27.349958+00	2023-03-10 18:52:27.349958+00
adt_1jbfw7q8jq7iog	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	2	DATA	UPDATE	\N	2 updated in deviation	\N	2023-03-10 18:52:31.120555+00	2023-03-10 18:52:31.120555+00
adt_iam1be6b9euhcw	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	2	DATA	UPDATE	\N	Table nc_xwok___deviation : field dev_initiated_by got changed from  2 to 	<span class="">dev_initiated_by</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">2</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-10 18:52:31.144259+00	2023-03-10 18:52:31.144259+00
adt_ic1j6wpqx7sid4	ckwan@stackpole.com	::ffff:10.4.136.96	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	TABLE	CREATED	\N	created table nc_9j1b___NoticeOfDeviation with alias NoticeOfDeviation  	\N	2023-03-10 18:53:18.747047+00	2023-03-10 18:53:18.747047+00
adt_qqbq9pys23y1tb	ckwan@stackpole.com	::ffff:10.4.136.96	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	TABLE	CREATED	\N	created table nc_9j1b___Sheet-1 with alias Sheet-1  	\N	2023-03-10 18:53:49.856994+00	2023-03-10 18:53:49.856994+00
adt_xcts53teo2zdus	ckwan@stackpole.com	::ffff:10.4.136.96	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	TABLE	DELETED	\N	Deleted table nc_9j1b___Sheet-1 with alias Sheet-1  	\N	2023-03-10 18:53:59.445427+00	2023-03-10 18:53:59.445427+00
adt_59enmycdwo7054	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	INSERT	\N	1 inserted into NoticeOfDeviation	\N	2023-03-10 18:55:11.835913+00	2023-03-10 18:55:11.835913+00
adt_363hftolyjqisb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	1 updated in NoticeOfDeviation	\N	2023-03-10 18:55:13.229269+00	2023-03-10 18:55:13.229269+00
adt_xj402hw6gwsmf9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Title got changed from  4 to 	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">4</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-10 18:55:13.256704+00	2023-03-10 18:55:13.256704+00
adt_8a9y9uqst03vh3	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column title5 with alias title5 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:55:30.693701+00	2023-03-10 18:55:30.693701+00
adt_y64r5ipy8m1vgt	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	1 updated in NoticeOfDeviation	\N	2023-03-10 18:55:33.522457+00	2023-03-10 18:55:33.522457+00
adt_0rbcohspuh5ed0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Title got changed from   to 2	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">2</span>	2023-03-10 18:55:33.557426+00	2023-03-10 18:55:33.557426+00
adt_u3rrl6urqecch7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title5 with alias title5 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:55:51.675914+00	2023-03-10 18:55:51.675914+00
adt_e0itqzlfy0utjp	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	1 updated in NoticeOfDeviation	\N	2023-03-10 18:56:05.450564+00	2023-03-10 18:56:05.450564+00
adt_2nnn4s4gtuifmq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Title got changed from  2 to AUTO	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">2</span>\n  <span class="black--text green lighten-4 px-2">AUTO</span>	2023-03-10 18:56:05.470879+00	2023-03-10 18:56:05.470879+00
adt_uqitve83o5812f	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	1 updated in NoticeOfDeviation	\N	2023-03-10 18:56:06.548331+00	2023-03-10 18:56:06.548331+00
adt_kzabnsdwmr2p8h	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Title got changed from  AUTO to AUTO _ 	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">AUTO</span>\n  <span class="black--text green lighten-4 px-2">AUTO _ </span>	2023-03-10 18:56:06.567092+00	2023-03-10 18:56:06.567092+00
adt_jn81npc2uyu7t2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	1 updated in NoticeOfDeviation	\N	2023-03-10 18:56:08.897433+00	2023-03-10 18:56:08.897433+00
adt_5d4d161l3vuhsl	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Title got changed from  AUTO _  to AUTO 	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">AUTO _ </span>\n  <span class="black--text green lighten-4 px-2">AUTO </span>	2023-03-10 18:56:08.923906+00	2023-03-10 18:56:08.923906+00
adt_huo51ofbbbb5pq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	1 updated in NoticeOfDeviation	\N	2023-03-10 18:56:09.980062+00	2023-03-10 18:56:09.980062+00
adt_0k76psavs1595r	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Title got changed from  AUTO  to AUTO -	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">AUTO </span>\n  <span class="black--text green lighten-4 px-2">AUTO -</span>	2023-03-10 18:56:10.013281+00	2023-03-10 18:56:10.013281+00
adt_jmma8w077kvq0a	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	1 updated in NoticeOfDeviation	\N	2023-03-10 18:56:45.338471+00	2023-03-10 18:56:45.338471+00
adt_ws0t56i6wtif0a	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	1 updated in NoticeOfDeviation	\N	2023-03-10 19:31:53.885623+00	2023-03-10 19:31:53.885623+00
adt_fllwntc28xurs7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Title got changed from  3 to 	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">3</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-10 19:31:53.915458+00	2023-03-10 19:31:53.915458+00
adt_79n85i6nhub3b1	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	2	DATA	INSERT	\N	2 inserted into NoticeOfDeviation	\N	2023-03-10 19:33:24.327268+00	2023-03-10 19:33:24.327268+00
adt_p7bn9tj2v8emkl	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	3	DATA	INSERT	\N	3 inserted into NoticeOfDeviation	\N	2023-03-10 19:33:29.831934+00	2023-03-10 19:33:29.831934+00
adt_b3o7wfup3p906i	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column DeviationStart with alias DeviationStart from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:33:55.022069+00	2023-03-10 19:33:55.022069+00
adt_j6lric6nu49o6m	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	\N	DATA	DELETE	\N	undefined deleted from NoticeOfDeviation	\N	2023-03-10 19:34:01.64513+00	2023-03-10 19:34:01.64513+00
adt_cxwj7jutpstj2n	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	\N	DATA	DELETE	\N	undefined deleted from NoticeOfDeviation	\N	2023-03-10 19:34:03.145375+00	2023-03-10 19:34:03.145375+00
adt_vy5srsvqaemie9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	4	DATA	INSERT	\N	4 inserted into NoticeOfDeviation	\N	2023-03-10 19:34:05.475101+00	2023-03-10 19:34:05.475101+00
adt_fvgkt9524x8xhv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	1 updated in NoticeOfDeviation	\N	2023-03-10 19:34:10.873858+00	2023-03-10 19:34:10.873858+00
adt_x10x98tv0394ns	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Title got changed from   to 5435	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">5435</span>	2023-03-10 19:34:10.893679+00	2023-03-10 19:34:10.893679+00
adt_tspqrc85j7h7z2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	\N	DATA	DELETE	\N	undefined deleted from NoticeOfDeviation	\N	2023-03-10 19:34:15.392768+00	2023-03-10 19:34:15.392768+00
adt_16l9i2226d4e01	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	\N	DATA	DELETE	\N	undefined deleted from NoticeOfDeviation	\N	2023-03-10 19:34:16.87432+00	2023-03-10 19:34:16.87432+00
adt_xr7sgaqjg4q54y	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	INSERT	\N	5 inserted into NoticeOfDeviation	\N	2023-03-10 19:34:20.291113+00	2023-03-10 19:34:20.291113+00
adt_flzoi4ubmqxvcw	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Title got changed from  AUTO - to 	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">AUTO -</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-10 18:56:45.358873+00	2023-03-10 18:56:45.358873+00
adt_liegoy79p3mxm5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column DeviationStart with alias DeviationStart from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:57:47.758868+00	2023-03-10 18:57:47.758868+00
adt_v38437c3f42g48	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title with alias Title from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:58:03.310131+00	2023-03-10 18:58:03.310131+00
adt_8w605csuzrxm83	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title5 with alias title5 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:58:31.064745+00	2023-03-10 18:58:31.064745+00
adt_8vnnai37l3n5l1	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	1 updated in NoticeOfDeviation	\N	2023-03-10 18:58:34.369181+00	2023-03-10 18:58:34.369181+00
adt_pu2pc8oazbktj0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	1	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field DeviationStart got changed from  AUTO to AUTO -	<span class="">DeviationStart</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">AUTO</span>\n  <span class="black--text green lighten-4 px-2">AUTO -</span>	2023-03-10 18:58:34.397313+00	2023-03-10 18:58:34.397313+00
adt_va4ldj86qi0drl	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column DeviationStart with alias DeviationStart from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:59:15.734451+00	2023-03-10 18:59:15.734451+00
adt_vt6csmnylm666i	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title5 with alias title5 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:59:34.651309+00	2023-03-10 18:59:34.651309+00
adt_f73ztl5aoa56u2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Dev No. with alias Dev No. from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 18:59:59.496036+00	2023-03-10 18:59:59.496036+00
adt_9ze2yha3tqudwo	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Dev No. with alias Dev No. from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:00:16.701227+00	2023-03-10 19:00:16.701227+00
adt_nzxwibzs99s2eo	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:1] record in deviation	\N	2023-03-10 19:36:40.08534+00	2023-03-10 19:36:40.08534+00
adt_sswfk8bhnm0qa7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-10 19:37:07.860982+00	2023-03-10 19:37:07.860982+00
adt_lzhyyr4jq19lhb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Title got changed from  321 to 	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">321</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-10 19:37:07.884087+00	2023-03-10 19:37:07.884087+00
adt_2hhlzs352cx20f	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column title7 with alias title7 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:39:21.921664+00	2023-03-10 19:39:21.921664+00
adt_vl57x720n42i1m	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title7 with alias title7 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:39:30.013967+00	2023-03-10 19:39:30.013967+00
adt_66u866i628ovf7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Time with alias Time from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:39:46.183482+00	2023-03-10 19:39:46.183482+00
adt_9hzul08lytrbq0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-10 19:39:50.16077+00	2023-03-10 19:39:50.16077+00
adt_80sfpj3gi1jfag	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Date got changed from   to 2023-03-10	<span class="">Date</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">2023-03-10</span>	2023-03-10 19:39:50.17764+00	2023-03-10 19:39:50.17764+00
adt_dxmml8i0ya06tu	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Date with alias Date from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:40:09.191319+00	2023-03-10 19:40:09.191319+00
adt_6m5bgb2zw37f20	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Qty Affected or Duration with alias Qty Affected or Duration from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:40:32.617643+00	2023-03-10 19:40:32.617643+00
adt_foyv29ofpqddv9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column WO# with alias WO# from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:40:40.275165+00	2023-03-10 19:40:40.275165+00
adt_hgeb7w7sjnqnok	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Process Initiating Deviation with alias Process Initiating Deviation from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:41:16.284335+00	2023-03-10 19:41:16.284335+00
adt_i7wfb03w16x36e	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Machine No with alias Machine No from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:41:28.896064+00	2023-03-10 19:41:28.896064+00
adt_dy599ux7xgb598	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Dev Num with alias Dev Num from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:41:42.646074+00	2023-03-10 19:41:42.646074+00
adt_mxnvwu6syxh1t1	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	INSERT	\N	6 inserted into NoticeOfDeviation	\N	2023-03-10 19:41:59.191453+00	2023-03-10 19:41:59.191453+00
adt_ov5310gtdsqelx	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-10 19:42:03.551169+00	2023-03-10 19:42:03.551169+00
adt_ah4awiryn81om7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Title got changed from  2 to 	<span class="">Title</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">2</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-10 19:42:03.569204+00	2023-03-10 19:42:03.569204+00
adt_sr591ijdmu88js	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title with alias Title from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:43:03.974799+00	2023-03-10 19:43:03.974799+00
adt_4g9d3hwk6ovdja	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Deviation Initiated By with alias Deviation Initiated By from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:43:17.022965+00	2023-03-10 19:43:17.022965+00
adt_3l9cnkt40l4uq6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-10 19:43:44.68873+00	2023-03-10 19:43:44.68873+00
adt_5sx65mwn4t9v1s	ckwan@stackpole.com	::ffff:10.4.136.96	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	TABLE	CREATED	\N	created table nc_9j1b___Non-Conformance with alias Non-Conformance  	\N	2023-03-10 19:53:16.682756+00	2023-03-10 19:53:16.682756+00
adt_nw56suwzz16vo7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from   to CK	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">CK</span>	2023-03-10 19:43:44.726675+00	2023-03-10 19:43:44.726675+00
adt_3mqjnztbajsnum	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Deviation Initiated By with alias Deviation Initiated By from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:43:50.959398+00	2023-03-10 19:43:50.959398+00
adt_eastv4rnspfv15	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-10 19:43:54.796191+00	2023-03-10 19:43:54.796191+00
adt_tsjf8zsiv137fa	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from   to CK	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">CK</span>	2023-03-10 19:43:54.831402+00	2023-03-10 19:43:54.831402+00
adt_h93ecpl364updg	ckwan@stackpole.com	::ffff:10.4.136.96	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	TABLE	CREATED	\N	created table nc_9j1b___WorkCell with alias WorkCell  	\N	2023-03-10 19:46:28.514954+00	2023-03-10 19:46:28.514954+00
adt_od1asbqy4af55m	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title with alias Title from table nc_9j1b___WorkCell	\N	2023-03-10 19:46:37.937541+00	2023-03-10 19:46:37.937541+00
adt_0t10oo5xeu42ht	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	1	DATA	INSERT	\N	1 inserted into WorkCell	\N	2023-03-10 19:46:42.686975+00	2023-03-10 19:46:42.686975+00
adt_ue4zin3d881l26	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	2	DATA	INSERT	\N	2 inserted into WorkCell	\N	2023-03-10 19:46:46.022566+00	2023-03-10 19:46:46.022566+00
adt_qnzkm9fze7mky3	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	2	DATA	UPDATE	\N	2 updated in WorkCell	\N	2023-03-10 19:46:50.692556+00	2023-03-10 19:46:50.692556+00
adt_bg79agbpkkot3h	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	2	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from   to Bearing Assem	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">Bearing Assem</span>	2023-03-10 19:46:50.715419+00	2023-03-10 19:46:50.715419+00
adt_h2xoevl8n02wbj	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	2	DATA	UPDATE	\N	2 updated in WorkCell	\N	2023-03-10 19:46:51.212645+00	2023-03-10 19:46:51.212645+00
adt_zephl3lw51p0cc	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	2	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Bearing Asse to Bearing Assembly	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Bearing Asse</span>\n  <span class="black--text green lighten-4 px-2">Bearing Assembly</span>	2023-03-10 19:46:51.232676+00	2023-03-10 19:46:51.232676+00
adt_al1ubyg6cbijh5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	2	DATA	UPDATE	\N	2 updated in WorkCell	\N	2023-03-10 19:46:51.605221+00	2023-03-10 19:46:51.605221+00
adt_kwvef1wh3ud1zv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	2	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Bearing Assembly to Bearing Assembly	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Bearing Assembly</span>\n  <span class="black--text green lighten-4 px-2">Bearing Assembly</span>	2023-03-10 19:46:51.641596+00	2023-03-10 19:46:51.641596+00
adt_qbxthkexbl7p32	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	3	DATA	INSERT	\N	3 inserted into WorkCell	\N	2023-03-10 19:46:53.687176+00	2023-03-10 19:46:53.687176+00
adt_jg79lpe2m1k5b6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	3	DATA	UPDATE	\N	3 updated in WorkCell	\N	2023-03-10 19:46:54.050923+00	2023-03-10 19:46:54.050923+00
adt_n6pf1n2fg5u2jv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	3	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Blending to Blending	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Blending</span>\n  <span class="black--text green lighten-4 px-2">Blending</span>	2023-03-10 19:46:54.082729+00	2023-03-10 19:46:54.082729+00
adt_hzeh2slcwcmy96	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	4	DATA	INSERT	\N	4 inserted into WorkCell	\N	2023-03-10 19:46:56.288916+00	2023-03-10 19:46:56.288916+00
adt_al598iuaydf45l	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	4	DATA	UPDATE	\N	4 updated in WorkCell	\N	2023-03-10 19:46:56.641375+00	2023-03-10 19:46:56.641375+00
adt_wzpb9kkwwqibcd	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	4	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Burnishing to Burnishing	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Burnishing</span>\n  <span class="black--text green lighten-4 px-2">Burnishing</span>	2023-03-10 19:46:56.669589+00	2023-03-10 19:46:56.669589+00
adt_52w4bdp4gpalrt	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	5	DATA	INSERT	\N	5 inserted into WorkCell	\N	2023-03-10 19:46:58.975084+00	2023-03-10 19:46:58.975084+00
adt_64mz0a1qghpl06	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	5	DATA	UPDATE	\N	5 updated in WorkCell	\N	2023-03-10 19:46:59.407962+00	2023-03-10 19:46:59.407962+00
adt_6gmszwsbazk5kd	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	5	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Compact to Compact	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Compact</span>\n  <span class="black--text green lighten-4 px-2">Compact</span>	2023-03-10 19:46:59.435224+00	2023-03-10 19:46:59.435224+00
adt_o22hkwr4sy14xz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	6	DATA	INSERT	\N	6 inserted into WorkCell	\N	2023-03-10 19:47:02.244196+00	2023-03-10 19:47:02.244196+00
adt_sr8hoiarpltfik	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	6	DATA	UPDATE	\N	6 updated in WorkCell	\N	2023-03-10 19:47:02.402681+00	2023-03-10 19:47:02.402681+00
adt_zj6g5jeyor11gv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	6	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Coining/Sizing to Coining/Sizing	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Coining/Sizing</span>\n  <span class="black--text green lighten-4 px-2">Coining/Sizing</span>	2023-03-10 19:47:02.434656+00	2023-03-10 19:47:02.434656+00
adt_r4tovi8k0eirhd	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	7	DATA	INSERT	\N	7 inserted into WorkCell	\N	2023-03-10 19:47:04.460462+00	2023-03-10 19:47:04.460462+00
adt_eyk4vpgr6u1idt	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	7	DATA	UPDATE	\N	7 updated in WorkCell	\N	2023-03-10 19:47:04.831805+00	2023-03-10 19:47:04.831805+00
adt_n9bd66d1up9dm9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Description of Non Conformance with alias Description of Non Conformance from table nc_9j1b___Non-Conformance	\N	2023-03-10 19:54:10.987386+00	2023-03-10 19:54:10.987386+00
adt_epvarb07n2x4uv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	7	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Deburr to Deburr	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Deburr</span>\n  <span class="black--text green lighten-4 px-2">Deburr</span>	2023-03-10 19:47:04.864497+00	2023-03-10 19:47:04.864497+00
adt_nsbd81wysdyflf	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	8	DATA	INSERT	\N	8 inserted into WorkCell	\N	2023-03-10 19:47:06.839912+00	2023-03-10 19:47:06.839912+00
adt_t138bjenxkjfmz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	8	DATA	UPDATE	\N	8 updated in WorkCell	\N	2023-03-10 19:47:07.190005+00	2023-03-10 19:47:07.190005+00
adt_ldzes30v46w4p4	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	8	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Delube to Delube	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Delube</span>\n  <span class="black--text green lighten-4 px-2">Delube</span>	2023-03-10 19:47:07.210928+00	2023-03-10 19:47:07.210928+00
adt_vqjbygbdkd4isb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	9	DATA	INSERT	\N	9 inserted into WorkCell	\N	2023-03-10 19:47:09.794736+00	2023-03-10 19:47:09.794736+00
adt_eytg7u47z238ev	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	9	DATA	UPDATE	\N	9 updated in WorkCell	\N	2023-03-10 19:47:09.977121+00	2023-03-10 19:47:09.977121+00
adt_rqiiseqr4b3oco	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	9	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Densification to Densification	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Densification</span>\n  <span class="black--text green lighten-4 px-2">Densification</span>	2023-03-10 19:47:10.004161+00	2023-03-10 19:47:10.004161+00
adt_4gi718hdpl7xhz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	10	DATA	INSERT	\N	10 inserted into WorkCell	\N	2023-03-10 19:47:13.542861+00	2023-03-10 19:47:13.542861+00
adt_p0bceylouti1e5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	11	DATA	INSERT	\N	11 inserted into WorkCell	\N	2023-03-10 19:47:17.408106+00	2023-03-10 19:47:17.408106+00
adt_0ifi7t708bcyv9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	11	DATA	UPDATE	\N	11 updated in WorkCell	\N	2023-03-10 19:47:18.781782+00	2023-03-10 19:47:18.781782+00
adt_orcf6odasocotg	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	27	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Toothrool to Toothroll	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Toothrool</span>\n  <span class="black--text green lighten-4 px-2">Toothroll</span>	2023-03-10 19:48:07.158422+00	2023-03-10 19:48:07.158422+00
adt_alrb47c94oc1vv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	27	DATA	UPDATE	\N	27 updated in WorkCell	\N	2023-03-10 19:48:07.427788+00	2023-03-10 19:48:07.427788+00
adt_5nyz07mjnihp58	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	27	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Toothroll to Toothroll	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Toothroll</span>\n  <span class="black--text green lighten-4 px-2">Toothroll</span>	2023-03-10 19:48:07.458722+00	2023-03-10 19:48:07.458722+00
adt_r8ruphz6et1cop	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	28	DATA	INSERT	\N	28 inserted into WorkCell	\N	2023-03-10 19:48:09.531974+00	2023-03-10 19:48:09.531974+00
adt_5r1zqi9azw39z6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	28	DATA	UPDATE	\N	28 updated in WorkCell	\N	2023-03-10 19:48:09.873407+00	2023-03-10 19:48:09.873407+00
adt_sgxi85vmug5pon	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	28	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Turning to Turning	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Turning</span>\n  <span class="black--text green lighten-4 px-2">Turning</span>	2023-03-10 19:48:09.889816+00	2023-03-10 19:48:09.889816+00
adt_dktxcz0u0nlv33	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	29	DATA	INSERT	\N	29 inserted into WorkCell	\N	2023-03-10 19:48:10.960527+00	2023-03-10 19:48:10.960527+00
adt_btikrs2rkv5hh9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	29	DATA	UPDATE	\N	29 updated in WorkCell	\N	2023-03-10 19:48:12.015182+00	2023-03-10 19:48:12.015182+00
adt_9gsm8z2njxpq1b	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	29	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Vision  to Vision System	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Vision </span>\n  <span class="black--text green lighten-4 px-2">Vision System</span>	2023-03-10 19:48:12.031732+00	2023-03-10 19:48:12.031732+00
adt_op7ozp05c57t4d	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	29	DATA	UPDATE	\N	29 updated in WorkCell	\N	2023-03-10 19:48:12.270526+00	2023-03-10 19:48:12.270526+00
adt_brfz036529y0fj	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	29	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Vision System to Vision System	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Vision System</span>\n  <span class="black--text green lighten-4 px-2">Vision System</span>	2023-03-10 19:48:12.292488+00	2023-03-10 19:48:12.292488+00
adt_uqjr2o656uiw7q	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	30	DATA	INSERT	\N	30 inserted into WorkCell	\N	2023-03-10 19:48:14.804105+00	2023-03-10 19:48:14.804105+00
adt_gbpwa5b3ux1ei4	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	30	DATA	UPDATE	\N	30 updated in WorkCell	\N	2023-03-10 19:48:15.776978+00	2023-03-10 19:48:15.776978+00
adt_0m616p3wx2r3d0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	30	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Wash/Rust  to Wash/Rust In	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Wash/Rust </span>\n  <span class="black--text green lighten-4 px-2">Wash/Rust In</span>	2023-03-10 19:48:15.804213+00	2023-03-10 19:48:15.804213+00
adt_9b5m98u46lmxa5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	30	DATA	UPDATE	\N	30 updated in WorkCell	\N	2023-03-10 19:48:17.096736+00	2023-03-10 19:48:17.096736+00
adt_r3d1qjo3vnfx4v	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	30	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Wash/Rust In to Wash/Rust Inhibitor	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Wash/Rust In</span>\n  <span class="black--text green lighten-4 px-2">Wash/Rust Inhibitor</span>	2023-03-10 19:48:17.114624+00	2023-03-10 19:48:17.114624+00
adt_lropmh1tk3ryyh	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	11	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Di to Drilling	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Di</span>\n  <span class="black--text green lighten-4 px-2">Drilling</span>	2023-03-10 19:47:18.807899+00	2023-03-10 19:47:18.807899+00
adt_7t3rj45kg5g4o6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	11	DATA	UPDATE	\N	11 updated in WorkCell	\N	2023-03-10 19:47:19.065623+00	2023-03-10 19:47:19.065623+00
adt_seo7mzkz5g2d9g	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	11	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Drilling to Drilling	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Drilling</span>\n  <span class="black--text green lighten-4 px-2">Drilling</span>	2023-03-10 19:47:19.092216+00	2023-03-10 19:47:19.092216+00
adt_dz5i3vc9u6tkyk	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	12	DATA	INSERT	\N	12 inserted into WorkCell	\N	2023-03-10 19:47:21.62698+00	2023-03-10 19:47:21.62698+00
adt_ilbhh5lld8utg7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	12	DATA	UPDATE	\N	12 updated in WorkCell	\N	2023-03-10 19:47:22.644409+00	2023-03-10 19:47:22.644409+00
adt_3k6rhk45mgyw1g	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	12	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Final Inspect/  to Final Inspect/Argo	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Final Inspect/ </span>\n  <span class="black--text green lighten-4 px-2">Final Inspect/Argo</span>	2023-03-10 19:47:22.658875+00	2023-03-10 19:47:22.658875+00
adt_a2frgbkp01e8ml	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	12	DATA	UPDATE	\N	12 updated in WorkCell	\N	2023-03-10 19:47:22.902455+00	2023-03-10 19:47:22.902455+00
adt_b4k4z6m8058ibo	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	12	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Final Inspect/Argo to Final Inspect/Argo	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Final Inspect/Argo</span>\n  <span class="black--text green lighten-4 px-2">Final Inspect/Argo</span>	2023-03-10 19:47:22.928088+00	2023-03-10 19:47:22.928088+00
adt_avpl584d55p9wg	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	13	DATA	INSERT	\N	13 inserted into WorkCell	\N	2023-03-10 19:47:25.429861+00	2023-03-10 19:47:25.429861+00
adt_dey2lw3u6slmpd	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	14	DATA	INSERT	\N	14 inserted into WorkCell	\N	2023-03-10 19:47:27.469502+00	2023-03-10 19:47:27.469502+00
adt_mvvqybwgf1tabg	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	15	DATA	INSERT	\N	15 inserted into WorkCell	\N	2023-03-10 19:47:30.376111+00	2023-03-10 19:47:30.376111+00
adt_g86zqzawljp5aq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	15	DATA	UPDATE	\N	15 updated in WorkCell	\N	2023-03-10 19:47:31.978567+00	2023-03-10 19:47:31.978567+00
adt_y2ighmp94wmefp	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	15	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  H to Hard Turning	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">H</span>\n  <span class="black--text green lighten-4 px-2">Hard Turning</span>	2023-03-10 19:47:31.997242+00	2023-03-10 19:47:31.997242+00
adt_lv8vv5nqn1vc0t	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	15	DATA	UPDATE	\N	15 updated in WorkCell	\N	2023-03-10 19:47:32.313937+00	2023-03-10 19:47:32.313937+00
adt_mmz5x9gkt6hcd6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	15	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Hard Turning to Hard Turning	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Hard Turning</span>\n  <span class="black--text green lighten-4 px-2">Hard Turning</span>	2023-03-10 19:47:32.339767+00	2023-03-10 19:47:32.339767+00
adt_2u92p7lorrr883	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	16	DATA	INSERT	\N	16 inserted into WorkCell	\N	2023-03-10 19:47:33.524312+00	2023-03-10 19:47:33.524312+00
adt_6paholdpxbveyk	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	16	DATA	UPDATE	\N	16 updated in WorkCell	\N	2023-03-10 19:47:33.846561+00	2023-03-10 19:47:33.846561+00
adt_554kzpg5kloemo	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	16	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Heat Treat to Heat Treat	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Heat Treat</span>\n  <span class="black--text green lighten-4 px-2">Heat Treat</span>	2023-03-10 19:47:33.865063+00	2023-03-10 19:47:33.865063+00
adt_cubdkrv18duktb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	17	DATA	INSERT	\N	17 inserted into WorkCell	\N	2023-03-10 19:47:34.5054+00	2023-03-10 19:47:34.5054+00
adt_u6fximcjn1vc5p	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	17	DATA	UPDATE	\N	17 updated in WorkCell	\N	2023-03-10 19:47:34.910392+00	2023-03-10 19:47:34.910392+00
adt_dja6r2jf0r6vp0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	17	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Hobbingh to Hobbingh	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Hobbingh</span>\n  <span class="black--text green lighten-4 px-2">Hobbingh</span>	2023-03-10 19:47:34.947696+00	2023-03-10 19:47:34.947696+00
adt_tft8fr9ki33ie2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	17	DATA	UPDATE	\N	17 updated in WorkCell	\N	2023-03-10 19:47:37.403289+00	2023-03-10 19:47:37.403289+00
adt_bduztufn0wykfo	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	17	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Hobbingh to Hobbing	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Hobbingh</span>\n  <span class="black--text green lighten-4 px-2">Hobbing</span>	2023-03-10 19:47:37.435627+00	2023-03-10 19:47:37.435627+00
adt_n50odz9ep9ogi7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	18	DATA	INSERT	\N	18 inserted into WorkCell	\N	2023-03-10 19:47:41.999235+00	2023-03-10 19:47:41.999235+00
adt_i71cictaiv888g	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	19	DATA	INSERT	\N	19 inserted into WorkCell	\N	2023-03-10 19:47:44.407615+00	2023-03-10 19:47:44.407615+00
adt_w96qbnqbd205rj	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	19	DATA	UPDATE	\N	19 updated in WorkCell	\N	2023-03-10 19:47:45.323404+00	2023-03-10 19:47:45.323404+00
adt_a9uoc8zxqq8g8i	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	19	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Laser  to Laser Marking	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Laser </span>\n  <span class="black--text green lighten-4 px-2">Laser Marking</span>	2023-03-10 19:47:45.343118+00	2023-03-10 19:47:45.343118+00
adt_r0hafl3wpj7i4a	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	19	DATA	UPDATE	\N	19 updated in WorkCell	\N	2023-03-10 19:47:45.640239+00	2023-03-10 19:47:45.640239+00
adt_esjinaahng4juz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	\N	DATA	BULK_UPDATE	\N	0 records bulk updated in NoticeOfDeviation	\N	2023-03-10 19:57:46.807077+00	2023-03-10 19:57:46.807077+00
adt_4lkwbte5ah0h1e	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	19	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Laser Marking to Laser Marking	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Laser Marking</span>\n  <span class="black--text green lighten-4 px-2">Laser Marking</span>	2023-03-10 19:47:45.670232+00	2023-03-10 19:47:45.670232+00
adt_b84ivoluo0ebwm	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	20	DATA	INSERT	\N	20 inserted into WorkCell	\N	2023-03-10 19:47:47.596601+00	2023-03-10 19:47:47.596601+00
adt_z2nsj2rvjhnvzf	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	20	DATA	UPDATE	\N	20 updated in WorkCell	\N	2023-03-10 19:47:48.57243+00	2023-03-10 19:47:48.57243+00
adt_2wxkh7xs72kbvt	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	20	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Mil to Milling	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Mil</span>\n  <span class="black--text green lighten-4 px-2">Milling</span>	2023-03-10 19:47:48.591808+00	2023-03-10 19:47:48.591808+00
adt_wb2pb041a1r4du	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	21	DATA	INSERT	\N	21 inserted into WorkCell	\N	2023-03-10 19:47:50.380039+00	2023-03-10 19:47:50.380039+00
adt_vhyx8oiu4xs6ju	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	21	DATA	UPDATE	\N	21 updated in WorkCell	\N	2023-03-10 19:47:50.646049+00	2023-03-10 19:47:50.646049+00
adt_me5nzdrbzte4zp	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	21	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  NDT System to NDT System	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">NDT System</span>\n  <span class="black--text green lighten-4 px-2">NDT System</span>	2023-03-10 19:47:50.666283+00	2023-03-10 19:47:50.666283+00
adt_by536imqdayjyj	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	22	DATA	INSERT	\N	22 inserted into WorkCell	\N	2023-03-10 19:47:52.75017+00	2023-03-10 19:47:52.75017+00
adt_mok4ns9j0jr84n	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	23	DATA	INSERT	\N	23 inserted into WorkCell	\N	2023-03-10 19:47:54.887506+00	2023-03-10 19:47:54.887506+00
adt_fr5zpp361abook	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	23	DATA	UPDATE	\N	23 updated in WorkCell	\N	2023-03-10 19:47:55.013177+00	2023-03-10 19:47:55.013177+00
adt_lzlkz0oszhl9p0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	23	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Pre-Turn to Pre-Turn	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Pre-Turn</span>\n  <span class="black--text green lighten-4 px-2">Pre-Turn</span>	2023-03-10 19:47:55.031368+00	2023-03-10 19:47:55.031368+00
adt_g01gesveuhdr5i	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	24	DATA	INSERT	\N	24 inserted into WorkCell	\N	2023-03-10 19:47:57.684198+00	2023-03-10 19:47:57.684198+00
adt_l8ay45auu2berx	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	24	DATA	UPDATE	\N	24 updated in WorkCell	\N	2023-03-10 19:47:57.926904+00	2023-03-10 19:47:57.926904+00
adt_5ff2vips9g0glr	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	24	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Seal Assembly to Seal Assembly	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Seal Assembly</span>\n  <span class="black--text green lighten-4 px-2">Seal Assembly</span>	2023-03-10 19:47:57.965491+00	2023-03-10 19:47:57.965491+00
adt_qkvfdtdsfebtvw	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	25	DATA	INSERT	\N	25 inserted into WorkCell	\N	2023-03-10 19:47:59.471631+00	2023-03-10 19:47:59.471631+00
adt_4v9vhq1evunvty	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	25	DATA	UPDATE	\N	25 updated in WorkCell	\N	2023-03-10 19:47:59.852351+00	2023-03-10 19:47:59.852351+00
adt_jyrn8ai06n1ppo	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	25	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Sinter to Sinter	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Sinter</span>\n  <span class="black--text green lighten-4 px-2">Sinter</span>	2023-03-10 19:47:59.904887+00	2023-03-10 19:47:59.904887+00
adt_4e6atwcsz7dpqk	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	26	DATA	INSERT	\N	26 inserted into WorkCell	\N	2023-03-10 19:48:00.696938+00	2023-03-10 19:48:00.696938+00
adt_n2y8ay47a22m9j	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	26	DATA	UPDATE	\N	26 updated in WorkCell	\N	2023-03-10 19:48:02.738803+00	2023-03-10 19:48:02.738803+00
adt_gofupthhm399qs	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	26	DATA	UPDATE	\N	Table nc_9j1b___WorkCell : field Operations got changed from  Soft  to Soft Turn 1,2,3	<span class="">Operations</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Soft </span>\n  <span class="black--text green lighten-4 px-2">Soft Turn 1,2,3</span>	2023-03-10 19:48:02.771639+00	2023-03-10 19:48:02.771639+00
adt_lv9rqgapkahg89	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	27	DATA	INSERT	\N	27 inserted into WorkCell	\N	2023-03-10 19:48:06.103111+00	2023-03-10 19:48:06.103111+00
adt_u0hakyklva7an6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	27	DATA	UPDATE	\N	27 updated in WorkCell	\N	2023-03-10 19:48:07.136793+00	2023-03-10 19:48:07.136793+00
adt_j8kwoqjflad6hu	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column RepeatDev with alias RepeatDev from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:49:11.791909+00	2023-03-10 19:49:11.791909+00
adt_g68oil9ulb0bwa	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column RepeatDev with alias RepeatDev from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:49:22.478826+00	2023-03-10 19:49:22.478826+00
adt_h6ez2zeuocqjtg	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Reason for Deviation with alias Reason for Deviation from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:49:48.268563+00	2023-03-10 19:49:48.268563+00
adt_tbkirf3714vq6m	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Deviation No with alias Deviation No from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:50:47.572092+00	2023-03-10 19:50:47.572092+00
adt_j741bh3z38t68e	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	INSERT	\N	7 inserted into NoticeOfDeviation	\N	2023-03-10 19:50:52.932381+00	2023-03-10 19:50:52.932381+00
adt_x9y30hq60hgmg5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-10 19:50:53.235384+00	2023-03-10 19:50:53.235384+00
adt_7xwv9wfn1264ry	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from  Ck to Ck	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Ck</span>\n  <span class="black--text green lighten-4 px-2">Ck</span>	2023-03-10 19:50:53.261315+00	2023-03-10 19:50:53.261315+00
adt_1lkk9p6ojwwl0c	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Enhanced Inspection Requirements with alias Enhanced Inspection Requirements from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:52:19.604627+00	2023-03-10 19:52:19.604627+00
adt_1is4f1xz941ujn	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Specification/Standard with alias Specification/Standard from table nc_9j1b___Non-Conformance	\N	2023-03-10 19:54:29.687272+00	2023-03-10 19:54:29.687272+00
adt_8q2fqenvi1fc80	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Actual with alias Actual from table nc_9j1b___Non-Conformance	\N	2023-03-10 19:54:39.348634+00	2023-03-10 19:54:39.348634+00
adt_r0xfgm5odcskt6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title with alias Title from table nc_9j1b___Non-Conformance	\N	2023-03-10 19:54:57.543551+00	2023-03-10 19:54:57.543551+00
adt_3jlmj3rfjrcowq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	1	DATA	INSERT	\N	1 inserted into Non-Conformance	\N	2023-03-10 19:55:17.720461+00	2023-03-10 19:55:17.720461+00
adt_w8fydup9l5qvwi	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	1	DATA	UPDATE	\N	1 updated in Non-Conformance	\N	2023-03-10 19:55:21.351535+00	2023-03-10 19:55:21.351535+00
adt_k7u56waixkysyw	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	1	DATA	UPDATE	\N	Table nc_9j1b___Non-Conformance : field Description of Non Conformance got changed from   to Test	<span class="">Description of Non Conformance</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">Test</span>	2023-03-10 19:55:21.37909+00	2023-03-10 19:55:21.37909+00
adt_l6vq104q2j9bnm	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	1	DATA	UPDATE	\N	1 updated in Non-Conformance	\N	2023-03-10 19:55:23.231429+00	2023-03-10 19:55:23.231429+00
adt_96kiq2zj8iijqn	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	1	DATA	UPDATE	\N	Table nc_9j1b___Non-Conformance : field Description of Non Conformance got changed from  Test to Testing	<span class="">Description of Non Conformance</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Test</span>\n  <span class="black--text green lighten-4 px-2">Testing</span>	2023-03-10 19:55:23.258364+00	2023-03-10 19:55:23.258364+00
adt_otvdyedq12r2ko	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column title16 with alias title16 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:56:20.571889+00	2023-03-10 19:56:20.571889+00
adt_p90g7yebymiy04	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-10 19:56:25.486514+00	2023-03-10 19:56:25.486514+00
adt_3dik17pizzjyvr	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field title16 got changed from   to sda	<span class="">title16</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">sda</span>	2023-03-10 19:56:25.521162+00	2023-03-10 19:56:25.521162+00
adt_c9b5bzvjr2gggo	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-10 19:56:26.75262+00	2023-03-10 19:56:26.75262+00
adt_uykqpw43sfwik5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field title16 got changed from  sda to 	<span class="">title16</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">sda</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-10 19:56:26.769482+00	2023-03-10 19:56:26.769482+00
adt_g62cd0mv8wpduw	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	\N	DATA	BULK_UPDATE	\N	0 records bulk updated in NoticeOfDeviation	\N	2023-03-10 19:57:46.801776+00	2023-03-10 19:57:46.801776+00
adt_1jf2e14hm2yg49	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	\N	DATA	BULK_UPDATE	\N	0 records bulk updated in NoticeOfDeviation	\N	2023-03-10 19:57:46.812364+00	2023-03-10 19:57:46.812364+00
adt_syntrxecnqe7qa	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title16 with alias title16 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:57:46.820685+00	2023-03-10 19:57:46.820685+00
adt_z045bniyq26xgb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column title16 with alias title16 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:58:14.980693+00	2023-03-10 19:58:14.980693+00
adt_hr2g6nexkjil9b	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Affected Operation with alias Affected Operation from table nc_9j1b___NoticeOfDeviation	\N	2023-03-10 19:58:51.624478+00	2023-03-10 19:58:51.624478+00
adt_39bbveqfb4w89c	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:5] record in NoticeOfDeviation	\N	2023-03-10 19:58:58.446614+00	2023-03-10 19:58:58.446614+00
adt_9g262v6qxqfixn	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	LINK_RECORD	\N	Record [id:4] record linked with record [id:5] record in NoticeOfDeviation	\N	2023-03-10 19:59:03.134435+00	2023-03-10 19:59:03.134435+00
adt_z37tczzh28bhnl	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UNLINK_RECORD	\N	Record [id:2] record unlinked with record [id:5] record in NoticeOfDeviation	\N	2023-03-10 19:59:04.904113+00	2023-03-10 19:59:04.904113+00
adt_lbyzigkzvuuiba	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UNLINK_RECORD	\N	Record [id:4] record unlinked with record [id:5] record in NoticeOfDeviation	\N	2023-03-10 19:59:05.943024+00	2023-03-10 19:59:05.943024+00
adt_xba0ko70id8bvl	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	8	DATA	LINK_RECORD	\N	Record [id:6] record linked with record [id:8] record in WorkCell	\N	2023-03-10 20:00:19.853824+00	2023-03-10 20:00:19.853824+00
adt_s3hzd9qyuzn9i4	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	4	DATA	LINK_RECORD	\N	Record [id:7] record linked with record [id:4] record in WorkCell	\N	2023-03-10 20:00:22.291816+00	2023-03-10 20:00:22.291816+00
adt_ga4zzsqxgyzaln	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	4	DATA	LINK_RECORD	\N	Record [id:5] record linked with record [id:4] record in WorkCell	\N	2023-03-10 20:00:25.746812+00	2023-03-10 20:00:25.746812+00
adt_btrm2tno1f7hmw	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	4	DATA	UNLINK_RECORD	\N	Record [id:5] record unlinked with record [id:4] record in WorkCell	\N	2023-03-10 20:00:27.029672+00	2023-03-10 20:00:27.029672+00
adt_4yzt6lsip115hl	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_r5femfp1sims4p	8	DATA	UNLINK_RECORD	\N	Record [id:6] record unlinked with record [id:8] record in WorkCell	\N	2023-03-10 20:00:28.925155+00	2023-03-10 20:00:28.925155+00
adt_a6lan4bnc8x5pp	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	LINK_RECORD	\N	Record [id:1] record linked with record [id:5] record in NoticeOfDeviation	\N	2023-03-10 20:16:39.865845+00	2023-03-10 20:16:39.865845+00
adt_pludes9zo0167g	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:5] record in NoticeOfDeviation	\N	2023-03-10 20:16:42.790392+00	2023-03-10 20:16:42.790392+00
adt_pjn999smungwps	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UNLINK_RECORD	\N	Record [id:1] record unlinked with record [id:5] record in NoticeOfDeviation	\N	2023-03-10 20:16:45.574298+00	2023-03-10 20:16:45.574298+00
adt_d1dybu8u4ij18j	dgleba@stackpole.com	::ffff:10.4.12.34	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UNLINK_RECORD	\N	Record [id:3] record unlinked with record [id:5] record in NoticeOfDeviation	\N	2023-03-10 20:16:46.525391+00	2023-03-10 20:16:46.525391+00
adt_7c2q4s3st57mii	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	2	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:2] record in deviation	\N	2023-03-13 10:58:01.97732+00	2023-03-13 10:58:01.97732+00
adt_vo0bbvawrgyxj0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	2	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:2] record in deviation	\N	2023-03-13 10:58:05.109996+00	2023-03-13 10:58:05.109996+00
adt_zx8vusz07qxav9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:1] record in deviation	\N	2023-03-13 10:58:09.992089+00	2023-03-13 10:58:09.992089+00
adt_om7tqfb6r7wm7h	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:1] record in deviation	\N	2023-03-13 10:58:16.154506+00	2023-03-13 10:58:16.154506+00
adt_mdl7sv75zvhmyd	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	3	DATA	UNLINK_RECORD	\N	Record [id:1] record unlinked with record [id:3] record in work_cell	\N	2023-03-13 10:58:23.371596+00	2023-03-13 10:58:23.371596+00
adt_aa9rzlkw2wlekq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	2	DATA	UNLINK_RECORD	\N	Record [id:3] record unlinked with record [id:2] record in deviation	\N	2023-03-13 10:58:34.134767+00	2023-03-13 10:58:34.134767+00
adt_ec30ilwngwk5j7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:1] record in deviation	\N	2023-03-13 10:58:39.501518+00	2023-03-13 10:58:39.501518+00
adt_d7b66ioe4oyzuh	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:1] record in deviation	\N	2023-03-13 10:58:45.665119+00	2023-03-13 10:58:45.665119+00
adt_cb9vk2vxnbwag5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	3	DATA	UNLINK_RECORD	\N	Record [id:1] record unlinked with record [id:3] record in work_cell	\N	2023-03-13 10:58:55.297577+00	2023-03-13 10:58:55.297577+00
adt_2ub5e20hdoiiv3	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	1	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:1] record in deviation	\N	2023-03-13 10:59:07.455496+00	2023-03-13 10:59:07.455496+00
adt_aiucagao20uoes	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:7] record in NoticeOfDeviation	\N	2023-03-13 11:00:05.877634+00	2023-03-13 11:00:05.877634+00
adt_lbnzlslcszmq4y	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	LINK_RECORD	\N	Record [id:4] record linked with record [id:7] record in NoticeOfDeviation	\N	2023-03-13 11:00:08.909021+00	2023-03-13 11:00:08.909021+00
adt_0kctt5ppp7uulz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UNLINK_RECORD	\N	Record [id:3] record unlinked with record [id:7] record in NoticeOfDeviation	\N	2023-03-13 11:00:11.626149+00	2023-03-13 11:00:11.626149+00
adt_cnqm0tl7pcy8b3	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UNLINK_RECORD	\N	Record [id:4] record unlinked with record [id:7] record in NoticeOfDeviation	\N	2023-03-13 11:00:13.177934+00	2023-03-13 11:00:13.177934+00
adt_ex92ruzxedz92t	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Operations with alias Operations from table nc_9j1b___WorkCell	\N	2023-03-13 11:00:37.102314+00	2023-03-13 11:00:37.102314+00
adt_iq5bn37j2z7n4p	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column NoticeOfDeviation1 with alias NoticeOfDeviation1 from table nc_9j1b___WorkCell	\N	2023-03-13 11:01:28.754469+00	2023-03-13 11:01:28.754469+00
adt_jup62oghszp24s	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column null with alias NoticeOfDeviation from table nc_9j1b___WorkCell	\N	2023-03-13 11:01:37.826457+00	2023-03-13 11:01:37.826457+00
adt_fhc22izz6zzdku	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column null with alias NoticeOfDeviation1 from table nc_9j1b___WorkCell	\N	2023-03-13 11:01:45.141289+00	2023-03-13 11:01:45.141289+00
adt_2ld0g8i25p26rt	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:7] record in NoticeOfDeviation	\N	2023-03-13 11:01:55.457098+00	2023-03-13 11:01:55.457098+00
adt_edb3lz54zezdbh	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UNLINK_RECORD	\N	Record [id:3] record unlinked with record [id:7] record in NoticeOfDeviation	\N	2023-03-13 11:01:57.718829+00	2023-03-13 11:01:57.718829+00
adt_e9vzxfbnunjyxs	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 11:02:16.482538+00	2023-03-13 11:02:16.482538+00
adt_r4dsclhv9bjjkj	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field RepeatDev got changed from   to true	<span class="">RepeatDev</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 11:02:16.520388+00	2023-03-13 11:02:16.520388+00
adt_bygb97tgkxt9vb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 11:02:17.997923+00	2023-03-13 11:02:17.997923+00
adt_pgaurtpqui9dws	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field RepeatDev got changed from  true to 	<span class="">RepeatDev</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 11:02:18.037473+00	2023-03-13 11:02:18.037473+00
adt_mfvamuwbw4lbqg	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	8	DATA	INSERT	\N	8 inserted into NoticeOfDeviation	\N	2023-03-13 11:06:01.857482+00	2023-03-13 11:06:01.857482+00
adt_6fkbxewod443qs	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:08.7249+00	2023-03-13 11:06:08.7249+00
adt_c1zkswd50kffpo	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field WO# got changed from   to 0022	<span class="">WO#</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">0022</span>	2023-03-13 11:06:08.763603+00	2023-03-13 11:06:08.763603+00
adt_3sg5cfj753vqa9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:13.477212+00	2023-03-13 11:06:13.477212+00
adt_jb9joh1569q8j2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Qty Affected or Duration got changed from   to 2 Weeks	<span class="">Qty Affected or Duration</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">2 Weeks</span>	2023-03-13 11:06:13.507609+00	2023-03-13 11:06:13.507609+00
adt_pn0pnaxcmfq6x3	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:19.388291+00	2023-03-13 11:06:19.388291+00
adt_6j19w0yzf7ekbl	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from  Use manual gauge to inspect 100 to Use manual gauge to inspect 100%	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Use manual gauge to inspect 100</span>\n  <span class="black--text green lighten-4 px-2">Use manual gauge to inspect 100%</span>	2023-03-13 11:07:06.290763+00	2023-03-13 11:07:06.290763+00
adt_fcj42ssmq7mbp7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Process Initiating Deviation got changed from   to Auto Gaug	<span class="">Process Initiating Deviation</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">Auto Gaug</span>	2023-03-13 11:06:19.432934+00	2023-03-13 11:06:19.432934+00
adt_73kq5bih2rkul2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:19.998575+00	2023-03-13 11:06:19.998575+00
adt_c98ayfu2ft67ta	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Process Initiating Deviation got changed from  Auto Gau to Auto Gauge	<span class="">Process Initiating Deviation</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Auto Gau</span>\n  <span class="black--text green lighten-4 px-2">Auto Gauge</span>	2023-03-13 11:06:20.045531+00	2023-03-13 11:06:20.045531+00
adt_wxbtu2d72rxett	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:22.522343+00	2023-03-13 11:06:22.522343+00
adt_pvwmjtotfzsgbo	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Machine No got changed from   to 9211	<span class="">Machine No</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">9211</span>	2023-03-13 11:06:22.554501+00	2023-03-13 11:06:22.554501+00
adt_5bvyblxct2x4qu	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:34.376042+00	2023-03-13 11:06:34.376042+00
adt_jab3zv5lt72smi	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Reason for Deviation got changed from   to Gauge 	<span class="">Reason for Deviation</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">Gauge </span>	2023-03-13 11:06:34.422557+00	2023-03-13 11:06:34.422557+00
adt_tq94v0bbtq3pmu	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:38.152365+00	2023-03-13 11:06:38.152365+00
adt_wtr4srs7v5oz9j	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Reason for Deviation got changed from  Gauge  to Gauge down	<span class="">Reason for Deviation</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Gauge </span>\n  <span class="black--text green lighten-4 px-2">Gauge down</span>	2023-03-13 11:06:38.183727+00	2023-03-13 11:06:38.183727+00
adt_3t8vdwup4k9whz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:40.088027+00	2023-03-13 11:06:40.088027+00
adt_n5wcquadsamq68	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Reason for Deviation got changed from  Gauge down to Gauge down,	<span class="">Reason for Deviation</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Gauge down</span>\n  <span class="black--text green lighten-4 px-2">Gauge down,</span>	2023-03-13 11:06:40.12802+00	2023-03-13 11:06:40.12802+00
adt_8zmvxg37ib9n3a	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:40.79437+00	2023-03-13 11:06:40.79437+00
adt_ljgso1pd1c13fc	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Reason for Deviation got changed from  Gauge down, to Gauge down, 	<span class="">Reason for Deviation</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Gauge down,</span>\n  <span class="black--text green lighten-4 px-2">Gauge down, </span>	2023-03-13 11:06:40.822654+00	2023-03-13 11:06:40.822654+00
adt_fla0lztakpndns	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:42.645298+00	2023-03-13 11:06:42.645298+00
adt_un8tit33k8eidg	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Reason for Deviation got changed from  Gauge down,  to Gauge down	<span class="">Reason for Deviation</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Gauge down, </span>\n  <span class="black--text green lighten-4 px-2">Gauge down</span>	2023-03-13 11:06:42.670194+00	2023-03-13 11:06:42.670194+00
adt_pf3ztr5ky85f9x	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:46.398666+00	2023-03-13 11:06:46.398666+00
adt_8ff51usx9a8vr8	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from   to U	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">U</span>	2023-03-13 11:06:46.422719+00	2023-03-13 11:06:46.422719+00
adt_njvgamdenwrj5d	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:48.592821+00	2023-03-13 11:06:48.592821+00
adt_o7y7br179h5if3	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from  U to Used manual gauge	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">U</span>\n  <span class="black--text green lighten-4 px-2">Used manual gauge</span>	2023-03-13 11:06:48.619893+00	2023-03-13 11:06:48.619893+00
adt_f4le6gp37e2xbk	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:53.561979+00	2023-03-13 11:06:53.561979+00
adt_2ycdtibe7p6tlm	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from  Used manual gauge to 	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Used manual gauge</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 11:06:53.589401+00	2023-03-13 11:06:53.589401+00
adt_y6ee0qrfywm6mv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:56.673198+00	2023-03-13 11:06:56.673198+00
adt_zmqzrbksy2o610	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from   to Use manual g	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">Use manual g</span>	2023-03-13 11:06:56.710016+00	2023-03-13 11:06:56.710016+00
adt_kn07f0yychgzus	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:06:58.368065+00	2023-03-13 11:06:58.368065+00
adt_eg481han93mh3c	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from  Use manual  to Use manual gauge	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Use manual </span>\n  <span class="black--text green lighten-4 px-2">Use manual gauge</span>	2023-03-13 11:06:58.401015+00	2023-03-13 11:06:58.401015+00
adt_0mqu32ij891inm	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:07:00.173251+00	2023-03-13 11:07:00.173251+00
adt_gd1f59myxtxhvk	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from  Use manual gauge to Use manual gauge 	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Use manual gauge</span>\n  <span class="black--text green lighten-4 px-2">Use manual gauge </span>	2023-03-13 11:07:00.20421+00	2023-03-13 11:07:00.20421+00
adt_expaeo5l6o5qkl	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:07:01.417492+00	2023-03-13 11:07:01.417492+00
adt_71yhpkugtw5by6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from  Use manual gauge  to Use manual gauge to 	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Use manual gauge </span>\n  <span class="black--text green lighten-4 px-2">Use manual gauge to </span>	2023-03-13 11:07:01.439864+00	2023-03-13 11:07:01.439864+00
adt_bqp19k8ik8k06v	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:07:03.216332+00	2023-03-13 11:07:03.216332+00
adt_8depivuz6d0s4u	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from  Use manual gauge to  to Use manual gauge to inspect	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Use manual gauge to </span>\n  <span class="black--text green lighten-4 px-2">Use manual gauge to inspect</span>	2023-03-13 11:07:03.237983+00	2023-03-13 11:07:03.237983+00
adt_0wmm7wcvztp4la	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:07:05.187794+00	2023-03-13 11:07:05.187794+00
adt_qtemgx8jkno2sp	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from  Use manual gauge to inspect to Use manual gauge to inspect 100	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Use manual gauge to inspect</span>\n  <span class="black--text green lighten-4 px-2">Use manual gauge to inspect 100</span>	2023-03-13 11:07:05.210715+00	2023-03-13 11:07:05.210715+00
adt_r9mgtvof9i1unw	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:07:06.228953+00	2023-03-13 11:07:06.228953+00
adt_wpmqe8lsfcnk7i	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	LINK_RECORD	\N	Record [id:12] record linked with record [id:5] record in NoticeOfDeviation	\N	2023-03-13 11:07:20.277589+00	2023-03-13 11:07:20.277589+00
adt_99ct0xnl8bae7o	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column ENG Mgr Approval with alias ENG Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 11:08:28.306296+00	2023-03-13 11:08:28.306296+00
adt_wvvihqre9oa478	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Quality Mgr Approval with alias Quality Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 11:08:43.912146+00	2023-03-13 11:08:43.912146+00
adt_cffsq4tx3kcgt4	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column P ENG Review with alias P ENG Review from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 11:09:57.332968+00	2023-03-13 11:09:57.332968+00
adt_9droyi6l5z0h97	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Q ENG Review with alias Q ENG Review from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 11:10:09.781808+00	2023-03-13 11:10:09.781808+00
adt_bth8w6x36glhs8	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Approved Status with alias Approved Status from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 11:11:30.849427+00	2023-03-13 11:11:30.849427+00
adt_gftz365ovzsa9l	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:11:35.161189+00	2023-03-13 11:11:35.161189+00
adt_ftsxpu1qk67ww9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Approved Status got changed from   to true	<span class="">Approved Status</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 11:11:35.208281+00	2023-03-13 11:11:35.208281+00
adt_s4zl2qhpkne9sd	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:11:37.388131+00	2023-03-13 11:11:37.388131+00
adt_9udvb7k0yyp8l5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Approved Status got changed from  true to 	<span class="">Approved Status</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 11:11:37.429351+00	2023-03-13 11:11:37.429351+00
adt_mhp8fjp4y6y3v6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	LINK_RECORD	\N	Record [id:12] record linked with record [id:6] record in NoticeOfDeviation	\N	2023-03-13 11:23:42.026255+00	2023-03-13 11:23:42.026255+00
adt_aqa00346j80oxf	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 11:24:20.102024+00	2023-03-13 11:24:20.102024+00
adt_lewj38uwszb718	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Approved Status got changed from   to true	<span class="">Approved Status</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 11:24:20.127458+00	2023-03-13 11:24:20.127458+00
adt_uhf20kyk03q1ub	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Quality Mgr Approval with alias Quality Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 11:37:24.023433+00	2023-03-13 11:37:24.023433+00
adt_rbddjvahfgiq7y	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column ENG Mgr Approval with alias ENG Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 11:37:31.97997+00	2023-03-13 11:37:31.97997+00
adt_6lu6tgklj4beuf	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Quality Mgr Approval with alias Quality Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 11:37:52.349715+00	2023-03-13 11:37:52.349715+00
adt_9okerqydmnppaq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column ENG Mgr Approval with alias ENG Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 11:37:58.964526+00	2023-03-13 11:37:58.964526+00
adt_piss7rcxxnqo9j	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Quality Mgr Approval with alias Quality Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:07:37.650273+00	2023-03-13 12:07:37.650273+00
adt_l87ug2a5kfxaj1	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column ENG Mgr Approval with alias ENG Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:07:43.023123+00	2023-03-13 12:07:43.023123+00
adt_705f45os3b83w8	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column title23 with alias title23 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:08:34.57021+00	2023-03-13 12:08:34.57021+00
adt_3s65xxbhfgd8hf	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column QApproval with alias QApproval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:08:53.597022+00	2023-03-13 12:08:53.597022+00
adt_qk14zw75eun6sw	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column EApproval with alias EApproval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:09:01.155352+00	2023-03-13 12:09:01.155352+00
adt_1ru50xjl9n8myl	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title23 with alias title23 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:09:11.344157+00	2023-03-13 12:09:11.344157+00
adt_4tgt1rs66yr1lx	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column P ENG Review with alias P ENG Review from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:09:23.150286+00	2023-03-13 12:09:23.150286+00
adt_qok9za0erk1f7x	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column P ENG Review with alias P ENG Review from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:09:36.392592+00	2023-03-13 12:09:36.392592+00
adt_kg7ha6vv5pawgy	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Quality Mgr Approval with alias Quality Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:09:41.812264+00	2023-03-13 12:09:41.812264+00
adt_sn72kz2lc1yp68	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column ENG Mgr Approval with alias ENG Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:09:49.558274+00	2023-03-13 12:09:49.558274+00
adt_edt9imeh49619a	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:09:50.622989+00	2023-03-13 12:09:50.622989+00
adt_f82kt4phljexwt	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:09:50.652463+00	2023-03-13 12:09:50.652463+00
adt_0ignawuwaql8h9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:09:52.132132+00	2023-03-13 12:09:52.132132+00
adt_7bwmxc0xc0297n	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:09:52.161983+00	2023-03-13 12:09:52.161983+00
adt_rjqtmn7mlm87bh	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column title23 with alias title23 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:10:21.191279+00	2023-03-13 12:10:21.191279+00
adt_dibqrr1ltzyowp	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column Approved Status with alias Approved Status from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:10:26.425655+00	2023-03-13 12:10:26.425655+00
adt_7u7x1ml92b9u4g	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	INSERT	\N	9 inserted into NoticeOfDeviation	\N	2023-03-13 12:11:48.253956+00	2023-03-13 12:11:48.253956+00
adt_2yddoab6ekq75x	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column Date with alias Date from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:13:09.323961+00	2023-03-13 12:13:09.323961+00
adt_epk5n2ukhx81kb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column Time with alias Time from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:13:13.715624+00	2023-03-13 12:13:13.715624+00
adt_pchbw8cv883p6v	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:13:38.55594+00	2023-03-13 12:13:38.55594+00
adt_swo89b7b4gjas8	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field WO# got changed from   to 1298	<span class="">WO#</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">1298</span>	2023-03-13 12:13:38.577643+00	2023-03-13 12:13:38.577643+00
adt_l8ce7oymp57gaj	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:13:42.451526+00	2023-03-13 12:13:42.451526+00
adt_gdjnw84qhqm678	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Qty Affected or Duration got changed from   to 1 Wee	<span class="">Qty Affected or Duration</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">1 Wee</span>	2023-03-13 12:13:42.475479+00	2023-03-13 12:13:42.475479+00
adt_xgzo121pomsrt4	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:13:43.093456+00	2023-03-13 12:13:43.093456+00
adt_x830x2asqx7iiv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Qty Affected or Duration got changed from  1 Wee to 1 Week	<span class="">Qty Affected or Duration</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">1 Wee</span>\n  <span class="black--text green lighten-4 px-2">1 Week</span>	2023-03-13 12:13:43.123563+00	2023-03-13 12:13:43.123563+00
adt_4vv9s6h25o4f0c	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:13:48.821099+00	2023-03-13 12:13:48.821099+00
adt_ozuaa3firvd55u	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Process Initiating Deviation got changed from   to At	<span class="">Process Initiating Deviation</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">At</span>	2023-03-13 12:13:48.861102+00	2023-03-13 12:13:48.861102+00
adt_j6crrmwrkg8ws4	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:13:50.848845+00	2023-03-13 12:13:50.848845+00
adt_a1e5eipumbo1jq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	8	DATA	UPDATE	\N	8 updated in NoticeOfDeviation	\N	2023-03-13 12:15:46.60321+00	2023-03-13 12:15:46.60321+00
adt_27vktu9u4c5zhc	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Process Initiating Deviation got changed from  Ato to Auto Gauge	<span class="">Process Initiating Deviation</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Ato</span>\n  <span class="black--text green lighten-4 px-2">Auto Gauge</span>	2023-03-13 12:13:50.872303+00	2023-03-13 12:13:50.872303+00
adt_9mh1tufko10zoe	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:13:52.59944+00	2023-03-13 12:13:52.59944+00
adt_v7rwtegfw6fivk	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Machine No got changed from   to 9211	<span class="">Machine No</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">9211</span>	2023-03-13 12:13:52.620632+00	2023-03-13 12:13:52.620632+00
adt_80kn1m2kmfsast	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:13:54.627665+00	2023-03-13 12:13:54.627665+00
adt_2bbhgkwzyym4n5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Reason for Deviation got changed from   to Gauge down	<span class="">Reason for Deviation</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">Gauge down</span>	2023-03-13 12:13:54.660114+00	2023-03-13 12:13:54.660114+00
adt_qhqajmgnlsw47u	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:13:57.172876+00	2023-03-13 12:13:57.172876+00
adt_yoqkzuw5qc1knv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from   to Use Manual	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">Use Manual</span>	2023-03-13 12:13:57.205128+00	2023-03-13 12:13:57.205128+00
adt_izukpl50hczylq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:13:59.298145+00	2023-03-13 12:13:59.298145+00
adt_9tx5p547hyhiw2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from  Use Manual to Use Manual gauge to inspect 	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Use Manual</span>\n  <span class="black--text green lighten-4 px-2">Use Manual gauge to inspect </span>	2023-03-13 12:13:59.334887+00	2023-03-13 12:13:59.334887+00
adt_didwjet2z6uqz7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:14:00.212259+00	2023-03-13 12:14:00.212259+00
adt_0d7pkj8vt5fi83	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from  Use Manual gauge to inspect  to Use Manual gauge to inspect 100	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Use Manual gauge to inspect </span>\n  <span class="black--text green lighten-4 px-2">Use Manual gauge to inspect 100</span>	2023-03-13 12:14:00.23929+00	2023-03-13 12:14:00.23929+00
adt_xk4ticsjkrmp43	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:14:00.898519+00	2023-03-13 12:14:00.898519+00
adt_qwzg75qdaigz1z	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Enhanced Inspection Requirements got changed from  Use Manual gauge to inspect 100 to Use Manual gauge to inspect 100%	<span class="">Enhanced Inspection Requirements</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">Use Manual gauge to inspect 100</span>\n  <span class="black--text green lighten-4 px-2">Use Manual gauge to inspect 100%</span>	2023-03-13 12:14:00.930594+00	2023-03-13 12:14:00.930594+00
adt_5fv47m8qmehtsd	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:14:24.265132+00	2023-03-13 12:14:24.265132+00
adt_2q4k4nnvxpnu6a	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:14:24.292788+00	2023-03-13 12:14:24.292788+00
adt_v7ocie8u7x1nr4	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:14:24.733271+00	2023-03-13 12:14:24.733271+00
adt_lldenpykf2my58	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:14:24.759421+00	2023-03-13 12:14:24.759421+00
adt_p7cu823dqsrebe	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:14:26.567306+00	2023-03-13 12:14:26.567306+00
adt_xd5xsbcmq19aor	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:14:26.594478+00	2023-03-13 12:14:26.594478+00
adt_nx7ty054jbnxxy	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:14:27.81387+00	2023-03-13 12:14:27.81387+00
adt_viz4w9e5hk6ewh	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:14:27.840167+00	2023-03-13 12:14:27.840167+00
adt_wtiv8epji1ey1c	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:14:28.950165+00	2023-03-13 12:14:28.950165+00
adt_ais6m559wv0gp3	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:14:28.971812+00	2023-03-13 12:14:28.971812+00
adt_70coifcz2lkeqz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:14:29.911543+00	2023-03-13 12:14:29.911543+00
adt_gq0skgt9bl5esu	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:14:29.931413+00	2023-03-13 12:14:29.931413+00
adt_26nda7zvi6kxwk	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:14:41.398822+00	2023-03-13 12:14:41.398822+00
adt_refdttnzz4outo	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:14:41.432187+00	2023-03-13 12:14:41.432187+00
adt_5y99spjp4ptutu	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:14:43.479189+00	2023-03-13 12:14:43.479189+00
adt_uw1qltaahnsu2b	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:14:43.505548+00	2023-03-13 12:14:43.505548+00
adt_viddkqrbsnifh6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:14:44.175762+00	2023-03-13 12:14:44.175762+00
adt_cnlq1usmpjaj2n	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:14:44.197772+00	2023-03-13 12:14:44.197772+00
adt_qnzlej1lfxsune	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:14:45.1014+00	2023-03-13 12:14:45.1014+00
adt_pbnfhbwcgs1voq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:14:45.149679+00	2023-03-13 12:14:45.149679+00
adt_9dd4oz7eqk44pr	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:14:47.140161+00	2023-03-13 12:14:47.140161+00
adt_1prjjb3ocz2u5n	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:14:47.177478+00	2023-03-13 12:14:47.177478+00
adt_bbalajuq67hkxz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:14:48.660109+00	2023-03-13 12:14:48.660109+00
adt_rot04hbuv53e7q	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:14:48.683109+00	2023-03-13 12:14:48.683109+00
adt_3uzy0yr2bknixv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:14:49.513871+00	2023-03-13 12:14:49.513871+00
adt_plfrm8lb5pvg2l	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:14:49.534534+00	2023-03-13 12:14:49.534534+00
adt_ejz8s6qcodanaw	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:14:50.262009+00	2023-03-13 12:14:50.262009+00
adt_dphjgyzy096m80	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:14:50.301309+00	2023-03-13 12:14:50.301309+00
adt_xspagyfy46i75a	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:15:05.87792+00	2023-03-13 12:15:05.87792+00
adt_rj5abra6mh4kg0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:15:05.902568+00	2023-03-13 12:15:05.902568+00
adt_8y7tml6mrvvjb2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:15:06.962931+00	2023-03-13 12:15:06.962931+00
adt_c1j1pm1qn0cw5q	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:15:07.007853+00	2023-03-13 12:15:07.007853+00
adt_0770wngbwaf512	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:15:07.874658+00	2023-03-13 12:15:07.874658+00
adt_w95ibuns0bziyg	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:15:07.894978+00	2023-03-13 12:15:07.894978+00
adt_1x4bpqrct69dpd	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:15:08.896074+00	2023-03-13 12:15:08.896074+00
adt_694pvvvr4jqi7h	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:15:08.938501+00	2023-03-13 12:15:08.938501+00
adt_m1ijt55qm7zqau	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Approved? with alias Approved? from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:15:18.662296+00	2023-03-13 12:15:18.662296+00
adt_qe5inqwza4vfkq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Approved? with alias Approved? from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:15:34.911937+00	2023-03-13 12:15:34.911937+00
adt_3ycu85ty3kbmq7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:15:38.312195+00	2023-03-13 12:15:38.312195+00
adt_470737mtfm17wm	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:15:38.342382+00	2023-03-13 12:15:38.342382+00
adt_0y4ifnr5dlqkz9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:15:39.340848+00	2023-03-13 12:15:39.340848+00
adt_72qxzk0t5q7fqb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:15:39.387449+00	2023-03-13 12:15:39.387449+00
adt_qtfuxwshg4rcrd	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:15:41.40106+00	2023-03-13 12:15:41.40106+00
adt_vzefshgmdk53ze	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:15:41.420937+00	2023-03-13 12:15:41.420937+00
adt_goivpebqbrya2r	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:15:42.567921+00	2023-03-13 12:15:42.567921+00
adt_w3hr0rw8ebzhgm	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:15:42.589691+00	2023-03-13 12:15:42.589691+00
adt_1ikvw70a6varz3	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	8	DATA	UPDATE	\N	8 updated in NoticeOfDeviation	\N	2023-03-13 12:15:45.642662+00	2023-03-13 12:15:45.642662+00
adt_1p3rgfuuskdad0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	8	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:15:45.685642+00	2023-03-13 12:15:45.685642+00
adt_mpkzt0wnpxmm7j	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-04-25 02:56:51.882246+00	2023-04-25 02:56:51.882246+00
adt_opgqmokhyq6tu4	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	8	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:15:46.640545+00	2023-03-13 12:15:46.640545+00
adt_fc0dwfgxvi15u9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 12:15:47.891679+00	2023-03-13 12:15:47.891679+00
adt_lm46pgw5y06k5g	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:15:47.92163+00	2023-03-13 12:15:47.92163+00
adt_69ystp6hjoc3ph	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 12:15:48.650349+00	2023-03-13 12:15:48.650349+00
adt_z9gx07ujiymkhx	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:15:48.681098+00	2023-03-13 12:15:48.681098+00
adt_jb9hspcfq1r7l1	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 12:15:49.192788+00	2023-03-13 12:15:49.192788+00
adt_a0db6g2d4z24ha	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:15:49.215515+00	2023-03-13 12:15:49.215515+00
adt_rzluxbac7bqou5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 12:15:49.872171+00	2023-03-13 12:15:49.872171+00
adt_silhnm14svjrjd	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:15:49.896104+00	2023-03-13 12:15:49.896104+00
adt_9stdusy4fn2242	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	8	DATA	UPDATE	\N	8 updated in NoticeOfDeviation	\N	2023-03-13 12:15:50.364636+00	2023-03-13 12:15:50.364636+00
adt_4z74xobce4d3le	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	8	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:15:50.391674+00	2023-03-13 12:15:50.391674+00
adt_iq8n90fh9d6h1q	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	8	DATA	UPDATE	\N	8 updated in NoticeOfDeviation	\N	2023-03-13 12:15:52.12772+00	2023-03-13 12:15:52.12772+00
adt_s8ojrxw6gmchv6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	8	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:15:52.155478+00	2023-03-13 12:15:52.155478+00
adt_sv873p4qa5co21	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Approved? with alias Approved? from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:16:06.302698+00	2023-03-13 12:16:06.302698+00
adt_epjv9j2lj1y7l0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Approved? with alias Approved? from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:16:22.330466+00	2023-03-13 12:16:22.330466+00
adt_8wqs5orucbkm4j	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:16:23.832707+00	2023-03-13 12:16:23.832707+00
adt_vsve2vjbh6bb7f	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:16:23.858379+00	2023-03-13 12:16:23.858379+00
adt_rb5ulnk53pk4h2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:16:24.948998+00	2023-03-13 12:16:24.948998+00
adt_fubms41npukbor	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:16:24.974474+00	2023-03-13 12:16:24.974474+00
adt_ggxi2t6sarjo0q	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:16:25.971741+00	2023-03-13 12:16:25.971741+00
adt_1qe9ghk9876pfq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:16:25.992876+00	2023-03-13 12:16:25.992876+00
adt_ezi9vz1ebxgagt	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:16:26.780244+00	2023-03-13 12:16:26.780244+00
adt_0ps3kn4auo86gb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:16:26.804579+00	2023-03-13 12:16:26.804579+00
adt_k85x5aq5r8ihzm	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Quality Mgr Approval with alias Quality Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:17:10.33542+00	2023-03-13 12:17:10.33542+00
adt_fz8vtqhqurvtmc	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Approved? with alias Approved? from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:17:57.584305+00	2023-03-13 12:17:57.584305+00
adt_74915vlkvf4oi2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Quality Mgr Approval with alias Quality Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:18:09.880322+00	2023-03-13 12:18:09.880322+00
adt_g6116zz1tjs7ht	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:11.76455+00	2023-03-13 12:18:11.76455+00
adt_04ypmqhbfx7a8v	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:18:11.78558+00	2023-03-13 12:18:11.78558+00
adt_hlsvv59jyyulzu	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:14.239231+00	2023-03-13 12:18:14.239231+00
adt_arr96fth93ac7u	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:18:14.260814+00	2023-03-13 12:18:14.260814+00
adt_snbbvhbulxuxxo	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:15.177304+00	2023-03-13 12:18:15.177304+00
adt_kl08e3i7kj07cr	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:18:15.204265+00	2023-03-13 12:18:15.204265+00
adt_u8vfnbn8bununi	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:16.63091+00	2023-03-13 12:18:16.63091+00
adt_mftqic6rv43ipe	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:18:16.659462+00	2023-03-13 12:18:16.659462+00
adt_lp10vlqw1hquq2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:17.528211+00	2023-03-13 12:18:17.528211+00
adt_1hwb9g7i1b4vkp	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:18:17.558767+00	2023-03-13 12:18:17.558767+00
adt_2t9w2r51at5ej3	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:18.885329+00	2023-03-13 12:18:18.885329+00
adt_jxou19t439r4y7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:18:18.906655+00	2023-03-13 12:18:18.906655+00
adt_k7qce0iw0wmdrp	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Approved? with alias Approved? from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:18:25.608472+00	2023-03-13 12:18:25.608472+00
adt_4824m6qahphyru	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:26.816545+00	2023-03-13 12:18:26.816545+00
adt_3y36i2odowrs86	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:18:26.859568+00	2023-03-13 12:18:26.859568+00
adt_dased28zc3mxrt	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:28.084816+00	2023-03-13 12:18:28.084816+00
adt_jpkjf8p17zj0ds	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:18:28.114084+00	2023-03-13 12:18:28.114084+00
adt_p0sgqkqrj1fch6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:28.484615+00	2023-03-13 12:18:28.484615+00
adt_29e6w8ti15npi3	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:18:28.51234+00	2023-03-13 12:18:28.51234+00
adt_5vnuepyax6c7pi	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:30.169061+00	2023-03-13 12:18:30.169061+00
adt_xk10fip772i53s	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:18:30.207899+00	2023-03-13 12:18:30.207899+00
adt_39kwqtpx6oo9ou	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:18:32.035658+00	2023-03-13 12:18:32.035658+00
adt_62tuw2ad7xcxv4	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:18:32.06255+00	2023-03-13 12:18:32.06255+00
adt_c4wc6jxlrz0gx4	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:18:32.829639+00	2023-03-13 12:18:32.829639+00
adt_lffou2n9lkb1pb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:18:32.857446+00	2023-03-13 12:18:32.857446+00
adt_dz8z1kgkdsuooq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:18:33.436957+00	2023-03-13 12:18:33.436957+00
adt_fgdc54c7ion964	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:18:33.459543+00	2023-03-13 12:18:33.459543+00
adt_2c3sgz1ioi42d4	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	9 updated in NoticeOfDeviation	\N	2023-03-13 12:18:34.204998+00	2023-03-13 12:18:34.204998+00
adt_1yponvarqbz8ns	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	9	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:18:34.233426+00	2023-03-13 12:18:34.233426+00
adt_silzj4sax45a4t	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:36.334263+00	2023-03-13 12:18:36.334263+00
adt_cyoama37eshvit	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:18:36.382024+00	2023-03-13 12:18:36.382024+00
adt_0cueu6w25rl5hr	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:37.111129+00	2023-03-13 12:18:37.111129+00
adt_i9youurinjh1yt	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:18:37.143578+00	2023-03-13 12:18:37.143578+00
adt_nv2poj8bzcxzqq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:38.852216+00	2023-03-13 12:18:38.852216+00
adt_jnsd3g12q3lipg	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:18:38.886476+00	2023-03-13 12:18:38.886476+00
adt_m5rvli7s395832	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:39.909059+00	2023-03-13 12:18:39.909059+00
adt_ehmu3muryjkzte	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:18:39.931192+00	2023-03-13 12:18:39.931192+00
adt_y1w6740v9pszl0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:40.9813+00	2023-03-13 12:18:40.9813+00
adt_qxigax4ewmb10w	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:18:41.014337+00	2023-03-13 12:18:41.014337+00
adt_0kprnovgtvvvt2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:18:42.878663+00	2023-03-13 12:18:42.878663+00
adt_dbw6miijhhu57d	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:18:42.908621+00	2023-03-13 12:18:42.908621+00
adt_2q4g32a7it43nb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column title21 with alias title21 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:20:26.860872+00	2023-03-13 12:20:26.860872+00
adt_q3ey5wyvaun9zu	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	2	DATA	INSERT	\N	2 inserted into Non-Conformance	\N	2023-03-13 12:21:55.488069+00	2023-03-13 12:21:55.488069+00
adt_zkidadjk2wu0ze	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	2	DATA	LINK_RECORD	\N	Record [id:5] record linked with record [id:2] record in Non-Conformance	\N	2023-03-13 12:21:55.51466+00	2023-03-13 12:21:55.51466+00
adt_0zq6rveimcmy8p	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column null with alias title21 from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:22:36.667917+00	2023-03-13 12:22:36.667917+00
adt_7ovgl35rsycr7k	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 12:23:37.382685+00	2023-03-13 12:23:37.382685+00
adt_ym73h8hl85e7dj	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field WO# got changed from   to 1299	<span class="">WO#</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">1299</span>	2023-03-13 12:23:37.406751+00	2023-03-13 12:23:37.406751+00
adt_3nncjhfzszaiy6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 12:23:40.096084+00	2023-03-13 12:23:40.096084+00
adt_tgfq2gfvmu88we	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Qty Affected or Duration got changed from   to 50 	<span class="">Qty Affected or Duration</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">50 </span>	2023-03-13 12:23:40.12393+00	2023-03-13 12:23:40.12393+00
adt_fquthzd6ilneag	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 12:23:42.777908+00	2023-03-13 12:23:42.777908+00
adt_zmycu73auq12g7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Qty Affected or Duration got changed from  50  to 50 pcs	<span class="">Qty Affected or Duration</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">50 </span>\n  <span class="black--text green lighten-4 px-2">50 pcs</span>	2023-03-13 12:23:42.827772+00	2023-03-13 12:23:42.827772+00
adt_un848s6lo1eeh7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 12:23:46.322527+00	2023-03-13 12:23:46.322527+00
adt_m3ltpmrzclbup0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Process Initiating Deviation got changed from   to Compact	<span class="">Process Initiating Deviation</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">Compact</span>	2023-03-13 12:23:46.3497+00	2023-03-13 12:23:46.3497+00
adt_hsgqqjr51u2yul	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 12:23:48.149412+00	2023-03-13 12:23:48.149412+00
adt_fz4libj0545vh5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Machine No got changed from   to 2941	<span class="">Machine No</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">2941</span>	2023-03-13 12:23:48.16772+00	2023-03-13 12:23:48.16772+00
adt_b84tlb57e7guza	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 12:23:49.193473+00	2023-03-13 12:23:49.193473+00
adt_vx44n1pngi1h1l	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Machine No got changed from  2941 to 29	<span class="">Machine No</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">2941</span>\n  <span class="black--text green lighten-4 px-2">29</span>	2023-03-13 12:23:49.225961+00	2023-03-13 12:23:49.225961+00
adt_upyid2ncvgceax	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-13 12:23:49.821591+00	2023-03-13 12:23:49.821591+00
adt_tjbm03c3o10j5k	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Machine No got changed from  29 to 291	<span class="">Machine No</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">29</span>\n  <span class="black--text green lighten-4 px-2">291</span>	2023-03-13 12:23:49.849296+00	2023-03-13 12:23:49.849296+00
adt_b9uro6l6q2dyku	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	LINK_RECORD	\N	Record [id:1] record linked with record [id:7] record in NoticeOfDeviation	\N	2023-03-13 12:24:00.722104+00	2023-03-13 12:24:00.722104+00
adt_3tq6ncaofgk3va	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	\N	DATA	DELETE	\N	undefined deleted from Non-Conformance	\N	2023-03-13 12:24:25.180479+00	2023-03-13 12:24:25.180479+00
adt_j49dykxaegg4l6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:7] record in NoticeOfDeviation	\N	2023-03-13 12:24:48.002441+00	2023-03-13 12:24:48.002441+00
adt_njf9n2z52x5ign	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:5] record in NoticeOfDeviation	\N	2023-03-13 12:24:51.611382+00	2023-03-13 12:24:51.611382+00
adt_e1v16gdp261kxj	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	3	DATA	INSERT	\N	3 inserted into Non-Conformance	\N	2023-03-13 12:25:20.131824+00	2023-03-13 12:25:20.131824+00
adt_frjqihjljrzdyz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	3	DATA	LINK_RECORD	\N	Record [id:7] record linked with record [id:3] record in Non-Conformance	\N	2023-03-13 12:25:20.17166+00	2023-03-13 12:25:20.17166+00
adt_1ra4bi4p75v65f	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	4	DATA	INSERT	\N	4 inserted into Non-Conformance	\N	2023-03-13 12:29:22.43175+00	2023-03-13 12:29:22.43175+00
adt_ocx0rg26gpw90k	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	10	DATA	INSERT	\N	10 inserted into NoticeOfDeviation	\N	2023-03-13 12:29:41.661029+00	2023-03-13 12:29:41.661029+00
adt_bob0mvlzenkm00	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	10	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:10] record in NoticeOfDeviation	\N	2023-03-13 12:29:41.707271+00	2023-03-13 12:29:41.707271+00
adt_oqn0txrt4q8tr7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	10	DATA	LINK_RECORD	\N	Record [id:4] record linked with record [id:10] record in NoticeOfDeviation	\N	2023-03-13 12:30:21.29851+00	2023-03-13 12:30:21.29851+00
adt_wo5mq85bze0ywe	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column null with alias NoticeOfDeviation from table nc_9j1b___Non-Conformance	\N	2023-03-13 12:30:39.247341+00	2023-03-13 12:30:39.247341+00
adt_fzd6hdi3pkal4k	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column ENG Mgr Approval with alias ENG Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:35:33.852196+00	2023-03-13 12:35:33.852196+00
adt_8eyqh621jmz0xk	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Quality Mgr Approval with alias Quality Mgr Approval from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 12:35:52.174735+00	2023-03-13 12:35:52.174735+00
adt_hv21do3fwk78mx	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:35:57.48757+00	2023-03-13 12:35:57.48757+00
adt_3el0wvsqgw5m7e	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:35:57.51965+00	2023-03-13 12:35:57.51965+00
adt_0ooranj8gi4824	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:36:07.013504+00	2023-03-13 12:36:07.013504+00
adt_kh15mgm8bzbs6f	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:36:07.037784+00	2023-03-13 12:36:07.037784+00
adt_bxsztbmuxw7xsu	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:36:18.192821+00	2023-03-13 12:36:18.192821+00
adt_zn65e02xohf6w5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:36:18.220976+00	2023-03-13 12:36:18.220976+00
adt_nu3mfxxsq5nsen	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:36:20.192291+00	2023-03-13 12:36:20.192291+00
adt_ew3a6efqsk32k6	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 12:36:20.224716+00	2023-03-13 12:36:20.224716+00
adt_n34jorgubyjkwe	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-13 12:36:21.571189+00	2023-03-13 12:36:21.571189+00
adt_4s8ep23jpawdpi	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:36:21.600666+00	2023-03-13 12:36:21.600666+00
adt_xf0za2t3miyhnf	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:36:23.443048+00	2023-03-13 12:36:23.443048+00
adt_3mcwd1g55uo1pl	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:36:23.472543+00	2023-03-13 12:36:23.472543+00
adt_6gaow6qmhn7vrc	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	6 updated in NoticeOfDeviation	\N	2023-03-13 12:36:23.966602+00	2023-03-13 12:36:23.966602+00
adt_vaopdwar2kdzpz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 12:36:23.988588+00	2023-03-13 12:36:23.988588+00
adt_clt5c968icx5li	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column null with alias WorkCell from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 13:07:42.98243+00	2023-03-13 13:07:42.98243+00
adt_wv1leerldzlebs	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Where it will be Corrected with alias Where it will be Corrected from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 13:08:11.086953+00	2023-03-13 13:08:11.086953+00
adt_bpben2ookqp9d9	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Correction with alias Correction from table nc_9j1b___WorkCell	\N	2023-03-13 13:08:51.439458+00	2023-03-13 13:08:51.439458+00
adt_h53yl63xs6nt9f	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column null with alias NoticeOfDeviation from table nc_9j1b___WorkCell	\N	2023-03-13 13:08:57.159127+00	2023-03-13 13:08:57.159127+00
adt_ejmy3dx8upvqf0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column Where it will be Corrected with alias Where it will be Corrected from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 13:09:32.491467+00	2023-03-13 13:09:32.491467+00
adt_77y7wqptqdu1ly	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column null with alias WorkCell from table nc_9j1b___NoticeOfDeviation	\N	2023-03-13 13:09:55.872107+00	2023-03-13 13:09:55.872107+00
adt_4wky2sj9wudqyu	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	LINK_RECORD	\N	Record [id:12] record linked with record [id:5] record in NoticeOfDeviation	\N	2023-03-13 13:10:14.663665+00	2023-03-13 13:10:14.663665+00
adt_k8ul6gzv0wnjwv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	AUTHENTICATION	INVITE	\N	invited testing@stackpole.com to p_pizjgrh32hd09k project 	\N	2023-03-13 13:13:44.43423+00	2023-03-13 13:13:44.43423+00
adt_qi55vshpncz3jk	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	AUTHENTICATION	INVITE	\N	invited testing@stackpole.com to p_pizjgrh32hd09k project 	\N	2023-03-13 13:14:43.345407+00	2023-03-13 13:14:43.345407+00
adt_2notxu2tq3wtpi	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	10	DATA	UPDATE	\N	10 updated in NoticeOfDeviation	\N	2023-03-13 13:16:37.964231+00	2023-03-13 13:16:37.964231+00
adt_gx03s2wnqnrn4y	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	10	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 13:16:38.135977+00	2023-03-13 13:16:38.135977+00
adt_k4bdgn24cm2mkt	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	10	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-13 13:16:38.145488+00	2023-03-13 13:16:38.145488+00
adt_6yu7uugyywnebp	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	10	DATA	UPDATE	\N	10 updated in NoticeOfDeviation	\N	2023-03-13 13:16:48.046804+00	2023-03-13 13:16:48.046804+00
adt_aagr0727dk5roq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	10	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 13:16:48.328283+00	2023-03-13 13:16:48.328283+00
adt_5kxo6jq6y3c43o	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	10	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-13 13:16:48.336793+00	2023-03-13 13:16:48.336793+00
adt_fbmrdq747ces1w	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	11	DATA	INSERT	\N	11 inserted into NoticeOfDeviation	\N	2023-03-13 14:03:49.584185+00	2023-03-13 14:03:49.584185+00
adt_ktnjygavto1s11	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	11	DATA	UPDATE	\N	11 updated in NoticeOfDeviation	\N	2023-03-13 14:03:49.874213+00	2023-03-13 14:03:49.874213+00
adt_fv0atwcwmsqrg5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	11	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from  2 to 2	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">2</span>\n  <span class="black--text green lighten-4 px-2">2</span>	2023-03-13 14:03:49.898365+00	2023-03-13 14:03:49.898365+00
adt_gswa7tz32ob2xj	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	12	DATA	INSERT	\N	12 inserted into NoticeOfDeviation	\N	2023-03-13 14:03:53.674577+00	2023-03-13 14:03:53.674577+00
adt_f9j0684tv64ev0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	12	DATA	UPDATE	\N	12 updated in NoticeOfDeviation	\N	2023-03-13 14:03:53.819386+00	2023-03-13 14:03:53.819386+00
adt_aoeuhmxveu3yze	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	12	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from  3 to 3	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">3</span>\n  <span class="black--text green lighten-4 px-2">3</span>	2023-03-13 14:03:53.838945+00	2023-03-13 14:03:53.838945+00
adt_67ntlguptuf50p	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	13	DATA	INSERT	\N	13 inserted into NoticeOfDeviation	\N	2023-03-13 14:03:55.464899+00	2023-03-13 14:03:55.464899+00
adt_hmujg4pdxwpust	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	13	DATA	UPDATE	\N	13 updated in NoticeOfDeviation	\N	2023-03-13 14:03:55.796903+00	2023-03-13 14:03:55.796903+00
adt_c74ebavziog6r5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	13	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from  5 to 5	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">5</span>\n  <span class="black--text green lighten-4 px-2">5</span>	2023-03-13 14:03:55.819425+00	2023-03-13 14:03:55.819425+00
adt_d5f3ogc1w8nxx7	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	\N	DATA	DELETE	\N	undefined deleted from NoticeOfDeviation	\N	2023-03-13 14:04:16.69771+00	2023-03-13 14:04:16.69771+00
adt_q71nevpyuwxxrb	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	14	DATA	INSERT	\N	14 inserted into NoticeOfDeviation	\N	2023-03-13 14:04:25.627293+00	2023-03-13 14:04:25.627293+00
adt_ogowctsxtax4ic	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-14 12:27:17.49521+00	2023-03-14 12:27:17.49521+00
adt_jjs31v6w2mgxes	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-14 12:27:17.526186+00	2023-03-14 12:27:17.526186+00
adt_up77tm0vcli0u4	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-14 12:27:18.268965+00	2023-03-14 12:27:18.268965+00
adt_ci1fpc2cbfpu64	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from  true to 	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-14 12:27:18.304411+00	2023-03-14 12:27:18.304411+00
adt_bfo7z7nk038k49	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-14 12:27:20.312346+00	2023-03-14 12:27:20.312346+00
adt_yq8t1x80xi5n9f	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from  true to 	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">true</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-14 12:27:20.333703+00	2023-03-14 12:27:20.333703+00
adt_qr88vrsqmk26wv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-14 12:27:21.049847+00	2023-03-14 12:27:21.049847+00
adt_2obvrpfszit0hc	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-14 12:27:21.089873+00	2023-03-14 12:27:21.089873+00
adt_vikep2bndpwe6p	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-14 12:27:21.69741+00	2023-03-14 12:27:21.69741+00
adt_3qrhq189jji5up	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-14 12:27:21.723557+00	2023-03-14 12:27:21.723557+00
adt_50whycogz2f7g3	dgleba@stackpole.com	::ffff:10.4.170.83	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	LINK_RECORD	\N	Record [id:7] record linked with record [id:5] record in NoticeOfDeviation	\N	2023-03-15 16:53:22.997928+00	2023-03-15 16:53:22.997928+00
adt_7m8ua79m3s9a39	dgleba@stackpole.com	::ffff:10.4.170.83	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	LINK_RECORD	\N	Record [id:12] record linked with record [id:5] record in NoticeOfDeviation	\N	2023-03-15 16:53:41.498955+00	2023-03-15 16:53:41.498955+00
adt_lvlpa0h1zzxqv8	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	15	DATA	INSERT	\N	15 inserted into NoticeOfDeviation	\N	2023-03-16 13:19:11.381712+00	2023-03-16 13:19:11.381712+00
adt_sisy3x08k6ohqy	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	16	DATA	INSERT	\N	16 inserted into NoticeOfDeviation	\N	2023-03-16 13:19:11.622373+00	2023-03-16 13:19:11.622373+00
adt_0o972c3v1pnum3	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	16	DATA	UPDATE	\N	16 updated in NoticeOfDeviation	\N	2023-03-16 13:19:40.317896+00	2023-03-16 13:19:40.317896+00
adt_ze4yi0emhtd372	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	16	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from   to dsadsa	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">dsadsa</span>	2023-03-16 13:19:40.346144+00	2023-03-16 13:19:40.346144+00
adt_8n72xr918byxlu	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	16	DATA	UPDATE	\N	16 updated in NoticeOfDeviation	\N	2023-03-16 13:19:41.548332+00	2023-03-16 13:19:41.548332+00
adt_cayh4ew1awfyfe	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	16	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from  dsadsa to 	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">dsadsa</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-16 13:19:41.568256+00	2023-03-16 13:19:41.568256+00
adt_0vy8dyul3okrlc	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	17	DATA	INSERT	\N	17 inserted into NoticeOfDeviation	\N	2023-03-16 13:20:00.21008+00	2023-03-16 13:20:00.21008+00
adt_dyfner7we5p0i5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	\N	DATA	DELETE	\N	undefined deleted from NoticeOfDeviation	\N	2023-03-16 13:20:24.132961+00	2023-03-16 13:20:24.132961+00
adt_hd1j47w6ujb16b	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	18	DATA	INSERT	\N	18 inserted into NoticeOfDeviation	\N	2023-03-16 13:20:30.596097+00	2023-03-16 13:20:30.596097+00
adt_69k68c0lotvdzv	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	19	DATA	INSERT	\N	19 inserted into NoticeOfDeviation	\N	2023-03-16 13:23:12.655545+00	2023-03-16 13:23:12.655545+00
adt_b50xpjtq9pbodz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-16 13:28:48.827871+00	2023-03-16 13:28:48.827871+00
adt_agzaeqli36dl57	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field ENG Mgr Approval got changed from   to true	<span class="">ENG Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-16 13:28:48.855461+00	2023-03-16 13:28:48.855461+00
adt_c5xmc6b9ksx48r	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	7 updated in NoticeOfDeviation	\N	2023-03-16 13:28:49.741229+00	2023-03-16 13:28:49.741229+00
adt_fnfd63odpa3c92	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	\N	DATA	DELETE	\N	undefined deleted from Non-Conformance	\N	2023-03-16 13:36:03.77907+00	2023-03-16 13:36:03.77907+00
adt_xokzo5pbl4wqzk	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	7	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Quality Mgr Approval got changed from   to true	<span class="">Quality Mgr Approval</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">true</span>	2023-03-16 13:28:49.758886+00	2023-03-16 13:28:49.758886+00
adt_zqhfmr673bl5qt	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	LINK_RECORD	\N	Record [id:4] record linked with record [id:5] record in NoticeOfDeviation	\N	2023-03-16 13:31:28.243409+00	2023-03-16 13:31:28.243409+00
adt_zc5rddfn4hdlvm	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	20	DATA	INSERT	\N	20 inserted into NoticeOfDeviation	\N	2023-03-16 13:33:06.672879+00	2023-03-16 13:33:06.672879+00
adt_qpnotkv12t85eh	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	5	DATA	INSERT	\N	5 inserted into Non-Conformance	\N	2023-03-16 13:35:50.826866+00	2023-03-16 13:35:50.826866+00
adt_4xnihte85i4kyz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column null with alias NoticeOfDeviation from table nc_9j1b___Non-Conformance	\N	2023-03-16 13:37:18.097689+00	2023-03-16 13:37:18.097689+00
adt_bl85hmq64bu44n	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:6] record in NoticeOfDeviation	\N	2023-03-16 13:38:38.681078+00	2023-03-16 13:38:38.681078+00
adt_acs7a42ofn8yh8	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	6	DATA	INSERT	\N	6 inserted into Non-Conformance	\N	2023-03-16 13:36:18.969727+00	2023-03-16 13:36:18.969727+00
adt_cjhjb38uxdy7ia	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column Non Conformances with alias Non Conformances from table nc_9j1b___NoticeOfDeviation	\N	2023-03-16 13:38:10.326802+00	2023-03-16 13:38:10.326802+00
adt_wxkte2mozq7wda	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	LINK_RECORD	\N	Record [id:2] record linked with record [id:5] record in NoticeOfDeviation	\N	2023-03-16 13:38:35.563378+00	2023-03-16 13:38:35.563378+00
adt_vdjrqazver78ls	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	6	DATA	LINK_RECORD	\N	Record [id:5] record linked with record [id:6] record in NoticeOfDeviation	\N	2023-03-16 13:38:43.323323+00	2023-03-16 13:38:43.323323+00
adt_0nlui2x7c644i5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	7	DATA	INSERT	\N	7 inserted into Non-Conformance	\N	2023-03-16 13:40:10.318369+00	2023-03-16 13:40:10.318369+00
adt_gy7gpomj2ig1ij	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	7	DATA	LINK_RECORD	\N	Record [id:7] record linked with record [id:7] record in Non-Conformance	\N	2023-03-16 13:40:10.355789+00	2023-03-16 13:40:10.355789+00
adt_snwxnql7hc456c	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	8	DATA	INSERT	\N	8 inserted into Non-Conformance	\N	2023-03-16 13:40:23.782+00	2023-03-16 13:40:23.782+00
adt_s69h5kp2ypoffp	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	8	DATA	LINK_RECORD	\N	Record [id:7] record linked with record [id:8] record in Non-Conformance	\N	2023-03-16 13:40:23.815554+00	2023-03-16 13:40:23.815554+00
adt_2nj26f7wosq875	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	CREATED	\N	created column DevStartFuel with alias DevStartFuel from table nc_9j1b___NoticeOfDeviation	\N	2023-03-16 13:43:30.981257+00	2023-03-16 13:43:30.981257+00
adt_v9kxigk2j4371v	ckwan@stackpole.com	::ffff:10.4.136.96	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	TABLE	CREATED	\N	created table nc_9j1b___Sheet-1 with alias Sheet-1  	\N	2023-03-16 13:46:21.387308+00	2023-03-16 13:46:21.387308+00
adt_4m4y7tl1rsf0zs	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column DeviationStart with alias DeviationStart from table nc_9j1b___NoticeOfDeviation	\N	2023-03-16 13:47:22.341135+00	2023-03-16 13:47:22.341135+00
adt_6dpv4socigmzs1	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-16 13:47:27.466659+00	2023-03-16 13:47:27.466659+00
adt_0c9v1apfreloo2	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field DeviationStart got changed from  AUTO -  to AUTO - ,FUEL - 	<span class="">DeviationStart</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">AUTO - </span>\n  <span class="black--text green lighten-4 px-2">AUTO - ,FUEL - </span>	2023-03-16 13:47:27.489417+00	2023-03-16 13:47:27.489417+00
adt_q2pwbftpq0qwoz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column DeviationStart with alias DeviationStart from table nc_9j1b___NoticeOfDeviation	\N	2023-03-16 13:47:43.204671+00	2023-03-16 13:47:43.204671+00
adt_nqo13j56hct7ru	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	5 updated in NoticeOfDeviation	\N	2023-03-16 13:47:46.95721+00	2023-03-16 13:47:46.95721+00
adt_cunba2wxwyuixz	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	5	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field DeviationStart got changed from  AUTO -  to FUEL - 	<span class="">DeviationStart</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">AUTO - </span>\n  <span class="black--text green lighten-4 px-2">FUEL - </span>	2023-03-16 13:47:46.979404+00	2023-03-16 13:47:46.979404+00
adt_ue1eo30yf39z6a	ckwan@stackpole.com	::ffff:10.4.136.96	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	TABLE	DELETED	\N	Deleted table nc_9j1b__Deviation Name with alias Deviation Name  	\N	2023-03-16 13:47:57.330359+00	2023-03-16 13:47:57.330359+00
adt_8o1qzajlyqc2sr	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	DELETED	\N	deleted column DevStartFuel with alias DevStartFuel from table nc_9j1b___NoticeOfDeviation	\N	2023-03-16 13:48:12.883316+00	2023-03-16 13:48:12.883316+00
adt_5lfk1hi75pag9l	dgleba@stackpole.com	::ffff:10.4.138.186	\N	p_pizjgrh32hd09k	\N	\N	AUTHENTICATION	INVITE	\N	invited ppatel@stackpole.com to p_pizjgrh32hd09k project 	\N	2023-03-16 14:09:53.811057+00	2023-03-16 14:09:53.811057+00
adt_9f22hc84lcdirn	ckwan@stackpole.com	::ffff:10.4.138.181	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	21	DATA	INSERT	\N	21 inserted into NoticeOfDeviation	\N	2023-03-16 14:14:12.3375+00	2023-03-16 14:14:12.3375+00
adt_n62xfamcb8gyf0	ckwan@stackpole.com	::ffff:10.4.138.181	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	21	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:21] record in NoticeOfDeviation	\N	2023-03-16 14:14:12.503504+00	2023-03-16 14:14:12.503504+00
adt_3ehfqiodvncbtc	ckwan@stackpole.com	::ffff:10.4.138.181	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	21	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:21] record in NoticeOfDeviation	\N	2023-03-16 14:14:12.545479+00	2023-03-16 14:14:12.545479+00
adt_3v7e314rbxat87	ckwan@stackpole.com	::ffff:10.4.138.181	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	21	DATA	LINK_RECORD	\N	Record [id:7] record linked with record [id:21] record in NoticeOfDeviation	\N	2023-03-16 14:14:12.580045+00	2023-03-16 14:14:12.580045+00
adt_rc00gswueiyd21	dgleba@stackpole.com	::ffff:10.4.138.186	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	22	DATA	INSERT	\N	22 inserted into NoticeOfDeviation	\N	2023-03-16 14:14:37.345821+00	2023-03-16 14:14:37.345821+00
adt_h3e4u7rt95x9fz	ckwan@stackpole.com	::ffff:10.4.138.181	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Deviation Initiated By with alias Deviation Initiated By from table nc_9j1b___NoticeOfDeviation	\N	2023-03-16 14:17:44.270309+00	2023-03-16 14:17:44.270309+00
adt_ban1qsiu654rf8	ckwan@stackpole.com	::ffff:10.4.138.181	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Deviation Initiated By with alias Deviation Initiated By from table nc_9j1b___NoticeOfDeviation	\N	2023-03-16 14:19:19.591668+00	2023-03-16 14:19:19.591668+00
adt_q8xaxwjrw310s6	ckwan@stackpole.com	::ffff:10.4.138.181	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	23	DATA	INSERT	\N	23 inserted into NoticeOfDeviation	\N	2023-03-16 14:21:52.172729+00	2023-03-16 14:21:52.172729+00
adt_z4jgaor4xzgx3r	ckwan@stackpole.com	::ffff:10.4.138.181	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	24	DATA	INSERT	\N	24 inserted into NoticeOfDeviation	\N	2023-03-16 14:34:21.100947+00	2023-03-16 14:34:21.100947+00
adt_7bglam7mzz3tvt	ppatel@stackpole.com	::ffff:10.4.170.75	\N	\N	\N	\N	AUTHENTICATION	SIGNUP	\N	signed up 	\N	2023-03-16 18:21:30.674065+00	2023-03-16 18:21:30.674065+00
adt_7vqsxadoxs8362	dgleba@stackpole.com	::ffff:10.5.252.91	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	3	DATA	INSERT	\N	3 inserted into deviation	\N	2023-03-17 02:10:08.373755+00	2023-03-17 02:10:08.373755+00
adt_ej89r56hbrf4h0	dgleba@stackpole.com	::ffff:10.5.252.91	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	4	DATA	INSERT	\N	4 inserted into deviation	\N	2023-03-17 02:11:54.870683+00	2023-03-17 02:11:54.870683+00
adt_f6ewb4d01g7ry3	dgleba@stackpole.com	::ffff:10.5.252.91	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	4	DATA	UPDATE	\N	4 updated in deviation	\N	2023-03-17 02:11:55.693435+00	2023-03-17 02:11:55.693435+00
adt_28a78oqolgfxrk	dgleba@stackpole.com	::ffff:10.5.252.91	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	4	DATA	UPDATE	\N	Table nc_xwok___deviation : field machine got changed from   to b	<span class="">machine</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">b</span>	2023-03-17 02:11:55.718858+00	2023-03-17 02:11:55.718858+00
adt_8jxvi7p22ijdel	dgleba@stackpole.com	::ffff:10.5.252.91	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	4	DATA	UPDATE	\N	4 updated in deviation	\N	2023-03-17 02:11:56.321764+00	2023-03-17 02:11:56.321764+00
adt_zwewiz9u6vw6uh	dgleba@stackpole.com	::ffff:10.5.252.91	\N	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	4	DATA	UPDATE	\N	Table nc_xwok___deviation : field process got changed from   to b	<span class="">process</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">b</span>	2023-03-17 02:11:56.341908+00	2023-03-17 02:11:56.341908+00
adt_qod2qpaanlnyau	dgleba@stackpole.com	::ffff:10.5.252.91	\N	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	9	DATA	INSERT	\N	9 inserted into Non-Conformance	\N	2023-03-17 02:20:19.309612+00	2023-03-17 02:20:19.309612+00
adt_5iwhgm68wmezff	dgleba@stackpole.com	::ffff:10.5.252.91	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	INSERT	\N	25 inserted into NoticeOfDeviation	\N	2023-03-17 02:21:20.322038+00	2023-03-17 02:21:20.322038+00
adt_6yjfmqgczxkagq	dgleba@stackpole.com	::ffff:10.5.252.91	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:25] record in NoticeOfDeviation	\N	2023-03-17 02:21:20.374705+00	2023-03-17 02:21:20.374705+00
adt_ua3ivo440qz04f	dgleba@stackpole.com	::ffff:10.5.252.91	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	LINK_RECORD	\N	Record [id:3] record linked with record [id:25] record in NoticeOfDeviation	\N	2023-03-17 02:21:20.398744+00	2023-03-17 02:21:20.398744+00
adt_4w8yyp3u813ezw	dgleba@stackpole.com	::ffff:10.5.252.91	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	LINK_RECORD	\N	Record [id:9] record linked with record [id:25] record in NoticeOfDeviation	\N	2023-03-17 02:21:20.434816+00	2023-03-17 02:21:20.434816+00
adt_7xc4b6z8vadhjr	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Deviation Initiated By with alias Deviation Initiated By from table nc_9j1b___NoticeOfDeviation	\N	2023-03-17 11:31:31.286249+00	2023-03-17 11:31:31.286249+00
adt_2w0hki4vntyvcd	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	UPDATE	\N	25 updated in NoticeOfDeviation	\N	2023-03-17 11:31:38.371767+00	2023-03-17 11:31:38.371767+00
adt_ravjrgjderc3qa	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from  David Gleba to 	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">David Gleba</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-17 11:31:38.391726+00	2023-03-17 11:31:38.391726+00
adt_e6mlfhcl4ksr3w	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	\N	\N	TABLE_COLUMN	UPDATED	\N	updated column Deviation Initiated By with alias Deviation Initiated By from table nc_9j1b___NoticeOfDeviation	\N	2023-03-17 11:33:14.632425+00	2023-03-17 11:33:14.632425+00
adt_vl6pb4rij0vbi0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	UPDATE	\N	25 updated in NoticeOfDeviation	\N	2023-03-17 11:33:20.63373+00	2023-03-17 11:33:20.63373+00
adt_9gsztvqc65kiyi	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from   to {	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text"></span>\n  <span class="black--text green lighten-4 px-2">{</span>	2023-03-17 11:33:20.659613+00	2023-03-17 11:33:20.659613+00
adt_10vriujpktvogo	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	UPDATE	\N	25 updated in NoticeOfDeviation	\N	2023-03-17 11:33:22.406263+00	2023-03-17 11:33:22.406263+00
adt_f2uo7iw7pn7b4v	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from  { to {JSON	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">{</span>\n  <span class="black--text green lighten-4 px-2">{JSON</span>	2023-03-17 11:33:22.427771+00	2023-03-17 11:33:22.427771+00
adt_6jpwvffm58tn90	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	UPDATE	\N	25 updated in NoticeOfDeviation	\N	2023-03-17 11:33:23.226649+00	2023-03-17 11:33:23.226649+00
adt_c2523xtjyme4rh	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from  {JSON to {JSON}	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">{JSON</span>\n  <span class="black--text green lighten-4 px-2">{JSON}</span>	2023-03-17 11:33:23.242656+00	2023-03-17 11:33:23.242656+00
adt_u5t382pz2rvgpq	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	UPDATE	\N	25 updated in NoticeOfDeviation	\N	2023-03-17 11:33:23.327551+00	2023-03-17 11:33:23.327551+00
adt_7i9yfrgas3mpu5	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from  {JSON} to {JSON}	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">{JSON}</span>\n  <span class="black--text green lighten-4 px-2">{JSON}</span>	2023-03-17 11:33:23.341409+00	2023-03-17 11:33:23.341409+00
adt_dplbvif96jepw0	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	UPDATE	\N	25 updated in NoticeOfDeviation	\N	2023-03-17 11:33:26.477182+00	2023-03-17 11:33:26.477182+00
adt_ehtwqsh37gx9yp	ckwan@stackpole.com	::ffff:10.4.136.96	\N	p_pizjgrh32hd09k	md_7p49dcw0uwark8	25	DATA	UPDATE	\N	Table nc_9j1b___NoticeOfDeviation : field Deviation Initiated By got changed from  {JSON} to 	<span class="">Deviation Initiated By</span>\n  : <span class="text-decoration-line-through red px-2 lighten-4 black--text">{JSON}</span>\n  <span class="black--text green lighten-4 px-2"></span>	2023-03-17 11:33:26.496265+00	2023-03-17 11:33:26.496265+00
adt_gk5zdrntvxqwwg	dgleba@stackpole.com	::ffff:10.4.170.83	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-03-29 20:02:35.661497+00	2023-03-29 20:02:35.661497+00
adt_6f9szdz01m8brb	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-04-25 02:38:25.561844+00	2023-04-25 02:38:25.561844+00
adt_hny74pz3c2kjn7	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	PASSWORD_FORGOT	\N	requested for password reset 	\N	2023-04-25 02:41:39.499244+00	2023-04-25 02:41:39.499244+00
adt_u2aw6tirydo4n0	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	PASSWORD_FORGOT	\N	requested for password reset 	\N	2023-04-25 02:42:08.978686+00	2023-04-25 02:42:08.978686+00
adt_ni2xro3k40c2yh	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-04-25 02:45:50.560138+00	2023-04-25 02:45:50.560138+00
adt_ocxhuz4adeiyca	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	PASSWORD_FORGOT	\N	requested for password reset 	\N	2023-04-25 02:49:07.405394+00	2023-04-25 02:49:07.405394+00
adt_honv4fwpoelfib	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-04-25 02:50:19.165567+00	2023-04-25 02:50:19.165567+00
adt_fbplao4ctitooo	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	PASSWORD_FORGOT	\N	requested for password reset 	\N	2023-04-25 02:53:23.595271+00	2023-04-25 02:53:23.595271+00
adt_fb4ipbzxdlzvo0	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	PASSWORD_FORGOT	\N	requested for password reset 	\N	2023-04-25 02:53:31.106327+00	2023-04-25 02:53:31.106327+00
adt_n9gl5ca4m56xl6	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-04-25 02:54:17.601917+00	2023-04-25 02:54:17.601917+00
adt_remlsq9hnh0vw1	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-04-25 02:54:22.10528+00	2023-04-25 02:54:22.10528+00
adt_r31ru2yzqvlc9k	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	PASSWORD_FORGOT	\N	requested for password reset 	\N	2023-04-25 02:55:03.16451+00	2023-04-25 02:55:03.16451+00
adt_njk90v15wc45lo	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-04-25 02:56:45.983874+00	2023-04-25 02:56:45.983874+00
adt_vjjkb2fyys9sjr	dgleba@stackpole.com	::ffff:10.5.252.191	\N	\N	\N	\N	AUTHENTICATION	PASSWORD_FORGOT	\N	requested for password reset 	\N	2023-04-25 02:57:19.194384+00	2023-04-25 02:57:19.194384+00
adt_ta29gk9oer0pix	dgleba@stackpole.com	::ffff:10.4.10.120	\N	\N	\N	\N	AUTHENTICATION	SIGNIN	\N	signed in	\N	2023-04-25 18:05:56.977568+00	2023-04-25 18:05:56.977568+00
adt_xwg3x80r52g61x	dgleba@stackpole.com	::ffff:10.4.10.120	\N	p_3ic0yll5hyobw1	md_u3yyi5e7a3czch	1	DATA	INSERT	\N	1 inserted into Scrap1	\N	2023-04-25 20:36:56.17525+00	2023-04-25 20:36:56.17525+00
\.


--
-- Data for Name: nc_bases_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_bases_v2 (id, project_id, alias, config, meta, is_meta, type, inflection_column, inflection_table, created_at, updated_at, enabled, "order") FROM stdin;
ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	U2FsdGVkX18988Hs2OuVLZsl6BAxabBuJIqegbstrs8=	\N	t	pg	camelize	camelize	2023-03-09 04:13:36.698715+00	2023-03-09 04:13:36.705592+00	t	1
ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	U2FsdGVkX19Q/Pk35E0LpUIqbbH5k74wUuB1wH8xD+o=	\N	t	pg	camelize	camelize	2023-03-10 18:32:00.578433+00	2023-03-10 18:32:00.583258+00	t	1
ds_l3eoofix8dxt6u	p_pawptxgtvw7rrb	\N	U2FsdGVkX18deDmQBO/9T8geW/gmY+qESRGcf8LzRP0=	\N	t	pg	camelize	camelize	2023-03-13 13:53:50.615956+00	2023-03-13 13:53:50.620608+00	t	1
ds_g0n8rsxsfpxoog	p_46q86a6w3poq45	\N	U2FsdGVkX19JYVQVfZKvbWmJEmBbv9ZL2LznrCG4+TY=	\N	t	pg	camelize	camelize	2023-03-13 14:00:50.445045+00	2023-03-13 14:00:50.450795+00	t	1
ds_04vo1j7ec7b2bn	p_ielropgpf3bp3q	\N	U2FsdGVkX1/0bqG/FBWe2t3hjnTW+aXRlQWNWHSwt18=	\N	t	pg	camelize	camelize	2023-03-15 17:29:01.189676+00	2023-03-15 17:29:01.194356+00	t	1
ds_uub83z2bmbk0r2	p_fd7z7ck8vb6ytp	\N	U2FsdGVkX1+Cv8FIkOTLWMa4vXKqozaE46NsjmI/IJk=	\N	t	pg	camelize	camelize	2023-04-25 20:23:41.911014+00	2023-04-25 20:23:41.916759+00	t	1
ds_mtta8b1tcqunx2	p_jub959lqk3i2sr	\N	U2FsdGVkX1/qOZRFfXdo1O+NcfqYLllsVN7HgRKa/+o=	\N	t	pg	camelize	camelize	2023-04-25 20:28:48.295527+00	2023-04-25 20:31:01.485051+00	t	1
ds_kx179i15dd3wop	p_3ic0yll5hyobw1	\N	U2FsdGVkX19R79AE/Jhrs/W+c5nXTghP3i3TDf5IrlE=	\N	t	pg	camelize	camelize	2023-04-25 20:35:22.698868+00	2023-04-25 20:36:11.063767+00	t	1
ds_j474qi6w09vzkp	p_3ic0yll5hyobw1	testdev	U2FsdGVkX18etj+XYIiOhQ7uoMpxdMaZm8LIa5iDTnfyBo8wliDEsf4R9ZhU2rfgvBny2bS5XBEDn28p9Ue4gG3OBd/jKL6ra0l+F/eLgzuxCyLIcF7NfvUNrSwCjG8UOcYP1W+Lk/VLgLIXxnbj74SCNVgAf9nrHZruVYdGE2p+vrkR3Mn8KOcw+RP9usuau2rZbfoFpdMlmIAmhR3DGaQjoFgdB5iiND862pFl1oU=	\N	\N	pg	camelize	camelize	2023-04-25 20:36:11.051764+00	2023-04-25 20:36:11.066731+00	t	2
\.


--
-- Data for Name: nc_col_barcode_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_col_barcode_v2 (id, fk_column_id, fk_barcode_value_column_id, barcode_format, deleted, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_col_formula_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_col_formula_v2 (id, fk_column_id, formula, formula_raw, error, deleted, "order", created_at, updated_at) FROM stdin;
fm_ql8usb8fl9posu	cl_h8pwm0jqoh25ks	CONCAT({{cl_ftuktp05yd39e6}}, {{cl_3xvh5pqz662pep}})	CONCAT({DeviationStart}, {Id})	\N	\N	\N	2023-03-10 19:50:47.569107+00	2023-03-10 19:50:47.569107+00
fm_euqn07sto0fdsp	cl_qsrvdbsopsi1x2	IF(AND(({{cl_y1vvgax2b41gy9}} != "false"), ({{cl_wy6timcat6f83v}} != "false")), "YES", "NO")	IF(AND(({ENG Mgr Approval} != "false"), ({Quality Mgr Approval} != "false")), "YES", "NO")	\N	\N	\N	2023-03-13 12:18:25.605403+00	2023-03-13 12:18:25.605403+00
\.


--
-- Data for Name: nc_col_lookup_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_col_lookup_v2 (id, fk_column_id, fk_relation_column_id, fk_lookup_column_id, deleted, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_col_qrcode_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_col_qrcode_v2 (id, fk_column_id, fk_qr_value_column_id, deleted, "order", created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_col_relations_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_col_relations_v2 (id, ref_db_alias, type, virtual, db_type, fk_column_id, fk_related_model_id, fk_child_column_id, fk_parent_column_id, fk_mm_model_id, fk_mm_child_column_id, fk_mm_parent_column_id, ur, dr, fk_index_name, deleted, created_at, updated_at) FROM stdin;
ln_v6nphubeqoq7pm	\N	bt	f	\N	cl_b7lvnsj1pweue1	md_gfctb5f2clvh4u	cl_ajusw4693fxvte	cl_1arbzol6wz5mh4	\N	\N	\N	\N	\N	fk_nc_xwok____nc_xwok____3pbly4yztcca_fz	\N	2023-03-10 18:34:06.717415+00	2023-03-10 18:34:06.717415+00
ln_u9cg84m50jyc6v	\N	hm	f	\N	cl_xmkp37djm9sdh2	md_v8bxa6u6f8jkud	cl_ajusw4693fxvte	cl_1arbzol6wz5mh4	\N	\N	\N	\N	\N	fk_nc_xwok____nc_xwok____3pbly4yztcca_fz	\N	2023-03-10 18:34:06.758207+00	2023-03-10 18:34:06.758207+00
ln_n1ma3e7ro7scd8	\N	bt	f	\N	cl_sqc4vmlaermnth	md_r5femfp1sims4p	cl_i0al36084yonpp	cl_euynmwtdis5mfs	\N	\N	\N	\N	\N	fk_nc_9j1b____nc_9j1b____l3fk_26wuuktynw	\N	2023-03-13 11:01:28.702295+00	2023-03-13 11:01:28.702295+00
ln_s9dyq0qeb3enmi	\N	hm	f	\N	cl_7dr1ja62t9s2nt	md_7p49dcw0uwark8	cl_i0al36084yonpp	cl_euynmwtdis5mfs	\N	\N	\N	\N	\N	fk_nc_9j1b____nc_9j1b____l3fk_26wuuktynw	\N	2023-03-13 11:01:28.740965+00	2023-03-13 11:01:28.740965+00
ln_ktdn0pj31tgwxh	\N	bt	f	\N	cl_baizpfir6doaa2	md_r5femfp1sims4p	cl_sancx6ksi2rvlz	cl_euynmwtdis5mfs	\N	\N	\N	\N	\N	fk_nc_9j1b____nc_9j1b____cedu87blm8r0cbx	\N	2023-03-13 13:08:51.339377+00	2023-03-13 13:08:51.339377+00
ln_pzvqscc9dh2yin	\N	hm	f	\N	cl_ts3zog2nd5osot	md_7p49dcw0uwark8	cl_sancx6ksi2rvlz	cl_euynmwtdis5mfs	\N	\N	\N	\N	\N	fk_nc_9j1b____nc_9j1b____cedu87blm8r0cbx	\N	2023-03-13 13:08:51.407234+00	2023-03-13 13:08:51.407234+00
ln_dsbpihao0y98je	\N	bt	f	\N	cl_hm50hcoqv2po2x	md_1r2ypyd5v7z2l0	cl_us45kixsxfawke	cl_kt93e647m6e4nx	\N	\N	\N	\N	\N	fk_nc_9j1b____nc_9j1b____81lqh_2ju2zzcyc	\N	2023-03-16 13:38:10.159813+00	2023-03-16 13:38:10.159813+00
ln_sk45kmvst2kevq	\N	hm	f	\N	cl_0zcys4kfrkrw9b	md_1imm2ng54uh1ml	cl_us45kixsxfawke	cl_kt93e647m6e4nx	\N	\N	\N	\N	\N	fk_nc_9j1b____nc_9j1b____81lqh_2ju2zzcyc	\N	2023-03-16 13:38:10.174698+00	2023-03-16 13:38:10.174698+00
ln_r181upnnn3wvny	\N	bt	f	\N	cl_adx7uz6rd21nux	md_7p49dcw0uwark8	cl_xq5566ign99hi9	cl_3xvh5pqz662pep	\N	\N	\N	\N	\N	fk_nc_9j1b____nc_9j1b____mppwag5n2igr6k7	\N	2023-03-16 13:38:10.196364+00	2023-03-16 13:38:10.196364+00
ln_c0zc3hf9lw5w8l	\N	hm	f	\N	cl_eadps8vbc0jv4p	md_1imm2ng54uh1ml	cl_xq5566ign99hi9	cl_3xvh5pqz662pep	\N	\N	\N	\N	\N	fk_nc_9j1b____nc_9j1b____mppwag5n2igr6k7	\N	2023-03-16 13:38:10.213918+00	2023-03-16 13:38:10.213918+00
ln_omlvjkzikpe8sw	\N	mm	\N	\N	cl_s3angybz3137tm	md_7p49dcw0uwark8	cl_kt93e647m6e4nx	cl_3xvh5pqz662pep	md_1imm2ng54uh1ml	cl_us45kixsxfawke	cl_xq5566ign99hi9	\N	\N	\N	\N	2023-03-16 13:38:10.252587+00	2023-03-16 13:38:10.252587+00
ln_wfdoakojwi23qv	\N	mm	\N	\N	cl_wk50acazygy01v	md_1r2ypyd5v7z2l0	cl_3xvh5pqz662pep	cl_kt93e647m6e4nx	md_1imm2ng54uh1ml	cl_xq5566ign99hi9	cl_us45kixsxfawke	\N	\N	\N	\N	2023-03-16 13:38:10.274925+00	2023-03-16 13:38:10.274925+00
\.


--
-- Data for Name: nc_col_rollup_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_col_rollup_v2 (id, fk_column_id, fk_relation_column_id, fk_rollup_column_id, rollup_function, deleted, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_col_select_options_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_col_select_options_v2 (id, fk_column_id, title, color, "order", created_at, updated_at) FROM stdin;
sl_l5mdxcuvqqws9n	cl_ftuktp05yd39e6	FUEL - 	#cfdffe	1	2023-03-16 13:47:43.197713+00	2023-03-16 13:47:43.197713+00
sl_ho4yotdfy2k5cd	cl_ftuktp05yd39e6	AUTO - 	#d0f1fd	2	2023-03-16 13:47:43.20085+00	2023-03-16 13:47:43.20085+00
\.


--
-- Data for Name: nc_columns_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_columns_v2 (id, base_id, project_id, fk_model_id, title, column_name, uidt, dt, np, ns, clen, cop, pk, pv, rqd, un, ct, ai, "unique", cdf, cc, csn, dtx, dtxp, dtxs, au, validate, virtual, deleted, system, "order", created_at, updated_at, meta) FROM stdin;
cl_eotlssksfzkgbx	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	Id	id	ID	integer	32	0	\N	1	t	\N	t	f	int(11)	t	\N	nextval('nc_xwok___deviation_id_seq'::regclass)	\N	\N	integer	32	0	f	\N	\N	\N	f	1	2023-03-09 19:57:41.755987+00	2023-03-09 19:57:41.755987+00	\N
cl_tgmec6eaqlnm1a	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	CreatedAt	created_at	DateTime	timestamp without time zone	\N	\N	\N	3	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	f	\N	\N	\N	f	3	2023-03-09 19:57:41.785089+00	2023-03-09 19:57:41.785089+00	\N
cl_hjiyj8piidg04v	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	UpdatedAt	updated_at	DateTime	timestamp without time zone	\N	\N	\N	4	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	t	\N	\N	\N	f	4	2023-03-09 19:57:41.80499+00	2023-03-09 19:57:41.80499+00	\N
cl_sogizyl4tfljyr	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	partnum	partnum	SingleLineText	character varying	\N	\N	\N	5	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-09 19:58:49.928737+00	2023-03-09 19:58:49.928737+00	{}
cl_azruuldezwulq8	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	dev_initiated_by	dev_initiated_by	SingleLineText	character varying	\N	\N	\N	2	f	t	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f		\N	\N	f	2	2023-03-09 19:57:41.769576+00	2023-03-09 20:00:20.972037+00	\N
cl_x3yt8r9p2cs5ky	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	process	process	SingleLineText	character varying	\N	\N	\N	6	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-09 20:01:38.357683+00	2023-03-09 20:01:38.357683+00	{}
cl_9ecnmh1fkq77t9	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	machine	machine	SingleLineText	character varying	\N	\N	\N	7	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-09 20:01:43.533154+00	2023-03-09 20:01:43.533154+00	{}
cl_0gdqs46pg6tf03	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	qa_approval	qa_approval	SingleLineText	character varying	\N	\N	\N	8	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-09 20:03:26.326196+00	2023-03-09 20:03:26.326196+00	{}
cl_6v44c65kkti6lo	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	eng_approval	eng_approval	SingleLineText	character varying	\N	\N	\N	9	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-09 20:04:15.273616+00	2023-03-09 20:04:15.273616+00	{}
cl_x67a7g4ofl9p4m	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	assigned_process_engineer	assigned_process_engineer	SingleLineText	character varying	\N	\N	\N	10	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f		\N	\N	f	\N	2023-03-10 16:39:32.937733+00	2023-03-10 16:41:37.840262+00	{}
cl_p899b72kpen3n2	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_qx7jabyuv7igya	Id	id	ID	integer	32	0	\N	1	t	\N	t	f	int(11)	t	\N	nextval('nc_xwok___test310_id_seq'::regclass)	\N	\N	integer	32	0	f	\N	\N	\N	f	1	2023-03-10 16:50:48.460974+00	2023-03-10 16:50:48.460974+00	\N
cl_4aqvwg3gvmm3tx	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_qx7jabyuv7igya	Title	title	SingleLineText	character varying	\N	\N	\N	2	f	t	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	2	2023-03-10 16:50:48.470954+00	2023-03-10 16:50:48.470954+00	\N
cl_1yhstymbocsnyp	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_qx7jabyuv7igya	CreatedAt	created_at	DateTime	timestamp without time zone	\N	\N	\N	3	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	f	\N	\N	\N	f	3	2023-03-10 16:50:48.495427+00	2023-03-10 16:50:48.495427+00	\N
cl_0gatrhv7bwtsfo	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_qx7jabyuv7igya	UpdatedAt	updated_at	DateTime	timestamp without time zone	\N	\N	\N	4	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	t	\N	\N	\N	f	4	2023-03-10 16:50:48.507066+00	2023-03-10 16:50:48.507066+00	\N
cl_fchm9qicls4sax	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	repeat_deviation	repeat_deviation	Checkbox	boolean	\N	\N	\N	11	f	\N	f	f	\N	f	\N	false	\N	\N	boolean	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 17:00:28.506469+00	2023-03-10 17:00:28.506469+00	{"icon":{"checked":"mdi-check-bold","unchecked":"mdi-crop-square"},"color":"#C08989FF","iconIdx":0}
cl_1arbzol6wz5mh4	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	Id	id	ID	integer	32	0	\N	1	t	\N	t	f	int(11)	t	\N	nextval('nc_xwok___work_cell_id_seq'::regclass)	\N	\N	integer	32	0	f	\N	\N	\N	f	1	2023-03-10 17:07:23.615385+00	2023-03-10 17:07:23.615385+00	\N
cl_9jukh0cuz74jg7	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	Title	title	SingleLineText	character varying	\N	\N	\N	2	f	t	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	2	2023-03-10 17:07:23.626704+00	2023-03-10 17:07:23.626704+00	\N
cl_plu9x85hdubsqo	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	CreatedAt	created_at	DateTime	timestamp without time zone	\N	\N	\N	3	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	f	\N	\N	\N	f	3	2023-03-10 17:07:23.639935+00	2023-03-10 17:07:23.639935+00	\N
cl_cqfsfsk16pd7k9	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	UpdatedAt	updated_at	DateTime	timestamp without time zone	\N	\N	\N	4	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	t	\N	\N	\N	f	4	2023-03-10 17:07:23.651164+00	2023-03-10 17:07:23.651164+00	\N
cl_2br9e6wk175yy6	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Machine No	Machine No	SingleLineText	character varying	\N	\N	\N	11	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 19:41:28.813895+00	2023-03-10 19:41:28.813895+00	{}
cl_h28593txopvhep	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Reason for Deviation	Reason for Deviation	LongText	text	\N	\N	\N	13	f	\N	f	f	\N	f	\N	\N	\N	\N	text	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 19:49:48.242198+00	2023-03-10 19:49:48.242198+00	{}
cl_3ajs8h65ysr57w	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Enhanced Inspection Requirements	Enhanced Inspection Requirements	LongText	text	\N	\N	\N	14	f	\N	f	f	\N	f	\N	\N	\N	\N	text	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 19:52:19.577687+00	2023-03-10 19:52:19.577687+00	{}
cl_xb39ziyz6uy5vh	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	Title	title	SingleLineText	character varying	\N	\N	\N	2	f	t	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	2	2023-03-10 17:37:17.622929+00	2023-03-10 17:37:17.622929+00	\N
cl_jlm5nz2xtjoph9	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	Id	id	ID	integer	32	0	\N	1	t	\N	t	f	int(11)	t	\N	nextval('nc_xwok___feature_id_seq'::regclass)	\N	\N	integer	32	0	f	\N	\N	\N	f	1	2023-03-10 17:37:17.611381+00	2023-03-10 17:37:17.611381+00	\N
cl_bnlrtd1fcxbbsh	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	CreatedAt	created_at	DateTime	timestamp without time zone	\N	\N	\N	3	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	f	\N	\N	\N	f	3	2023-03-10 17:37:17.636908+00	2023-03-10 17:37:17.636908+00	\N
cl_fthc9yb6xcyjfk	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	UpdatedAt	updated_at	DateTime	timestamp without time zone	\N	\N	\N	4	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	t	\N	\N	\N	f	4	2023-03-10 17:37:17.65573+00	2023-03-10 17:37:17.65573+00	\N
cl_53xdj6pwekwbtd	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	feature_number	feature_number	SingleLineText	character varying	\N	\N	\N	5	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 17:38:04.760656+00	2023-03-10 17:38:04.760656+00	{}
cl_byqx0yzceb63jb	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	description_of_nonconformance	description_of_nonconformance	SingleLineText	character varying	\N	\N	\N	6	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 17:38:19.720502+00	2023-03-10 17:38:19.720502+00	{}
cl_1og6zswuou77fh	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	spec	spec	SingleLineText	character varying	\N	\N	\N	7	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 17:38:27.323764+00	2023-03-10 17:38:27.323764+00	{}
cl_uwzycm5r4wa6y2	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	actual	actual	SingleLineText	character varying	\N	\N	\N	8	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 17:38:35.051141+00	2023-03-10 17:38:35.051141+00	{}
cl_9k89r7fsnmq31r	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	UpdatedAt	updated_at	DateTime	timestamp without time zone	\N	\N	\N	4	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	t	\N	\N	\N	f	4	2023-03-10 19:53:16.730866+00	2023-03-10 19:53:16.730866+00	\N
cl_w6nv2wp7aaso9t	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	Description of Non Conformance	Description of Non Conformance	LongText	text	\N	\N	\N	5	f	\N	f	f	\N	f	\N	\N	\N	\N	text	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 19:54:10.963854+00	2023-03-10 19:54:10.963854+00	{}
cl_ftuktp05yd39e6	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	DeviationStart	DeviationStart	SingleSelect	text	\N	\N	\N	5	f	\N	f	f	\N	f	\N	\N	\N	\N	specificType	'FUEL - ','AUTO - '	 	f		\N	\N	f	\N	2023-03-10 18:57:47.744789+00	2023-03-16 13:47:43.194331+00	{}
cl_hiwtgtz7b6t248	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Qty Affected or Duration	Qty Affected or Duration	SingleLineText	character varying	\N	\N	\N	8	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 19:40:32.597812+00	2023-03-10 19:40:32.597812+00	{}
cl_s8ns0izs2zvbnx	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	WO#	WO#	SingleLineText	character varying	\N	\N	\N	9	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 19:40:40.250748+00	2023-03-10 19:40:40.250748+00	{}
cl_5lzqxfo1k2uvah	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Process Initiating Deviation	Process Initiating Deviation	SingleLineText	character varying	\N	\N	\N	10	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 19:41:16.258862+00	2023-03-10 19:41:16.258862+00	{}
cl_h4y17cm3ju2cq4	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	Specification/Standard	Specification/Standard	LongText	text	\N	\N	\N	6	f	\N	f	f	\N	f	\N	\N	\N	\N	text	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 19:54:29.669481+00	2023-03-10 19:54:29.669481+00	{}
cl_g2akp20v6uwwz8	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	Actual	Actual	LongText	text	\N	\N	\N	7	f	\N	f	f	\N	f	\N	\N	\N	\N	text	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 19:54:39.331951+00	2023-03-10 19:54:39.331951+00	{}
cl_92u1lkwxw04p87	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	Feature Num	Feature Num	SingleLineText	character varying	\N	\N	\N	2	f	t	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f		\N	\N	f	2	2023-03-10 19:53:16.706334+00	2023-03-19 22:07:01.248853+00	\N
cl_euynmwtdis5mfs	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_r5femfp1sims4p	Id	id	ID	integer	32	0	\N	1	t	\N	t	f	int(11)	t	\N	nextval('"nc_9j1b___WorkCell_id_seq"'::regclass)	\N	\N	integer	32	0	f	\N	\N	\N	f	1	2023-03-10 19:46:28.537166+00	2023-03-10 19:46:28.537166+00	\N
cl_e5irdzav5am4w4	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_r5femfp1sims4p	CreatedAt	created_at	DateTime	timestamp without time zone	\N	\N	\N	3	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	f	\N	\N	\N	f	3	2023-03-10 19:46:28.568969+00	2023-03-10 19:46:28.568969+00	\N
cl_mz3uz8hnszjfg8	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_r5femfp1sims4p	UpdatedAt	updated_at	DateTime	timestamp without time zone	\N	\N	\N	4	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	t	\N	\N	\N	f	4	2023-03-10 19:46:28.586587+00	2023-03-10 19:46:28.586587+00	\N
cl_2o4uay2iqi1q2r	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	RepeatDev	RepeatDev	Checkbox	boolean	\N	\N	\N	12	f	\N	f	f	varchar(45)	f	\N	false	\N	\N	boolean	\N	\N	f		\N	\N	f	\N	2023-03-10 19:49:11.767633+00	2023-04-25 22:50:37.91484+00	{"icon":{"checked":"mdi-check-bold","unchecked":"mdi-crop-square"},"color":"#d00000","iconIdx":0}
cl_wy6timcat6f83v	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Quality Mgr Approval	Quality Mgr Approval	Checkbox	boolean	\N	\N	\N	18	f	\N	f	f	varchar(45)	f	\N	false	\N	\N	boolean	\N	\N	f		\N	\N	f	\N	2023-03-13 11:08:43.882461+00	2023-04-25 22:50:37.97444+00	{"icon":{"checked":"mdi-check-bold","unchecked":"mdi-crop-square"},"color":"#07D234FF","iconIdx":0}
cl_27tfk52gybwxot	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Deviation Initiated By	Deviation Initiated By	SingleLineText	character varying	\N	\N	\N	2	f	f	f	f	varchar(45)	f	\N	\N	\N	\N	specificType		 	f		\N	\N	f	2	2023-03-10 18:53:18.786042+00	2023-03-17 11:33:14.629649+00	{}
cl_h8pwm0jqoh25ks	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Deviation No	Deviation No	Formula	character varying	\N	\N	\N	\N	f	t	f	f	\N	f	\N	\N	\N	\N	specificType	\N	\N	\N		\N	\N	f	\N	2023-03-10 18:55:30.672528+00	2023-03-13 13:18:20.651884+00	{}
cl_kt93e647m6e4nx	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	Id	id	ID	integer	32	0	\N	1	t	\N	t	f	int(11)	t	\N	nextval('"nc_9j1b___Non-Conformance_id_seq"'::regclass)	\N	\N	integer	32	0	f	\N	\N	\N	f	1	2023-03-10 19:53:16.696697+00	2023-03-10 19:53:16.696697+00	\N
cl_9japbqi3nyj7vz	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_r5femfp1sims4p	Operations	Operations	SingleLineText	character varying	\N	\N	\N	2	f	t	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f		\N	\N	f	2	2023-03-10 19:46:28.548965+00	2023-03-13 11:00:37.098942+00	\N
cl_i0al36084yonpp	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	nc_9j1b___WorkCell_id	nc_9j1b___WorkCell_id	ForeignKey	integer	\N	\N	\N	\N	f	\N	f	f	\N	f	\N	\N	\N	\N	\N	32	0	\N	\N	\N	\N	f	\N	2023-03-13 11:01:28.644783+00	2023-03-13 11:01:28.644783+00	\N
cl_8budgh222doy0i	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Q ENG Review	Q ENG Review	SingleLineText	character varying	\N	\N	\N	20	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-13 11:10:09.751192+00	2023-03-13 11:10:09.751192+00	{}
cl_ajusw4693fxvte	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	nc_xwok___work_cell_id	nc_xwok___work_cell_id	ForeignKey	integer	\N	\N	\N	\N	f	\N	f	f	\N	f	\N	\N	\N	\N	\N	32	0	\N	\N	\N	\N	f	\N	2023-03-10 18:34:06.667277+00	2023-03-10 18:34:06.667277+00	\N
cl_b7lvnsj1pweue1	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	work_cell	\N	LinkToAnotherRecord	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	2023-03-10 18:34:06.710341+00	2023-03-10 18:34:06.710341+00	\N
cl_xmkp37djm9sdh2	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	deviation_id	\N	LinkToAnotherRecord	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	2023-03-10 18:34:06.754208+00	2023-03-10 18:34:06.754208+00	\N
cl_ctvh1lm9bp02pi	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_qx7jabyuv7igya	title5	title5	SingleLineText	character varying	\N	\N	\N	5	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	\N	2023-03-10 18:39:55.214701+00	2023-03-10 18:39:55.214701+00	{}
cl_sqc4vmlaermnth	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Affected Operation	\N	LinkToAnotherRecord	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	2023-03-13 11:01:28.697025+00	2023-03-13 13:07:42.978989+00	\N
cl_qsrvdbsopsi1x2	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Approved?	Approved?	Formula	character varying	\N	\N	\N	\N	f	f	f	f	\N	f	\N	\N	\N	\N	specificType	\N	\N	\N		\N	\N	f	\N	2023-03-13 12:08:34.533168+00	2023-03-13 13:18:20.64966+00	{}
cl_8z1jnfvy8196c5	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	P ENG Review	P ENG Review	SingleLineText	character varying	\N	\N	\N	19	f	\N	f	f	varchar(45)	f	\N	\N	\N	\N	specificType	\N	\N	f		\N	\N	f	\N	2023-03-13 11:09:57.293793+00	2023-03-13 12:09:36.38933+00	{}
cl_3xvh5pqz662pep	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Id	id	ID	integer	32	0	\N	1	t	\N	t	f	int(11)	t	\N	nextval('"nc_9j1b___NoticeOfDeviation_id_seq"'::regclass)	\N	\N	integer	32	0	f	\N	\N	\N	f	1	2023-03-10 18:53:18.764531+00	2023-03-10 18:53:18.764531+00	\N
cl_deyb3cxlexwdni	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	CreatedAt	created_at	DateTime	timestamp without time zone	\N	\N	\N	3	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	f	\N	\N	\N	f	3	2023-03-10 18:53:18.805513+00	2023-03-10 18:53:18.805513+00	\N
cl_h19j6ujaw4impg	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	UpdatedAt	updated_at	DateTime	timestamp without time zone	\N	\N	\N	4	f	\N	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	t	\N	\N	\N	f	4	2023-03-10 18:53:18.817225+00	2023-03-10 18:53:18.817225+00	\N
cl_7dr1ja62t9s2nt	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_r5femfp1sims4p	Affected	\N	LinkToAnotherRecord	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	2023-03-13 11:01:28.737204+00	2023-03-13 13:08:57.154421+00	\N
cl_k4psu9zbutgiu6	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	CreatedAt	created_at	DateTime	timestamp without time zone	\N	\N	\N	3	f	f	f	f	varchar(45)	f	\N	now()	\N	\N	timestamp without time zone	6	\N	f	\N	\N	\N	f	3	2023-03-10 19:53:16.720185+00	2023-03-19 22:07:01.24466+00	\N
cl_sancx6ksi2rvlz	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	nc_9j1b___WorkCell_id1	nc_9j1b___WorkCell_id1	ForeignKey	integer	\N	\N	\N	\N	f	\N	f	f	\N	f	\N	\N	\N	\N	\N	32	0	\N	\N	\N	\N	f	\N	2023-03-13 13:08:51.232913+00	2023-03-13 13:08:51.232913+00	\N
cl_ts3zog2nd5osot	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_r5femfp1sims4p	Correction	\N	LinkToAnotherRecord	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	2023-03-13 13:08:51.401186+00	2023-03-13 13:08:51.401186+00	\N
cl_baizpfir6doaa2	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Location of Correction	\N	LinkToAnotherRecord	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	2023-03-13 13:08:51.329892+00	2023-03-13 13:09:55.868743+00	\N
cl_us45kixsxfawke	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1imm2ng54uh1ml	table2_id	table2_id	ForeignKey	integer	\N	\N	\N	\N	t	\N	t	f	\N	f	\N	\N	\N	\N	\N	32	0	\N	\N	\N	\N	f	\N	2023-03-16 13:38:10.122482+00	2023-03-16 13:38:10.122482+00	\N
cl_xq5566ign99hi9	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1imm2ng54uh1ml	table1_id	table1_id	ForeignKey	integer	\N	\N	\N	\N	t	\N	t	f	\N	f	\N	\N	\N	\N	\N	32	0	\N	\N	\N	\N	f	\N	2023-03-16 13:38:10.133695+00	2023-03-16 13:38:10.133695+00	\N
cl_hm50hcoqv2po2x	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1imm2ng54uh1ml	Non-Conformance	\N	LinkToAnotherRecord	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2023-03-16 13:38:10.154996+00	2023-03-16 13:38:10.154996+00	\N
cl_adx7uz6rd21nux	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1imm2ng54uh1ml	NoticeOfDeviation	\N	LinkToAnotherRecord	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2023-03-16 13:38:10.191875+00	2023-03-16 13:38:10.191875+00	\N
cl_s3angybz3137tm	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	NoticeOfDeviation List	\N	LinkToAnotherRecord	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	2023-03-16 13:38:10.248579+00	2023-03-16 13:38:10.248579+00	\N
cl_wk50acazygy01v	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	Non Conformances	\N	LinkToAnotherRecord	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	f	\N	2023-03-16 13:38:10.270954+00	2023-03-16 13:38:10.270954+00	\N
cl_rai4ahsi1rhktj	ds_j474qi6w09vzkp	p_3ic0yll5hyobw1	md_u3yyi5e7a3czch	Id	id	Number	integer	32	0	\N	1	t	\N	t	f	\N	t	\N	nextval('scrap1_id_seq'::regclass)	\N	\N	integer	32	0	f	\N	\N	\N	f	1	2023-04-25 20:36:11.380888+00	2023-04-25 20:36:11.380888+00	\N
cl_eyorwoq185agyj	ds_j474qi6w09vzkp	p_3ic0yll5hyobw1	md_u3yyi5e7a3czch	Pn	pn	SingleLineText	character varying	\N	\N	\N	2	f	t	t	f	\N	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	2	2023-04-25 20:36:11.400218+00	2023-04-25 20:36:11.400218+00	\N
cl_qbev6c9j1jt04h	ds_j474qi6w09vzkp	p_3ic0yll5hyobw1	md_u3yyi5e7a3czch	Code	code	SingleLineText	character varying	\N	\N	\N	3	f	\N	t	f	\N	f	\N	\N	\N	\N	character varying	\N	\N	f	\N	\N	\N	f	3	2023-04-25 20:36:11.420924+00	2023-04-25 20:36:11.420924+00	\N
cl_y1vvgax2b41gy9	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	ENG Mgr Approval	ENG Mgr Approval	Checkbox	boolean	\N	\N	\N	17	f	\N	f	f	varchar(45)	f	\N	false	\N	\N	boolean	\N	\N	f		\N	\N	f	\N	2023-03-13 11:08:28.278834+00	2023-04-25 22:50:37.944883+00	{"icon":{"checked":"mdi-check-bold","unchecked":"mdi-crop-square"},"color":"#17E119FF","iconIdx":0}
cl_0zcys4kfrkrw9b	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	nc_9j1b___nc_m2m__w442b2pgo List	\N	LinkToAnotherRecord	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2023-03-16 13:38:10.170956+00	2023-04-25 22:50:37.986195+00	\N
cl_eadps8vbc0jv4p	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	nc_9j1b___nc_m2m__w442b2pgo List	\N	LinkToAnotherRecord	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	t	\N	2023-03-16 13:38:10.209966+00	2023-04-25 22:50:37.988653+00	\N
\.


--
-- Data for Name: nc_cron; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_cron (id, project_id, db_alias, title, description, env, pattern, webhook, timezone, active, cron_handler, payload, headers, retries, retry_interval, timeout, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_disabled_models_for_role; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_disabled_models_for_role (id, project_id, db_alias, title, type, role, disabled, tn, rtn, cn, rcn, relation_type, created_at, updated_at, parent_model_title) FROM stdin;
\.


--
-- Data for Name: nc_disabled_models_for_role_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_disabled_models_for_role_v2 (id, base_id, project_id, fk_view_id, role, disabled, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_evolutions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_evolutions (id, title, "titleDown", description, batch, checksum, status, created, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_filter_exp_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_filter_exp_v2 (id, base_id, project_id, fk_view_id, fk_hook_id, fk_column_id, fk_parent_id, logical_op, comparison_op, value, is_group, "order", created_at, updated_at) FROM stdin;
fi_ixvxq50t1b9l7d	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	hk_tt9akdnm9zq2ku	cl_hjiyj8piidg04v	\N	and	notnull		\N	1	2023-03-17 02:09:43.476238+00	2023-03-17 02:09:43.476238+00
fi_hg9ikbunrlz6yb	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	hk_mlv7si6720rooe	cl_h19j6ujaw4impg	\N	and	notblank		\N	1	2023-03-16 14:14:00.141426+00	2023-03-17 02:19:03.189081+00
\.


--
-- Data for Name: nc_form_view_columns_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_form_view_columns_v2 (id, base_id, project_id, fk_view_id, fk_column_id, uuid, label, help, description, required, show, "order", created_at, updated_at, meta) FROM stdin;
fvc_o6iu10zlbl36mg	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_3xvh5pqz662pep	\N	\N	\N	\N	\N	f	1	2023-03-13 12:25:58.472008+00	2023-03-13 12:25:58.472008+00	\N
fvc_de78zd7ru8kl9c	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_deyb3cxlexwdni	\N	\N	\N	\N	\N	f	3	2023-03-13 12:25:58.482519+00	2023-03-13 12:25:58.482519+00	\N
fvc_h4muu6ze9jxajj	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_h19j6ujaw4impg	\N	\N	\N	\N	\N	f	4	2023-03-13 12:25:58.487081+00	2023-03-13 12:25:58.487081+00	\N
fvc_q5skfluubj5159	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_h8pwm0jqoh25ks	\N	\N	\N	\N	\N	t	5	2023-03-13 12:25:58.491325+00	2023-03-13 12:25:58.491325+00	{}
fvc_iydu24z0uqqjsu	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_s8ns0izs2zvbnx	\N	\N	\N	\N	\N	t	8	2023-03-13 12:25:58.505671+00	2023-03-13 12:25:58.505671+00	{}
fvc_w6fnrz09fsp6fp	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_2br9e6wk175yy6	\N	\N	\N	\N	\N	t	10	2023-03-13 12:25:58.513026+00	2023-03-13 12:25:58.513026+00	{}
fvc_hjsyyz7ef1g0gx	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_2o4uay2iqi1q2r	\N	\N	\N	\N	\N	t	11	2023-03-13 12:25:58.517325+00	2023-03-13 12:25:58.517325+00	{"icon":{"checked":"mdi-check-bold","unchecked":"mdi-crop-square"},"color":"#d00000","iconIdx":0}
fvc_7revtijryczuni	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_i0al36084yonpp	\N	\N	\N	\N	\N	f	14	2023-03-13 12:25:58.529285+00	2023-03-13 12:25:58.529285+00	\N
fvc_2sqphgamv7deg3	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_qsrvdbsopsi1x2	\N	\N	\N	\N	\N	t	20	2023-03-13 12:25:58.554767+00	2023-03-13 12:25:58.554767+00	{}
fvc_apuual0ocmsmjv	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_baizpfir6doaa2	\N	\N	\N	\N	\N	t	16.875	2023-03-16 14:11:15.396589+00	2023-03-16 14:11:34.446956+00	\N
fvc_5x65jrp2dd3hwp	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_y1vvgax2b41gy9	\N		\N	Engineering Manager sign off only.	f	f	22	2023-03-13 12:25:58.53929+00	2023-03-29 20:04:33.042602+00	{"icon":{"checked":"mdi-check-bold","unchecked":"mdi-crop-square"},"color":"#777","iconIdx":0}
fvc_tgujn19jfk6c4a	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_8z1jnfvy8196c5	\N	\N	\N	\N	\N	f	23	2023-03-13 12:25:58.546382+00	2023-03-29 20:04:35.046615+00	{}
fvc_2j10d1yiltx6eo	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_5lzqxfo1k2uvah	\N	\N	\N	\N	t	t	9	2023-03-13 12:25:58.509071+00	2023-03-13 12:34:01.112886+00	{}
fvc_ctsqlyhvq05gw1	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_h28593txopvhep	\N	\N	\N	\N	t	t	12	2023-03-13 12:25:58.521159+00	2023-03-13 12:34:08.321654+00	{}
fvc_gq3wig7lotlspp	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_27tfk52gybwxot	\N		\N	\N	t	t	4	2023-03-13 12:25:58.478291+00	2023-03-29 20:05:45.385067+00	{}
fvc_x540itc1v2f6r4	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_hiwtgtz7b6t248	\N	\N	\N	ie: 20pcs or 2 weeks.	t	t	7	2023-03-13 12:25:58.501072+00	2023-03-13 13:12:30.383758+00	{}
fvc_sh1l8ohonvls20	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_wy6timcat6f83v	\N	\N	\N	Quality Manager sign off only.	f	f	17	2023-03-13 12:25:58.542717+00	2023-03-16 13:34:48.477608+00	{"icon":{"checked":"mdi-check-bold","unchecked":"mdi-crop-square"},"color":"#777","iconIdx":0}
fvc_q5ml2y7z0n4qp0	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_8budgh222doy0i	\N	\N	\N	\N	\N	f	19	2023-03-13 12:25:58.550413+00	2023-03-16 13:34:52.253346+00	{}
fvc_wijcoohp1lukw9	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_ftuktp05yd39e6	\N	\N	\N	\N	\N	t	1	2023-03-13 12:25:58.496652+00	2023-03-16 14:10:58.385771+00	{}
fvc_978n1f5bfn8b90	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_wk50acazygy01v	\N	\N	\N	\N	\N	t	21	2023-03-16 14:11:13.26295+00	2023-03-16 14:11:13.26295+00	\N
fvc_rj3kxkmx9zomqk	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_sqc4vmlaermnth	\N	\N	\N	\N	\N	t	12.75	2023-03-13 12:25:58.535537+00	2023-03-16 14:11:22.56217+00	\N
fvc_byih6gp21sr37t	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	cl_3ajs8h65ysr57w	\N	\N	\N	\N	t	t	11.5	2023-03-13 12:25:58.525506+00	2023-03-16 14:11:27.217475+00	{}
\.


--
-- Data for Name: nc_form_view_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_form_view_v2 (base_id, project_id, fk_view_id, heading, subheading, success_msg, redirect_url, redirect_after_secs, email, submit_another_form, show_blank_form, uuid, banner_image_url, logo_url, created_at, updated_at, meta) FROM stdin;
ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_u83nsmlb9wimka	Notice of Deviation	PM-1636-FRM	\N	\N	\N	{"ckwan@stackpole.com":false}	f	f	\N	\N	\N	2023-03-13 12:25:58.462676+00	2023-03-13 13:45:31.930437+00	{}
\.


--
-- Data for Name: nc_gallery_view_columns_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_gallery_view_columns_v2 (id, base_id, project_id, fk_view_id, fk_column_id, uuid, label, help, show, "order", created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_gallery_view_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_gallery_view_v2 (base_id, project_id, fk_view_id, next_enabled, prev_enabled, cover_image_idx, fk_cover_image_col_id, cover_image, restrict_types, restrict_size, restrict_number, public, dimensions, responsive_columns, created_at, updated_at, meta) FROM stdin;
\.


--
-- Data for Name: nc_grid_view_columns_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_grid_view_columns_v2 (id, fk_view_id, fk_column_id, base_id, project_id, uuid, label, help, width, show, "order", created_at, updated_at) FROM stdin;
nc_zhgz4a4dymbeeb	vw_p2040jaon6givp	cl_azruuldezwulq8	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	1	2023-03-09 19:57:41.774631+00	2023-03-09 19:57:41.779946+00
nc_me15i8umo7a6sk	vw_ai5fk7qev8gya3	cl_s8ns0izs2zvbnx	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	101px	t	8	2023-03-10 19:40:40.255214+00	2023-03-16 13:42:19.209502+00
nc_v6zv4jdbhnj0q0	vw_ai5fk7qev8gya3	cl_3xvh5pqz662pep	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	83px	t	2	2023-03-10 18:53:18.776951+00	2023-03-16 13:42:19.180665+00
nc_mnaherq8agls7g	vw_ai5fk7qev8gya3	cl_27tfk52gybwxot	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	178px	t	4	2023-03-10 18:53:18.790769+00	2023-03-16 13:42:19.186886+00
nc_a3pagngnf6zt7g	vw_p2040jaon6givp	cl_hjiyj8piidg04v	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	7	2023-03-09 19:57:41.809932+00	2023-03-09 20:02:45.428524+00
nc_21qawfkafa9x0w	vw_p2040jaon6givp	cl_tgmec6eaqlnm1a	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	6	2023-03-09 19:57:41.790473+00	2023-03-09 20:02:45.441648+00
nc_cocxrguzwqzhra	vw_negnnuez0qy4jt	cl_xb39ziyz6uy5vh	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	1	2023-03-10 17:37:17.627159+00	2023-03-10 17:37:17.632039+00
nc_av0ai2o3n6wtja	vw_negnnuez0qy4jt	cl_jlm5nz2xtjoph9	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	2	2023-03-10 17:37:17.617305+00	2023-03-10 17:37:17.633758+00
nc_me9520vm5lrwts	vw_negnnuez0qy4jt	cl_bnlrtd1fcxbbsh	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	3	2023-03-10 17:37:17.642082+00	2023-03-10 17:37:17.642082+00
nc_nsru9g526fto6m	vw_p2040jaon6givp	cl_sogizyl4tfljyr	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	118px	t	3	2023-03-09 19:58:49.934205+00	2023-03-09 20:03:50.327534+00
nc_i9j0u17hm743g5	vw_p2040jaon6givp	cl_eotlssksfzkgbx	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	96px	t	2	2023-03-09 19:57:41.763109+00	2023-03-09 20:03:53.399847+00
nc_ol7igjf9dsdf9c	vw_p2040jaon6givp	cl_0gdqs46pg6tf03	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	f	8	2023-03-09 20:03:26.331432+00	2023-03-09 20:04:22.547811+00
nc_vw3r3vq0per6mo	vw_p2040jaon6givp	cl_6v44c65kkti6lo	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	f	9	2023-03-09 20:04:15.280845+00	2023-03-09 20:04:23.586479+00
nc_lze2oo9aflesu9	vw_p2040jaon6givp	cl_x67a7g4ofl9p4m	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	10	2023-03-10 16:39:32.945423+00	2023-03-10 16:39:32.945423+00
nc_i5hckd0uom7lq6	vw_p2040jaon6givp	cl_9ecnmh1fkq77t9	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	111px	t	4	2023-03-09 20:01:43.538152+00	2023-03-10 16:49:57.112005+00
nc_f35tvoubp5ejmz	vw_p2040jaon6givp	cl_x3yt8r9p2cs5ky	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	143px	t	5	2023-03-09 20:01:38.362534+00	2023-03-10 16:49:57.117925+00
nc_0rnfs8wept9pmn	vw_8xxs8m9edgicpk	cl_4aqvwg3gvmm3tx	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	1	2023-03-10 16:50:48.480929+00	2023-03-10 16:50:48.489111+00
nc_vrg2uuaki828hp	vw_8xxs8m9edgicpk	cl_p899b72kpen3n2	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	2	2023-03-10 16:50:48.465276+00	2023-03-10 16:50:48.491633+00
nc_91vwi26m4f8oee	vw_8xxs8m9edgicpk	cl_1yhstymbocsnyp	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	3	2023-03-10 16:50:48.499554+00	2023-03-10 16:50:48.499554+00
nc_crnz9i9km84uyi	vw_8xxs8m9edgicpk	cl_0gatrhv7bwtsfo	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	4	2023-03-10 16:50:48.514372+00	2023-03-10 16:50:48.514372+00
nc_c1ki0ac9pbrgrk	vw_p2040jaon6givp	cl_fchm9qicls4sax	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	11	2023-03-10 17:00:28.513269+00	2023-03-10 17:00:28.513269+00
nc_qblq17nv6n7x7u	vw_3eld608zn31vsa	cl_9jukh0cuz74jg7	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	1	2023-03-10 17:07:23.630714+00	2023-03-10 17:07:23.635438+00
nc_jfd8c4boflqyty	vw_3eld608zn31vsa	cl_1arbzol6wz5mh4	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	2	2023-03-10 17:07:23.621283+00	2023-03-10 17:07:23.636995+00
nc_vf3kiejhhcrifb	vw_3eld608zn31vsa	cl_plu9x85hdubsqo	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	3	2023-03-10 17:07:23.644261+00	2023-03-10 17:07:23.644261+00
nc_4ct68l8xqmjnsc	vw_3eld608zn31vsa	cl_cqfsfsk16pd7k9	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	4	2023-03-10 17:07:23.655395+00	2023-03-10 17:07:23.655395+00
nc_tka2e0ssdm4f9b	vw_ai5fk7qev8gya3	cl_deyb3cxlexwdni	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	5	2023-03-10 18:53:18.8099+00	2023-03-16 13:42:19.191302+00
nc_crva77hokstr9z	vw_ai5fk7qev8gya3	cl_h28593txopvhep	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	13	2023-03-10 19:49:48.248288+00	2023-03-16 13:42:19.224283+00
nc_kwjk1fpi1cjzln	vw_ai5fk7qev8gya3	cl_ftuktp05yd39e6	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	7	2023-03-10 18:57:47.749468+00	2023-03-16 13:42:19.201653+00
nc_0boxgcf0s9cq74	vw_negnnuez0qy4jt	cl_fthc9yb6xcyjfk	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	4	2023-03-10 17:37:17.659515+00	2023-03-10 17:37:17.659515+00
nc_4fb9xx5pcfs6sj	vw_negnnuez0qy4jt	cl_53xdj6pwekwbtd	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	5	2023-03-10 17:38:04.765215+00	2023-03-10 17:38:04.765215+00
nc_68sazayw5j1d7n	vw_negnnuez0qy4jt	cl_byqx0yzceb63jb	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	6	2023-03-10 17:38:19.725997+00	2023-03-10 17:38:19.725997+00
nc_dpun8q9nkcv1si	vw_negnnuez0qy4jt	cl_1og6zswuou77fh	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	7	2023-03-10 17:38:27.329002+00	2023-03-10 17:38:27.329002+00
nc_387rnwsmg26ol7	vw_negnnuez0qy4jt	cl_uwzycm5r4wa6y2	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	8	2023-03-10 17:38:35.055651+00	2023-03-10 17:38:35.055651+00
nc_5nb8qql23r502i	vw_ai5fk7qev8gya3	cl_h19j6ujaw4impg	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	6	2023-03-10 18:53:18.821887+00	2023-03-16 13:42:19.194755+00
nc_uipqw0fqd1gwc7	vw_ai5fk7qev8gya3	cl_hiwtgtz7b6t248	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	9	2023-03-10 19:40:32.602693+00	2023-03-16 13:42:19.205569+00
nc_vcm4n1630xq0qo	vw_ai5fk7qev8gya3	cl_5lzqxfo1k2uvah	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	206px	t	10	2023-03-10 19:41:16.264685+00	2023-03-16 13:42:19.213531+00
nc_y20qlch0arwa7t	vw_r2n9nymvi357c0	cl_9japbqi3nyj7vz	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	1	2023-03-10 19:46:28.552754+00	2023-03-10 19:46:28.55751+00
nc_b3bnhthqa0qsib	vw_r2n9nymvi357c0	cl_euynmwtdis5mfs	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	2	2023-03-10 19:46:28.543427+00	2023-03-10 19:46:28.559302+00
nc_xmepwae7nqz5zy	vw_r2n9nymvi357c0	cl_e5irdzav5am4w4	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	3	2023-03-10 19:46:28.574966+00	2023-03-10 19:46:28.574966+00
nc_frlvrhv40pstfv	vw_r2n9nymvi357c0	cl_mz3uz8hnszjfg8	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	4	2023-03-10 19:46:28.591916+00	2023-03-10 19:46:28.591916+00
nc_5lyryynqma7kei	vw_yqq10i460rnvz9	cl_qbev6c9j1jt04h	ds_j474qi6w09vzkp	p_3ic0yll5hyobw1	\N	\N	\N	200px	t	3	2023-04-25 20:36:11.427414+00	2023-04-25 20:37:10.956069+00
nc_dnx1ojhp1b20c6	vw_yqq10i460rnvz9	cl_eyorwoq185agyj	ds_j474qi6w09vzkp	p_3ic0yll5hyobw1	\N	\N	\N	200px	t	1	2023-04-25 20:36:11.406415+00	2023-04-25 20:37:10.952487+00
nc_xhrym127ei3kqb	vw_yqq10i460rnvz9	cl_rai4ahsi1rhktj	ds_j474qi6w09vzkp	p_3ic0yll5hyobw1	\N	\N	\N	200px	t	2	2023-04-25 20:36:11.390287+00	2023-04-25 20:37:10.947872+00
nc_17oqeolsrnppzc	vw_p2040jaon6givp	cl_ajusw4693fxvte	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	12	2023-03-10 18:34:06.672151+00	2023-03-10 18:34:06.672151+00
nc_zhno8zd2o9w28j	vw_p2040jaon6givp	cl_b7lvnsj1pweue1	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	13	2023-03-10 18:34:06.722916+00	2023-03-10 18:34:06.722916+00
nc_4kn803toyagrjl	vw_3eld608zn31vsa	cl_xmkp37djm9sdh2	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	5	2023-03-10 18:34:06.76297+00	2023-03-10 18:34:06.76297+00
nc_f9tyetrw5v7mk7	vw_8xxs8m9edgicpk	cl_ctvh1lm9bp02pi	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	\N	\N	200px	t	5	2023-03-10 18:39:55.224224+00	2023-03-10 18:39:55.224224+00
nc_o9zt8oq6gukcdz	vw_pnsmbtuv8hsnih	cl_0zcys4kfrkrw9b	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	f	8	2023-03-16 13:38:10.178902+00	2023-03-19 22:10:18.029052+00
nc_22fxum4mqu6f94	vw_ai5fk7qev8gya3	cl_wk50acazygy01v	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	259px	t	16	2023-03-16 13:38:10.285963+00	2023-03-16 13:42:19.267294+00
nc_esilbpfnak6rqj	vw_ai5fk7qev8gya3	cl_h8pwm0jqoh25ks	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	\N	t	1	2023-03-10 18:55:30.682188+00	2023-03-16 13:42:19.198256+00
nc_ektespmd31wcx6	vw_ai5fk7qev8gya3	cl_2br9e6wk175yy6	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	146px	t	11	2023-03-10 19:41:28.841413+00	2023-03-16 13:42:19.217168+00
nc_2dyqtka5i5hl5y	vw_ai5fk7qev8gya3	cl_2o4uay2iqi1q2r	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	108px	t	12	2023-03-10 19:49:11.77202+00	2023-03-16 13:42:19.220736+00
nc_tgol8rbqneq1cx	vw_pnsmbtuv8hsnih	cl_k4psu9zbutgiu6	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	151px	t	2	2023-03-10 19:53:16.724271+00	2023-03-19 22:13:16.144664+00
nc_3vyjhx1b720oar	vw_pnsmbtuv8hsnih	cl_kt93e647m6e4nx	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	61px	t	3	2023-03-10 19:53:16.700609+00	2023-03-19 22:13:16.145666+00
nc_a905rui8p6d827	vw_pnsmbtuv8hsnih	cl_92u1lkwxw04p87	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	1	2023-03-10 19:53:16.711394+00	2023-03-19 22:07:01.264427+00
nc_wtbg7dy55p1r3t	vw_ai5fk7qev8gya3	cl_3ajs8h65ysr57w	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	259px	t	14	2023-03-10 19:52:19.583341+00	2023-03-16 13:42:19.227503+00
nc_k3mlrdrp1dwfrr	vw_ai5fk7qev8gya3	cl_sqc4vmlaermnth	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	167px	t	17	2023-03-13 11:01:28.708228+00	2023-03-16 13:42:19.234551+00
nc_5ipui1daxbd87v	vw_ai5fk7qev8gya3	cl_y1vvgax2b41gy9	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	158px	t	19	2023-03-13 11:08:28.28457+00	2023-03-16 13:42:19.238461+00
nc_t3cre78b2l3ccg	vw_ai5fk7qev8gya3	cl_wy6timcat6f83v	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	173px	t	20	2023-03-13 11:08:43.887552+00	2023-03-16 13:42:19.241817+00
nc_cu5uz5sohxyfho	vw_ai5fk7qev8gya3	cl_8z1jnfvy8196c5	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	127px	t	21	2023-03-13 11:09:57.300285+00	2023-03-16 13:42:19.245484+00
nc_d6q8rg1fhrm37a	vw_r2n9nymvi357c0	cl_7dr1ja62t9s2nt	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	7	2023-03-13 11:01:28.744112+00	2023-03-13 11:01:28.744112+00
nc_xk7nrtg21ynvgj	vw_ai5fk7qev8gya3	cl_8budgh222doy0i	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	133px	t	22	2023-03-13 11:10:09.755674+00	2023-03-16 13:42:19.248873+00
nc_up4v2fgnr53ukl	vw_ai5fk7qev8gya3	cl_qsrvdbsopsi1x2	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	3	2023-03-13 12:08:34.541508+00	2023-03-16 13:42:19.252637+00
nc_hdu55jdw6vt97j	vw_ai5fk7qev8gya3	cl_baizpfir6doaa2	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	178px	t	18	2023-03-13 13:08:51.34794+00	2023-03-16 13:42:19.259555+00
nc_twaadr7naee7ih	vw_pnsmbtuv8hsnih	cl_9k89r7fsnmq31r	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	f	4	2023-03-10 19:53:16.734304+00	2023-03-19 22:07:01.270242+00
nc_a6kj86pkcdpieg	vw_pnsmbtuv8hsnih	cl_w6nv2wp7aaso9t	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	240px	t	5	2023-03-10 19:54:10.968251+00	2023-03-19 22:07:01.271981+00
nc_7nlu2cushqj6w3	vw_ai5fk7qev8gya3	cl_sancx6ksi2rvlz	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	f	23	2023-03-13 13:08:51.239524+00	2023-03-16 14:16:44.221194+00
nc_2uy2qzc2s3tcpu	vw_ai5fk7qev8gya3	cl_eadps8vbc0jv4p	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	f	24	2023-03-16 13:38:10.218303+00	2023-03-16 14:16:47.537748+00
nc_8zz69undbhplym	vw_ai5fk7qev8gya3	cl_i0al36084yonpp	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	f	15	2023-03-13 11:01:28.652022+00	2023-03-16 14:17:04.349543+00
nc_dr473syqaui3q8	vw_pnsmbtuv8hsnih	cl_h4y17cm3ju2cq4	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	6	2023-03-10 19:54:29.674318+00	2023-03-19 22:07:01.273575+00
nc_716c99m62c0gm2	vw_pnsmbtuv8hsnih	cl_g2akp20v6uwwz8	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	7	2023-03-10 19:54:39.3364+00	2023-03-19 22:07:01.275573+00
nc_guxqig33ipnbl9	vw_pnsmbtuv8hsnih	cl_s3angybz3137tm	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	9	2023-03-16 13:38:10.257468+00	2023-03-19 22:07:01.27902+00
nc_4bx7pdbkziq2hj	vw_r2n9nymvi357c0	cl_ts3zog2nd5osot	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	8	2023-03-13 13:08:51.419068+00	2023-03-13 13:08:51.419068+00
nc_ryff3052tzsbaw	vw_nexqns57jll40x	cl_us45kixsxfawke	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	1	2023-03-16 13:38:10.127336+00	2023-03-16 13:38:10.127336+00
nc_rqehu04av1dr5l	vw_nexqns57jll40x	cl_xq5566ign99hi9	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	2	2023-03-16 13:38:10.138407+00	2023-03-16 13:38:10.138407+00
nc_lzgqvnkkn983vq	vw_nexqns57jll40x	cl_hm50hcoqv2po2x	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	3	2023-03-16 13:38:10.163697+00	2023-03-16 13:38:10.163697+00
nc_a2liyhzmcwdvbf	vw_nexqns57jll40x	cl_adx7uz6rd21nux	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	\N	200px	t	4	2023-03-16 13:38:10.200888+00	2023-03-16 13:38:10.200888+00
\.


--
-- Data for Name: nc_grid_view_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_grid_view_v2 (fk_view_id, base_id, project_id, uuid, created_at, updated_at, meta, row_height) FROM stdin;
vw_p2040jaon6givp	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	2023-03-09 19:57:41.749941+00	2023-03-09 19:57:41.749941+00	\N	\N
vw_8xxs8m9edgicpk	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	2023-03-10 16:50:48.456824+00	2023-03-10 16:50:48.456824+00	\N	\N
vw_3eld608zn31vsa	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	2023-03-10 17:07:23.611511+00	2023-03-10 17:07:23.611511+00	\N	\N
vw_negnnuez0qy4jt	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	2023-03-10 17:37:17.60782+00	2023-03-10 17:37:17.60782+00	\N	\N
vw_r2n9nymvi357c0	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	2023-03-10 19:46:28.530404+00	2023-03-10 19:46:28.530404+00	\N	\N
vw_nexqns57jll40x	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	2023-03-16 13:38:10.118037+00	2023-03-16 13:38:10.118037+00	\N	\N
vw_ai5fk7qev8gya3	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	2023-03-10 18:53:18.760943+00	2023-03-16 13:59:06.823508+00	\N	1
vw_pnsmbtuv8hsnih	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	2023-03-10 19:53:16.693272+00	2023-03-19 22:10:42.594952+00	\N	1
vw_yqq10i460rnvz9	ds_j474qi6w09vzkp	p_3ic0yll5hyobw1	\N	2023-04-25 20:36:11.370304+00	2023-04-25 20:36:11.370304+00	\N	\N
\.


--
-- Data for Name: nc_hook_logs_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_hook_logs_v2 (id, base_id, project_id, fk_hook_id, type, event, operation, test_call, payload, conditions, notification, error_code, error_message, error, execution_time, response, triggered_by, created_at, updated_at) FROM stdin;
nc_ms9o0o64unokm8	\N	\N	\N	\N	after	insert	f	\N	\N	{"type":"Email","payload":{"to":"dgleba@stackpole.com; ckwan@stackpole.com","subject":"new dev","body":"{{ data.id }}  {{ data.\\"Reason for Deviation\\" }}\\n"}}	\N	Parse error on line 1:\n...data.id }}  {{ data."Reason for Deviatio...\n-----------------------^\nExpecting 'ID', got 'STRING'	{"stack":"Error: Parse error on line 1:\\n...data.id }}  {{ data.\\"Reason for Deviatio...\\n-----------------------^\\nExpecting 'ID', got 'STRING'\\n    at Parser.parseError (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/parser.js:267:19)\\n    at Parser.parse (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/parser.js:336:30)\\n    at parseWithoutProcessing (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/base.js:46:33)\\n    at HandlebarsEnvironment.parse (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/base.js:52:13)\\n    at compileInput (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/compiler.js:508:19)\\n    at ret (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/compiler.js:517:18)\\n    at l (/usr/src/app/docker/main.js:1:564038)\\n    at t.invokeWebhook (/usr/src/app/docker/main.js:1:567527)\\n    at runMicrotasks (<anonymous>)\\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)","message":"Parse error on line 1:\\n...data.id }}  {{ data.\\"Reason for Deviatio...\\n-----------------------^\\nExpecting 'ID', got 'STRING'"}	19	\N	\N	2023-03-16 14:04:20.09479+00	2023-03-16 14:04:20.09479+00
nc_edz311vyo71cgo	\N	\N	\N	\N	after	insert	f	\N	\N	{"type":"Email","payload":{"to":"dgleba@stackpole.com; ckwan@stackpole.com","subject":"new dev","body":"{{ data.id }}  {{ data.\\"Reason for Deviation\\" }}\\n"}}	\N	Parse error on line 1:\n...data.id }}  {{ data."Reason for Deviatio...\n-----------------------^\nExpecting 'ID', got 'STRING'	{"stack":"Error: Parse error on line 1:\\n...data.id }}  {{ data.\\"Reason for Deviatio...\\n-----------------------^\\nExpecting 'ID', got 'STRING'\\n    at Parser.parseError (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/parser.js:267:19)\\n    at Parser.parse (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/parser.js:336:30)\\n    at parseWithoutProcessing (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/base.js:46:33)\\n    at HandlebarsEnvironment.parse (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/base.js:52:13)\\n    at compileInput (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/compiler.js:508:19)\\n    at ret (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/compiler.js:517:18)\\n    at l (/usr/src/app/docker/main.js:1:564038)\\n    at t.invokeWebhook (/usr/src/app/docker/main.js:1:567527)\\n    at runMicrotasks (<anonymous>)\\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)","message":"Parse error on line 1:\\n...data.id }}  {{ data.\\"Reason for Deviatio...\\n-----------------------^\\nExpecting 'ID', got 'STRING'"}	4	\N	\N	2023-03-16 14:04:24.351187+00	2023-03-16 14:04:24.351187+00
nc_qe0ae2f7y4uf6p	\N	\N	\N	\N	after	insert	f	\N	\N	{"type":"Email","payload":{"to":"dgleba@stackpole.com; ckwan@stackpole.com","subject":"new dev","body":"{{ data.id }}  {{ data.Reason for Deviation }}\\n"}}	\N	Missing helper: "data.Reason"	{"message":"Missing helper: \\"data.Reason\\"","name":"Error","stack":"Error: Missing helper: \\"data.Reason\\"\\n    at Object.<anonymous> (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/helpers/helper-missing.js:19:13)\\n    at Object.wrapper (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/internal/wrapHelper.js:15:19)\\n    at Object.eval [as main] (eval at createFunctionContext (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/javascript-compiler.js:262:23), <anonymous>:12:141)\\n    at main (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/runtime.js:208:32)\\n    at ret (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/runtime.js:212:12)\\n    at ret (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/compiler.js:519:21)\\n    at l (/usr/src/app/docker/main.js:1:564038)\\n    at t.invokeWebhook (/usr/src/app/docker/main.js:1:567527)\\n    at runMicrotasks (<anonymous>)\\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)"}	13	\N	\N	2023-03-16 14:05:33.646828+00	2023-03-16 14:05:33.646828+00
nc_fg3288q4wnjtym	\N	\N	\N	Email	after	insert	f	{"to":"dgleba@stackpole.com; ckwan@stackpole.com","subject":"new dev","body":"{{ data.id }}  {{ \\"data.Reason for Deviation\\" }}\\n"}	\N	{"type":"Email","payload":{"to":"dgleba@stackpole.com; ckwan@stackpole.com","subject":"new dev","body":"{{ data.id }}  {{ \\"data.Reason for Deviation\\" }}\\n"}}	\N	\N	\N	543	\N	\N	2023-03-16 14:05:54.015774+00	2023-03-16 14:05:54.015774+00
nc_vr67s414srroxg	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	Email	after	insert	f	{"to":"ckwan@stackpole.com","subject":"new dev 3","body":"{{ data.id }}  {{ \\"data.Reason for Deviation\\" }}\\n"}	\N	{"type":"Email","payload":{"to":"ckwan@stackpole.com","subject":"new dev 3","body":"{{ data.id }}  {{ \\"data.Reason for Deviation\\" }}\\n"}}	\N	\N	\N	391	\N	ckwan@stackpole.com	2023-03-16 14:14:13.725824+00	2023-03-16 14:14:13.725824+00
nc_zoqg7gkj3fr904	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	Email	after	insert	f	{"to":"ckwan@stackpole.com","subject":"new dev 3","body":"{{ data.id }}  {{ \\"data.Reason for Deviation\\" }}\\n"}	\N	{"type":"Email","payload":{"to":"ckwan@stackpole.com","subject":"new dev 3","body":"{{ data.id }}  {{ \\"data.Reason for Deviation\\" }}\\n"}}	\N	\N	\N	458	\N	dgleba@stackpole.com	2023-03-16 14:14:38.802544+00	2023-03-16 14:14:38.802544+00
nc_g0v8xwsypgpuzf	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	\N	after	insert	f	true	\N	{"type":"Email","payload":{"to":"ckwan@stackpole.com","subject":"new dev 3","body":"{{ data.id }}  {{ data.\\"Reason for Deviation\\" }}\\n"}}	\N	Parse error on line 1:\n...data.id }}  {{ data."Reason for Deviatio...\n-----------------------^\nExpecting 'ID', got 'STRING'	{"stack":"Error: Parse error on line 1:\\n...data.id }}  {{ data.\\"Reason for Deviatio...\\n-----------------------^\\nExpecting 'ID', got 'STRING'\\n    at Parser.parseError (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/parser.js:267:19)\\n    at Parser.parse (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/parser.js:336:30)\\n    at parseWithoutProcessing (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/base.js:46:33)\\n    at HandlebarsEnvironment.parse (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/base.js:52:13)\\n    at compileInput (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/compiler.js:508:19)\\n    at ret (/usr/src/app/node_modules/handlebars/dist/cjs/handlebars/compiler/compiler.js:517:18)\\n    at l (/usr/src/app/docker/main.js:1:564038)\\n    at t.invokeWebhook (/usr/src/app/docker/main.js:1:567527)\\n    at runMicrotasks (<anonymous>)\\n    at processTicksAndRejections (node:internal/process/task_queues:96:5)","message":"Parse error on line 1:\\n...data.id }}  {{ data.\\"Reason for Deviatio...\\n-----------------------^\\nExpecting 'ID', got 'STRING'"}	4	\N	\N	2023-03-16 14:15:36.991558+00	2023-03-16 14:15:36.991558+00
nc_q4akm44lzthkva	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	Email	after	insert	f	{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"new dev 3","body":"{{ data.id }}\\n"}	\N	{"type":"Email","payload":{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"new dev 3","body":"{{ data.id }}\\n"}}	\N	\N	\N	811	\N	\N	2023-03-16 14:20:35.554478+00	2023-03-16 14:20:35.554478+00
nc_r4d9bjfjv6s5s8	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	Email	after	insert	f	{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"new dev 3","body":"{{ data.id }}\\n"}	\N	{"type":"Email","payload":{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"new dev 3","body":"{{ data.id }}\\n"}}	\N	\N	\N	588	\N	\N	2023-03-16 14:20:36.252473+00	2023-03-16 14:20:36.252473+00
nc_vm0qv0ahkt78pt	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	Email	after	insert	f	{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"new dev 3","body":"{{ data.id }}\\n"}	\N	{"type":"Email","payload":{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"new dev 3","body":"{{ data.id }}\\n"}}	\N	\N	\N	306	\N	\N	2023-03-16 14:20:40.479722+00	2023-03-16 14:20:40.479722+00
nc_i01njozlo341e1	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	Email	after	insert	f	{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"new dev 3","body":"{{ data.id }}\\n"}	\N	{"type":"Email","payload":{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"new dev 3","body":"{{ data.id }}\\n"}}	\N	\N	\N	599	\N	\N	2023-03-16 14:20:42.93958+00	2023-03-16 14:20:42.93958+00
nc_0c3l9j9emid59u	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	Email	after	insert	f	{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"new dev 3","body":"{{ data.id }}\\n"}	\N	{"type":"Email","payload":{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"new dev 3","body":"{{ data.id }}\\n"}}	\N	\N	\N	304	\N	\N	2023-03-16 14:20:43.670194+00	2023-03-16 14:20:43.670194+00
nc_xxj0rg6lmnh7g7	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	Email	after	insert	f	{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"new dev 3","body":"{{ data.id }}\\n"}	\N	{"type":"Email","payload":{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"new dev 3","body":"{{ data.id }}\\n"}}	\N	\N	\N	461	\N	ckwan@stackpole.com	2023-03-16 14:21:53.63316+00	2023-03-16 14:21:53.63316+00
nc_k9ov0pv7hu6fc4	\N	\N	\N	Email	after	insert	f	{"to":"dgleba@stackpole.com","subject":"zdgtest 01","body":" {{ json data }} "}	\N	{"type":"Email","payload":{"to":"dgleba@stackpole.com","subject":"zdgtest 01","body":" {{ json data }} "}}	\N	\N	\N	634	\N	\N	2023-03-17 02:09:29.100384+00	2023-03-17 02:09:29.100384+00
nc_d71u3hnv4xhrcv	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	Email	after	insert	f	{"to":"dgleba@stackpole.com","subject":"zdgtest 01","body":" {{ json data }} "}	\N	{"type":"Email","payload":{"to":"dgleba@stackpole.com","subject":"zdgtest 01","body":" {{ json data }} "}}	\N	\N	\N	660	\N	dgleba@stackpole.com	2023-03-17 02:10:10.032204+00	2023-03-17 02:10:10.032204+00
nc_qjk3tso9v7ayae	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	\N	Email	after	insert	f	{"to":"dgleba@stackpole.com","subject":"zdgtest 01","body":" {{ json data }} "}	\N	{"type":"Email","payload":{"to":"dgleba@stackpole.com","subject":"zdgtest 01","body":" {{ json data }} "}}	\N	\N	\N	797	\N	dgleba@stackpole.com	2023-03-17 02:11:56.666031+00	2023-03-17 02:11:56.666031+00
nc_se87lrpuh8gnek	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	Email	after	insert	f	{"to":" dgleba@stackpole.com","subject":"NOD has been created email","body":"{{ json data }}\\n"}	\N	{"type":"Email","payload":{"to":" dgleba@stackpole.com","subject":"NOD has been created email","body":"{{ json data }}\\n"}}	\N	\N	\N	434	\N	\N	2023-03-17 02:15:29.18665+00	2023-03-17 02:15:29.18665+00
nc_4jlnnrvggc7phs	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	\N	Email	after	insert	f	{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"A Notice of Deviation has been Initiated","body":"{{ json data }}\\n"}	\N	{"type":"Email","payload":{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"A Notice of Deviation has been Initiated","body":"{{ json data }}\\n"}}	\N	\N	\N	759	\N	dgleba@stackpole.com	2023-03-17 02:21:22.080125+00	2023-03-17 02:21:22.080125+00
\.


--
-- Data for Name: nc_hooks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_hooks (id, project_id, db_alias, title, description, env, tn, type, event, operation, async, payload, url, headers, condition, notification, retries, retry_interval, timeout, active, created_at, updated_at) FROM stdin;
1	\N	db	\N	\N	all	\N	AUTH_MIDDLEWARE	\N	\N	f	t	\N	\N	\N	\N	0	60000	60000	t	\N	\N
\.


--
-- Data for Name: nc_hooks_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_hooks_v2 (id, base_id, project_id, fk_model_id, title, description, env, type, event, operation, async, payload, url, headers, condition, notification, retries, retry_interval, timeout, active, created_at, updated_at) FROM stdin;
hk_tt9akdnm9zq2ku	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	created01	\N	all	\N	after	insert	f	t	\N	\N	f	{"type":"Email","payload":{"to":"dgleba@stackpole.com","subject":"zdgtest 01","body":" {{ json data }} "}}	0	60000	60000	t	2023-03-17 02:09:43.440904+00	2023-03-17 02:09:43.440904+00
hk_mlv7si6720rooe	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	A Notice of Deviation has been Initiated EMAIL	\N	all	\N	after	insert	f	t	\N	\N	t	{"type":"Email","payload":{"to":"ckwan@stackpole.com; dgleba@stackpole.com","subject":"A Notice of Deviation has been Initiated","body":"{{ json data }}\\n"}}	0	60000	60000	t	2023-03-16 14:04:17.518486+00	2023-03-17 02:19:03.164509+00
\.


--
-- Data for Name: nc_kanban_view_columns_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_kanban_view_columns_v2 (id, base_id, project_id, fk_view_id, fk_column_id, uuid, label, help, show, "order", created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_kanban_view_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_kanban_view_v2 (fk_view_id, base_id, project_id, show, "order", uuid, title, public, password, show_all_fields, created_at, updated_at, fk_grp_col_id, fk_cover_image_col_id, meta) FROM stdin;
\.


--
-- Data for Name: nc_loaders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_loaders (id, project_id, db_alias, title, parent, child, relation, resolver, functions, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_migrations (id, project_id, db_alias, up, down, title, title_down, description, batch, checksum, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_models; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_models (id, project_id, db_alias, title, alias, type, meta, schema, schema_previous, services, messages, enabled, parent_model_title, show_as, query_params, list_idx, tags, pinned, created_at, updated_at, mm, m_to_m_meta, "order", view_order) FROM stdin;
\.


--
-- Data for Name: nc_models_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_models_v2 (id, base_id, project_id, table_name, title, type, meta, schema, enabled, mm, tags, pinned, deleted, "order", created_at, updated_at) FROM stdin;
md_v8bxa6u6f8jkud	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	nc_xwok___deviation	deviation	table	\N	\N	t	f	\N	\N	\N	1	2023-03-09 19:57:41.733142+00	2023-03-09 19:57:41.733142+00
md_qx7jabyuv7igya	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	nc_xwok___test310	test310	table	\N	\N	t	f	\N	\N	\N	2	2023-03-10 16:50:48.446065+00	2023-03-10 16:50:48.446065+00
md_gfctb5f2clvh4u	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	nc_xwok___work_cell	work_cell	table	\N	\N	t	f	\N	\N	\N	3	2023-03-10 17:07:23.60049+00	2023-03-10 17:07:23.60049+00
md_r1xpwb23fn3jhw	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	nc_xwok___feature	feature	table	\N	\N	t	f	\N	\N	\N	4	2023-03-10 17:37:17.598541+00	2023-03-10 17:37:17.598541+00
md_r5femfp1sims4p	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	nc_9j1b___WorkCell	WorkCell	table	\N	\N	t	f	\N	\N	\N	2	2023-03-10 19:46:28.515927+00	2023-03-10 19:46:28.515927+00
md_1r2ypyd5v7z2l0	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	nc_9j1b___Non-Conformance	Non-Conformance	table	\N	\N	t	f	\N	\N	\N	3	2023-03-10 19:53:16.683371+00	2023-03-10 19:53:16.683371+00
md_7p49dcw0uwark8	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	nc_9j1b___NoticeOfDeviation	NoticeOfDeviation	table	\N	\N	t	f	\N	\N	\N	1	2023-03-10 18:53:18.747745+00	2023-03-13 12:24:38.331426+00
md_u3yyi5e7a3czch	ds_j474qi6w09vzkp	p_3ic0yll5hyobw1	scrap1	Scrap1	table	\N	\N	t	f	\N	\N	\N	2	2023-04-25 20:36:11.351392+00	2023-04-25 20:36:11.351392+00
md_1imm2ng54uh1ml	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	nc_9j1b___nc_m2m__w442b2pgo	nc_9j1b___nc_m2m__w442b2pgo	table	\N	\N	t	t	\N	\N	\N	23	2023-03-16 13:38:10.107079+00	2023-04-25 22:50:37.983447+00
\.


--
-- Data for Name: nc_orgs_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_orgs_v2 (id, title, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_plugins; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_plugins (id, project_id, db_alias, title, description, active, rating, version, docs, status, status_details, logo, icon, tags, category, input_schema, input, creator, creator_website, price, created_at, updated_at) FROM stdin;
1	\N	\N	Google	Google OAuth2 login.	f	\N	0.0.1	\N	install	\N	plugins/google.png	\N	Authentication	Google	{"title":"Configure Google Auth","items":[{"key":"client_id","label":"Client ID","placeholder":"Client ID","type":"SingleLineText","required":true},{"key":"client_secret","label":"Client Secret","placeholder":"Client Secret","type":"Password","required":true},{"key":"redirect_url","label":"Redirect URL","placeholder":"Redirect URL","type":"SingleLineText","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and configured Google Authentication, restart NocoDB","msgOnUninstall":""}	\N	\N	\N	Free	\N	\N
3	\N	\N	Metadata LRU Cache	A cache object that deletes the least-recently-used items.	t	\N	0.0.1	\N	install	\N	plugins/xgene.png	\N	Cache	Cache	{"title":"Configure Metadata LRU Cache","items":[{"key":"max","label":"Maximum Size","placeholder":"Maximum Size","type":"SingleLineText","required":true},{"key":"maxAge","label":"Maximum Age(in ms)","placeholder":"Maximum Age(in ms)","type":"SingleLineText","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully updated LRU cache options.","msgOnUninstall":""}	{"max":500,"maxAge":86400000}	\N	\N	Free	\N	\N
\.


--
-- Data for Name: nc_plugins_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_plugins_v2 (id, title, description, active, rating, version, docs, status, status_details, logo, icon, tags, category, input_schema, input, creator, creator_website, price, created_at, updated_at) FROM stdin;
nc_pipukfjydl2zdh	Slack	Slack brings team communication and collaboration into one place so you can get more work done, whether you belong to a large enterprise or a small business. 	f	\N	0.0.1	\N	install	\N	plugins/slack.webp	\N	Chat	Chat	{"title":"Configure Slack","array":true,"items":[{"key":"channel","label":"Channel Name","placeholder":"Channel Name","type":"SingleLineText","required":true},{"key":"webhook_url","label":"Webhook URL","placeholder":"Webhook URL","type":"Password","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and Slack is enabled for notification.","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.669693+00	2023-03-09 03:56:58.669693+00
nc_nisw2ab1mjhynu	Microsoft Teams	Microsoft Teams is for everyone · Instantly go from group chat to video call with the touch of a button.	f	\N	0.0.1	\N	install	\N	plugins/teams.ico	\N	Chat	Chat	{"title":"Configure Microsoft Teams","array":true,"items":[{"key":"channel","label":"Channel Name","placeholder":"Channel Name","type":"SingleLineText","required":true},{"key":"webhook_url","label":"Webhook URL","placeholder":"Webhook URL","type":"Password","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and Microsoft Teams is enabled for notification.","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.673131+00	2023-03-09 03:56:58.673131+00
nc_a2vriv01tplhpt	Discord	Discord is the easiest way to talk over voice, video, and text. Talk, chat, hang out, and stay close with your friends and communities.	f	\N	0.0.1	\N	install	\N	plugins/discord.png	\N	Chat	Chat	{"title":"Configure Discord","array":true,"items":[{"key":"channel","label":"Channel Name","placeholder":"Channel Name","type":"SingleLineText","required":true},{"key":"webhook_url","label":"Webhook URL","type":"Password","placeholder":"Webhook URL","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and Discord is enabled for notification.","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.676265+00	2023-03-09 03:56:58.676265+00
nc_tl9dgjj3jza4tl	Whatsapp Twilio	With Twilio, unite communications and strengthen customer relationships across your business – from marketing and sales to customer service and operations.	f	\N	0.0.1	\N	install	\N	plugins/whatsapp.png	\N	Chat	Twilio	{"title":"Configure Twilio","items":[{"key":"sid","label":"Account SID","placeholder":"Account SID","type":"SingleLineText","required":true},{"key":"token","label":"Auth Token","placeholder":"Auth Token","type":"Password","required":true},{"key":"from","label":"From Phone Number","placeholder":"From Phone Number","type":"SingleLineText","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and Whatsapp Twilio is enabled for notification.","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.679344+00	2023-03-09 03:56:58.679344+00
nc_lu0l3fxxezm1rp	Twilio	With Twilio, unite communications and strengthen customer relationships across your business – from marketing and sales to customer service and operations.	f	\N	0.0.1	\N	install	\N	plugins/twilio.png	\N	Chat	Twilio	{"title":"Configure Twilio","items":[{"key":"sid","label":"Account SID","placeholder":"Account SID","type":"SingleLineText","required":true},{"key":"token","label":"Auth Token","placeholder":"Auth Token","type":"Password","required":true},{"key":"from","label":"From Phone Number","placeholder":"From Phone Number","type":"SingleLineText","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and Twilio is enabled for notification.","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.682261+00	2023-03-09 03:56:58.682261+00
nc_qvf4j9uit42qwj	S3	Amazon Simple Storage Service (Amazon S3) is an object storage service that offers industry-leading scalability, data availability, security, and performance.	f	\N	0.0.1	\N	install	\N	plugins/s3.png	\N	Storage	Storage	{"title":"Configure Amazon S3","items":[{"key":"bucket","label":"Bucket Name","placeholder":"Bucket Name","type":"SingleLineText","required":true},{"key":"region","label":"Region","placeholder":"Region","type":"SingleLineText","required":true},{"key":"access_key","label":"Access Key","placeholder":"Access Key","type":"SingleLineText","required":true},{"key":"access_secret","label":"Access Secret","placeholder":"Access Secret","type":"Password","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and attachment will be stored in AWS S3","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.685439+00	2023-03-09 03:56:58.685439+00
nc_od131zkmii30cs	Minio	MinIO is a High Performance Object Storage released under Apache License v2.0. It is API compatible with Amazon S3 cloud storage service.	f	\N	0.0.1	\N	install	\N	plugins/minio.png	\N	Storage	Storage	{"title":"Configure Minio","items":[{"key":"endPoint","label":"Minio Endpoint","placeholder":"Minio Endpoint","type":"SingleLineText","required":true},{"key":"port","label":"Port","placeholder":"Port","type":"Number","required":true},{"key":"bucket","label":"Bucket Name","placeholder":"Bucket Name","type":"SingleLineText","required":true},{"key":"access_key","label":"Access Key","placeholder":"Access Key","type":"SingleLineText","required":true},{"key":"access_secret","label":"Access Secret","placeholder":"Access Secret","type":"Password","required":true},{"key":"useSSL","label":"Use SSL","placeholder":"Use SSL","type":"Checkbox","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and attachment will be stored in Minio","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.688643+00	2023-03-09 03:56:58.688643+00
nc_6yvtpzl1xo91uu	GCS	Google Cloud Storage is a RESTful online file storage web service for storing and accessing data on Google Cloud Platform infrastructure.	f	\N	0.0.2	\N	install	\N	plugins/gcs.png	\N	Storage	Storage	{"title":"Configure Google Cloud Storage","items":[{"key":"bucket","label":"Bucket Name","placeholder":"Bucket Name","type":"SingleLineText","required":true},{"key":"client_email","label":"Client Email","placeholder":"Client Email","type":"SingleLineText","required":true},{"key":"private_key","label":"Private Key","placeholder":"Private Key","type":"Password","required":true},{"key":"project_id","label":"Project ID","placeholder":"Project ID","type":"SingleLineText","required":false}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and attachment will be stored in Google Cloud Storage","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.69187+00	2023-03-09 03:56:58.69187+00
nc_ya5mr8g793fzlr	Mattermost	Mattermost brings all your team communication into one place, making it searchable and accessible anywhere.	f	\N	0.0.1	\N	install	\N	plugins/mattermost.png	\N	Chat	Chat	{"title":"Configure Mattermost","array":true,"items":[{"key":"channel","label":"Channel Name","placeholder":"Channel Name","type":"SingleLineText","required":true},{"key":"webhook_url","label":"Webhook URL","placeholder":"Webhook URL","type":"Password","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and Mattermost is enabled for notification.","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.694639+00	2023-03-09 03:56:58.694639+00
nc_1la9gs0dwjhb80	Spaces	Store & deliver vast amounts of content with a simple architecture.	f	\N	0.0.1	\N	install	\N	plugins/spaces.png	\N	Storage	Storage	{"title":"DigitalOcean Spaces","items":[{"key":"bucket","label":"Bucket Name","placeholder":"Bucket Name","type":"SingleLineText","required":true},{"key":"region","label":"Region","placeholder":"Region","type":"SingleLineText","required":true},{"key":"access_key","label":"Access Key","placeholder":"Access Key","type":"SingleLineText","required":true},{"key":"access_secret","label":"Access Secret","placeholder":"Access Secret","type":"Password","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and attachment will be stored in DigitalOcean Spaces","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.697761+00	2023-03-09 03:56:58.697761+00
nc_ho7shc5u1p6xd2	Backblaze B2	Backblaze B2 is enterprise-grade, S3 compatible storage that companies around the world use to store and serve data while improving their cloud OpEx vs. Amazon S3 and others.	f	\N	0.0.2	\N	install	\N	plugins/backblaze.jpeg	\N	Storage	Storage	{"title":"Configure Backblaze B2","items":[{"key":"bucket","label":"Bucket Name","placeholder":"Bucket Name","type":"SingleLineText","required":true},{"key":"region","label":"Region","placeholder":"e.g. us-west-001","type":"SingleLineText","required":true},{"key":"access_key","label":"Access Key","placeholder":"i.e. keyID in App Keys","type":"SingleLineText","required":true},{"key":"access_secret","label":"Access Secret","placeholder":"i.e. applicationKey in App Keys","type":"Password","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and attachment will be stored in Backblaze B2","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.700662+00	2023-03-09 03:56:58.700662+00
nc_z0ytm0kvp5sn86	Vultr Object Storage	Using Vultr Object Storage can give flexibility and cloud storage that allows applications greater flexibility and access worldwide.	f	\N	0.0.1	\N	install	\N	plugins/vultr.png	\N	Storage	Storage	{"title":"Configure Vultr Object Storage","items":[{"key":"bucket","label":"Bucket Name","placeholder":"Bucket Name","type":"SingleLineText","required":true},{"key":"access_key","label":"Access Key","placeholder":"Access Key","type":"SingleLineText","required":true},{"key":"access_secret","label":"Access Secret","placeholder":"Access Secret","type":"Password","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and attachment will be stored in Vultr Object Storage","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.703622+00	2023-03-09 03:56:58.703622+00
nc_dl79ye1ik5jurs	OvhCloud Object Storage	Upload your files to a space that you can access via HTTPS using the OpenStack Swift API, or the S3 API. 	f	\N	0.0.1	\N	install	\N	plugins/ovhCloud.png	\N	Storage	Storage	{"title":"Configure OvhCloud Object Storage","items":[{"key":"bucket","label":"Bucket Name","placeholder":"Bucket Name","type":"SingleLineText","required":true},{"key":"region","label":"Region","placeholder":"Region","type":"SingleLineText","required":true},{"key":"access_key","label":"Access Key","placeholder":"Access Key","type":"SingleLineText","required":true},{"key":"access_secret","label":"Access Secret","placeholder":"Access Secret","type":"Password","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and attachment will be stored in OvhCloud Object Storage","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.706523+00	2023-03-09 03:56:58.706523+00
nc_66ukj373bin9fx	Linode Object Storage	S3-compatible Linode Object Storage makes it easy and more affordable to manage unstructured data such as content assets, as well as sophisticated and data-intensive storage challenges around artificial intelligence and machine learning.	f	\N	0.0.1	\N	install	\N	plugins/linode.svg	\N	Storage	Storage	{"title":"Configure Linode Object Storage","items":[{"key":"bucket","label":"Bucket Name","placeholder":"Bucket Name","type":"SingleLineText","required":true},{"key":"region","label":"Region","placeholder":"Region","type":"SingleLineText","required":true},{"key":"access_key","label":"Access Key","placeholder":"Access Key","type":"SingleLineText","required":true},{"key":"access_secret","label":"Access Secret","placeholder":"Access Secret","type":"Password","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and attachment will be stored in Linode Object Storage","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.70944+00	2023-03-09 03:56:58.70944+00
nc_dhmcuibkc9btl4	UpCloud Object Storage	The perfect home for your data. Thanks to the S3-compatible programmable interface,\nyou have a host of options for existing tools and code implementations.\n	f	\N	0.0.1	\N	install	\N	plugins/upcloud.png	\N	Storage	Storage	{"title":"Configure UpCloud Object Storage","items":[{"key":"bucket","label":"Bucket Name","placeholder":"Bucket Name","type":"SingleLineText","required":true},{"key":"endpoint","label":"Endpoint","placeholder":"Endpoint","type":"SingleLineText","required":true},{"key":"access_key","label":"Access Key","placeholder":"Access Key","type":"SingleLineText","required":true},{"key":"access_secret","label":"Access Secret","placeholder":"Access Secret","type":"Password","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and attachment will be stored in UpCloud Object Storage","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.712266+00	2023-03-09 03:56:58.712266+00
nc_qblutqz3t8rygb	MailerSend	MailerSend email client	f	\N	0.0.1	\N	install	\N	plugins/mailersend.svg	\N	Email	Email	{"title":"Configure MailerSend","items":[{"key":"api_key","label":"API KEy","placeholder":"eg: ***************","type":"Password","required":true},{"key":"from","label":"From","placeholder":"eg: admin@run.com","type":"SingleLineText","required":true},{"key":"from_name","label":"From Name","placeholder":"eg: Adam","type":"SingleLineText","required":true}],"actions":[{"label":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and email notification will use MailerSend configuration","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.718119+00	2023-03-09 03:56:58.718119+00
nc_vz3kf4ombz1llz	Scaleway Object Storage	Scaleway Object Storage is an S3-compatible object store from Scaleway Cloud Platform.	f	\N	0.0.1	\N	install	\N	plugins/scaleway.png	\N	Storage	Storage	{"title":"Setup Scaleway","items":[{"key":"bucket","label":"Bucket name","placeholder":"Bucket name","type":"SingleLineText","required":true},{"key":"region","label":"Region of bucket","placeholder":"Region of bucket","type":"SingleLineText","required":true},{"key":"access_key","label":"Access Key","placeholder":"Access Key","type":"SingleLineText","required":true},{"key":"access_secret","label":"Access Secret","placeholder":"Access Secret","type":"Password","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed Scaleway Object Storage","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.721598+00	2023-03-09 03:56:58.721598+00
nc_rar0n64ose6n8m	SES	Amazon Simple Email Service (SES) is a cost-effective, flexible, and scalable email service that enables developers to send mail from within any application.	f	\N	0.0.1	\N	install	\N	plugins/aws.png	\N	Email	Email	{"title":"Configure Amazon Simple Email Service (SES)","items":[{"key":"from","label":"From","placeholder":"From","type":"SingleLineText","required":true},{"key":"region","label":"Region","placeholder":"Region","type":"SingleLineText","required":true},{"key":"access_key","label":"Access Key","placeholder":"Access Key","type":"SingleLineText","required":true},{"key":"access_secret","label":"Access Secret","placeholder":"Access Secret","type":"Password","required":true}],"actions":[{"label":"Test","placeholder":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","placeholder":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and email notification will use Amazon SES","msgOnUninstall":""}	\N	\N	\N	\N	2023-03-09 03:56:58.724462+00	2023-03-09 03:56:58.724462+00
nc_vhxmbxqkhltg42	SMTP	SMTP email client	t	\N	0.0.2	\N	install	\N	\N	\N	Email	Email	{"title":"Configure Email SMTP","items":[{"key":"from","label":"From","placeholder":"eg: admin@run.com","type":"SingleLineText","required":true},{"key":"host","label":"Host","placeholder":"eg: smtp.run.com","type":"SingleLineText","required":true},{"key":"port","label":"Port","placeholder":"Port","type":"SingleLineText","required":true},{"key":"secure","label":"Secure","placeholder":"Secure","type":"Checkbox","required":false},{"key":"ignoreTLS","label":"Ignore TLS","placeholder":"Ignore TLS","type":"Checkbox","required":false},{"key":"rejectUnauthorized","label":"Reject Unauthorized","placeholder":"Reject Unauthorized","type":"Checkbox","required":false},{"key":"username","label":"Username","placeholder":"Username","type":"SingleLineText","required":false},{"key":"password","label":"Password","placeholder":"Password","type":"Password","required":false}],"actions":[{"label":"Test","key":"test","actionType":"TEST","type":"Button"},{"label":"Save","key":"save","actionType":"SUBMIT","type":"Button"}],"msgOnInstall":"Successfully installed and email notification will use SMTP configuration","msgOnUninstall":""}	{"host":"10.5.1.35","from":"PMDM.apps@stackpole.com","port":"25","username":"","password":"","ignoreTLS":true}	\N	\N	\N	2023-03-09 03:56:58.715106+00	2023-04-25 02:57:13.554979+00
\.


--
-- Data for Name: nc_project_users_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_project_users_v2 (project_id, fk_user_id, roles, starred, pinned, "group", color, "order", hidden, opened_date, created_at, updated_at) FROM stdin;
p_kayxefr8e1a3r7	us_k980c8tqjtd8iy	owner	\N	\N	\N	\N	\N	\N	\N	2023-03-09 04:13:36.710196+00	2023-03-09 04:13:36.710196+00
p_kayxefr8e1a3r7	us_qw8wnyeo7rc3nf	editor	\N	\N	\N	\N	\N	\N	\N	2023-03-10 16:38:45.712089+00	2023-03-10 16:38:45.712089+00
p_pizjgrh32hd09k	us_qw8wnyeo7rc3nf	owner	\N	\N	\N	\N	\N	\N	\N	2023-03-10 18:32:00.587993+00	2023-03-10 18:32:00.587993+00
p_pizjgrh32hd09k	us_bql0bw4hmmuuzp	editor	\N	\N	\N	\N	\N	\N	\N	2023-03-13 13:14:43.34099+00	2023-03-13 13:14:43.34099+00
p_pawptxgtvw7rrb	us_qw8wnyeo7rc3nf	owner	\N	\N	\N	\N	\N	\N	\N	2023-03-13 13:53:50.623732+00	2023-03-13 13:53:50.623732+00
p_46q86a6w3poq45	us_qw8wnyeo7rc3nf	owner	\N	\N	\N	\N	\N	\N	\N	2023-03-13 14:00:50.454681+00	2023-03-13 14:00:50.454681+00
p_ielropgpf3bp3q	us_k980c8tqjtd8iy	owner	\N	\N	\N	\N	\N	\N	\N	2023-03-15 17:29:01.198103+00	2023-03-15 17:29:01.198103+00
p_pizjgrh32hd09k	us_kyrxpl2zfa54fa	editor	\N	\N	\N	\N	\N	\N	\N	2023-03-16 14:09:53.804242+00	2023-03-16 14:09:53.804242+00
p_fd7z7ck8vb6ytp	us_k980c8tqjtd8iy	owner	\N	\N	\N	\N	\N	\N	\N	2023-04-25 20:23:41.920267+00	2023-04-25 20:23:41.920267+00
p_jub959lqk3i2sr	us_k980c8tqjtd8iy	owner	\N	\N	\N	\N	\N	\N	\N	2023-04-25 20:28:48.302978+00	2023-04-25 20:28:48.302978+00
p_3ic0yll5hyobw1	us_k980c8tqjtd8iy	owner	\N	\N	\N	\N	\N	\N	\N	2023-04-25 20:35:22.706945+00	2023-04-25 20:35:22.706945+00
\.


--
-- Data for Name: nc_projects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_projects (id, title, status, description, config, meta, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_projects_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_projects_users (project_id, user_id, roles, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_projects_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_projects_v2 (id, title, prefix, status, description, meta, color, uuid, password, roles, deleted, is_meta, "order", created_at, updated_at) FROM stdin;
p_pawptxgtvw7rrb	written_parrotfish	nc_5bh7__	\N	\N	\N	\N	\N	\N	\N	t	t	\N	2023-03-13 13:53:50.608975+00	2023-03-13 13:54:00.528641+00
p_46q86a6w3poq45	chewbacca	nc_pgta__	\N	\N	\N	\N	\N	\N	\N	t	t	\N	2023-03-13 14:00:50.435984+00	2023-03-13 14:01:52.423525+00
p_ielropgpf3bp3q	Z_test-dg-2	nc__f4m__	\N	\N	\N	\N	\N	\N	\N	t	t	\N	2023-03-15 17:29:01.182701+00	2023-04-25 20:23:09.028777+00
p_fd7z7ck8vb6ytp	Z_dg-test2	nc_lh_r__	\N	\N	\N	\N	\N	\N	\N	t	t	\N	2023-04-25 20:23:41.902818+00	2023-04-25 20:27:54.285551+00
p_kayxefr8e1a3r7	z_dg_test	nc_xwok__	\N	\N	{"showNullAndEmptyInFilter":true,"theme":{"primaryColor":"#333333","accentColor":"#333333ff"}}	#333333	\N	\N	\N	f	t	\N	2023-03-09 04:13:36.687869+00	2023-04-25 22:52:51.842704+00
p_jub959lqk3i2sr	Z_dg-test3	nc_chri__	\N	\N	{"showNullAndEmptyInFilter":true,"theme":{"primaryColor":"#381475","accentColor":"#517514ff"}}	#381475	\N	\N	\N	t	t	\N	2023-04-25 20:28:48.291663+00	2023-04-25 23:30:09.625609+00
p_3ic0yll5hyobw1	z_dg-test4	nc_qhh9__	\N	\N	\N	\N	\N	\N	\N	t	t	\N	2023-04-25 20:35:22.695625+00	2023-04-25 23:30:14.263163+00
p_pizjgrh32hd09k	A_DevModel	nc_9j1b__	\N	\N	{"showNullAndEmptyInFilter":false,"theme":{"primaryColor":"#1BAF2C","accentColor":"#af1b9eff"}}	#1BAF2C	\N	\N	\N	f	t	\N	2023-03-10 18:32:00.570434+00	2023-04-25 23:30:59.976042+00
\.


--
-- Data for Name: nc_relations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_relations (id, project_id, db_alias, tn, rtn, _tn, _rtn, cn, rcn, _cn, _rcn, referenced_db_alias, type, db_type, ur, dr, created_at, updated_at, fkn) FROM stdin;
\.


--
-- Data for Name: nc_resolvers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_resolvers (id, project_id, db_alias, title, resolver, type, acl, functions, handler_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_roles (id, project_id, db_alias, title, type, description, created_at, updated_at) FROM stdin;
1			owner	SYSTEM	Can add/remove creators. And full edit database structures & fields.	\N	\N
2			creator	SYSTEM	Can fully edit database structure & values	\N	\N
3			editor	SYSTEM	Can edit records but cannot change structure of database/fields	\N	\N
4			commenter	SYSTEM	Can view and comment the records but cannot edit anything	\N	\N
5			viewer	SYSTEM	Can view the records but cannot edit anything	\N	\N
\.


--
-- Data for Name: nc_routes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_routes (id, project_id, db_alias, title, tn, tnp, tnc, relation_type, path, type, handler, acl, "order", functions, handler_type, is_custom, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_rpc; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_rpc (id, project_id, db_alias, title, tn, service, tnp, tnc, relation_type, "order", type, acl, functions, handler_type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_shared_bases; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_shared_bases (id, project_id, db_alias, roles, shared_base_id, enabled, password, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_shared_views; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_shared_views (id, project_id, db_alias, model_name, meta, query_params, view_id, show_all_fields, allow_copy, password, created_at, updated_at, view_type, view_name) FROM stdin;
\.


--
-- Data for Name: nc_shared_views_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_shared_views_v2 (id, fk_view_id, meta, query_params, view_id, show_all_fields, allow_copy, password, deleted, "order", created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_sort_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_sort_v2 (id, base_id, project_id, fk_view_id, fk_column_id, direction, "order", created_at, updated_at) FROM stdin;
so_vfu8lni8fno25q	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_ai5fk7qev8gya3	cl_3xvh5pqz662pep	asc	3	2023-03-13 12:32:13.287542+00	2023-03-13 12:33:02.019638+00
so_6ul8p6t8g1hle8	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_ai5fk7qev8gya3	cl_h8pwm0jqoh25ks	desc	2	2023-03-17 02:16:53.26778+00	2023-03-17 02:16:53.26778+00
so_nzbz2vgieg2nka	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_ai5fk7qev8gya3	cl_3xvh5pqz662pep	desc	1	2023-03-17 02:17:03.885396+00	2023-03-17 02:17:03.885396+00
so_s1qnxdgoqcbuli	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_pnsmbtuv8hsnih	cl_92u1lkwxw04p87	desc	2	2023-03-19 21:57:39.357296+00	2023-03-19 21:58:01.655075+00
so_05jlyloqr6f8j3	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	vw_pnsmbtuv8hsnih	cl_k4psu9zbutgiu6	desc	1	2023-03-19 21:59:10.587874+00	2023-03-19 21:59:10.587874+00
\.


--
-- Data for Name: nc_store; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_store (id, project_id, db_alias, key, value, type, env, tag, created_at, updated_at) FROM stdin;
1	\N		NC_DEBUG	{"nc:app":false,"nc:api:rest":false,"nc:api:base":false,"nc:api:gql":false,"nc:api:grpc":false,"nc:migrator":false,"nc:datamapper":false}	\N	\N	\N	\N	\N
2	\N		NC_PROJECT_COUNT	0	\N	\N	\N	\N	\N
3			nc_auth_jwt_secret	794e5f25-ffaf-4e52-96e2-6d48351693c1	\N	\N	\N	2023-03-09 03:56:58.60577+00	2023-03-09 03:56:58.60577+00
4			nc_server_id	41fba472651541830cf425edc3ce3cff3f81b090c471ea08f8e0d85c27b7ede6	\N	\N	\N	2023-03-09 03:56:58.620357+00	2023-03-09 03:56:58.620357+00
5			NC_CONFIG_MAIN	{"version":"0105002"}	\N	\N	\N	2023-03-09 03:56:58.623973+00	2023-03-09 03:56:58.623973+00
\.


--
-- Data for Name: nc_sync_logs_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_sync_logs_v2 (id, project_id, fk_sync_source_id, time_taken, status, status_details, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_sync_source_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_sync_source_v2 (id, title, type, details, deleted, enabled, "order", project_id, fk_user_id, created_at, updated_at, base_id) FROM stdin;
\.


--
-- Data for Name: nc_team_users_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_team_users_v2 (org_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_teams_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_teams_v2 (id, title, org_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: nc_users_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_users_v2 (id, email, password, salt, firstname, lastname, username, refresh_token, invite_token, invite_token_expires, reset_password_expires, reset_password_token, email_verification_token, email_verified, roles, created_at, updated_at, token_version) FROM stdin;
us_qw8wnyeo7rc3nf	ckwan@stackpole.com	$2a$10$cNNlC.WcKXzLrzqYtxC/Eude.Y2zguJ/l3oNrpY.Uvv7IdCURfJJy	$2a$10$cNNlC.WcKXzLrzqYtxC/Eu	\N	\N	\N	3a51da5aaffca3e38af011c3e309caa89c5e02747b01afb3c8c32170af90eba7afa1aa55df82c964	\N	\N	\N	\N	7d1f2777-3f96-4df2-b0a1-b7f9789dd3ba	\N	org-level-creator	2023-03-10 12:07:07.442496+00	2023-03-21 12:36:24.010417+00	9b34296c98ad4ba544ebe98d4ad17f6a0d0e97ed9da036cd0fd052c15b9508940be04e67eb26a6c9
us_bql0bw4hmmuuzp	testing@stackpole.com	\N	\N	\N	\N	\N	\N	622f6836-b25f-4f1e-8413-0a27979b0736	2023-03-14T13:13:44.423+00:00	\N	\N	\N	\N	org-level-viewer	2023-03-13 13:13:44.424236+00	2023-03-13 13:13:44.424236+00	704eee8b0411804d07a7116f08cfd9a2202a4438481bfc396d3163ba32ac5ccfb28e957b0d863f07
us_k980c8tqjtd8iy	dgleba@stackpole.com	$2a$10$xBevmce.pBPK/dbpUqWuk.3gSZK/OuCCcoml5lTQXTHY0ib4XKLLq	$2a$10$xBevmce.pBPK/dbpUqWuk.	\N	\N	\N	e3a121cd73607316a49fcfa8f164683f963e08631f76d70d81c371d8be76fe97166f6f42a7a4c5d8	\N	\N	2023-04-25 03:57:19.017+00	947a4351-8dfe-41b2-a88e-df123b8849e7	614a8fc1-bd27-4c04-a7a7-45ecd57ac34b	\N	org-level-creator,super	2023-03-09 03:59:01.003293+00	2023-04-25 18:05:56.974497+00	0ed598d6745907f79713a4fcc09cb546542e32921000e9ac5b37fe177a312e2b0114342d00ba74c9
us_kyrxpl2zfa54fa	ppatel@stackpole.com	$2a$10$zxOG82jtEnJ6JixDeG66QuwLdGEwqWDJ3FRLbS4jl2pEMt1yqVsbO	$2a$10$zxOG82jtEnJ6JixDeG66Qu	\N	\N	\N	6b3806999c2dce6832ddb91edaf63272ded9b04184f5227345621434e89151b1c651db6849847ae9	\N	\N	\N	\N	171aadac-66eb-4443-a7dd-e9198e0ae7fe	\N	org-level-viewer	2023-03-16 14:09:53.799411+00	2023-03-16 18:21:30.67033+00	b7f8d757cee85d91b1a2a37998b7f05dadc59dbc73e7e4b2cf6756e84869770af650ab8c673c6017
\.


--
-- Data for Name: nc_views_v2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_views_v2 (id, base_id, project_id, fk_model_id, title, type, is_default, show_system_fields, lock_type, uuid, password, show, "order", created_at, updated_at, meta) FROM stdin;
vw_p2040jaon6givp	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_v8bxa6u6f8jkud	deviation	3	t	t	collaborative	\N	\N	t	1	2023-03-09 19:57:41.743112+00	2023-03-09 20:02:04.16248+00	{}
vw_8xxs8m9edgicpk	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_qx7jabyuv7igya	test310	3	t	\N	collaborative	\N	\N	t	1	2023-03-10 16:50:48.45277+00	2023-03-10 16:50:48.45277+00	{}
vw_3eld608zn31vsa	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_gfctb5f2clvh4u	work_cell	3	t	\N	collaborative	\N	\N	t	1	2023-03-10 17:07:23.607242+00	2023-03-10 17:07:23.607242+00	{}
vw_negnnuez0qy4jt	ds_j2erz1hbar4yr5	p_kayxefr8e1a3r7	md_r1xpwb23fn3jhw	feature	3	t	\N	collaborative	\N	\N	t	1	2023-03-10 17:37:17.604265+00	2023-03-10 17:37:17.604265+00	{}
vw_r2n9nymvi357c0	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_r5femfp1sims4p	WorkCell	3	t	\N	collaborative	\N	\N	t	1	2023-03-10 19:46:28.523993+00	2023-03-10 19:46:28.523993+00	{}
vw_ai5fk7qev8gya3	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	NoticeOfDeviation	3	t	t	collaborative	6dfb569a-b9cc-4aa0-bf54-101877650cb3	\N	t	1	2023-03-10 18:53:18.755046+00	2023-03-13 12:12:33.329121+00	{"allowCSVDownload":true}
vw_u83nsmlb9wimka	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_7p49dcw0uwark8	NOD	1	\N	\N	collaborative	72058452-8fbf-4c0e-a17e-3d8090454042	\N	t	2	2023-03-13 12:25:58.457111+00	2023-03-13 13:25:26.448827+00	{"allowCSVDownload":true,"withTheme":false,"theme":{"primaryColor":"#1BAF2C","accentColor":"#af1b9eff"}}
vw_nexqns57jll40x	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1imm2ng54uh1ml	nc_9j1b___nc_m2m__w442b2pgo	3	t	\N	collaborative	\N	\N	t	1	2023-03-16 13:38:10.113355+00	2023-03-16 13:38:10.113355+00	{}
vw_pnsmbtuv8hsnih	ds_d57oqnh5nn12ri	p_pizjgrh32hd09k	md_1r2ypyd5v7z2l0	Non-Conformance	3	t	t	collaborative	\N	\N	t	1	2023-03-10 19:53:16.689056+00	2023-03-19 21:58:30.617203+00	{}
vw_yqq10i460rnvz9	ds_j474qi6w09vzkp	p_3ic0yll5hyobw1	md_u3yyi5e7a3czch	Scrap1	3	t	t	collaborative	\N	\N	t	1	2023-04-25 20:36:11.36125+00	2023-04-25 20:37:08.308845+00	{}
\.


--
-- Data for Name: nc_xwok___deviation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_xwok___deviation (id, dev_initiated_by, created_at, updated_at, partnum, process, machine, qa_approval, eng_approval, assigned_process_engineer, repeat_deviation, nc_xwok___work_cell_id) FROM stdin;
2		2023-03-10 18:52:27.344622	2023-03-13 10:58:34.129808	\N	\N	\N	\N	\N	\N	f	\N
1	dg	2023-03-10 16:51:37.577777	2023-03-13 10:59:07.452164	\N	\N	\N	\N	\N	\N	t	2
3	dg	2023-03-17 02:10:08.366693	2023-03-17 02:10:08.366693	a	a	a	\N	\N	\N	f	\N
4	\N	2023-03-17 02:11:54.863505	2023-03-17 02:11:56.316981	b	b	b	\N	\N	\N	f	\N
\.


--
-- Data for Name: nc_xwok___feature; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_xwok___feature (id, title, created_at, updated_at, feature_number, description_of_nonconformance, spec, actual) FROM stdin;
2	\N	2023-03-10 17:46:50.24001	2023-03-10 17:49:52.68381	34	nn zone 2	-10 +50	10 60
3	\N	2023-03-10 17:50:14.166993	2023-03-10 17:50:20.700752	35	zone 3	x	y
\.


--
-- Data for Name: nc_xwok___test310; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_xwok___test310 (id, title, created_at, updated_at, title5) FROM stdin;
\.


--
-- Data for Name: nc_xwok___work_cell; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.nc_xwok___work_cell (id, title, created_at, updated_at) FROM stdin;
4	\N	2023-03-10 17:08:26.249742	2023-03-10 17:08:26.249742
2	Sinter	2023-03-10 17:08:08.988213	2023-03-10 17:20:48.171501
1	Hard Turning	2023-03-10 17:08:03.071235	2023-03-10 17:49:48.769237
3	Oxidation	2023-03-10 17:08:23.021198	2023-03-10 18:27:32.097077
\.


--
-- Data for Name: xc_knex_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.xc_knex_migrations (id, name, batch, migration_time) FROM stdin;
1	project	1	2023-03-09 03:56:58.089+00
2	m2m	1	2023-03-09 03:56:58.092+00
3	fkn	1	2023-03-09 03:56:58.104+00
4	viewType	1	2023-03-09 03:56:58.106+00
5	viewName	1	2023-03-09 03:56:58.108+00
6	nc_006_alter_nc_shared_views	1	2023-03-09 03:56:58.111+00
7	nc_007_alter_nc_shared_views_1	1	2023-03-09 03:56:58.113+00
8	nc_008_add_nc_shared_bases	1	2023-03-09 03:56:58.123+00
9	nc_009_add_model_order	1	2023-03-09 03:56:58.132+00
10	nc_010_add_parent_title_column	1	2023-03-09 03:56:58.134+00
11	nc_011_remove_old_ses_plugin	1	2023-03-09 03:56:58.136+00
\.


--
-- Data for Name: xc_knex_migrations_lock; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.xc_knex_migrations_lock (index, is_locked) FROM stdin;
1	0
\.


--
-- Data for Name: xc_knex_migrationsv2; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.xc_knex_migrationsv2 (id, name, batch, migration_time) FROM stdin;
1	nc_011	1	2023-03-09 03:56:58.497+00
2	nc_012_alter_column_data_types	1	2023-03-09 03:56:58.505+00
3	nc_013_sync_source	1	2023-03-09 03:56:58.523+00
4	nc_014_alter_column_data_types	1	2023-03-09 03:56:58.532+00
5	nc_015_add_meta_col_in_column_table	1	2023-03-09 03:56:58.534+00
6	nc_016_alter_hooklog_payload_types	1	2023-03-09 03:56:58.544+00
7	nc_017_add_user_token_version_column	1	2023-03-09 03:56:58.546+00
8	nc_018_add_meta_in_view	1	2023-03-09 03:56:58.547+00
9	nc_019_add_meta_in_meta_tables	1	2023-03-09 03:56:58.554+00
10	nc_020_kanban_view	1	2023-03-09 03:56:58.56+00
11	nc_021_add_fields_in_token	1	2023-03-09 03:56:58.566+00
12	nc_022_qr_code_column_type	1	2023-03-09 03:56:58.575+00
13	nc_023_multiple_source	1	2023-03-09 03:56:58.582+00
14	nc_024_barcode_column_type	1	2023-03-09 03:56:58.59+00
15	nc_025_add_row_height	1	2023-03-09 03:56:58.592+00
\.


--
-- Data for Name: xc_knex_migrationsv2_lock; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.xc_knex_migrationsv2_lock (index, is_locked) FROM stdin;
1	0
\.


--
-- Name: nc_9j1b___Non-Conformance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."nc_9j1b___Non-Conformance_id_seq"', 9, true);


--
-- Name: nc_9j1b___NoticeOfDeviation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."nc_9j1b___NoticeOfDeviation_id_seq"', 25, true);


--
-- Name: nc_9j1b___WorkCell_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."nc_9j1b___WorkCell_id_seq"', 30, true);


--
-- Name: nc_acl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_acl_id_seq', 1, false);


--
-- Name: nc_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_api_tokens_id_seq', 1, false);


--
-- Name: nc_audit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_audit_id_seq', 1, false);


--
-- Name: nc_cron_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_cron_id_seq', 1, false);


--
-- Name: nc_disabled_models_for_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_disabled_models_for_role_id_seq', 1, false);


--
-- Name: nc_evolutions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_evolutions_id_seq', 1, false);


--
-- Name: nc_hooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_hooks_id_seq', 1, true);


--
-- Name: nc_loaders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_loaders_id_seq', 1, false);


--
-- Name: nc_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_migrations_id_seq', 1, false);


--
-- Name: nc_models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_models_id_seq', 1, false);


--
-- Name: nc_plugins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_plugins_id_seq', 3, true);


--
-- Name: nc_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_relations_id_seq', 1, false);


--
-- Name: nc_resolvers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_resolvers_id_seq', 1, false);


--
-- Name: nc_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_roles_id_seq', 5, true);


--
-- Name: nc_routes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_routes_id_seq', 1, false);


--
-- Name: nc_rpc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_rpc_id_seq', 1, false);


--
-- Name: nc_shared_bases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_shared_bases_id_seq', 1, false);


--
-- Name: nc_shared_views_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_shared_views_id_seq', 1, false);


--
-- Name: nc_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_store_id_seq', 5, true);


--
-- Name: nc_xwok___deviation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_xwok___deviation_id_seq', 4, true);


--
-- Name: nc_xwok___feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_xwok___feature_id_seq', 3, true);


--
-- Name: nc_xwok___test310_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_xwok___test310_id_seq', 1, false);


--
-- Name: nc_xwok___work_cell_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nc_xwok___work_cell_id_seq', 4, true);


--
-- Name: xc_knex_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.xc_knex_migrations_id_seq', 11, true);


--
-- Name: xc_knex_migrations_lock_index_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.xc_knex_migrations_lock_index_seq', 1, true);


--
-- Name: xc_knex_migrationsv2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.xc_knex_migrationsv2_id_seq', 15, true);


--
-- Name: xc_knex_migrationsv2_lock_index_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.xc_knex_migrationsv2_lock_index_seq', 1, true);


--
-- Name: nc_9j1b___Non-Conformance nc_9j1b___Non-Conformance_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."nc_9j1b___Non-Conformance"
    ADD CONSTRAINT "nc_9j1b___Non-Conformance_pkey" PRIMARY KEY (id);


--
-- Name: nc_9j1b___NoticeOfDeviation nc_9j1b___NoticeOfDeviation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."nc_9j1b___NoticeOfDeviation"
    ADD CONSTRAINT "nc_9j1b___NoticeOfDeviation_pkey" PRIMARY KEY (id);


--
-- Name: nc_9j1b___WorkCell nc_9j1b___WorkCell_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."nc_9j1b___WorkCell"
    ADD CONSTRAINT "nc_9j1b___WorkCell_pkey" PRIMARY KEY (id);


--
-- Name: nc_9j1b___nc_m2m__w442b2pgo nc_9j1b___nc_m2m__w442b2pgo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_9j1b___nc_m2m__w442b2pgo
    ADD CONSTRAINT nc_9j1b___nc_m2m__w442b2pgo_pkey PRIMARY KEY (table2_id, table1_id);


--
-- Name: nc_acl nc_acl_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_acl
    ADD CONSTRAINT nc_acl_pkey PRIMARY KEY (id);


--
-- Name: nc_api_tokens nc_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_api_tokens
    ADD CONSTRAINT nc_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: nc_audit nc_audit_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_audit
    ADD CONSTRAINT nc_audit_pkey PRIMARY KEY (id);


--
-- Name: nc_audit_v2 nc_audit_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_audit_v2
    ADD CONSTRAINT nc_audit_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_bases_v2 nc_bases_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_bases_v2
    ADD CONSTRAINT nc_bases_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_col_barcode_v2 nc_col_barcode_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_barcode_v2
    ADD CONSTRAINT nc_col_barcode_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_col_formula_v2 nc_col_formula_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_formula_v2
    ADD CONSTRAINT nc_col_formula_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_col_lookup_v2 nc_col_lookup_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_lookup_v2
    ADD CONSTRAINT nc_col_lookup_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_col_qrcode_v2 nc_col_qrcode_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_qrcode_v2
    ADD CONSTRAINT nc_col_qrcode_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_col_relations_v2 nc_col_relations_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_relations_v2
    ADD CONSTRAINT nc_col_relations_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_col_rollup_v2 nc_col_rollup_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_rollup_v2
    ADD CONSTRAINT nc_col_rollup_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_col_select_options_v2 nc_col_select_options_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_select_options_v2
    ADD CONSTRAINT nc_col_select_options_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_columns_v2 nc_columns_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_columns_v2
    ADD CONSTRAINT nc_columns_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_cron nc_cron_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_cron
    ADD CONSTRAINT nc_cron_pkey PRIMARY KEY (id);


--
-- Name: nc_disabled_models_for_role nc_disabled_models_for_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_disabled_models_for_role
    ADD CONSTRAINT nc_disabled_models_for_role_pkey PRIMARY KEY (id);


--
-- Name: nc_disabled_models_for_role_v2 nc_disabled_models_for_role_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_disabled_models_for_role_v2
    ADD CONSTRAINT nc_disabled_models_for_role_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_evolutions nc_evolutions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_evolutions
    ADD CONSTRAINT nc_evolutions_pkey PRIMARY KEY (id);


--
-- Name: nc_filter_exp_v2 nc_filter_exp_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_filter_exp_v2
    ADD CONSTRAINT nc_filter_exp_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_form_view_columns_v2 nc_form_view_columns_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_form_view_columns_v2
    ADD CONSTRAINT nc_form_view_columns_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_form_view_v2 nc_form_view_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_form_view_v2
    ADD CONSTRAINT nc_form_view_v2_pkey PRIMARY KEY (fk_view_id);


--
-- Name: nc_gallery_view_columns_v2 nc_gallery_view_columns_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_gallery_view_columns_v2
    ADD CONSTRAINT nc_gallery_view_columns_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_gallery_view_v2 nc_gallery_view_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_gallery_view_v2
    ADD CONSTRAINT nc_gallery_view_v2_pkey PRIMARY KEY (fk_view_id);


--
-- Name: nc_grid_view_columns_v2 nc_grid_view_columns_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_grid_view_columns_v2
    ADD CONSTRAINT nc_grid_view_columns_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_grid_view_v2 nc_grid_view_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_grid_view_v2
    ADD CONSTRAINT nc_grid_view_v2_pkey PRIMARY KEY (fk_view_id);


--
-- Name: nc_hook_logs_v2 nc_hook_logs_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_hook_logs_v2
    ADD CONSTRAINT nc_hook_logs_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_hooks nc_hooks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_hooks
    ADD CONSTRAINT nc_hooks_pkey PRIMARY KEY (id);


--
-- Name: nc_hooks_v2 nc_hooks_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_hooks_v2
    ADD CONSTRAINT nc_hooks_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_kanban_view_columns_v2 nc_kanban_view_columns_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_kanban_view_columns_v2
    ADD CONSTRAINT nc_kanban_view_columns_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_kanban_view_v2 nc_kanban_view_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_kanban_view_v2
    ADD CONSTRAINT nc_kanban_view_v2_pkey PRIMARY KEY (fk_view_id);


--
-- Name: nc_loaders nc_loaders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_loaders
    ADD CONSTRAINT nc_loaders_pkey PRIMARY KEY (id);


--
-- Name: nc_migrations nc_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_migrations
    ADD CONSTRAINT nc_migrations_pkey PRIMARY KEY (id);


--
-- Name: nc_models nc_models_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_models
    ADD CONSTRAINT nc_models_pkey PRIMARY KEY (id);


--
-- Name: nc_models_v2 nc_models_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_models_v2
    ADD CONSTRAINT nc_models_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_orgs_v2 nc_orgs_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_orgs_v2
    ADD CONSTRAINT nc_orgs_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_plugins nc_plugins_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_plugins
    ADD CONSTRAINT nc_plugins_pkey PRIMARY KEY (id);


--
-- Name: nc_plugins_v2 nc_plugins_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_plugins_v2
    ADD CONSTRAINT nc_plugins_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_projects nc_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_projects
    ADD CONSTRAINT nc_projects_pkey PRIMARY KEY (id);


--
-- Name: nc_projects_v2 nc_projects_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_projects_v2
    ADD CONSTRAINT nc_projects_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_relations nc_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_relations
    ADD CONSTRAINT nc_relations_pkey PRIMARY KEY (id);


--
-- Name: nc_resolvers nc_resolvers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_resolvers
    ADD CONSTRAINT nc_resolvers_pkey PRIMARY KEY (id);


--
-- Name: nc_roles nc_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_roles
    ADD CONSTRAINT nc_roles_pkey PRIMARY KEY (id);


--
-- Name: nc_routes nc_routes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_routes
    ADD CONSTRAINT nc_routes_pkey PRIMARY KEY (id);


--
-- Name: nc_rpc nc_rpc_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_rpc
    ADD CONSTRAINT nc_rpc_pkey PRIMARY KEY (id);


--
-- Name: nc_shared_bases nc_shared_bases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_shared_bases
    ADD CONSTRAINT nc_shared_bases_pkey PRIMARY KEY (id);


--
-- Name: nc_shared_views nc_shared_views_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_shared_views
    ADD CONSTRAINT nc_shared_views_pkey PRIMARY KEY (id);


--
-- Name: nc_shared_views_v2 nc_shared_views_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_shared_views_v2
    ADD CONSTRAINT nc_shared_views_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_sort_v2 nc_sort_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_sort_v2
    ADD CONSTRAINT nc_sort_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_store nc_store_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_store
    ADD CONSTRAINT nc_store_pkey PRIMARY KEY (id);


--
-- Name: nc_sync_logs_v2 nc_sync_logs_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_sync_logs_v2
    ADD CONSTRAINT nc_sync_logs_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_sync_source_v2 nc_sync_source_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_sync_source_v2
    ADD CONSTRAINT nc_sync_source_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_teams_v2 nc_teams_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_teams_v2
    ADD CONSTRAINT nc_teams_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_users_v2 nc_users_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_users_v2
    ADD CONSTRAINT nc_users_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_views_v2 nc_views_v2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_views_v2
    ADD CONSTRAINT nc_views_v2_pkey PRIMARY KEY (id);


--
-- Name: nc_xwok___deviation nc_xwok___deviation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_xwok___deviation
    ADD CONSTRAINT nc_xwok___deviation_pkey PRIMARY KEY (id);


--
-- Name: nc_xwok___feature nc_xwok___feature_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_xwok___feature
    ADD CONSTRAINT nc_xwok___feature_pkey PRIMARY KEY (id);


--
-- Name: nc_xwok___test310 nc_xwok___test310_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_xwok___test310
    ADD CONSTRAINT nc_xwok___test310_pkey PRIMARY KEY (id);


--
-- Name: nc_xwok___work_cell nc_xwok___work_cell_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_xwok___work_cell
    ADD CONSTRAINT nc_xwok___work_cell_pkey PRIMARY KEY (id);


--
-- Name: xc_knex_migrations_lock xc_knex_migrations_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.xc_knex_migrations_lock
    ADD CONSTRAINT xc_knex_migrations_lock_pkey PRIMARY KEY (index);


--
-- Name: xc_knex_migrations xc_knex_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.xc_knex_migrations
    ADD CONSTRAINT xc_knex_migrations_pkey PRIMARY KEY (id);


--
-- Name: xc_knex_migrationsv2_lock xc_knex_migrationsv2_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.xc_knex_migrationsv2_lock
    ADD CONSTRAINT xc_knex_migrationsv2_lock_pkey PRIMARY KEY (index);


--
-- Name: xc_knex_migrationsv2 xc_knex_migrationsv2_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.xc_knex_migrationsv2
    ADD CONSTRAINT xc_knex_migrationsv2_pkey PRIMARY KEY (id);


--
-- Name: `nc_audit_index`; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "`nc_audit_index`" ON public.nc_audit USING btree (db_alias, project_id, model_name, model_id);


--
-- Name: nc_9j1b___nc_m2m__w442b2pgo_table1_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_9j1b___nc_m2m__w442b2pgo_table1_id_index ON public.nc_9j1b___nc_m2m__w442b2pgo USING btree (table1_id);


--
-- Name: nc_9j1b___nc_m2m__w442b2pgo_table2_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_9j1b___nc_m2m__w442b2pgo_table2_id_index ON public.nc_9j1b___nc_m2m__w442b2pgo USING btree (table2_id);


--
-- Name: nc_9j1b___noticeofdeviation_nc_9j1b___workcell_id1_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_9j1b___noticeofdeviation_nc_9j1b___workcell_id1_index ON public."nc_9j1b___NoticeOfDeviation" USING btree ("nc_9j1b___WorkCell_id1");


--
-- Name: nc_9j1b___noticeofdeviation_nc_9j1b___workcell_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_9j1b___noticeofdeviation_nc_9j1b___workcell_id_index ON public."nc_9j1b___NoticeOfDeviation" USING btree ("nc_9j1b___WorkCell_id");


--
-- Name: nc_audit_v2_row_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_audit_v2_row_id_index ON public.nc_audit_v2 USING btree (row_id);


--
-- Name: nc_models_db_alias_title_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_models_db_alias_title_index ON public.nc_models USING btree (db_alias, title);


--
-- Name: nc_models_order_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_models_order_index ON public.nc_models USING btree ("order");


--
-- Name: nc_models_view_order_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_models_view_order_index ON public.nc_models USING btree (view_order);


--
-- Name: nc_projects_users_project_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_projects_users_project_id_index ON public.nc_projects_users USING btree (project_id);


--
-- Name: nc_projects_users_user_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_projects_users_user_id_index ON public.nc_projects_users USING btree (user_id);


--
-- Name: nc_relations_db_alias_tn_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_relations_db_alias_tn_index ON public.nc_relations USING btree (db_alias, tn);


--
-- Name: nc_routes_db_alias_title_tn_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_routes_db_alias_title_tn_index ON public.nc_routes USING btree (db_alias, title, tn);


--
-- Name: nc_store_key_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_store_key_index ON public.nc_store USING btree (key);


--
-- Name: nc_xwok___deviation_nc_xwok___work_cell_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nc_xwok___deviation_nc_xwok___work_cell_id_index ON public.nc_xwok___deviation USING btree (nc_xwok___work_cell_id);


--
-- Name: xc_disabled124_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX xc_disabled124_idx ON public.nc_disabled_models_for_role USING btree (project_id, db_alias, title, type, role);


--
-- Name: nc_9j1b___Non-Conformance xc_trigger_nc_9j1b___Non-Conformance_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "xc_trigger_nc_9j1b___Non-Conformance_updated_at" BEFORE UPDATE ON public."nc_9j1b___Non-Conformance" FOR EACH ROW EXECUTE FUNCTION public."xc_au_nc_9j1b___Non-Conformance_updated_at"();


--
-- Name: nc_9j1b___NoticeOfDeviation xc_trigger_nc_9j1b___NoticeOfDeviation_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "xc_trigger_nc_9j1b___NoticeOfDeviation_updated_at" BEFORE UPDATE ON public."nc_9j1b___NoticeOfDeviation" FOR EACH ROW EXECUTE FUNCTION public."xc_au_nc_9j1b___NoticeOfDeviation_updated_at"();


--
-- Name: nc_9j1b___WorkCell xc_trigger_nc_9j1b___WorkCell_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER "xc_trigger_nc_9j1b___WorkCell_updated_at" BEFORE UPDATE ON public."nc_9j1b___WorkCell" FOR EACH ROW EXECUTE FUNCTION public."xc_au_nc_9j1b___WorkCell_updated_at"();


--
-- Name: nc_xwok___deviation xc_trigger_nc_xwok___deviation_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER xc_trigger_nc_xwok___deviation_updated_at BEFORE UPDATE ON public.nc_xwok___deviation FOR EACH ROW EXECUTE FUNCTION public.xc_au_nc_xwok___deviation_updated_at();


--
-- Name: nc_xwok___feature xc_trigger_nc_xwok___feature_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER xc_trigger_nc_xwok___feature_updated_at BEFORE UPDATE ON public.nc_xwok___feature FOR EACH ROW EXECUTE FUNCTION public.xc_au_nc_xwok___feature_updated_at();


--
-- Name: nc_xwok___test310 xc_trigger_nc_xwok___test310_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER xc_trigger_nc_xwok___test310_updated_at BEFORE UPDATE ON public.nc_xwok___test310 FOR EACH ROW EXECUTE FUNCTION public.xc_au_nc_xwok___test310_updated_at();


--
-- Name: nc_xwok___work_cell xc_trigger_nc_xwok___work_cell_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER xc_trigger_nc_xwok___work_cell_updated_at BEFORE UPDATE ON public.nc_xwok___work_cell FOR EACH ROW EXECUTE FUNCTION public.xc_au_nc_xwok___work_cell_updated_at();


--
-- Name: nc_9j1b___nc_m2m__w442b2pgo fk_nc_9j1b____nc_9j1b____81lqh_2ju2zzcyc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_9j1b___nc_m2m__w442b2pgo
    ADD CONSTRAINT fk_nc_9j1b____nc_9j1b____81lqh_2ju2zzcyc FOREIGN KEY (table1_id) REFERENCES public."nc_9j1b___NoticeOfDeviation"(id);


--
-- Name: nc_9j1b___NoticeOfDeviation fk_nc_9j1b____nc_9j1b____cedu87blm8r0cbx; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."nc_9j1b___NoticeOfDeviation"
    ADD CONSTRAINT fk_nc_9j1b____nc_9j1b____cedu87blm8r0cbx FOREIGN KEY ("nc_9j1b___WorkCell_id1") REFERENCES public."nc_9j1b___WorkCell"(id);


--
-- Name: nc_9j1b___NoticeOfDeviation fk_nc_9j1b____nc_9j1b____l3fk_26wuuktynw; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."nc_9j1b___NoticeOfDeviation"
    ADD CONSTRAINT fk_nc_9j1b____nc_9j1b____l3fk_26wuuktynw FOREIGN KEY ("nc_9j1b___WorkCell_id") REFERENCES public."nc_9j1b___WorkCell"(id);


--
-- Name: nc_9j1b___nc_m2m__w442b2pgo fk_nc_9j1b____nc_9j1b____mppwag5n2igr6k7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_9j1b___nc_m2m__w442b2pgo
    ADD CONSTRAINT fk_nc_9j1b____nc_9j1b____mppwag5n2igr6k7 FOREIGN KEY (table2_id) REFERENCES public."nc_9j1b___Non-Conformance"(id);


--
-- Name: nc_xwok___deviation fk_nc_xwok____nc_xwok____3pbly4yztcca_fz; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_xwok___deviation
    ADD CONSTRAINT fk_nc_xwok____nc_xwok____3pbly4yztcca_fz FOREIGN KEY (nc_xwok___work_cell_id) REFERENCES public.nc_xwok___work_cell(id);


--
-- Name: nc_api_tokens nc_api_tokens_fk_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_api_tokens
    ADD CONSTRAINT nc_api_tokens_fk_user_id_foreign FOREIGN KEY (fk_user_id) REFERENCES public.nc_users_v2(id);


--
-- Name: nc_audit_v2 nc_audit_v2_fk_model_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_audit_v2
    ADD CONSTRAINT nc_audit_v2_fk_model_id_foreign FOREIGN KEY (fk_model_id) REFERENCES public.nc_models_v2(id);


--
-- Name: nc_audit_v2 nc_audit_v2_project_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_audit_v2
    ADD CONSTRAINT nc_audit_v2_project_id_foreign FOREIGN KEY (project_id) REFERENCES public.nc_projects_v2(id);


--
-- Name: nc_bases_v2 nc_bases_v2_project_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_bases_v2
    ADD CONSTRAINT nc_bases_v2_project_id_foreign FOREIGN KEY (project_id) REFERENCES public.nc_projects_v2(id);


--
-- Name: nc_col_barcode_v2 nc_col_barcode_v2_fk_barcode_value_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_barcode_v2
    ADD CONSTRAINT nc_col_barcode_v2_fk_barcode_value_column_id_foreign FOREIGN KEY (fk_barcode_value_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_barcode_v2 nc_col_barcode_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_barcode_v2
    ADD CONSTRAINT nc_col_barcode_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_formula_v2 nc_col_formula_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_formula_v2
    ADD CONSTRAINT nc_col_formula_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_lookup_v2 nc_col_lookup_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_lookup_v2
    ADD CONSTRAINT nc_col_lookup_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_lookup_v2 nc_col_lookup_v2_fk_lookup_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_lookup_v2
    ADD CONSTRAINT nc_col_lookup_v2_fk_lookup_column_id_foreign FOREIGN KEY (fk_lookup_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_lookup_v2 nc_col_lookup_v2_fk_relation_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_lookup_v2
    ADD CONSTRAINT nc_col_lookup_v2_fk_relation_column_id_foreign FOREIGN KEY (fk_relation_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_qrcode_v2 nc_col_qrcode_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_qrcode_v2
    ADD CONSTRAINT nc_col_qrcode_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_qrcode_v2 nc_col_qrcode_v2_fk_qr_value_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_qrcode_v2
    ADD CONSTRAINT nc_col_qrcode_v2_fk_qr_value_column_id_foreign FOREIGN KEY (fk_qr_value_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_relations_v2 nc_col_relations_v2_fk_child_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_relations_v2
    ADD CONSTRAINT nc_col_relations_v2_fk_child_column_id_foreign FOREIGN KEY (fk_child_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_relations_v2 nc_col_relations_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_relations_v2
    ADD CONSTRAINT nc_col_relations_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_relations_v2 nc_col_relations_v2_fk_mm_child_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_relations_v2
    ADD CONSTRAINT nc_col_relations_v2_fk_mm_child_column_id_foreign FOREIGN KEY (fk_mm_child_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_relations_v2 nc_col_relations_v2_fk_mm_model_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_relations_v2
    ADD CONSTRAINT nc_col_relations_v2_fk_mm_model_id_foreign FOREIGN KEY (fk_mm_model_id) REFERENCES public.nc_models_v2(id);


--
-- Name: nc_col_relations_v2 nc_col_relations_v2_fk_mm_parent_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_relations_v2
    ADD CONSTRAINT nc_col_relations_v2_fk_mm_parent_column_id_foreign FOREIGN KEY (fk_mm_parent_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_relations_v2 nc_col_relations_v2_fk_parent_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_relations_v2
    ADD CONSTRAINT nc_col_relations_v2_fk_parent_column_id_foreign FOREIGN KEY (fk_parent_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_relations_v2 nc_col_relations_v2_fk_related_model_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_relations_v2
    ADD CONSTRAINT nc_col_relations_v2_fk_related_model_id_foreign FOREIGN KEY (fk_related_model_id) REFERENCES public.nc_models_v2(id);


--
-- Name: nc_col_rollup_v2 nc_col_rollup_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_rollup_v2
    ADD CONSTRAINT nc_col_rollup_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_rollup_v2 nc_col_rollup_v2_fk_relation_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_rollup_v2
    ADD CONSTRAINT nc_col_rollup_v2_fk_relation_column_id_foreign FOREIGN KEY (fk_relation_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_rollup_v2 nc_col_rollup_v2_fk_rollup_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_rollup_v2
    ADD CONSTRAINT nc_col_rollup_v2_fk_rollup_column_id_foreign FOREIGN KEY (fk_rollup_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_col_select_options_v2 nc_col_select_options_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_col_select_options_v2
    ADD CONSTRAINT nc_col_select_options_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_columns_v2 nc_columns_v2_fk_model_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_columns_v2
    ADD CONSTRAINT nc_columns_v2_fk_model_id_foreign FOREIGN KEY (fk_model_id) REFERENCES public.nc_models_v2(id);


--
-- Name: nc_disabled_models_for_role_v2 nc_disabled_models_for_role_v2_fk_view_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_disabled_models_for_role_v2
    ADD CONSTRAINT nc_disabled_models_for_role_v2_fk_view_id_foreign FOREIGN KEY (fk_view_id) REFERENCES public.nc_views_v2(id);


--
-- Name: nc_filter_exp_v2 nc_filter_exp_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_filter_exp_v2
    ADD CONSTRAINT nc_filter_exp_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_filter_exp_v2 nc_filter_exp_v2_fk_hook_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_filter_exp_v2
    ADD CONSTRAINT nc_filter_exp_v2_fk_hook_id_foreign FOREIGN KEY (fk_hook_id) REFERENCES public.nc_hooks_v2(id);


--
-- Name: nc_filter_exp_v2 nc_filter_exp_v2_fk_parent_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_filter_exp_v2
    ADD CONSTRAINT nc_filter_exp_v2_fk_parent_id_foreign FOREIGN KEY (fk_parent_id) REFERENCES public.nc_filter_exp_v2(id);


--
-- Name: nc_filter_exp_v2 nc_filter_exp_v2_fk_view_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_filter_exp_v2
    ADD CONSTRAINT nc_filter_exp_v2_fk_view_id_foreign FOREIGN KEY (fk_view_id) REFERENCES public.nc_views_v2(id);


--
-- Name: nc_form_view_columns_v2 nc_form_view_columns_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_form_view_columns_v2
    ADD CONSTRAINT nc_form_view_columns_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_form_view_columns_v2 nc_form_view_columns_v2_fk_view_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_form_view_columns_v2
    ADD CONSTRAINT nc_form_view_columns_v2_fk_view_id_foreign FOREIGN KEY (fk_view_id) REFERENCES public.nc_form_view_v2(fk_view_id);


--
-- Name: nc_form_view_v2 nc_form_view_v2_fk_view_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_form_view_v2
    ADD CONSTRAINT nc_form_view_v2_fk_view_id_foreign FOREIGN KEY (fk_view_id) REFERENCES public.nc_views_v2(id);


--
-- Name: nc_gallery_view_columns_v2 nc_gallery_view_columns_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_gallery_view_columns_v2
    ADD CONSTRAINT nc_gallery_view_columns_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_gallery_view_columns_v2 nc_gallery_view_columns_v2_fk_view_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_gallery_view_columns_v2
    ADD CONSTRAINT nc_gallery_view_columns_v2_fk_view_id_foreign FOREIGN KEY (fk_view_id) REFERENCES public.nc_gallery_view_v2(fk_view_id);


--
-- Name: nc_gallery_view_v2 nc_gallery_view_v2_fk_cover_image_col_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_gallery_view_v2
    ADD CONSTRAINT nc_gallery_view_v2_fk_cover_image_col_id_foreign FOREIGN KEY (fk_cover_image_col_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_gallery_view_v2 nc_gallery_view_v2_fk_view_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_gallery_view_v2
    ADD CONSTRAINT nc_gallery_view_v2_fk_view_id_foreign FOREIGN KEY (fk_view_id) REFERENCES public.nc_views_v2(id);


--
-- Name: nc_grid_view_columns_v2 nc_grid_view_columns_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_grid_view_columns_v2
    ADD CONSTRAINT nc_grid_view_columns_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_grid_view_columns_v2 nc_grid_view_columns_v2_fk_view_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_grid_view_columns_v2
    ADD CONSTRAINT nc_grid_view_columns_v2_fk_view_id_foreign FOREIGN KEY (fk_view_id) REFERENCES public.nc_grid_view_v2(fk_view_id);


--
-- Name: nc_grid_view_v2 nc_grid_view_v2_fk_view_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_grid_view_v2
    ADD CONSTRAINT nc_grid_view_v2_fk_view_id_foreign FOREIGN KEY (fk_view_id) REFERENCES public.nc_views_v2(id);


--
-- Name: nc_hooks_v2 nc_hooks_v2_fk_model_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_hooks_v2
    ADD CONSTRAINT nc_hooks_v2_fk_model_id_foreign FOREIGN KEY (fk_model_id) REFERENCES public.nc_models_v2(id);


--
-- Name: nc_kanban_view_columns_v2 nc_kanban_view_columns_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_kanban_view_columns_v2
    ADD CONSTRAINT nc_kanban_view_columns_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_kanban_view_columns_v2 nc_kanban_view_columns_v2_fk_view_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_kanban_view_columns_v2
    ADD CONSTRAINT nc_kanban_view_columns_v2_fk_view_id_foreign FOREIGN KEY (fk_view_id) REFERENCES public.nc_kanban_view_v2(fk_view_id);


--
-- Name: nc_kanban_view_v2 nc_kanban_view_v2_fk_cover_image_col_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_kanban_view_v2
    ADD CONSTRAINT nc_kanban_view_v2_fk_cover_image_col_id_foreign FOREIGN KEY (fk_cover_image_col_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_kanban_view_v2 nc_kanban_view_v2_fk_grp_col_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_kanban_view_v2
    ADD CONSTRAINT nc_kanban_view_v2_fk_grp_col_id_foreign FOREIGN KEY (fk_grp_col_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_kanban_view_v2 nc_kanban_view_v2_fk_view_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_kanban_view_v2
    ADD CONSTRAINT nc_kanban_view_v2_fk_view_id_foreign FOREIGN KEY (fk_view_id) REFERENCES public.nc_views_v2(id);


--
-- Name: nc_models_v2 nc_models_v2_base_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_models_v2
    ADD CONSTRAINT nc_models_v2_base_id_foreign FOREIGN KEY (base_id) REFERENCES public.nc_bases_v2(id);


--
-- Name: nc_models_v2 nc_models_v2_project_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_models_v2
    ADD CONSTRAINT nc_models_v2_project_id_foreign FOREIGN KEY (project_id) REFERENCES public.nc_projects_v2(id);


--
-- Name: nc_project_users_v2 nc_project_users_v2_fk_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_project_users_v2
    ADD CONSTRAINT nc_project_users_v2_fk_user_id_foreign FOREIGN KEY (fk_user_id) REFERENCES public.nc_users_v2(id);


--
-- Name: nc_project_users_v2 nc_project_users_v2_project_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_project_users_v2
    ADD CONSTRAINT nc_project_users_v2_project_id_foreign FOREIGN KEY (project_id) REFERENCES public.nc_projects_v2(id);


--
-- Name: nc_shared_views_v2 nc_shared_views_v2_fk_view_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_shared_views_v2
    ADD CONSTRAINT nc_shared_views_v2_fk_view_id_foreign FOREIGN KEY (fk_view_id) REFERENCES public.nc_views_v2(id);


--
-- Name: nc_sort_v2 nc_sort_v2_fk_column_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_sort_v2
    ADD CONSTRAINT nc_sort_v2_fk_column_id_foreign FOREIGN KEY (fk_column_id) REFERENCES public.nc_columns_v2(id);


--
-- Name: nc_sort_v2 nc_sort_v2_fk_view_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_sort_v2
    ADD CONSTRAINT nc_sort_v2_fk_view_id_foreign FOREIGN KEY (fk_view_id) REFERENCES public.nc_views_v2(id);


--
-- Name: nc_sync_source_v2 nc_sync_source_v2_base_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_sync_source_v2
    ADD CONSTRAINT nc_sync_source_v2_base_id_foreign FOREIGN KEY (base_id) REFERENCES public.nc_bases_v2(id);


--
-- Name: nc_sync_source_v2 nc_sync_source_v2_project_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_sync_source_v2
    ADD CONSTRAINT nc_sync_source_v2_project_id_foreign FOREIGN KEY (project_id) REFERENCES public.nc_projects_v2(id);


--
-- Name: nc_team_users_v2 nc_team_users_v2_org_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_team_users_v2
    ADD CONSTRAINT nc_team_users_v2_org_id_foreign FOREIGN KEY (org_id) REFERENCES public.nc_orgs_v2(id);


--
-- Name: nc_team_users_v2 nc_team_users_v2_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_team_users_v2
    ADD CONSTRAINT nc_team_users_v2_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.nc_users_v2(id);


--
-- Name: nc_teams_v2 nc_teams_v2_org_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_teams_v2
    ADD CONSTRAINT nc_teams_v2_org_id_foreign FOREIGN KEY (org_id) REFERENCES public.nc_orgs_v2(id);


--
-- Name: nc_views_v2 nc_views_v2_fk_model_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.nc_views_v2
    ADD CONSTRAINT nc_views_v2_fk_model_id_foreign FOREIGN KEY (fk_model_id) REFERENCES public.nc_models_v2(id);


--
-- PostgreSQL database dump complete
--

