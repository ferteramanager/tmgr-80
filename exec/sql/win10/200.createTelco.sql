

// -----------------------------------------------------------------------------
// --- Creates the Database TELCO ----------------------------------------------
// -----------------------------------------------------------------------------


drop database if exists TELCO
  including contents;


create database TELCO;


use TELCO;


create cluster RDATA;
create cluster SDATA;
create cluster VDATA;


// -----------------------------------------------------------------------------
// --- Creates the Table CELLS -------------------------------------------------
// -----------------------------------------------------------------------------


drop table if exists CELLS
  including contents;


create table CELLS (
  cellid            integer ( 6)      not null default 0,
  longitud          double  (12,8)    not null default 0,
  latitud           double  (12,8)    not null default 0,
  localidad         char    (30)      not null default '',
  partido           char    (30)      not null default '',
  provincia         char    (30)      not null default '' 
);                    


create index CELLS_01
  on CELLS (cellid);


// -----------------------------------------------------------------------------
// --- Creates the Table SMRECS ------------------------------------------------
// -----------------------------------------------------------------------------


drop table if exists SMRECS
  including contents;


create packed table SMRECS (
  rtype             char    ( 5)      not null default '',
  nextel            char    (12)      not null default '',
  phonea            char    (12)      not null default '',
  phoneb            char    (12)      not null default '',
  smstime           datetime          not null default '',
  dlvtime           datetime          not null default '',
  status            char    ( 2)      not null default '',
  reason            char    ( 6)      not null default '',
  areacode          char    (11)      not null default '',
  cellid            char    ( 5)      not null default '',
  imei              char    (14)      not null default ''
) timer is smstime;


create index SMRECS_01
  on SMRECS (nextel,smstime,rtype);


create index SMRECS_02
  on SMRECS (cellid,smstime,nextel);


// -----------------------------------------------------------------------------
// --- Creates the Table VCRECS ------------------------------------------------
// -----------------------------------------------------------------------------


drop table if exists VCRECS
  including contents;


create packed table VCRECS (
  rtype             char    ( 3)      not null default '',
  nextel            char    (12)      not null default '',
  phonea            char    (12)      not null default '',
  phoneb            char    (12)      not null default '',
  alctime           datetime          not null default '',
  anstime           datetime          not null default '',
  dsctime           datetime          not null default '',
  reltime           datetime          not null default '',
  duration          integer ( 8)      not null default 0,
  status            char    ( 2)      not null default '0',
  reason            char    ( 2)      not null default '0',
  rgroup            char    ( 5)      not null default '0',
  member            char    ( 5)      not null default '0',
  route             char    ( 3)      not null default '0',
  mscno             char    (12)      not null default '0',
  refno             char    ( 7)      not null default '',
  recno             char    (11)      not null default '',
  areacode          char    (11)      not null default '',
  cellid            char    ( 5)      not null default '',
  imei              char    (14)      not null default ''
) timer is alctime;


create index VCRECS_01
  on VCRECS (nextel,alctime,rtype);


create index VCRECS_02
  on VCRECS (cellid,alctime,nextel);


