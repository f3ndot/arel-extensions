# SQL Challenges

It should be possible to do any advanced SQL functions of any RDBMS in any other using classical SQL routines. We hope so.
But here are some of the features we did not succeed to create in some cases. Any help would be very useful.
A good way could be to create user defined functions to ensure a total transparent compatibility and to encapsulate these improvements.


## SQLite (without extension)
- CEIL and FLOOR without pcre
- FIND_IN_SET
- LOCATE
- REGEXP
- SOUNDEX

## PostgreSQL (without extension)
- SOUNDEX


## Oracle
- Maths Operators on string ('a' <= 'b')


## SQL Server (any version > 2005, without extension)
- REGEXP
- (L/R)TRIM(str, 'x') -> TRIM with arguments
- Maths Operators on string ('a' <= 'b')
- GROUP_CONCAT