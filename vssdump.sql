--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: postgres
--

CREATE OR REPLACE PROCEDURAL LANGUAGE plpgsql;


ALTER PROCEDURAL LANGUAGE plpgsql OWNER TO postgres;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: atposts; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE atposts (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.atposts OWNER TO suresh;

--
-- Name: atposts_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE atposts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.atposts_id_seq OWNER TO suresh;

--
-- Name: atposts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE atposts_id_seq OWNED BY atposts.id;


--
-- Name: atposts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('atposts_id_seq', 1, false);


--
-- Name: countries; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE countries (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.countries OWNER TO suresh;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO suresh;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE countries_id_seq OWNED BY countries.id;


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('countries_id_seq', 1033, true);


--
-- Name: currencies; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE currencies (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    currencycode character varying(255)
);


ALTER TABLE public.currencies OWNER TO suresh;

--
-- Name: currencies_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE currencies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.currencies_id_seq OWNER TO suresh;

--
-- Name: currencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE currencies_id_seq OWNED BY currencies.id;


--
-- Name: currencies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('currencies_id_seq', 2720, true);


--
-- Name: districts; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE districts (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    state_id integer
);


ALTER TABLE public.districts OWNER TO suresh;

--
-- Name: districts_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.districts_id_seq OWNER TO suresh;

--
-- Name: districts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE districts_id_seq OWNED BY districts.id;


--
-- Name: districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('districts_id_seq', 267, true);


--
-- Name: donation_cards; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE donation_cards (
    id integer NOT NULL,
    first_donation_date date,
    reminder_on date,
    remarks text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    donor_id integer,
    thru_id integer
);


ALTER TABLE public.donation_cards OWNER TO suresh;

--
-- Name: donation_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE donation_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.donation_cards_id_seq OWNER TO suresh;

--
-- Name: donation_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE donation_cards_id_seq OWNED BY donation_cards.id;


--
-- Name: donation_cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('donation_cards_id_seq', 5, true);


--
-- Name: donationcardperiods; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE donationcardperiods (
    id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    donation_id integer,
    donation_card_id integer,
    donationperiod_id integer
);


ALTER TABLE public.donationcardperiods OWNER TO suresh;

--
-- Name: donationcardperiods_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE donationcardperiods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.donationcardperiods_id_seq OWNER TO suresh;

--
-- Name: donationcardperiods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE donationcardperiods_id_seq OWNED BY donationcardperiods.id;


--
-- Name: donationcardperiods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('donationcardperiods_id_seq', 3, true);


--
-- Name: donationconditions; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE donationconditions (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.donationconditions OWNER TO suresh;

--
-- Name: donationconditions_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE donationconditions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.donationconditions_id_seq OWNER TO suresh;

--
-- Name: donationconditions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE donationconditions_id_seq OWNED BY donationconditions.id;


--
-- Name: donationconditions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('donationconditions_id_seq', 4, true);


--
-- Name: donationperiods; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE donationperiods (
    id integer NOT NULL,
    name character varying(255),
    startdate date,
    enddate date,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.donationperiods OWNER TO suresh;

--
-- Name: donationperiods_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE donationperiods_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.donationperiods_id_seq OWNER TO suresh;

--
-- Name: donationperiods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE donationperiods_id_seq OWNED BY donationperiods.id;


--
-- Name: donationperiods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('donationperiods_id_seq', 7, true);


--
-- Name: donations; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE donations (
    id integer NOT NULL,
    othernames character varying(255),
    donationdate date,
    "amountINR" double precision,
    amount double precision,
    payment_details character varying(255),
    receipt_no character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    collector_id integer,
    donationtype_id integer,
    currency_id integer,
    donationcondition_id integer,
    paymentmode_id integer
);


ALTER TABLE public.donations OWNER TO suresh;

--
-- Name: donations_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE donations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.donations_id_seq OWNER TO suresh;

--
-- Name: donations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE donations_id_seq OWNED BY donations.id;


--
-- Name: donations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('donations_id_seq', 1, false);


--
-- Name: donationtypes; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE donationtypes (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.donationtypes OWNER TO suresh;

--
-- Name: donationtypes_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE donationtypes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.donationtypes_id_seq OWNER TO suresh;

--
-- Name: donationtypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE donationtypes_id_seq OWNED BY donationtypes.id;


--
-- Name: donationtypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('donationtypes_id_seq', 5, true);


--
-- Name: paymentmodes; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE paymentmodes (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.paymentmodes OWNER TO suresh;

--
-- Name: paymentmodes_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE paymentmodes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.paymentmodes_id_seq OWNER TO suresh;

--
-- Name: paymentmodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE paymentmodes_id_seq OWNED BY paymentmodes.id;


--
-- Name: paymentmodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('paymentmodes_id_seq', 4, true);


--
-- Name: people; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE people (
    id integer NOT NULL,
    surname character varying(255),
    first_name character varying(255),
    middle_name character varying(255),
    gender character varying(6) DEFAULT 'Male'::character varying,
    email character varying(255),
    birth_date date,
    phone character varying(255),
    mobile character varying(255),
    annual_income double precision,
    address1_line1 character varying(255),
    address1_line2 character varying(255),
    address1_pin_code character varying(255),
    pan_no character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    salutation_id integer,
    country_id integer,
    state_id integer,
    district_id integer,
    taluka_id integer,
    atpost_id integer
);


ALTER TABLE public.people OWNER TO suresh;

--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_id_seq OWNER TO suresh;

--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE people_id_seq OWNED BY people.id;


--
-- Name: people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('people_id_seq', 2, true);


--
-- Name: salutations; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE salutations (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.salutations OWNER TO suresh;

--
-- Name: salutations_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE salutations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salutations_id_seq OWNER TO suresh;

--
-- Name: salutations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE salutations_id_seq OWNED BY salutations.id;


--
-- Name: salutations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('salutations_id_seq', 4, true);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO suresh;

--
-- Name: states; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE states (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    country_id integer
);


ALTER TABLE public.states OWNER TO suresh;

--
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.states_id_seq OWNER TO suresh;

--
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE states_id_seq OWNED BY states.id;


--
-- Name: states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('states_id_seq', 294, true);


--
-- Name: talukas; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE talukas (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    district_id integer
);


ALTER TABLE public.talukas OWNER TO suresh;

--
-- Name: talukas_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE talukas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.talukas_id_seq OWNER TO suresh;

--
-- Name: talukas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE talukas_id_seq OWNED BY talukas.id;


--
-- Name: talukas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('talukas_id_seq', 358, true);


--
-- Name: users; Type: TABLE; Schema: public; Owner: suresh; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    crypted_password character varying(40),
    salt character varying(40),
    remember_token character varying(255),
    remember_token_expires_at timestamp without time zone,
    name character varying(255),
    email_address character varying(255),
    administrator boolean DEFAULT false,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    state character varying(255) DEFAULT 'active'::character varying,
    key_timestamp timestamp without time zone,
    role character varying(255)
);


ALTER TABLE public.users OWNER TO suresh;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: suresh
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO suresh;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: suresh
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: suresh
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE atposts ALTER COLUMN id SET DEFAULT nextval('atposts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE countries ALTER COLUMN id SET DEFAULT nextval('countries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE currencies ALTER COLUMN id SET DEFAULT nextval('currencies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE districts ALTER COLUMN id SET DEFAULT nextval('districts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE donation_cards ALTER COLUMN id SET DEFAULT nextval('donation_cards_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE donationcardperiods ALTER COLUMN id SET DEFAULT nextval('donationcardperiods_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE donationconditions ALTER COLUMN id SET DEFAULT nextval('donationconditions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE donationperiods ALTER COLUMN id SET DEFAULT nextval('donationperiods_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE donations ALTER COLUMN id SET DEFAULT nextval('donations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE donationtypes ALTER COLUMN id SET DEFAULT nextval('donationtypes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE paymentmodes ALTER COLUMN id SET DEFAULT nextval('paymentmodes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE people ALTER COLUMN id SET DEFAULT nextval('people_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE salutations ALTER COLUMN id SET DEFAULT nextval('salutations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE states ALTER COLUMN id SET DEFAULT nextval('states_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE talukas ALTER COLUMN id SET DEFAULT nextval('talukas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: suresh
--

ALTER TABLE users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Data for Name: atposts; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY atposts (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY countries (id, name, created_at, updated_at) FROM stdin;
850	Ethiopia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
851	Europa Island	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
852	Falkland Islands (Islas Malvinas)	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
853	Faroe Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
854	Fiji	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
855	Finland	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
856	France	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
857	French Guiana	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
858	French Polynesia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
859	French Southern and Antarctic Lands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
860	Gabon	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
861	Gambia, The	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
862	Gaza Strip	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
863	Georgia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
864	Germany	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
865	Ghana	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
880	Holy See (Vatican City)	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
882	Hong Kong	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
883	Hungary	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
884	Iceland	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
885	India	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
886	Indonesia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
887	Iran	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
888	Iraq	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
889	Ireland	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
890	Isle of Man	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
891	Israel	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
892	Italy	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
893	Jamaica	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
894	Jan Mayen	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
895	Japan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
896	Jersey	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
897	Jordan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
898	Juan de Nova Island	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
899	Kazakhstan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
900	Kenya	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
901	Kiribati	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
902	Korea, North	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
903	Korea, South	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
904	Kuwait	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
905	Kyrgyzstan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
906	Laos	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
907	Latvia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
908	Lebanon	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
909	Lesotho	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
910	Liberia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
911	Libya	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
912	Liechtenstein	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
913	Lithuania	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
914	Luxembourg	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
915	Macau	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
916	Macedonia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
917	Madagascar	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
918	Malawi	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
919	Malaysia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
920	Maldives	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
921	Mali	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
922	Malta	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
923	Marshall Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
924	Martinique	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
925	Mauritania	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
926	Mauritius	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
927	Mayotte	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
928	Mexico	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
929	Micronesia, Federated States of	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
930	Moldova	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
931	Monaco	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
932	Mongolia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
933	Montserrat	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
934	Morocco	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
935	Mozambique	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
936	Namibia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
937	Nauru	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
938	Navassa Island	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
939	Nepal	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
940	Netherlands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
941	Netherlands Antilles	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
942	New Caledonia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
943	New Zealand	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
944	Nicaragua	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
945	Niger	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
946	Nigeria	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
947	Niue	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
948	Norfolk Island	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
949	Northern Mariana Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
950	Norway	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
951	Oman	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
952	Pakistan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
953	Palau	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
954	Panama	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
955	Papua New Guinea	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
956	Paracel Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
957	Paraguay	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
958	Peru	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
959	Philippines	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
960	Pitcairn Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
961	Poland	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
962	Portugal	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
963	Puerto Rico	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
964	Qatar	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
965	Reunion	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
966	Romania	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
967	Russia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
968	Rwanda	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
969	Saint Helena	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
970	Saint Kitts and Nevis	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
971	Saint Lucia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
972	Saint Pierre and Miquelon	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
973	Saint Vincent and the Grenadines	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
974	Samoa	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
975	San Marino	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
976	Sao Tome and Principe	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
977	Saudi Arabia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
978	Senegal	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
979	Serbia and Montenegro	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
980	Seychelles	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
981	Sierra Leone	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
982	Singapore	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
983	Slovakia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
984	Slovenia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
985	Solomon Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
986	Somalia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
987	South Africa	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
988	South Georgia and the South Sandwich Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
989	Spain	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
990	Spratly Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
991	Sri Lanka	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
992	Sudan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
993	Suriname	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
994	Svalbard	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
995	Swaziland	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
996	Sweden	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
997	Switzerland	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
998	Syria	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
999	Taiwan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1000	Tajikistan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1001	Tanzania	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1002	Thailand	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1003	Timor-Leste	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1004	Togo	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1005	Tokelau	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1006	Tonga	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1007	Trinidad and Tobago	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1008	Tromelin Island	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1009	Tunisia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1010	Turkey	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1011	Turkmenistan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1012	Turks and Caicos Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1013	Tuvalu	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1014	Uganda	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1015	Ukraine	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1016	United Arab Emirates	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
775	Afghanistan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
776	Akrotiri	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
777	Albania	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
778	Algeria	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
779	American Samoa	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
780	Andorra	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
781	Angola	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
782	Anguilla	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
783	Antarctica	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
784	Antigua and Barbuda	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
785	Argentina	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
786	Armenia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
787	Aruba	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
788	Ashmore and Cartier Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
789	Australia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
790	Austria	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
791	Azerbaijan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
792	Bahamas, The	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
793	Bahrain	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
794	Bangladesh	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
795	Barbados	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
796	Bassas da India	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
797	Belarus	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
798	Belgium	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
799	Belize	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
800	Benin	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
801	Bermuda	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
802	Bhutan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
803	Bolivia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
804	Bosnia and Herzegovina	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
805	Botswana	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
806	Bouvet Island	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
807	Brazil	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
808	British Indian Ocean Territory	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
809	British Virgin Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
810	Brunei	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
811	Bulgaria	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
812	Burkina Faso	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
813	Burma	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
814	Burundi	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
815	Cambodia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
816	Cameroon	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
817	Canada	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
818	Cape Verde	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
819	Cayman Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
820	Central African Republic	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
821	Chad	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
822	Chile	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
823	China	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
824	Christmas Island	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
825	Clipperton Island	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
826	Cocos (Keeling) Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
827	Colombia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
828	Comoros	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
829	Congo, Democratic Republic of the	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
830	Congo, Republic of the	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
831	Cook Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
832	Coral Sea Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
833	Costa Rica	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
834	Cote d'Ivoire	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
835	Croatia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
836	Cuba	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
837	Cyprus	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
838	Czech Republic	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
839	Denmark	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
840	Dhekelia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
841	Djibouti	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
842	Dominica	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
843	Dominican Republic	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
844	Ecuador	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
845	Egypt	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
846	El Salvador	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
847	Equatorial Guinea	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
848	Eritrea	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
849	Estonia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
866	Gibraltar	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
867	Glorioso Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
868	Greece	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
869	Greenland	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
870	Grenada	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
871	Guadeloupe	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
872	Guam	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
873	Guatemala	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
874	Guernsey	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
875	Guinea	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
876	Guinea-Bissau	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
877	Guyana	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
878	Haiti	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
879	Heard Island and McDonald Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
881	Honduras	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1017	United Kingdom	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1018	United States	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1019	Uruguay	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1020	Uzbekistan	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1021	Vanuatu	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1022	Venezuela	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1023	Vietnam	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1024	Virgin Islands	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1025	Wake Island	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1026	Wallis and Futuna	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1027	West Bank	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1028	Western Sahara	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1029	Yemen	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1030	Zambia	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
1031	Zimbabwe	2011-06-30 10:05:28.062148	2011-06-30 10:06:13.066076
\.


--
-- Data for Name: currencies; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY currencies (id, name, created_at, updated_at, currencycode) FROM stdin;
2551	United Arab Emirates, Dirhams	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	AED
2552	Afghanistan, Afghanis	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	AFN
2553	Albania, Leke	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	ALL
2554	Armenia, Drams	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	AMD
2555	Netherlands Antilles, Guilders (also called Florins)	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	ANG
2556	Angola, Kwanza	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	AOA
2557	Argentina, Pesos	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	ARS
2558	Australia, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	AUD
2559	Aruba, Guilders (also called Florins)	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	AWG
2560	Azerbaijan, New Manats	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	AZN
2561	Bosnia and Herzegovina, Convertible Marka	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BAM
2562	Barbados, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BBD
2563	Bangladesh, Taka	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BDT
2564	Bulgaria, Leva	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BGN
2565	Bahrain, Dinars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BHD
2566	Burundi, Francs	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BIF
2567	Bermuda, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BMD
2568	Brunei Darussalam, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BND
2569	Bolivia, Bolivianos	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BOB
2570	Brazil, Brazil Real	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BRL
2571	Bahamas, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BSD
2572	Bhutan, Ngultrum	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BTN
2573	Botswana, Pulas	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BWP
2574	Belarus, Rubles	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BYR
2575	Belize, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	BZD
2576	Canada, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	CAD
2577	Congo/Kinshasa, Congolese Francs	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	CDF
2578	Switzerland, Francs	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	CHF
2579	Chile, Pesos	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	CLP
2580	China, Yuan Renminbi	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	CNY
2581	Colombia, Pesos	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	COP
2582	Costa Rica, Colones	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	CRC
2583	Cuba, Pesos	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	CUP
2584	Cape Verde, Escudos	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	CVE
2585	Cyprus, Pounds (expires 2008-Jan-31)	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	CYP
2586	Czech Republic, Koruny	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	CZK
2587	Djibouti, Francs	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	DJF
2588	Denmark, Kroner	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	DKK
2589	Dominican Republic, Pesos	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	DOP
2590	Algeria, Algeria Dinars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	DZD
2591	Egypt, Pounds	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	EGP
2592	Eritrea, Nakfa	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	ERN
2593	Ethiopia, Birr	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	ETB
2594	Euro Member Countries, Euro	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	EUR
2595	Fiji, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	FJD
2596	Falkland Islands (Malvinas), Pounds	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	FKP
2597	United Kingdom, Pounds	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	GBP
2598	Georgia, Lari	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	GEL
2599	Guernsey, Pounds	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	GGP
2600	Ghana, Cedis	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	GHS
2601	Gibraltar, Pounds	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	GIP
2602	Gambia, Dalasi	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	GMD
2603	Guinea, Francs	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	GNF
2604	Guatemala, Quetzales	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	GTQ
2605	Guyana, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	GYD
2606	Hong Kong, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	HKD
2607	Honduras, Lempiras	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	HNL
2608	Croatia, Kuna	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	HRK
2609	Haiti, Gourdes	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	HTG
2610	Hungary, Forint	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	HUF
2611	Indonesia, Rupiahs	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	IDR
2612	Israel, New Shekels	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	ILS
2613	Isle of Man, Pounds	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	IMP
2614	India, Rupees	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	INR
2615	Iraq, Dinars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	IQD
2616	Iran, Rials	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	IRR
2617	Iceland, Kronur	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	ISK
2618	Jersey, Pounds	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	JEP
2619	Jamaica, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	JMD
2620	Jordan, Dinars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	JOD
2621	Japan, Yen	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	JPY
2622	Kenya, Shillings	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	KES
2623	Kyrgyzstan, Soms	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	KGS
2624	Cambodia, Riels	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	KHR
2625	Comoros, Francs	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	KMF
2626	Korea (North), Won	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	KPW
2627	Korea (South), Won	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	KRW
2628	Kuwait, Dinars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	KWD
2629	Cayman Islands, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	KYD
2630	Kazakhstan, Tenge	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	KZT
2631	Laos, Kips	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	LAK
2632	Lebanon, Pounds	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	LBP
2633	Sri Lanka, Rupees	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	LKR
2634	Liberia, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	LRD
2635	Lesotho, Maloti	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	LSL
2636	Lithuania, Litai	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	LTL
2637	Latvia, Lati	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	LVL
2638	Libya, Dinars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	LYD
2639	Morocco, Dirhams	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MAD
2640	Moldova, Lei	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MDL
2641	Madagascar, Ariary	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MGA
2642	Macedonia, Denars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MKD
2643	Myanmar (Burma), Kyats	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MMK
2644	Mongolia, Tugriks	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MNT
2645	Macau, Patacas	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MOP
2646	Mauritania, Ouguiyas	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MRO
2647	Malta, Liri (expires 2008-Jan-31)	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MTL
2648	Mauritius, Rupees	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MUR
2649	Maldives (Maldive Islands), Rufiyaa	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MVR
2650	Malawi, Kwachas	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MWK
2651	Mexico, Pesos	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MXN
2707	Samoa, Tala	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	WST
2652	Malaysia, Ringgits	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MYR
2653	Mozambique, Meticais	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	MZN
2654	Namibia, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	NAD
2655	Nigeria, Nairas	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	NGN
2656	Nicaragua, Cordobas	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	NIO
2657	Norway, Krone	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	NOK
2658	Nepal, Nepal Rupees	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	NPR
2659	New Zealand, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	NZD
2660	Oman, Rials	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	OMR
2661	Panama, Balboa	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	PAB
2662	Peru, Nuevos Soles	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	PEN
2663	Papua New Guinea, Kina	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	PGK
2664	Philippines, Pesos	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	PHP
2665	Pakistan, Rupees	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	PKR
2666	Poland, Zlotych	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	PLN
2667	Paraguay, Guarani	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	PYG
2668	Qatar, Rials	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	QAR
2669	Romania, New Lei	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	RON
2670	Serbia, Dinars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	RSD
2671	Russia, Rubles	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	RUB
2672	Rwanda, Rwanda Francs	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	RWF
2673	Saudi Arabia, Riyals	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SAR
2674	Solomon Islands, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SBD
2675	Seychelles, Rupees	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SCR
2676	Sudan, Pounds	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SDG
2677	Sweden, Kronor	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SEK
2678	Singapore, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SGD
2679	Saint Helena, Pounds	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SHP
2680	Sierra Leone, Leones	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SLL
2681	Somalia, Shillings	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SOS
2682	Seborga, Luigini	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SPL
2683	Suriname, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SRD
2684	São Tome and Principe, Dobras	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	STD
2685	El Salvador, Colones	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SVC
2686	Syria, Pounds	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SYP
2687	Swaziland, Emalangeni	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	SZL
2688	Thailand, Baht	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	THB
2689	Tajikistan, Somoni	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	TJS
2690	Turkmenistan, Manats	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	TMM
2691	Tunisia, Dinars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	TND
2692	Tonga, Pa'anga	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	TOP
2693	Turkey, New Lira	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	TRY
2694	Trinidad and Tobago, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	TTD
2695	Tuvalu, Tuvalu Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	TVD
2696	Taiwan, New Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	TWD
2697	Tanzania, Shillings	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	TZS
2698	Ukraine, Hryvnia	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	UAH
2699	Uganda, Shillings	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	UGX
2700	United States of America, Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	USD
2701	Uruguay, Pesos	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	UYU
2702	Uzbekistan, Sums	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	UZS
2703	Venezuela, Bolivares (expires 2008-Jun-30)	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	VEB
2704	Venezuela, Bolivares Fuertes	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	VEF
2705	Viet Nam, Dong	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	VND
2706	Vanuatu, Vatu	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	VUV
2708	Communauté Financière Africaine BEAC, Francs	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	XAF
2709	Silver, Ounces	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	XAG
2710	Gold, Ounces	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	XAU
2711	East Caribbean Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	XCD
2712	International Monetary Fund (IMF) Special Drawing Rights	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	XDR
2713	Communauté Financière Africaine BCEAO, Francs	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	XOF
2714	Palladium Ounces	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	XPD
2715	Comptoirs Français du Pacifique Francs	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	XPF
2716	Platinum, Ounces	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	XPT
2717	Yemen, Rials	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	YER
2718	South Africa, Rand	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	ZAR
2719	Zambia, Kwacha	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	ZMK
2720	Zimbabwe, Zimbabwe Dollars	2011-07-02 19:07:25.910963	2011-07-02 19:07:25.910963	ZWD
\.


--
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY districts (id, name, created_at, updated_at, state_id) FROM stdin;
71	Aurangabad	\N	\N	15
72	Bandra(Mumbai Suburban district)	\N	\N	15
73	Nagpur	\N	\N	15
74	Pune	\N	\N	15
76	Chandrapur	\N	\N	15
77	Jalgaon	\N	\N	15
78	Parbhani	\N	\N	15
79	Sholapur	\N	\N	15
80	Thane	\N	\N	15
81	Latur	\N	\N	15
82	Mumbai-City	\N	\N	15
83	Buldhana	\N	\N	15
84	Dhule	\N	\N	15
85	Kolhpur	\N	\N	15
86	Nanded	\N	\N	15
87	Raigad	\N	\N	15
88	Amravati	\N	\N	15
89	Nashik	\N	\N	15
90	Wardha	\N	\N	15
91	Ahmednagar	\N	\N	15
92	Beed	\N	\N	15
93	Bhandara	\N	\N	15
94	Gadchiroli	\N	\N	15
95	Jalna	\N	\N	15
96	Osmanabad	\N	\N	15
97	Ratnagiri	\N	\N	15
98	Sangli	\N	\N	15
99	Satara	\N	\N	15
100	Sindudurg	\N	\N	15
101	Yavatmal	\N	\N	15
102	Nandurbar	\N	\N	15
103	Washim	\N	\N	15
104	Gondia	\N	\N	15
105	Hingoli	\N	\N	15
75	Akola	\N	2011-07-01 10:23:15.380213	15
133	Mysore	\N	\N	12
134	Gulberga	\N	\N	12
135	Chitradurga	\N	\N	12
136	Kolar	\N	\N	12
137	Bijapur	\N	\N	12
138	Dakshina Kannada	\N	\N	12
139	Raichur	\N	\N	12
140	Bellary	\N	\N	12
141	Belgaum	\N	\N	12
142	Hassan	\N	\N	12
143	Dharwad	\N	\N	12
144	Bangalore Rural	\N	\N	12
145	Shimoga	\N	\N	12
146	Mandya	\N	\N	12
147	Chickmagalur	\N	\N	12
148	Bangalore Urban	\N	\N	12
149	Madikeri	\N	\N	12
150	Tumkur	\N	\N	12
151	Bidar	\N	\N	12
152	Karwar	\N	\N	12
153	Udupi	\N	\N	12
154	Davanagare	\N	\N	12
155	Chamrajnagar	\N	\N	12
156	Koppal	\N	\N	12
157	Haveri	\N	\N	12
158	Gadak	\N	\N	12
159	Yadgir	\N	\N	12
160	Mysore	\N	\N	12
161	Gulberga	\N	\N	12
162	Chitradurga	\N	\N	12
163	Kolar	\N	\N	12
164	Bijapur	\N	\N	12
165	Dakshina Kannada	\N	\N	12
166	Raichur	\N	\N	12
167	Bellary	\N	\N	12
168	Belgaum	\N	\N	12
169	Hassan	\N	\N	12
170	Dharwad	\N	\N	12
171	Bangalore Rural	\N	\N	12
172	Shimoga	\N	\N	12
173	Mandya	\N	\N	12
174	Chickmagalur	\N	\N	12
175	Bangalore Urban	\N	\N	12
176	Madikeri	\N	\N	12
177	Tumkur	\N	\N	12
178	Bidar	\N	\N	12
179	Karwar	\N	\N	12
180	Udupi	\N	\N	12
181	Davanagare	\N	\N	12
182	Chamrajnagar	\N	\N	12
183	Koppal	\N	\N	12
184	Haveri	\N	\N	12
185	Gadak	\N	\N	12
186	Yadgir	\N	\N	12
187	Mysore	\N	\N	12
188	Gulberga	\N	\N	12
189	Chitradurga	\N	\N	12
190	Kolar	\N	\N	12
191	Bijapur	\N	\N	12
192	Dakshina Kannada	\N	\N	12
193	Raichur	\N	\N	12
194	Bellary	\N	\N	12
195	Belgaum	\N	\N	12
196	Hassan	\N	\N	12
197	Dharwad	\N	\N	12
198	Bangalore Rural	\N	\N	12
199	Shimoga	\N	\N	12
200	Mandya	\N	\N	12
201	Chickmagalur	\N	\N	12
202	Bangalore Urban	\N	\N	12
203	Madikeri	\N	\N	12
204	Tumkur	\N	\N	12
205	Bidar	\N	\N	12
206	Karwar	\N	\N	12
207	Udupi	\N	\N	12
208	Davanagare	\N	\N	12
209	Chamrajnagar	\N	\N	12
210	Koppal	\N	\N	12
211	Haveri	\N	\N	12
212	Gadak	\N	\N	12
213	Yadgir	\N	\N	12
241	Mysore	\N	\N	12
242	Gulberga	\N	\N	12
243	Chitradurga	\N	\N	12
244	Kolar	\N	\N	12
245	Bijapur	\N	\N	12
246	Dakshina Kannada	\N	\N	12
247	Raichur	\N	\N	12
248	Bellary	\N	\N	12
249	Belgaum	\N	\N	12
250	Hassan	\N	\N	12
251	Dharwad	\N	\N	12
252	Bangalore Rural	\N	\N	12
253	Shimoga	\N	\N	12
254	Mandya	\N	\N	12
255	Chickmagalur	\N	\N	12
256	Bangalore Urban	\N	\N	12
257	Madikeri	\N	\N	12
258	Tumkur	\N	\N	12
259	Bidar	\N	\N	12
260	Karwar	\N	\N	12
261	Udupi	\N	\N	12
262	Davanagare	\N	\N	12
263	Chamrajnagar	\N	\N	12
264	Koppal	\N	\N	12
265	Haveri	\N	\N	12
266	Gadak	\N	\N	12
267	Yadgir	\N	\N	12
\.


--
-- Data for Name: donation_cards; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY donation_cards (id, first_donation_date, reminder_on, remarks, created_at, updated_at, donor_id, thru_id) FROM stdin;
1	2011-08-01	2011-08-24		2011-08-01 15:00:59.336179	2011-08-01 15:00:59.336179	1	2
2	2011-08-03	2011-08-16	wer \r\ndfg\r\nhjk	2011-08-01 17:50:09.226637	2011-08-01 17:50:09.226637	2	1
\.


--
-- Data for Name: donationcardperiods; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY donationcardperiods (id, created_at, updated_at, donation_id, donation_card_id, donationperiod_id) FROM stdin;
1	2011-08-25 09:01:17.494429	2011-08-25 09:01:17.494429	\N	1	2
2	2011-08-25 09:01:17.605015	2011-08-25 09:01:17.605015	\N	1	1
3	2011-08-25 14:44:10.825708	2011-08-25 14:44:10.825708	\N	1	3
\.


--
-- Data for Name: donationconditions; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY donationconditions (id, name, created_at, updated_at) FROM stdin;
1	Sponsered Student	2011-07-02 13:10:27.867388	2011-07-02 13:10:27.867388
2	Bhojan	2011-07-02 13:10:56.167164	2011-07-02 13:10:56.167164
3	Sports	2011-07-02 13:11:23.631614	2011-07-02 13:11:23.631614
4	Building	2011-07-02 13:11:50.748404	2011-07-02 13:11:50.748404
\.


--
-- Data for Name: donationperiods; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY donationperiods (id, name, startdate, enddate, created_at, updated_at) FROM stdin;
2	Feb11-Jan12	2011-02-01	2012-01-31	2011-07-25 09:56:12.88171	2011-07-25 09:56:12.88171
1	Jan11-Dec-11	2011-01-01	2011-12-31	2011-07-25 09:53:32.28775	2011-07-25 09:56:38.375434
3	Mar11-Feb12	2011-03-01	2012-02-29	2011-07-25 10:00:30.659245	2011-07-25 10:00:30.659245
4	Apr11-Mar12	2011-04-01	2012-03-31	2011-07-25 10:02:04.453673	2011-07-25 10:02:04.453673
6	May11-Apr12	2011-05-01	2012-04-30	2011-07-25 16:35:22.603909	2011-07-25 16:35:22.603909
7	Jun11-May12	2011-06-01	2012-05-31	2011-07-25 17:03:45.965981	2011-07-25 17:04:01.935752
\.


--
-- Data for Name: donations; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY donations (id, othernames, donationdate, "amountINR", amount, payment_details, receipt_no, created_at, updated_at, collector_id, donationtype_id, currency_id, donationcondition_id, paymentmode_id) FROM stdin;
\.


--
-- Data for Name: donationtypes; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY donationtypes (id, name, created_at, updated_at) FROM stdin;
1	Cash	2011-07-02 14:26:51.558719	2011-07-02 14:26:51.558719
2	Clothes	2011-07-02 14:27:14.241457	2011-07-02 14:27:14.241457
3	Books	2011-07-02 14:27:29.61123	2011-07-02 14:27:29.61123
4	Foodgrains	2011-07-02 14:27:51.226034	2011-07-02 14:27:51.226034
5	Other	2011-07-02 14:28:07.557536	2011-07-02 14:28:07.557536
\.


--
-- Data for Name: paymentmodes; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY paymentmodes (id, name, created_at, updated_at) FROM stdin;
1	Cash	2011-07-20 09:03:48.782561	2011-07-20 09:03:48.782561
2	Cheque	2011-07-20 09:05:11.56203	2011-07-20 09:05:11.56203
3	MoneyOrder	2011-07-20 09:05:34.019781	2011-07-20 09:05:34.019781
4	ElectronicTransfer	2011-07-20 09:06:28.424475	2011-07-20 09:06:28.424475
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY people (id, surname, first_name, middle_name, gender, email, birth_date, phone, mobile, annual_income, address1_line1, address1_line2, address1_pin_code, pan_no, created_at, updated_at, salutation_id, country_id, state_id, district_id, taluka_id, atpost_id) FROM stdin;
1	Kulkarni	Suresh	V	Male	suresh.v.kulkarni@gmail.com	1951-11-06	24213042	9880022555	12345	47	bibvewadi	411037	1234567890	2011-07-27 18:37:15.364038	2011-07-27 18:37:15.364038	1	885	15	96	13	\N
2	Ghotikar	Ramesh		Male	ramesh.ghotikar@gmail.com	1950-07-12	12345	623564521	12345	34	Erandawane	411056	123asdrt23	2011-08-01 14:54:39.066479	2011-08-01 14:54:39.066479	1	885	15	74	52	\N
\.


--
-- Data for Name: salutations; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY salutations (id, name, created_at, updated_at) FROM stdin;
1	Mr.	2011-07-24 11:37:30.097088	2011-07-24 11:37:30.097088
2	Mrs.	2011-07-24 11:38:16.443048	2011-07-24 11:38:16.443048
3	Ms.	2011-07-24 11:38:54.591129	2011-07-24 11:38:54.591129
4	Dr.	2011-07-24 11:40:33.331156	2011-07-24 11:40:33.331156
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY schema_migrations (version) FROM stdin;
20110621112218
20110621131636
20110701094850
20110701114414
20110702124309
20110702132801
20110724112827
20110725094556
20110727174616
20110727183022
20110727183255
20110728142408
20110728142626
20110801144944
20110805171442
20110825084716
20110825170204
\.


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY states (id, name, created_at, updated_at, country_id) FROM stdin;
1	Andhra Pradesh	2011-06-21 13:26:29.764398	2011-06-21 13:26:29.764398	885
2	Arunachal Pradesh	2011-06-21 13:27:13.197802	2011-06-21 13:27:13.197802	885
3	Assam	2011-06-21 13:27:38.452193	2011-06-21 13:27:38.452193	885
4	Bihar	2011-06-21 13:28:04.024894	2011-06-21 13:28:04.024894	885
5	Chhattisgarh	2011-06-21 13:28:31.279735	2011-06-21 13:28:31.279735	885
6	Goa	2011-06-21 13:29:10.71739	2011-06-21 13:29:10.71739	885
7	Gujarat	2011-06-21 13:29:29.036255	2011-06-21 13:29:29.036255	885
8	Haryana	2011-06-21 13:29:52.956288	2011-06-21 13:29:52.956288	885
9	Himachal Pradesh	2011-06-21 13:30:15.89115	2011-06-21 13:30:15.89115	885
10	Jammu and Kashmir	2011-06-21 13:30:34.443267	2011-06-21 13:30:34.443267	885
11	Jharkhand	2011-06-21 13:30:59.962969	2011-06-21 13:30:59.962969	885
12	Karnataka	2011-06-21 13:31:31.793614	2011-06-21 13:31:31.793614	885
13	Kerala	2011-06-21 13:32:05.642517	2011-06-21 13:32:05.642517	885
14	Madhya Pradesh	2011-06-21 13:32:33.845997	2011-06-21 13:32:33.845997	885
15	Maharashtra	2011-06-21 13:33:01.211541	2011-06-21 13:33:01.211541	885
16	Manipur	2011-06-21 13:33:24.585488	2011-06-21 13:33:24.585488	885
17	Meghalaya	2011-06-21 13:33:56.704107	2011-06-21 13:33:56.704107	885
18	Mizoram	2011-06-21 13:34:15.680289	2011-06-21 13:34:15.680289	885
19	Nagaland	2011-06-21 13:34:34.085671	2011-06-21 13:34:34.085671	885
20	Orissa	2011-06-21 13:34:51.28417	2011-06-21 13:34:51.28417	885
21	Punjab	2011-06-21 13:35:08.195763	2011-06-21 13:35:08.195763	885
22	Rajasthan	2011-06-21 13:35:30.180596	2011-06-21 13:35:30.180596	885
23	Sikkim	2011-06-21 13:35:49.246144	2011-06-21 13:35:49.246144	885
24	Tamil Nadu	2011-06-21 13:36:10.35099	2011-06-21 13:36:10.35099	885
25	Tripura	2011-06-21 13:36:28.945203	2011-06-21 13:36:28.945203	885
26	Uttar Pradesh	2011-06-21 13:36:49.770298	2011-06-21 13:36:49.770298	885
27	Uttarakhand	2011-06-21 13:37:10.058073	2011-06-21 13:37:10.058073	885
28	West Bengal	2011-06-21 13:37:27.159333	2011-06-21 13:37:27.159333	885
29	Andaman and Nicobar Islands	2011-06-21 13:38:01.31197	2011-06-21 13:38:01.31197	885
30	Chandigarh	2011-06-21 13:38:29.159588	2011-06-21 13:38:29.159588	885
31	Dadra and Nagar Haveli	2011-06-21 13:38:48.545625	2011-06-21 13:38:48.545625	885
32	Daman and Diu	2011-06-21 13:39:08.186533	2011-06-21 13:39:08.186533	885
33	Lakshadweep	2011-06-21 13:39:32.143601	2011-06-21 13:39:32.143601	885
34	National Capital Territory of Delhi	2011-06-21 13:39:56.719875	2011-06-21 13:39:56.719875	885
35	Puducherry	2011-06-21 13:40:21.522841	2011-06-21 13:40:21.522841	885
\.


--
-- Data for Name: talukas; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY talukas (id, name, created_at, updated_at, district_id) FROM stdin;
1	Devgad	\N	\N	100
2	Vaibhavwadi	\N	\N	100
3	Kankavli	\N	\N	100
4	Malwan	\N	\N	100
5	Sawantwadi	\N	\N	100
6	Vengurla	\N	\N	100
7	Kudal	\N	\N	100
8	Dodamarg	\N	\N	100
9	Ratnagiri	\N	\N	97
10	Sangameshwar	\N	\N	97
11	Lanja	\N	\N	97
12	Rajapur	\N	\N	97
13	Chiplun	\N	\N	97
14	Guhagar	\N	\N	97
15	Dapoli	\N	\N	97
16	Mandangad	\N	\N	97
17	Khed	\N	\N	97
18	Pen	\N	\N	87
19	Alibag	\N	\N	87
20	Murud	\N	\N	87
21	Panvel	\N	\N	87
22	Uran	\N	\N	87
23	Karjat	\N	\N	87
24	Khalapur	\N	\N	87
25	Mangaon	\N	\N	87
26	Tala	\N	\N	87
27	Roha	\N	\N	87
28	Sudhagad	\N	\N	87
29	Mahad	\N	\N	87
30	Poladpur	\N	\N	87
31	Shrivardhan	\N	\N	87
32	Mhasla	\N	\N	87
33	Kurla	\N	\N	82
34	Andheri	\N	\N	82
35	Borivali	\N	\N	82
36	Thane	\N	\N	80
37	Kalyan	\N	\N	80
38	Murbad	\N	\N	80
39	Dahanu	\N	\N	80
40	Palghar	\N	\N	80
41	Talasari	\N	\N	80
42	Jawhar	\N	\N	80
43	Mokhada	\N	\N	80
44	Vada	\N	\N	80
45	Vikramgad	\N	\N	80
46	Vasai	\N	\N	80
47	Bhiwandi	\N	\N	80
48	Shahapur	\N	\N	80
49	Ulhasnagar	\N	\N	80
50	Ambarnath	\N	\N	80
51	Nashik	\N	\N	89
52	Igatpuri	\N	\N	89
53	Dindori	\N	\N	89
54	Peint	\N	\N	89
55	Trimbakeshwar	\N	\N	89
56	Kalwan	\N	\N	89
57	Deola	\N	\N	89
58	Surgana	\N	\N	89
59	Baglan/ ( Satana )	\N	\N	89
60	Malegaon	\N	\N	89
61	Nandgaon	\N	\N	89
62	Chandwad	\N	\N	89
63	Niphad	\N	\N	89
64	Sinnar	\N	\N	89
65	Yeola	\N	\N	89
66	Nandurbar	\N	\N	102
67	Navapur	\N	\N	102
68	Shahada	\N	\N	102
69	Talode	\N	\N	102
70	Akkalkuwa	\N	\N	102
71	Akrani	\N	\N	102
72	Dhule	\N	\N	84
73	Sakri	\N	\N	84
74	Sindkheda	\N	\N	84
75	Shirpur	\N	\N	84
76	Jalgaon	\N	\N	77
77	Jamner	\N	\N	77
78	Erandol	\N	\N	77
79	Dharangaon	\N	\N	77
80	Bhusawal	\N	\N	77
81	Raver	\N	\N	77
82	Muktainagar	\N	\N	77
83	Bodwad	\N	\N	77
84	Yawal	\N	\N	77
85	Amalner	\N	\N	77
86	Parola (Maharashtra)	\N	\N	77
87	Chopda	\N	\N	77
88	Pachora	\N	\N	77
89	Bhadgaon	\N	\N	77
90	Chalisgaon	\N	\N	77
91	Buldhana	\N	\N	83
92	Chikhli	\N	\N	83
93	Deulgaon Raja	\N	\N	83
94	Jalgaon Jamod	\N	\N	83
95	Sangrampur	\N	\N	83
96	Malkapur	\N	\N	83
97	Motala	\N	\N	83
98	Nandura	\N	\N	83
99	Khamgaon	\N	\N	83
100	Shegaon	\N	\N	83
101	Mehkar	\N	\N	83
102	Sindkhed Raja	\N	\N	83
103	Lonar	\N	\N	83
104	Akola	\N	\N	75
105	Akot	\N	\N	75
106	Telhara	\N	\N	75
107	Balapur	\N	\N	75
108	Patur	\N	\N	75
109	Murtajapur	\N	\N	75
110	Barshitakli	\N	\N	75
111	Washim	\N	\N	103
112	Malegaon	\N	\N	103
113	Risod	\N	\N	103
114	Mangrulpir	\N	\N	103
115	Karanja	\N	\N	103
116	Manora	\N	\N	103
117	Amravati	\N	\N	88
118	Bhatukali	\N	\N	88
119	Nandgaon Khandeshwar	\N	\N	88
120	Dharni, Amravati	\N	\N	88
121	Chikhaldara	\N	\N	88
122	Achalpur	\N	\N	88
123	Chandurbazar	\N	\N	88
124	Morshi	\N	\N	88
125	Warud	\N	\N	88
126	Daryapur	\N	\N	88
127	Anjangaon Surji	\N	\N	88
128	Chandur	\N	\N	88
129	Dhamangaon	\N	\N	88
130	Tiosa	\N	\N	88
131	Wardha	\N	\N	90
132	Deoli	\N	\N	90
133	Seloo	\N	\N	90
134	Arvi	\N	\N	90
135	Ashti	\N	\N	90
136	Karanja	\N	\N	90
137	Hinganghat	\N	\N	90
138	Samudrapur	\N	\N	90
139	Nagpur Urban	\N	\N	73
140	Nagpur Rural	\N	\N	73
141	Kamptee	\N	\N	73
142	Hingna	\N	\N	73
143	Katol	\N	\N	73
144	Narkhed	\N	\N	73
145	Savner	\N	\N	73
146	Kalameshwar	\N	\N	73
147	Ramtek	\N	\N	73
148	Mouda	\N	\N	73
149	Parseoni	\N	\N	73
150	Umred	\N	\N	73
151	Kuhi	\N	\N	73
152	Bhiwapur	\N	\N	73
153	Bhandara	\N	\N	93
154	Tumsar	\N	\N	93
155	Pauni	\N	\N	93
156	Mohadi	\N	\N	93
157	Sakoli	\N	\N	93
158	Lakhni	\N	\N	93
159	Lakhandur	\N	\N	93
160	Gondia	\N	\N	104
161	Tirora	\N	\N	104
162	Goregaon	\N	\N	104
163	Arjuni Morgaon	\N	\N	104
164	Amgaon	\N	\N	104
165	Salekasa	\N	\N	104
166	Sadak Arjuni	\N	\N	104
167	Deori	\N	\N	104
168	Gadchiroli	\N	\N	94
169	Dhanora	\N	\N	94
170	Chamorshi	\N	\N	94
171	Mulchera	\N	\N	94
172	Desaiganj (Vadasa)	\N	\N	94
173	Armori	\N	\N	94
174	Kurkheda	\N	\N	94
175	Korchi	\N	\N	94
176	Aheri	\N	\N	94
177	Etapalli	\N	\N	94
178	Bhamragad	\N	\N	94
179	Sironcha	\N	\N	94
180	Chandrapur	\N	\N	76
181	Saoli	\N	\N	76
182	Mul	\N	\N	76
183	Ballarpur	\N	\N	76
184	Pombhurna	\N	\N	76
185	Gondpimpri	\N	\N	76
186	Warora	\N	\N	76
187	Chimur	\N	\N	76
188	Bhadravati	\N	\N	76
189	Brahmapuri	\N	\N	76
190	Nagbhid	\N	\N	76
191	Sindewahi	\N	\N	76
192	Rajura	\N	\N	76
193	Korpana	\N	\N	76
194	Jivati	\N	\N	76
195	Yavatmal	\N	\N	101
196	Arni	\N	\N	101
197	Babhulgaon	\N	\N	101
198	Kalamb	\N	\N	101
199	Darwha	\N	\N	101
200	Digras	\N	\N	101
201	Ner	\N	\N	101
202	Pusad	\N	\N	101
203	Umarkhed	\N	\N	101
204	Mahagaon	\N	\N	101
205	Kelapur	\N	\N	101
206	Ralegaon	\N	\N	101
207	Ghatanji	\N	\N	101
208	Maregaon	\N	\N	101
209	Zari Jamani	\N	\N	101
210	Wani	\N	\N	101
211	Nanded	\N	\N	86
212	Ardhapur	\N	\N	86
213	Mudkhed	\N	\N	86
214	Bhokar	\N	\N	86
215	Umri	\N	\N	86
216	Loha	\N	\N	86
217	Kandhar	\N	\N	86
218	Kinwat	\N	\N	86
219	Himayatnagar	\N	\N	86
220	Hadgaon	\N	\N	86
221	Mahur	\N	\N	86
222	Deglur	\N	\N	86
223	Mukhed	\N	\N	86
224	Dharmabad	\N	\N	86
225	Biloli	\N	\N	86
226	Naigaon (Khairgaon)	\N	\N	86
227	Hingoli	\N	\N	105
228	Sengaon	\N	\N	105
229	Kalamnuri	\N	\N	105
230	Basmath	\N	\N	105
231	Aundha Nagnath	\N	\N	105
232	Parbhani	\N	\N	78
233	Sonpeth	\N	\N	78
234	Gangakhed	\N	\N	78
235	Paalam	\N	\N	78
236	Purna	\N	\N	78
237	Sailu	\N	\N	78
238	Jintur	\N	\N	78
239	Manwath	\N	\N	78
240	Pathri	\N	\N	78
241	Jalna	\N	\N	95
242	Bhokardan	\N	\N	95
243	Jafrabad	\N	\N	95
244	Badnapur	\N	\N	95
245	Ambad	\N	\N	95
246	Ghansawangi	\N	\N	95
247	Partur	\N	\N	95
248	Mantha	\N	\N	95
249	Aurangabad	\N	\N	71
250	Kannad	\N	\N	71
251	Soegaon	\N	\N	71
252	Sillod	\N	\N	71
253	Phulambri	\N	\N	71
254	Khuldabad	\N	\N	71
255	Vaijapur	\N	\N	71
256	Gangapur	\N	\N	71
257	Paithan	\N	\N	71
258	Beed	\N	\N	92
259	Ashti	\N	\N	92
260	Patoda	\N	\N	92
261	Shirur Kasar	\N	\N	92
262	Georai	\N	\N	92
263	Manjalgaon	\N	\N	92
264	Wadwani	\N	\N	92
265	Kaij	\N	\N	92
266	Dharur	\N	\N	92
267	Parli	\N	\N	92
268	Ambejogai	\N	\N	92
269	Latur	\N	\N	81
270	Renapur	\N	\N	81
271	Ahmadpur	\N	\N	81
272	Jalkot	\N	\N	81
273	Chakur	\N	\N	81
274	Shirur Anantpal	\N	\N	81
275	Ausa	\N	\N	81
276	Nilanga	\N	\N	81
277	Deoni	\N	\N	81
278	Udgir	\N	\N	81
279	Osmanabad	\N	\N	96
280	Tuljapur	\N	\N	96
281	Lohara	\N	\N	96
282	Umarga	\N	\N	96
283	Bhum	\N	\N	96
284	Paranda	\N	\N	96
285	Washi	\N	\N	96
286	Kalamb	\N	\N	96
287	Solapur North	\N	\N	79
288	Solapur South	\N	\N	79
289	Akkalkot	\N	\N	79
290	Barshi	\N	\N	79
291	Madha	\N	\N	79
292	Karmala	\N	\N	79
293	Mohol	\N	\N	79
294	Pandharpur	\N	\N	79
295	Malshiras	\N	\N	79
296	Sangole	\N	\N	79
297	Mangalvedhe	\N	\N	79
298	Nagar	\N	\N	91
299	Shevgaon	\N	\N	91
300	Pathardi	\N	\N	91
301	Parner	\N	\N	91
302	Sangamner	\N	\N	91
303	Kopargaon	\N	\N	91
304	Akole	\N	\N	91
305	Shrirampur	\N	\N	91
306	Shrirampur	\N	\N	91
307	Rahata	\N	\N	91
308	Rahuri	\N	\N	91
309	Shrigonda	\N	\N	91
310	Karjat	\N	\N	91
311	Jamkhed	\N	\N	91
312	Pune City	\N	\N	74
313	Haveli	\N	\N	74
314	Khed	\N	\N	74
315	Junnar	\N	\N	74
316	Ambegaon	\N	\N	74
317	Maval	\N	\N	74
318	Mulshi	\N	\N	74
319	Shirur	\N	\N	74
320	Purandhar	\N	\N	74
321	Velhe	\N	\N	74
322	Bhor	\N	\N	74
323	Baramati	\N	\N	74
324	Indapur	\N	\N	74
325	Daund	\N	\N	74
326	Satara	\N	\N	99
327	Jaoli	\N	\N	99
328	Koregaon	\N	\N	99
329	Wai	\N	\N	99
330	Mahabaleshwar	\N	\N	99
331	Khandala	\N	\N	99
332	Phaltan	\N	\N	99
333	Maan	\N	\N	99
334	Khatav	\N	\N	99
335	Patan	\N	\N	99
336	Karad	\N	\N	99
337	Miraj	\N	\N	98
338	Kavathe-Mahankal	\N	\N	98
339	Tasgaon	\N	\N	98
340	Jat	\N	\N	98
341	Walwa - Islampur	\N	\N	98
342	Shirala	\N	\N	98
343	Khanapur Vita	\N	\N	98
344	Atpadi	\N	\N	98
345	Palus	\N	\N	98
346	Kadegaon	\N	\N	98
347	Karvir	\N	\N	85
348	Panhala	\N	\N	85
349	Shahuwadi	\N	\N	85
350	Kagal	\N	\N	85
351	Hatkanangale	\N	\N	85
352	Shirol	\N	\N	85
353	Radhanagari	\N	\N	85
354	Gaganbawada	\N	\N	85
355	Bhudargad	\N	\N	85
356	Gadhinglaj	\N	\N	85
357	Chandgad	\N	\N	85
358	Ajra	\N	\N	85
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: suresh
--

COPY users (id, crypted_password, salt, remember_token, remember_token_expires_at, name, email_address, administrator, created_at, updated_at, state, key_timestamp, role) FROM stdin;
1	44a2eb372f2a51f68c75e5387a59751c00aac56e	1e2d287b89f172e460508525d9a84b4289add6fa	\N	\N	suresh	suresh.v.kulkarni@gmail.com	t	2011-06-21 11:28:30.042785	2011-06-21 11:28:30.042785	active	\N	\N
\.


--
-- Name: atposts_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY atposts
    ADD CONSTRAINT atposts_pkey PRIMARY KEY (id);


--
-- Name: countries_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: currencies_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY currencies
    ADD CONSTRAINT currencies_pkey PRIMARY KEY (id);


--
-- Name: districts_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);


--
-- Name: donation_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY donation_cards
    ADD CONSTRAINT donation_cards_pkey PRIMARY KEY (id);


--
-- Name: donationcardperiods_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY donationcardperiods
    ADD CONSTRAINT donationcardperiods_pkey PRIMARY KEY (id);


--
-- Name: donationconditions_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY donationconditions
    ADD CONSTRAINT donationconditions_pkey PRIMARY KEY (id);


--
-- Name: donationperiods_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY donationperiods
    ADD CONSTRAINT donationperiods_pkey PRIMARY KEY (id);


--
-- Name: donations_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY donations
    ADD CONSTRAINT donations_pkey PRIMARY KEY (id);


--
-- Name: donationtypes_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY donationtypes
    ADD CONSTRAINT donationtypes_pkey PRIMARY KEY (id);


--
-- Name: paymentmodes_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY paymentmodes
    ADD CONSTRAINT paymentmodes_pkey PRIMARY KEY (id);


--
-- Name: people_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- Name: salutations_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY salutations
    ADD CONSTRAINT salutations_pkey PRIMARY KEY (id);


--
-- Name: states_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- Name: talukas_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY talukas
    ADD CONSTRAINT talukas_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: suresh; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_districts_on_state_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_districts_on_state_id ON districts USING btree (state_id);


--
-- Name: index_donation_cards_on_donor_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_donation_cards_on_donor_id ON donation_cards USING btree (donor_id);


--
-- Name: index_donation_cards_on_thru_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_donation_cards_on_thru_id ON donation_cards USING btree (thru_id);


--
-- Name: index_donationcardperiods_on_donation_card_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_donationcardperiods_on_donation_card_id ON donationcardperiods USING btree (donation_card_id);


--
-- Name: index_donationcardperiods_on_donation_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_donationcardperiods_on_donation_id ON donationcardperiods USING btree (donation_id);


--
-- Name: index_donationcardperiods_on_donationperiod_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_donationcardperiods_on_donationperiod_id ON donationcardperiods USING btree (donationperiod_id);


--
-- Name: index_donations_on_collector_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_donations_on_collector_id ON donations USING btree (collector_id);


--
-- Name: index_donations_on_currency_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_donations_on_currency_id ON donations USING btree (currency_id);


--
-- Name: index_donations_on_donationcondition_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_donations_on_donationcondition_id ON donations USING btree (donationcondition_id);


--
-- Name: index_donations_on_donationtype_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_donations_on_donationtype_id ON donations USING btree (donationtype_id);


--
-- Name: index_donations_on_paymentmode_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_donations_on_paymentmode_id ON donations USING btree (paymentmode_id);


--
-- Name: index_people_on_atpost_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_people_on_atpost_id ON people USING btree (atpost_id);


--
-- Name: index_people_on_country_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_people_on_country_id ON people USING btree (country_id);


--
-- Name: index_people_on_district_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_people_on_district_id ON people USING btree (district_id);


--
-- Name: index_people_on_salutation_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_people_on_salutation_id ON people USING btree (salutation_id);


--
-- Name: index_people_on_state_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_people_on_state_id ON people USING btree (state_id);


--
-- Name: index_people_on_taluka_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_people_on_taluka_id ON people USING btree (taluka_id);


--
-- Name: index_states_on_country_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_states_on_country_id ON states USING btree (country_id);


--
-- Name: index_talukas_on_district_id; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_talukas_on_district_id ON talukas USING btree (district_id);


--
-- Name: index_users_on_state; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE INDEX index_users_on_state ON users USING btree (state);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: suresh; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

