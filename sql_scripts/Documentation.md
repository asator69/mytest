# PostGIS Documentation

<h3>Building the Indobiosys Postgis Database</h3><br>

<h4>1. Migrate Mysqldump to Postgresql</h4>
Migration Tool on Linux System: PGloader<br>
http://pgloader.io/howto/mysql.html
<br>
<h4>2. Adding geometry to geodata table</h4>
ALTER TABLE public.tbllocality</br>
   ADD COLUMN locality_geom point;<br>
SELECT AddGeometryColumn('tbllocality', 'locality_geom', 4326, 'POINT', 2 );<br>
UPDATE public.tbllocality SET locality_geom = ST_SetSRID(ST_MakePoint(longdec_begin, latdec_begin), 4326);<br>

<h4>3. Establishing referential integrety by foreign keys</h4>
See foreignkeys.sql

<h4>4. Join geom column to taxon table by building table joins in a temporay view</h4>

<h4>5. Create table from the temporay view </h4>

<h4>6.Migrate table to new postgis database</h4>

<h4>7.Adding indonesian administrative boundaries to DB</h4>
GADM Database 2.8 (November 2015)</br>
Global administrative areas: http://gadm.org</br>



