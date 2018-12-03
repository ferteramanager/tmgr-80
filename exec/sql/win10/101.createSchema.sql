

// -----------------------------------------------------------------------------
// --- Creates the Database SCHEMA ---------------------------------------------
// -----------------------------------------------------------------------------


drop database if exists SCHEMA;

create database SCHEMA;

use SCHEMA;

create metadata table INSTANCE (
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made",
  pagesize          small   (  4)       property "page",
  homedir           char    ( 60)       property "home",
  logsdir           char    ( 60)       property "book"
);

create metadata table PARAMETERS (
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made",
  value             char    ( 80)       property "info"
);

create metadata table PRIVILEGES (
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made",
  mask              char    ( 16)       property "mask"
);

create metadata table ROLES (
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made",
  password          char    ( 30)       property "pass",
  dftbase           char    ( 30)       property "base"
);

create metadata table USERS (
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made",
  password          char    ( 30)       property "pass",
  dftbase           char    ( 30)       property "base",
  dftrole           char    ( 30)       property "role"
);

create metadata table PERMISSIONS (
  username          char    ( 30)       property "user",
  type              char    ( 10)       property "type",
  dbname            char    ( 30)       property "base",
  objname           char    ( 30)       property "name",
  access            char    ( 30)       property "actn",
  status            char    (  8)       property "stat",
  created           datetime            property "made"
);

create metadata table LINKS (
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made",
  dbms              char    ( 16)       property "dbms",
  driver            char    ( 30)       property "jdbc",
  url               char    ( 30)       property "conn",
  host              char    ( 16)       property "host",
  port              integer (  5)       property "port",
  dbname            char    ( 30)       property "base",
  protocol          char    (  8)       property "ptcl",
  username          char    ( 30)       property "user",
  password          char    ( 30)       property "pass"
);

create metadata table DATABASES (
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made",
  pagesize          small   (  4)       property "page",
  homedir           char    ( 60)       property "home",
  logsdir           char    ( 60)       property "book"
);

create metadata table TYPES (
  dbname            char    ( 30)       property "parent.name",
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made",
  type              char    ( 10)       property "type",
  width             small   (  5)       property "edit",
  decs              small   (  4)       property "decs",
  zfill             char    (  4)       property "zero",
  bfill             char    (  4)       property "blnk",
  align             char    (  6)       property "algn",
  dftvalue          char    ( 60)       property "init"
);

create metadata table CLUSTERS (
  dbname            char    ( 30)       property "parent.name",
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made",
  homedir           char    ( 60)       property "home"
);

create metadata table TABLES (
  dbname            char    ( 30)       property "parent.name",
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made",
  timer             char    ( 30)       property "time",
  page              small   (  6)       property "page",
  minrs             small   (  6)       property "rmin",
  maxrs             small   (  6)       property "rmax",
  fixed             char    (  4)       property "flen",
  memory            char    (  6)       property "core",
  packed            char    (  6)       property "pack",
  tagged            char    (  6)       property "tags",
  sorted            char    (  6)       property "sort",
  indexes           char    (  7)       property "keys"
);

create metadata table COLUMNS (
  dbname            char    ( 30)       property "parent.parent.name",
  tabname           char    ( 30)       property "parent.name",
  name              char    ( 30)       property "name",
  colno             small   (  5)       property "item",
  offset            small   (  6)       property "disp",
  type              char    ( 10)       property "type",
  size              small   (  5)       property "size",
  width             small   (  5)       property "edit",
  decs              small   (  4)       property "decs",
  zfill             char    (  4)       property "zero",
  bfill             char    (  4)       property "blnk",
  align             char    (  6)       property "algn",
  dftvalue          char    ( 60)       property "init"
);

create metadata table INDEXES (
  dbname            char    ( 30)       property "parent.parent.name",
  tabname           char    ( 30)       property "parent.name",
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  indexno           small   (  7)       property "item",
  keysize           small   (  7)       property "klen",
  rowsize           small   (  7)       property "rlen",
  unique            char    (  6)       property "uniq",
  columns           char    ( 60)       property "cols"
);

