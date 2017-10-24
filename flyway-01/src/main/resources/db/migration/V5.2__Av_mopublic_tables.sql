CREATE SEQUENCE av_mopublic.t_ili2db_seq;;
-- SO_MOpublic_20171003.MOpublic.Bodenbedeckung
CREATE TABLE av_mopublic.mopublic_bodenbedeckung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art integer NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,egid integer NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_bodenbedeckung','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
CREATE INDEX mopublic_bodenbedeckung_geometrie_idx ON av_mopublic.mopublic_bodenbedeckung USING GIST ( geometrie );
COMMENT ON TABLE av_mopublic.mopublic_bodenbedeckung IS '@iliname SO_MOpublic_20171003.MOpublic.Bodenbedeckung';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung.art IS 'Bodenbedeckungsart (Integer-ReprÃ¤sentation)
@iliname Art';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung.art_txt IS 'Bodenbedeckungsart (Text-ReprÃ¤sentation)
@iliname Art_txt';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung.egid IS 'EidgenÃ¶ssischer GebÃ¤udeidentifikator
@iliname EGID';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung.geometrie IS 'Geometrie
@iliname Geometrie';
-- SO_MOpublic_20171003.MOpublic.Bodenbedeckung_proj
CREATE TABLE av_mopublic.mopublic_bodenbedeckung_proj (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art integer NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,egid integer NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_bodenbedeckung_proj','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
CREATE INDEX mopublic_bodenbedckng_proj_geometrie_idx ON av_mopublic.mopublic_bodenbedeckung_proj USING GIST ( geometrie );
COMMENT ON TABLE av_mopublic.mopublic_bodenbedeckung_proj IS '@iliname SO_MOpublic_20171003.MOpublic.Bodenbedeckung_proj';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung_proj.art IS 'Bodenbedeckungsart (Integer-ReprÃ¤sentation)
@iliname Art';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung_proj.art_txt IS 'Bodenbedeckungsart (Text-ReprÃ¤sentation)
@iliname Art_txt';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung_proj.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung_proj.egid IS 'EidgenÃ¶ssischer GebÃ¤udeidentifikator
@iliname EGID';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung_proj.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung_proj.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
COMMENT ON COLUMN av_mopublic.mopublic_bodenbedeckung_proj.geometrie IS 'Geometrie
@iliname Geometrie';
-- SO_MOpublic_20171003.MOpublic.Einzelobjekt_Flaeche
CREATE TABLE av_mopublic.mopublic_einzelobjekt_flaeche (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art integer NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,egid integer NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_einzelobjekt_flaeche','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
CREATE INDEX mopublic_einzelobjkt_flche_geometrie_idx ON av_mopublic.mopublic_einzelobjekt_flaeche USING GIST ( geometrie );
COMMENT ON TABLE av_mopublic.mopublic_einzelobjekt_flaeche IS '@iliname SO_MOpublic_20171003.MOpublic.Einzelobjekt_Flaeche';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_flaeche.art IS 'Einzelobjektart (Integer-ReprÃ¤sentation)
@iliname Art';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_flaeche.art_txt IS 'Einzelobjektart (Text-ReprÃ¤sentation)
@iliname Art_txt';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_flaeche.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_flaeche.egid IS 'EidgenÃ¶ssischer GebÃ¤udeidentifikator
@iliname EGID';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_flaeche.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_flaeche.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_flaeche.geometrie IS 'Geometrie
@iliname Geometrie';
-- SO_MOpublic_20171003.MOpublic.Einzelobjekt_Linie
CREATE TABLE av_mopublic.mopublic_einzelobjekt_linie (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art integer NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_einzelobjekt_linie','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'LINESTRING',2);
CREATE INDEX mopublic_einzelobjekt_lnie_geometrie_idx ON av_mopublic.mopublic_einzelobjekt_linie USING GIST ( geometrie );
COMMENT ON TABLE av_mopublic.mopublic_einzelobjekt_linie IS '@iliname SO_MOpublic_20171003.MOpublic.Einzelobjekt_Linie';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_linie.art IS 'Einzelobjektart (Integer-ReprÃ¤sentation)
@iliname Art';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_linie.art_txt IS 'Einzelobjektart (Text-ReprÃ¤sentation)
@iliname Art_txt';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_linie.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_linie.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_linie.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_linie.geometrie IS 'Geometrie
@iliname Geometrie';
-- SO_MOpublic_20171003.MOpublic.Gemeindegrenze
CREATE TABLE av_mopublic.mopublic_gemeindegrenze (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,gemeindename varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_gemeindegrenze','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
CREATE INDEX mopublic_gemeindegrenze_geometrie_idx ON av_mopublic.mopublic_gemeindegrenze USING GIST ( geometrie );
COMMENT ON TABLE av_mopublic.mopublic_gemeindegrenze IS '@iliname SO_MOpublic_20171003.MOpublic.Gemeindegrenze';
COMMENT ON COLUMN av_mopublic.mopublic_gemeindegrenze.gemeindename IS 'Name der Gemeinde
@iliname Gemeindename';
COMMENT ON COLUMN av_mopublic.mopublic_gemeindegrenze.geometrie IS 'Geometrie
@iliname Geometrie';
COMMENT ON COLUMN av_mopublic.mopublic_gemeindegrenze.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_gemeindegrenze.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_gemeindegrenze.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
-- SO_MOpublic_20171003.MOpublic.Gemeindegrenze_proj
CREATE TABLE av_mopublic.mopublic_gemeindegrenze_proj (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,gemeindename varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_gemeindegrenze_proj','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'LINESTRING',2);
CREATE INDEX mopublic_gemeindegrnz_proj_geometrie_idx ON av_mopublic.mopublic_gemeindegrenze_proj USING GIST ( geometrie );
COMMENT ON TABLE av_mopublic.mopublic_gemeindegrenze_proj IS '@iliname SO_MOpublic_20171003.MOpublic.Gemeindegrenze_proj';
COMMENT ON COLUMN av_mopublic.mopublic_gemeindegrenze_proj.gemeindename IS 'Name der Gemeinde
@iliname Gemeindename';
COMMENT ON COLUMN av_mopublic.mopublic_gemeindegrenze_proj.geometrie IS 'Geometrie
@iliname Geometrie';
COMMENT ON COLUMN av_mopublic.mopublic_gemeindegrenze_proj.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_gemeindegrenze_proj.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_gemeindegrenze_proj.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
-- SO_MOpublic_20171003.MOpublic.Rohrleitung
CREATE TABLE av_mopublic.mopublic_rohrleitung (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art integer NOT NULL
  ,art_txt varchar(40) NOT NULL
  ,betreiber varchar(40) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_rohrleitung','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'LINESTRING',2);
CREATE INDEX mopublic_rohrleitung_geometrie_idx ON av_mopublic.mopublic_rohrleitung USING GIST ( geometrie );
COMMENT ON TABLE av_mopublic.mopublic_rohrleitung IS '@iliname SO_MOpublic_20171003.MOpublic.Rohrleitung';
COMMENT ON COLUMN av_mopublic.mopublic_rohrleitung.geometrie IS 'Geometrie
@iliname Geometrie';
COMMENT ON COLUMN av_mopublic.mopublic_rohrleitung.art IS 'Transportmedium (Integer-ReprÃ¤sentation)
@iliname Art';
COMMENT ON COLUMN av_mopublic.mopublic_rohrleitung.art_txt IS 'Transportmedium (Text-ReprÃ¤sentation)
@iliname Art_txt';
COMMENT ON COLUMN av_mopublic.mopublic_rohrleitung.betreiber IS 'Betreiber
@iliname Betreiber';
COMMENT ON COLUMN av_mopublic.mopublic_rohrleitung.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_rohrleitung.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_rohrleitung.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
-- SO_MOpublic_20171003.MOpublic.Strassenachse
CREATE TABLE av_mopublic.mopublic_strassenachse (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,strassenname varchar(100) NULL
  ,ordnung integer NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_strassenachse','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'LINESTRING',2);
CREATE INDEX mopublic_strassenachse_geometrie_idx ON av_mopublic.mopublic_strassenachse USING GIST ( geometrie );
COMMENT ON TABLE av_mopublic.mopublic_strassenachse IS '@iliname SO_MOpublic_20171003.MOpublic.Strassenachse';
COMMENT ON COLUMN av_mopublic.mopublic_strassenachse.geometrie IS 'Geometrie
@iliname Geometrie';
COMMENT ON COLUMN av_mopublic.mopublic_strassenachse.strassenname IS 'Strassenname
@iliname Strassenname';
COMMENT ON COLUMN av_mopublic.mopublic_strassenachse.ordnung IS 'Ordnung des StrassenstÃ¼ckes
@iliname Ordnung';
COMMENT ON COLUMN av_mopublic.mopublic_strassenachse.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_strassenachse.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_strassenachse.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
-- SO_MOpublic_20171003.MOpublic.Einzelobjekt_Punkt
CREATE TABLE av_mopublic.mopublic_einzelobjekt_punkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,art integer NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,symbolorientierung decimal(5,2) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_einzelobjekt_punkt','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX mopublic_einzelobjekt_pnkt_geometrie_idx ON av_mopublic.mopublic_einzelobjekt_punkt USING GIST ( geometrie );
COMMENT ON TABLE av_mopublic.mopublic_einzelobjekt_punkt IS '@iliname SO_MOpublic_20171003.MOpublic.Einzelobjekt_Punkt';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_punkt.art IS 'Einzelobjektart (Integer-ReprÃ¤sentation)
@iliname Art';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_punkt.art_txt IS 'Einzelobjektart (Text-ReprÃ¤sentation)
@iliname Art_txt';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_punkt.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_punkt.symbolorientierung IS 'Orientierung des Symbols
@iliname Symbolorientierung';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_punkt.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_punkt.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
COMMENT ON COLUMN av_mopublic.mopublic_einzelobjekt_punkt.geometrie IS 'Geometrie
@iliname Geometrie';
-- SO_MOpublic_20171003.MOpublic.Fixpunkt
CREATE TABLE av_mopublic.mopublic_fixpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,typ integer NOT NULL
  ,typ_txt varchar(20) NOT NULL
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(12) NULL
  ,hoehe decimal(7,3) NULL
  ,bfs_nr integer NOT NULL
  ,lagegenauigkeit decimal(4,1) NOT NULL
  ,hoehengenauigkeit decimal(4,1) NULL
  ,punktzeichen integer NOT NULL
  ,punktzeichen_txt varchar(20) NOT NULL
  ,orientierung decimal(5,2) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_fixpunkt','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
SELECT AddGeometryColumn('av_mopublic','mopublic_fixpunkt','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX mopublic_fixpunkt_geometrie_idx ON av_mopublic.mopublic_fixpunkt USING GIST ( geometrie );
CREATE INDEX mopublic_fixpunkt_pos_idx ON av_mopublic.mopublic_fixpunkt USING GIST ( pos );
COMMENT ON TABLE av_mopublic.mopublic_fixpunkt IS '@iliname SO_MOpublic_20171003.MOpublic.Fixpunkt';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.geometrie IS 'Geometrie
@iliname Geometrie';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.typ IS 'Fixpunkttyp (Integer-ReprÃ¤sentation)
@iliname Typ';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.typ_txt IS 'Fixpunkttyp (Text-ReprÃ¤sentation)
@iliname Typ_txt';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.nbident IS 'Nummerierungsbereichidentifikator
@iliname NBIdent';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.nummer IS 'Bezeichnung des Fixpunktes
@iliname Nummer';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.hoehe IS 'HÃ¶he
@iliname Hoehe';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.lagegenauigkeit IS 'Lagegenauigkeit
@iliname Lagegenauigkeit';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.hoehengenauigkeit IS 'HÃ¶hengenauigkeit
@iliname Hoehengenauigkeit';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.punktzeichen IS 'Punktzeichen (Integer-ReprÃ¤sentation)
@iliname Punktzeichen';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.punktzeichen_txt IS 'Punktzeichen (Text-ReprÃ¤sentation)
@iliname Punktzeichen_txt';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.pos IS 'Positionierungspunkt fÃ¼r Beschriftung
@iliname Pos';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.orientierung IS 'Textorientierung
@iliname Orientierung';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.hali IS 'HAlignment
@iliname HAli';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.vali IS 'VAlignment
@iliname VAli';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_fixpunkt.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
-- SO_MOpublic_20171003.MOpublic.Flurname
CREATE TABLE av_mopublic.mopublic_flurname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,flurname varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,orientierung decimal(5,2) NOT NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_flurname','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
SELECT AddGeometryColumn('av_mopublic','mopublic_flurname','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX mopublic_flurname_geometrie_idx ON av_mopublic.mopublic_flurname USING GIST ( geometrie );
CREATE INDEX mopublic_flurname_pos_idx ON av_mopublic.mopublic_flurname USING GIST ( pos );
COMMENT ON TABLE av_mopublic.mopublic_flurname IS '@iliname SO_MOpublic_20171003.MOpublic.Flurname';
COMMENT ON COLUMN av_mopublic.mopublic_flurname.flurname IS 'Flurname
@iliname Flurname';
COMMENT ON COLUMN av_mopublic.mopublic_flurname.geometrie IS 'Geometrie
@iliname Geometrie';
COMMENT ON COLUMN av_mopublic.mopublic_flurname.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_flurname.pos IS 'Positionierungspunkt fÃ¼r Beschriftung
@iliname Pos';
COMMENT ON COLUMN av_mopublic.mopublic_flurname.hali IS 'HAlignment
@iliname HAli';
COMMENT ON COLUMN av_mopublic.mopublic_flurname.vali IS 'VAlignment
@iliname VAli';
COMMENT ON COLUMN av_mopublic.mopublic_flurname.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_flurname.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
COMMENT ON COLUMN av_mopublic.mopublic_flurname.orientierung IS 'Textorientierung
@iliname Orientierung';
-- SO_MOpublic_20171003.MOpublic.Gebaeudeadresse
CREATE TABLE av_mopublic.mopublic_gebaeudeadresse (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,strassenname varchar(100) NULL
  ,hausnummer varchar(20) NULL
  ,egid integer NULL
  ,edid integer NULL
  ,plz integer NOT NULL
  ,ortschaft varchar(100) NOT NULL
  ,status varchar(20) NULL
  ,ist_offizielle_bezeichnung boolean NULL
  ,hoehenlage integer NULL
  ,gebaeudename varchar(100) NULL
  ,bfs_nr integer NOT NULL
  ,orientierung decimal(5,2) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_gebaeudeadresse','lage',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
SELECT AddGeometryColumn('av_mopublic','mopublic_gebaeudeadresse','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX mopublic_gebaeudeadresse_lage_idx ON av_mopublic.mopublic_gebaeudeadresse USING GIST ( lage );
CREATE INDEX mopublic_gebaeudeadresse_pos_idx ON av_mopublic.mopublic_gebaeudeadresse USING GIST ( pos );
COMMENT ON TABLE av_mopublic.mopublic_gebaeudeadresse IS '@iliname SO_MOpublic_20171003.MOpublic.Gebaeudeadresse';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.lage IS 'Lage des GebÃ¤udeeingangs
@iliname Lage';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.strassenname IS 'Name der Strasse
@iliname Strassenname';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.hausnummer IS 'Hausnummer
@iliname Hausnummer';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.egid IS 'EidgenÃ¶ssischer GebÃ¤udeidentifikator
@iliname EGID';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.edid IS 'EidgenÃ¶ssischer Eingangsidentifikator
@iliname EDID';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.plz IS 'Vierstellige Postleitzahl
@iliname PLZ';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.ortschaft IS 'Ortschaftsname
@iliname Ortschaft';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.status IS 'Status des GebÃ¤udeinganges
@iliname Status';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.ist_offizielle_bezeichnung IS 'Ist Adresse offiziell? ja/nein';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.hoehenlage IS 'Relative Lage des GebÃ¤udeeinganges
@iliname Hoehenlage';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.gebaeudename IS 'Name des GebÃ¤udes
@iliname Gebaeudename';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.pos IS 'Positionierungspunkt fÃ¼r Beschriftung der Hausnummer
@iliname Pos';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.orientierung IS 'Orientierung des Beschriftungstextes
@iliname Orientierung';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.hali IS 'HAlignment
@iliname HAli';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.vali IS 'VAlignment
@iliname VAli';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_gebaeudeadresse.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
-- SO_MOpublic_20171003.MOpublic.Gelaendename
CREATE TABLE av_mopublic.mopublic_gelaendename (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,gelaendename varchar(100) NOT NULL
  ,bfs_nr integer NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_gelaendename','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX mopublic_gelaendename_pos_idx ON av_mopublic.mopublic_gelaendename USING GIST ( pos );
COMMENT ON TABLE av_mopublic.mopublic_gelaendename IS '@iliname SO_MOpublic_20171003.MOpublic.Gelaendename';
COMMENT ON COLUMN av_mopublic.mopublic_gelaendename.gelaendename IS 'GelÃ¤ndename
@iliname Gelaendename';
COMMENT ON COLUMN av_mopublic.mopublic_gelaendename.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_gelaendename.pos IS 'Positionierungspunkt fÃ¼r Beschriftung
@iliname Pos';
COMMENT ON COLUMN av_mopublic.mopublic_gelaendename.orientierung IS 'Textorientierung
@iliname Orientierung';
COMMENT ON COLUMN av_mopublic.mopublic_gelaendename.hali IS 'HAlignment
@iliname HAli';
COMMENT ON COLUMN av_mopublic.mopublic_gelaendename.vali IS 'VAlignment
@iliname VAli';
COMMENT ON COLUMN av_mopublic.mopublic_gelaendename.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_gelaendename.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
-- SO_MOpublic_20171003.MOpublic.Grenzpunkt
CREATE TABLE av_mopublic.mopublic_grenzpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,lagegenauigkeit decimal(4,1) NOT NULL
  ,lagezuverlaessigkeit boolean NOT NULL
  ,punktzeichen integer NOT NULL
  ,punktzeichen_txt varchar(20) NOT NULL
  ,symbolorientierung decimal(8,5) NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_grenzpunkt','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX mopublic_grenzpunkt_geometrie_idx ON av_mopublic.mopublic_grenzpunkt USING GIST ( geometrie );
COMMENT ON TABLE av_mopublic.mopublic_grenzpunkt IS '@iliname SO_MOpublic_20171003.MOpublic.Grenzpunkt';
COMMENT ON COLUMN av_mopublic.mopublic_grenzpunkt.geometrie IS 'Geometrie
@iliname Geometrie';
COMMENT ON COLUMN av_mopublic.mopublic_grenzpunkt.lagegenauigkeit IS 'Lagegenauigkeit
@iliname Lagegenauigkeit';
COMMENT ON COLUMN av_mopublic.mopublic_grenzpunkt.lagezuverlaessigkeit IS 'Ist Lagebestimmung zuverlÃ¤ssig? ja/nein
@iliname Lagezuverlaessigkeit';
COMMENT ON COLUMN av_mopublic.mopublic_grenzpunkt.punktzeichen IS 'Art des Punktzeichens (Integer-ReprÃ¤sentation)
@iliname Punktzeichen';
COMMENT ON COLUMN av_mopublic.mopublic_grenzpunkt.punktzeichen_txt IS 'Art des Punktzeichens (Text-ReprÃ¤sentation)
@iliname Punktzeichen_txt';
COMMENT ON COLUMN av_mopublic.mopublic_grenzpunkt.symbolorientierung IS 'Symbolorientierung
@iliname Symbolorientierung';
COMMENT ON COLUMN av_mopublic.mopublic_grenzpunkt.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_grenzpunkt.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_grenzpunkt.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
-- SO_MOpublic_20171003.MOpublic.Grundstueck
CREATE TABLE av_mopublic.mopublic_grundstueck (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(15) NOT NULL
  ,art integer NOT NULL
  ,art_txt varchar(40) NOT NULL
  ,flaechenmass integer NOT NULL
  ,egrid varchar(14) NULL
  ,bfs_nr integer NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_grundstueck','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
SELECT AddGeometryColumn('av_mopublic','mopublic_grundstueck','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX mopublic_grundstueck_geometrie_idx ON av_mopublic.mopublic_grundstueck USING GIST ( geometrie );
CREATE INDEX mopublic_grundstueck_pos_idx ON av_mopublic.mopublic_grundstueck USING GIST ( pos );
COMMENT ON TABLE av_mopublic.mopublic_grundstueck IS '@iliname SO_MOpublic_20171003.MOpublic.Grundstueck';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.geometrie IS 'Geometrie
@iliname Geometrie';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.nbident IS 'Nummerierungsbereichidentifikator
@iliname NBIdent';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.nummer IS 'Grundbuchnummer
@iliname Nummer';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.art IS 'GrundstÃ¼cksart (Integer-ReprÃ¤sentation)
@iliname Art';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.art_txt IS 'GrundstÃ¼cksart (Text-ReprÃ¤sentation)
@iliname Art_txt';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.flaechenmass IS 'FlÃ¤che des GrundstÃ¼ckes in m2
@iliname Flaechenmass';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.egrid IS 'EidgenÃ¶ssischer GrundstÃ¼cksidentifikator
@iliname EGRID';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.pos IS 'Positionierungspunkt fÃ¼r Beschriftung
@iliname Pos';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.orientierung IS 'Textorientierung
@iliname Orientierung';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.hali IS 'HAlignment
@iliname HAli';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.vali IS 'VAlignment
@iliname VAli';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
-- SO_MOpublic_20171003.MOpublic.Grundstueck_proj
CREATE TABLE av_mopublic.mopublic_grundstueck_proj (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,nbident varchar(12) NOT NULL
  ,nummer varchar(15) NOT NULL
  ,art integer NOT NULL
  ,art_txt varchar(40) NOT NULL
  ,flaechenmass integer NOT NULL
  ,egrid varchar(14) NULL
  ,bfs_nr integer NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_grundstueck_proj','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
SELECT AddGeometryColumn('av_mopublic','mopublic_grundstueck_proj','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX mopublic_grundstueck_proj_geometrie_idx ON av_mopublic.mopublic_grundstueck_proj USING GIST ( geometrie );
CREATE INDEX mopublic_grundstueck_proj_pos_idx ON av_mopublic.mopublic_grundstueck_proj USING GIST ( pos );
COMMENT ON TABLE av_mopublic.mopublic_grundstueck_proj IS '@iliname SO_MOpublic_20171003.MOpublic.Grundstueck_proj';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.geometrie IS 'Geometrie
@iliname Geometrie';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.nbident IS 'Nummerierungsbereichidentifikator
@iliname NBIdent';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.nummer IS 'Grundbuchnummer
@iliname Nummer';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.art IS 'GrundstÃ¼cksart (Integer-ReprÃ¤sentation)
@iliname Art';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.art_txt IS 'GrundstÃ¼cksart (Text-ReprÃ¤sentation)
@iliname Art_txt';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.flaechenmass IS 'FlÃ¤che des GrundstÃ¼ckes in m2
@iliname Flaechenmass';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.egrid IS 'EidgenÃ¶ssischer GrundstÃ¼cksidentifikator
@iliname EGRID';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.pos IS 'Positionierungspunkt fÃ¼r Beschriftung
@iliname Pos';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.orientierung IS 'Textorientierung
@iliname Orientierung';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.hali IS 'HAlignment
@iliname HAli';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.vali IS 'VAlignment
@iliname VAli';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_grundstueck_proj.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
-- SO_MOpublic_20171003.MOpublic.Hoheitsgrenzpunkt
CREATE TABLE av_mopublic.mopublic_hoheitsgrenzpunkt (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,nummer varchar(20) NULL
  ,punktzeichen integer NOT NULL
  ,punktzeichen_txt varchar(20) NOT NULL
  ,schoener_stein boolean NOT NULL
  ,lagegenauigkeit decimal(4,1) NOT NULL
  ,lagezuverlaessigkeit boolean NOT NULL
  ,symbolorientierung decimal(5,2) NULL
  ,hali varchar(255) NULL
  ,vali varchar(255) NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_hoheitsgrenzpunkt','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
SELECT AddGeometryColumn('av_mopublic','mopublic_hoheitsgrenzpunkt','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX mopublic_hoheitsgrenzpunkt_geometrie_idx ON av_mopublic.mopublic_hoheitsgrenzpunkt USING GIST ( geometrie );
CREATE INDEX mopublic_hoheitsgrenzpunkt_pos_idx ON av_mopublic.mopublic_hoheitsgrenzpunkt USING GIST ( pos );
COMMENT ON TABLE av_mopublic.mopublic_hoheitsgrenzpunkt IS '@iliname SO_MOpublic_20171003.MOpublic.Hoheitsgrenzpunkt';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.geometrie IS 'Geometrie
@iliname Geometrie';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.nummer IS 'Nummer des Hoheitsgrenzpunktes
@iliname Nummer';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.punktzeichen IS 'Punktzeichen (Integer-ReprÃ¤sentation)
@iliname Punktzeichen';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.punktzeichen_txt IS 'Punktzeichen (Text-ReprÃ¤sentation)
@iliname Punktzeichen_txt';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.schoener_stein IS 'SchÃ¶ner Stein? ja/nein
@iliname schoener_Stein';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.lagegenauigkeit IS 'Lagegenauigkeit
@iliname Lagegenauigkeit';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.lagezuverlaessigkeit IS 'Ist Lagebestimmung zuverlÃ¤ssig? ja/nein
@iliname Lagezuverlaessigkeit';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.symbolorientierung IS 'Textorientierung
@iliname Symbolorientierung';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.hali IS 'HAlignment
@iliname HAli';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.vali IS 'VAlignment
@iliname VAli';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
COMMENT ON COLUMN av_mopublic.mopublic_hoheitsgrenzpunkt.pos IS 'Positionierungspunkt fÃ¼r Beschriftung
@iliname Pos';
-- SO_MOpublic_20171003.MOpublic.Objektname_Pos
CREATE TABLE av_mopublic.mopublic_objektname_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,objektname varchar(100) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,art integer NOT NULL
  ,art_txt varchar(100) NOT NULL
  ,herkunft varchar(255) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
  ,status varchar(20) NOT NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_objektname_pos','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX mopublic_objektname_pos_pos_idx ON av_mopublic.mopublic_objektname_pos USING GIST ( pos );
COMMENT ON TABLE av_mopublic.mopublic_objektname_pos IS '@iliname SO_MOpublic_20171003.MOpublic.Objektname_Pos';
COMMENT ON COLUMN av_mopublic.mopublic_objektname_pos.objektname IS 'Name des Objektes
@iliname Objektname';
COMMENT ON COLUMN av_mopublic.mopublic_objektname_pos.pos IS 'Position
@iliname Pos';
COMMENT ON COLUMN av_mopublic.mopublic_objektname_pos.orientierung IS 'Textorientierung
@iliname Orientierung';
COMMENT ON COLUMN av_mopublic.mopublic_objektname_pos.hali IS 'Halignment
@iliname HAli';
COMMENT ON COLUMN av_mopublic.mopublic_objektname_pos.vali IS 'Valignment
@iliname VAli';
COMMENT ON COLUMN av_mopublic.mopublic_objektname_pos.art IS 'Art des Objektnamens, aus Art BB/EO. (Integer-ReprÃ¤sentation)
@iliname Art';
COMMENT ON COLUMN av_mopublic.mopublic_objektname_pos.art_txt IS 'Art des Objektnamens, aus Art BB/EO. (Text-ReprÃ¤sentation)
@iliname Art_txt';
COMMENT ON COLUMN av_mopublic.mopublic_objektname_pos.herkunft IS 'Herkunft des Objektnames
@iliname Herkunft';
COMMENT ON COLUMN av_mopublic.mopublic_objektname_pos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_objektname_pos.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_objektname_pos.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
COMMENT ON COLUMN av_mopublic.mopublic_objektname_pos.status IS 'Status der Geometrie: projektiert/realisiert
@iliname Status';
-- SO_MOpublic_20171003.MOpublic.Ortsname
CREATE TABLE av_mopublic.mopublic_ortsname (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,ortsname varchar(40) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_ortsname','geometrie',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POLYGON',2);
SELECT AddGeometryColumn('av_mopublic','mopublic_ortsname','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX mopublic_ortsname_geometrie_idx ON av_mopublic.mopublic_ortsname USING GIST ( geometrie );
CREATE INDEX mopublic_ortsname_pos_idx ON av_mopublic.mopublic_ortsname USING GIST ( pos );
COMMENT ON TABLE av_mopublic.mopublic_ortsname IS '@iliname SO_MOpublic_20171003.MOpublic.Ortsname';
COMMENT ON COLUMN av_mopublic.mopublic_ortsname.geometrie IS 'Geometrie
@iliname Geometrie';
COMMENT ON COLUMN av_mopublic.mopublic_ortsname.ortsname IS 'Ortsname
@iliname Ortsname';
COMMENT ON COLUMN av_mopublic.mopublic_ortsname.pos IS 'Positionierungspunkt fÃ¼r Beschriftung
@iliname Pos';
COMMENT ON COLUMN av_mopublic.mopublic_ortsname.orientierung IS 'Textorientierung
@iliname Orientierung';
COMMENT ON COLUMN av_mopublic.mopublic_ortsname.hali IS 'HAlignment
@iliname HAli';
COMMENT ON COLUMN av_mopublic.mopublic_ortsname.vali IS 'VAlignment
@iliname VAli';
COMMENT ON COLUMN av_mopublic.mopublic_ortsname.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_ortsname.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_ortsname.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
-- SO_MOpublic_20171003.MOpublic.Strassenname_Pos
CREATE TABLE av_mopublic.mopublic_strassenname_pos (
  T_Id bigint PRIMARY KEY DEFAULT nextval('av_mopublic.t_ili2db_seq')
  ,T_Ili_Tid uuid NULL DEFAULT uuid_generate_v4()
  ,strassenname varchar(100) NOT NULL
  ,orientierung decimal(5,2) NOT NULL
  ,hali varchar(255) NOT NULL
  ,vali varchar(255) NOT NULL
  ,bfs_nr integer NOT NULL
  ,importdatum timestamp NOT NULL
  ,nachfuehrung date NULL
)
;
SELECT AddGeometryColumn('av_mopublic','mopublic_strassenname_pos','pos',(SELECT srid FROM SPATIAL_REF_SYS WHERE AUTH_NAME='EPSG' AND AUTH_SRID=2056),'POINT',2);
CREATE INDEX mopublic_strassenname_pos_pos_idx ON av_mopublic.mopublic_strassenname_pos USING GIST ( pos );
COMMENT ON TABLE av_mopublic.mopublic_strassenname_pos IS '@iliname SO_MOpublic_20171003.MOpublic.Strassenname_Pos';
COMMENT ON COLUMN av_mopublic.mopublic_strassenname_pos.strassenname IS 'Strassenname
@iliname Strassenname';
COMMENT ON COLUMN av_mopublic.mopublic_strassenname_pos.pos IS 'Positionierungspunkt fÃ¼r Beschriftung
@iliname Pos';
COMMENT ON COLUMN av_mopublic.mopublic_strassenname_pos.orientierung IS 'Textorientierung
@iliname Orientierung';
COMMENT ON COLUMN av_mopublic.mopublic_strassenname_pos.hali IS 'HAlignment
@iliname HAli';
COMMENT ON COLUMN av_mopublic.mopublic_strassenname_pos.vali IS 'VAlignment
@iliname VAli';
COMMENT ON COLUMN av_mopublic.mopublic_strassenname_pos.bfs_nr IS 'Gemeindenummer (BfS-Nummer) der Gemeinde in welcher das Objekt liegt.
@iliname BFS_Nr';
COMMENT ON COLUMN av_mopublic.mopublic_strassenname_pos.importdatum IS 'Importdatum
@iliname Importdatum';
COMMENT ON COLUMN av_mopublic.mopublic_strassenname_pos.nachfuehrung IS 'Datum der NachfÃ¼hrung durch Geometer
@iliname Nachfuehrung';
CREATE TABLE av_mopublic.T_ILI2DB_BASKET (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NULL
  ,topic varchar(200) NOT NULL
  ,T_Ili_Tid varchar(200) NULL
  ,attachmentKey varchar(200) NOT NULL
)
;
CREATE INDEX T_ILI2DB_BASKET_dataset_idx ON av_mopublic.t_ili2db_basket ( dataset );
CREATE TABLE av_mopublic.T_ILI2DB_DATASET (
  T_Id bigint PRIMARY KEY
  ,datasetName varchar(200) NULL
)
;
CREATE TABLE av_mopublic.T_ILI2DB_IMPORT (
  T_Id bigint PRIMARY KEY
  ,dataset bigint NOT NULL
  ,importDate timestamp NOT NULL
  ,importUser varchar(40) NOT NULL
  ,importFile varchar(200) NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_dataset_idx ON av_mopublic.t_ili2db_import ( dataset );
COMMENT ON TABLE av_mopublic.T_ILI2DB_IMPORT IS 'DEPRECATED, do not use';
CREATE TABLE av_mopublic.T_ILI2DB_IMPORT_BASKET (
  T_Id bigint PRIMARY KEY
  ,import bigint NOT NULL
  ,basket bigint NOT NULL
  ,objectCount integer NULL
  ,start_t_id bigint NULL
  ,end_t_id bigint NULL
)
;
CREATE INDEX T_ILI2DB_IMPORT_BASKET_import_idx ON av_mopublic.t_ili2db_import_basket ( import );
CREATE INDEX T_ILI2DB_IMPORT_BASKET_basket_idx ON av_mopublic.t_ili2db_import_basket ( basket );
COMMENT ON TABLE av_mopublic.T_ILI2DB_IMPORT_BASKET IS 'DEPRECATED, do not use';
CREATE TABLE av_mopublic.T_ILI2DB_IMPORT_OBJECT (
  T_Id bigint PRIMARY KEY
  ,import_basket bigint NOT NULL
  ,class varchar(200) NOT NULL
  ,objectCount integer NULL
  ,start_t_id bigint NULL
  ,end_t_id bigint NULL
)
;
COMMENT ON TABLE av_mopublic.T_ILI2DB_IMPORT_OBJECT IS 'DEPRECATED, do not use';
CREATE TABLE av_mopublic.T_ILI2DB_INHERITANCE (
  thisClass varchar(1024) PRIMARY KEY
  ,baseClass varchar(1024) NULL
)
;
CREATE TABLE av_mopublic.T_ILI2DB_SETTINGS (
  tag varchar(60) PRIMARY KEY
  ,setting varchar(255) NULL
)
;
CREATE TABLE av_mopublic.T_ILI2DB_TRAFO (
  iliname varchar(1024) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE av_mopublic.T_ILI2DB_MODEL (
  file varchar(250) NOT NULL
  ,iliversion varchar(3) NOT NULL
  ,modelName text NOT NULL
  ,content text NOT NULL
  ,importDate timestamp NOT NULL
  ,PRIMARY KEY (modelName,iliversion)
)
;
CREATE TABLE av_mopublic.halignment (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
)
;
CREATE TABLE av_mopublic.valignment (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
)
;
CREATE TABLE av_mopublic.mopublic_objektname_pos_herkunft (
  itfCode integer PRIMARY KEY
  ,iliCode varchar(1024) NOT NULL
  ,seq integer NULL
  ,inactive boolean NOT NULL
  ,dispName varchar(250) NOT NULL
)
;
CREATE TABLE av_mopublic.T_ILI2DB_CLASSNAME (
  IliName varchar(1024) PRIMARY KEY
  ,SqlName varchar(1024) NOT NULL
)
;
CREATE TABLE av_mopublic.T_ILI2DB_ATTRNAME (
  IliName varchar(1024) NOT NULL
  ,SqlName varchar(1024) NOT NULL
  ,Owner varchar(1024) NOT NULL
  ,Target varchar(1024) NULL
  ,PRIMARY KEY (SqlName,Owner)
)
;
CREATE TABLE av_mopublic.T_ILI2DB_COLUMN_PROP (
  tablename varchar(255) NOT NULL
  ,subtype varchar(255) NULL
  ,columname varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE TABLE av_mopublic.T_ILI2DB_TABLE_PROP (
  tablename varchar(255) NOT NULL
  ,tag varchar(1024) NOT NULL
  ,setting varchar(1024) NOT NULL
)
;
CREATE UNIQUE INDEX T_ILI2DB_DATASET_datasetName_key ON av_mopublic.T_ILI2DB_DATASET (datasetName)
;
CREATE UNIQUE INDEX T_ILI2DB_MODEL_modelName_iliversion_key ON av_mopublic.T_ILI2DB_MODEL (modelName,iliversion)
;
CREATE UNIQUE INDEX T_ILI2DB_ATTRNAME_SqlName_Owner_key ON av_mopublic.T_ILI2DB_ATTRNAME (SqlName,Owner)
;
