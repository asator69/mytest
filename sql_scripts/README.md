# PostGIS Documentation

<h2>Building the Indobiosys Postgis Database</h2><br>

<h3>1. Migrate Mysqldump to Postgresql</h3>
<br>
Migration Tool on Linux System: PGloader
http://pgloader.io/howto/mysql.html
<br>
<h3>2. Adding geometry to geodata table</h3><br>
ALTER TABLE public.tbllocality<br>
   ADD COLUMN locality_geom point;<br>
SELECT AddGeometryColumn('tbllocality', 'locality_geom', 4326, 'POINT', 2 );<br>
UPDATE public.tbllocality SET locality_geom = ST_SetSRID(ST_MakePoint(longdec_begin, latdec_begin), 4326);<br>

<h3>3. Establishing referential integrety by foreign keys</h3><br>

<h3>4. Join geom column to taxon table</h3><br>

<h3>4. Join geom column to taxon table</h3><br>

<h3>5. Building Table Joins in a temporay View</h3><br>

<h3>5. Create Table from View</h3><br>