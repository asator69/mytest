-- Indonesia Polygon Boundaries

-- Author: André Beuger andre.beuger@mfn-berlin.de


-- Table: basic_data.indonesia (national boundaries)

-- DROP TABLE basic_data.indonesia;

CREATE TABLE basic_data.indonesia
(
  id serial NOT NULL,
  geom geometry(MultiPolygon,4326),
  id_0 bigint,
  iso character varying(3),
  name_engli character varying(50),
  name_iso character varying(54),
  name_fao character varying(50),
  name_local character varying(54),
  name_obsol character varying(150),
  name_varia character varying(160),
  name_nonla character varying(50),
  name_frenc character varying(50),
  name_spani character varying(50),
  name_russi character varying(50),
  name_arabi character varying(50),
  name_chine character varying(50),
  waspartof character varying(100),
  contains character varying(50),
  sovereign character varying(40),
  iso2 character varying(4),
  www character varying(2),
  fips character varying(6),
  ison double precision,
  validfr character varying(12),
  validto character varying(10),
  pop2000 double precision,
  sqkm double precision,
  popsqkm double precision,
  unregion1 character varying(254),
  unregion2 character varying(254),
  developing double precision,
  cis double precision,
  transition double precision,
  oecd double precision,
  wbregion character varying(254),
  wbincome character varying(254),
  wbdebt character varying(254),
  wbother character varying(254),
  ceeac double precision,
  cemac double precision,
  ceplg double precision,
  comesa double precision,
  eac double precision,
  ecowas double precision,
  igad double precision,
  ioc double precision,
  mru double precision,
  sacu double precision,
  uemoa double precision,
  uma double precision,
  palop double precision,
  parta double precision,
  cacm double precision,
  eurasec double precision,
  agadir double precision,
  saarc double precision,
  asean double precision,
  nafta double precision,
  gcc double precision,
  csn double precision,
  caricom double precision,
  eu double precision,
  can double precision,
  acp double precision,
  landlocked double precision,
  aosis double precision,
  sids double precision,
  islands double precision,
  ldc double precision,
  CONSTRAINT pk_id_indo PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE basic_data.indonesia
  OWNER TO postgres;
  
 
 
 
 
 -- Table: basic_data.indonesia_districts (district boundaries)

-- DROP TABLE basic_data.indonesia_districts;

CREATE TABLE basic_data.indonesia_districts
(
  id serial NOT NULL,
  geom geometry(MultiPolygon,4326),
  id_0 bigint,
  iso character varying(3),
  name_0 character varying(75),
  id_1 bigint,
  name_1 character varying(75),
  id_2 bigint,
  name_2 character varying(75),
  hasc_2 character varying(15),
  ccn_2 bigint,
  cca_2 character varying(254),
  type_2 character varying(50),
  engtype_2 character varying(50),
  nl_name_2 character varying(75),
  varname_2 character varying(150),
  CONSTRAINT pk_dis PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE basic_data.indonesia_districts
  OWNER TO postgres;
  
  
  
  
  -- Table: basic_data.indonesia_provinces (province boundaries)

-- DROP TABLE basic_data.indonesia_provinces;

CREATE TABLE basic_data.indonesia_provinces
(
  id serial NOT NULL,
  geom geometry(MultiPolygon,4326),
  id_0 bigint,
  iso character varying(3),
  name_0 character varying(75),
  id_1 bigint,
  name_1 character varying(75),
  hasc_1 character varying(15),
  ccn_1 bigint,
  cca_1 character varying(254),
  type_1 character varying(50),
  engtype_1 character varying(50),
  nl_name_1 character varying(50),
  varname_1 character varying(150),
  CONSTRAINT pk_id PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE basic_data.indonesia_provinces
  OWNER TO postgres;

  