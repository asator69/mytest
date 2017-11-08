# PostGIS Documentation

<h1>Building the Indobiosys Postgis Database</h1><br>

<h3>1. Migrate Mysqldump to Postgresql</h3>
Migration Tool on Linux System: PGloader<br>
http://pgloader.io/howto/mysql.html
<br>
<h3>2. Adding geometry to geodata table</h3>
ALTER TABLE public.tbllocality</br>
   ADD COLUMN locality_geom point;<br>
SELECT AddGeometryColumn('tbllocality', 'locality_geom', 4326, 'POINT', 2 );<br>
UPDATE public.tbllocality SET locality_geom = ST_SetSRID(ST_MakePoint(longdec_begin, latdec_begin), 4326);<br>

<h3>3. Establishing referential integrety by foreign keys</h3>
See foreignkeys.sql

<h3>4. Join geom column to taxon table by building table joins in a temporay view</h3>

<h3>5. Create table from the temporay view </h3>

<h3>6.Migrate table to new postgis database</h3>
