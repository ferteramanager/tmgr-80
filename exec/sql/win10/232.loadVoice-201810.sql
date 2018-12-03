

// -----------------------------------------------------------------------------
// Documentation Database - Loads the Table VCRECS
// -----------------------------------------------------------------------------


use TELCO;

set maxsortframes 200;
set maxsortkeys   100000;
set sortmethod    'list';
set concurrent    on;

load table VCRECS #new in cluster vdata
  lines terminated by "\n"
  fields terminated by ","
  from "D:\tmgr\info\vcr\vcr-201810.csv.gz"
  allow 2000 errors
  break every 5000000 records;