create metadata table PARTITIONS (
  dbname            char    ( 30)       property "parent.parent.name",
  tabname           char    ( 30)       property "parent.name",
  name              char    (  8)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made",
  cluster           char    ( 30)       property "area",
  rows              decimal ( 10)       property "rows",
  size              long    ( 12)       property "size",
  data              long    ( 12)       property "data",
  keys              long    ( 12)       property "path",
  loaded            datetime            property "load",
  saved             datetime            property "save",
  oldest            datetime            property "tbgn",
  newest            datetime            property "tend",
  indexes           char    (  8)       property "keys",
  packed            char    (  8)       property "pack"
);

create metadata table SNAPSHOTS (
  dbname            char    ( 30)       property "parent.name",
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made",
  timer             char    ( 30)       property "time",
  page              small   (  6)       property "page",
  minrs             small   (  6)       property "rmin",
  maxrs             small   (  6)       property "rmax",
  fixed             char    (  4)       property "flen",
  memory            char    (  6)       property "core",
  packed            char    (  6)       property "pack",
  tagged            char    (  6)       property "tags",
  sorted            char    (  6)       property "sort",
  indexes           char    (  7)       property "keys"
);

create metadata table VIEWS (
  dbname            char    ( 30)       property "parent.name",
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made"
);

create metadata table PACKAGES (
  dbname            char    ( 30)       property "parent.name",
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made"
);

create metadata table PROCEDURES (
  dbname            char    ( 30)       property "parent.name",
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made"
);

create metadata table FUNCTIONS (
  dbname            char    ( 30)       property "parent.name",
  name              char    ( 30)       property "name",
  status            char    (  8)       property "stat",
  created           datetime            property "made"
);

create metadata table LOG (
  event             integer (  8)       property "evnt",
  time              char    ( 19)       property "time",
  originator        char    ( 12)       property "task",
  location          char    ( 20)       property "addr",
  description       char    ( 96)       property "desc"
);

create metadata table SERVICES (
  name              char    ( 20)       property "name",
  started           datetime            property "made",
  elapsed           char    (  8)       property "time",
  type              char    ( 16)       property "type",
  status            char    ( 10)       property "stat",
  location          char    ( 20)       property "host",
  user              char    ( 20)       property "user",
  role              char    ( 20)       property "role",
  threads           integer (  4)       property "jobs",
  alarms            integer (  4)       property "alrm",
  loaders           integer (  4)       property "load",
  locks             integer (  4)       property "lock"
);

create metadata table SESSIONS (
  name              char    ( 20)       property "name",
  started           datetime            property "made",
  elapsed           char    (  8)       property "time",
  status            char    ( 10)       property "stat",
  location          char    ( 20)       property "host",
  user              char    ( 20)       property "user",
  role              char    ( 20)       property "role"
);

create metadata table COLLECTORS (
  name              char    ( 20)       property "name",
  started           datetime            property "made",
  elapsed           char    (  8)       property "time",
  status            char    ( 10)       property "stat",
  location          char    ( 20)       property "host",
  table             char    ( 30)       property "file",
  owner             char    ( 20)       property "user"
);

create metadata table LOADERS (
  name              char    ( 20)       property "name",
  started           datetime            property "made",
  elapsed           char    (  8)       property "time",
  status            char    ( 10)       property "stat",
  location          char    ( 20)       property "host",
  table             char    ( 30)       property "file",
  owner             char    ( 20)       property "user"
);

create metadata table MONITORS (
  name              char    ( 20)       property "name",
  started           datetime            property "made",
  elapsed           char    (  8)       property "time",
  status            char    ( 10)       property "stat",
  location          char    ( 20)       property "host",
  table             char    ( 30)       property "file",
  owner             char    ( 20)       property "user"
);

create metadata table PROCESSES (
  name              char    ( 20)       property "name",
  started           datetime            property "made",
  elapsed           char    (  8)       property "time",
  status            char    ( 10)       property "stat",
  location          char    ( 20)       property "host",
  table             char    ( 30)       property "file",
  owner             char    ( 20)       property "user"
);

create metadata table ALARMS (
  alarm             integer (  8)       property "alrm",
  name              char    ( 20)       property "name",
  table             char    ( 30)       property "dest",
  user              char    ( 20)       property "user",
  time              char    ( 19)       property "time",
  location          char    ( 20)       property "host",
  file              char    ( 40)       property "file",
  record            integer (  8)       property "line",
  data              char    (255)       property "data"
);
