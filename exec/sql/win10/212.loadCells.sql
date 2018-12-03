

// -----------------------------------------------------------------------------
// Documentation Database - Loads the Table CELLS
// -----------------------------------------------------------------------------


set concurrent on;

use TELCO;

load table CELLS #new in cluster rdata
  lines terminated by '\n'
  fields terminated by ';'
  from 'D:\tmgr\info\ref\cells.csv.gz'
  allow 10 errors;
