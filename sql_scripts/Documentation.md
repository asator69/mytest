# PostGIS Documentation

<h3>Building the Indobiosys Postgis Database - Workflow</h3><br>

<h4>1. Migrate Mysqldump to Postgresql</h4>
Migration Tool on Linux System: PGloader<br>
http://pgloader.io/howto/mysql.html
<br>
<h4>2. Establishing PostGIS Extension - Adding geometry to geodata table</h4>
ALTER TABLE public.tbllocality</br>
   ADD COLUMN locality_geom point;<br>
SELECT AddGeometryColumn('tbllocality', 'locality_geom', 4326, 'POINT', 2 );<br>
UPDATE public.tbllocality SET locality_geom = ST_SetSRID(ST_MakePoint(longdec_begin, latdec_begin), 4326);<br>

<h4>3. Establishing referential integrety by foreign keys</h4>
See foreignkeys.sql. 

<h4>4. Join geom column to taxon table by building table joins in a temporay view</h4>

<h4>5. Create table from the temporay view </h4>

<h4>6.Migrate table to new postgis database</h4>

<h4>7.Adding indonesian administrative boundaries to db</h4>
GADM Database 2.8 (November 2015)</br>
See indonesia.sql
Global administrative areas: http://gadm.org</br>



<mxfile userAgent="Mozilla/5.0 (Windows NT 6.1; WOW64; rv:57.0) Gecko/20100101 Firefox/57.0" version="7.8.6" editor="www.draw.io" type="device"><diagram name="Page-1" id="12e1b939-464a-85fe-373e-61e167be1490">7Vxbd5s4EP41fmwPIMzl0XYu2910T3fTPX2WjYy1xcgrcJP01+8MCBsQdsgJNqROOInRCCQx32g036B4RGbrx1tJN6vPImDRyDKCxxG5GlmWaRMDPlDylEs828oFoeRBLjL2gnv+k6k7C+mWByxRslyUChGlfFMVLkQcs0VakVEpxUP1sqWIgopgQ0OmCe4XNNKl33iQrpTUdPx9xW+MhyvVtWc5ecWcLr6HUmxj1d/IIsvsJ69e06It9aDJigbioSQi1yMyk0Kk+dn6ccYi1G1NbUn6VIx1RKardB1BwYTTrPrmwM1mm5vh4SSL03J3h9pzjIB6c39pW45tB4R+UCj/oNG26KDe48OKp+x+QxdYfgDzqQ4h0x0LVGmnnqyQSvF9h4cHkqWIU2U8MFIypREPYygsYPxM4gU8imYiEjLrm9xYN8b11a6poiYWMTQxDSUNONx5QHzFJZgaF3FWJXEQ0zCiSXJQeUrdP5hM2WNJpJR5y8SapfIJLlG1xFRmpKaNbYzz8sPeCC1PmcCqZH+7CUeV4Ye7tvfwwYlCsCWaREPzMwdtZDqowwpPmFaRbNRxGRAl0kBDfXGYixNVseZBgN1Mm0xnby9G2V6MmnW4qlwyhomDR3GdehLzFChaLVF0TgGi3TAlnQixmsNJiCclVI2v4GbhIzu/4/EWnmmyu0EWd3y5vRM0YLKogVHtWntjpmHaR0zjBNbgtrUG/xTW4DzvoCOe6b7qbWsLxQtm3VGfrHCu2gM66uynIwBIbTp6DQDYDQCYpwDAfQfAbVrVzgaAd9AfouKymLLQgvPfVuQerfAIJZFynU/3f92VvGDexgFHCCODAPaQu2qHbtUqnAZf9lwQdA23zfyjoNfcYZfGYI39ijGMbd0YTHPcYAyFsFNr8J+fjuV1q4xEQJPVDqP2KxW0scGW148hcqePOV2xPmKPPGHBBMvYPCrI+IgIZ7zKxm5ikS5QSaALQIkBm8DO4DJbt5qKoZgNjuHZVRign95M7YnfDfS2UfUDY5fo0BvniovMFp64T67izfA4Ok3rhGVPNtuxFhzGQqz5Qp13gPHYHxSDMXVvPxMxPs4bi1LPSmA0EHslMKbuo/9JeByC6ItI0ttP93B2/ZiyOMkpzBwfhQZBfs1+DEYq8M+K4V86j1ieQEopj7NL6yTnjqZ3WYMzISS0RlOWvDGzaSI3Xa7mdUvpl9wUybFLCq6derKhV3azG/8FI9AvvSkUXkIAvWQoWUZUBslI3IlLnOOhzil9GBkUI7GaEnYDikvB3OE4SVzaAZieO6j4s1gOS2B+ArWGkqdPbyyUOGsEqsHYawRq6VnT6wQjSJ6s8iDzb7Zk+LicYkMliOsxJXzSNSo9nif4kcWqN0IyxMky/mBP7yHmcVPoOcS8wPytV6eD/YaYTQncC0Og5xBTJ+Q7Ij7I+NKf+cSb9BVfeuag4kvSgiRfdMrbM1zP7WhDh+8MKeVNWrDzPqmFNcVjqNQCpuOguAXRmf5r3mT+Lnjc9kXmsCPSJqZScfRdMhXdKnqlKkTfs/VVpbr/BYDfycUz6PXLLkiL3M+vFtuaZp3r90oviJ6xuTwI+uUXRE+3vPOLI+gZfp8Eo4XLumg6UdtBo+HagP7hV01ej3SihWPskzwY2XFC8vAq5Ex7bFRXufOSBw27z8s/P8AwEyZ/4DbuQfpVxzfg5xV+9XWQOcXsGkjiRk98vi+LR+Ajbp/Lov6e4IptIvGrv/V7rZM0q06y8H3n4NIt3itcdCBju3h05FstuxbJeDrSJ4tk3jd9H0famODREdJjYvSHtNniZccA2fwrvahbCzXPmVAx3+YOwG41ftb8iWlpGsd/zsw3psCirzalXNGUjnCHbH1LCo+zfdGHycCwI5QWKeJumdtZU8Smns+fbnmk0P0UB2LORYKbhhDAADCe0wSz/R/g95uQ35cRKK3hWwN0UCVL+M/sXYFa3bapSJSOX4TlRoBJZc88no7GV20mpBIeQBy7P/Q/KzXkjTEeWmwKjYFtodJgTa25EEuVb+iaR4jxLZV0LfAbHDqxH8Ou2o9ZeMSy/RSvISrOwXux/UBx/90RWV3pCzrI9f8=</diagram></mxfile>