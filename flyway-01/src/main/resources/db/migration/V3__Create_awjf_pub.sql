--SET role sogis_admin;
-- Create schema afu_gewisso_pub
CREATE SCHEMA awjf_pub;

--GRANT USAGE ON SCHEMA awjf_pub TO public,qgis_server,gretl;

-- Create Table wald_uebersicht
CREATE TABLE awjf_pub.wald_uebersicht
(
  ogc_fid serial NOT NULL, -- OGC Feature ID
  wkb_geometry geometry(MULTIPOLYGON,2056), -- OGC WKB Geometrie
  typ character varying,
  CONSTRAINT wald_uebersicht_pkey PRIMARY KEY (ogc_fid)
);
--GRANT SELECT ON TABLE awjf_pub.wald_uebersicht TO public,qgis_server;
--GRANT SELECT,DELETE,UPDATE,INSERT ON TABLE awjf_pub.wald_uebersicht TO gretl;

-- Create Table wap_bst
CREATE TABLE awjf_pub.wap_bst
(
  ogc_fid serial NOT NULL, -- OGC Feature ID
  wkb_geometry geometry(MULTIPOLYGON,2056), -- OGC WKB Geometrie
  id_wp integer, -- id_wp = Fortlaufende ID, manuelle Vergabe durch AWJF (Stufe "wap-bst")
  fid_amtei integer, -- fid_amtei = Amtei...
  fid_fk integer, -- fid_fk = Forstkreise...
  fid_fr integer, -- fid_fr = Forstreviere...
  wirt_zone integer, -- wirt_zone = Wirtschaftszonen...
  gem_bfs integer, -- gem_bfs = BFS-Nummer vom Bundesamt für Statsitik
  fid_we integer, -- fid_we = Grundstücknummer Waldeigentümer
  gb_flaeche integer, -- gb_flaeche = Fläche einer Parzelle. Ermittelt aus der Amtlichen Vermessung
  we_text character varying, -- we_text = Bezeichnung Waldeigentümer z.B....
  fid_eigcod integer, -- fid_eigcod = Eigentümer-Code
  fid_eig integer, -- fid_eig = Eigentumstyp (Code aus Forststatistik BFS)...
  fid_prod integer, -- fid_prod = Produktivität...
  wpnr integer, -- wpnr = Waldfunktion...
  wptyp integer, -- wptyp = Waldplantyp...
  betriebsteil integer, -- betriebsteil = Betriebsteil...
  fid_abt character varying, -- fid_abt = Waldabteilung
  bstnr integer, -- bstnr = Bestandesnummer
  bsttyp integer, -- bsttyp = Bestandestyp...
  wpinfo character varying, -- wpinfo = Waldplaninformation z.B....
  bemerkung character varying, -- Bemerkung = Kommentar
  flae_gis double precision, -- flae_gis = Fläche eines Polygons
  korr_flae double precision, -- korr_flae = Korrektur an Fläche Grundbuch
  wpflae double precision, -- wpflae = Fläche korrigiert nach Grundbuch
  zeitstand date, -- zeitstand = Zeitstand betreffend BST Kartierung
  beschrift character varying, -- beschrift = Beschriftungsfeld BST
  x_beschr double precision, -- x_beschr = Positionsfeld X-Koordinate
  y_beschr double precision, -- y_beschr = Positionsfeld Y-Koodinate
  objnummer character varying, -- Objektnummer (N&L Vereinbarungen)
  CONSTRAINT wap_bst_pkey PRIMARY KEY (ogc_fid)
);
--GRANT SELECT ON TABLE awjf_pub.wap_bst TO public,qgis_server;
--GRANT SELECT,DELETE,UPDATE,INSERT ON TABLE awjf_pub.wap_bst TO gretl;
COMMENT ON COLUMN awjf_pub.wap_bst.ogc_fid IS 'OGC Feature ID';
COMMENT ON COLUMN awjf_pub.wap_bst.wkb_geometry IS 'OGC WKB Geometrie';
COMMENT ON COLUMN awjf_pub.wap_bst.id_wp IS 'id_wp = Fortlaufende ID, manuelle Vergabe durch AWJF (Stufe "wap-bst")';
COMMENT ON COLUMN awjf_pub.wap_bst.fid_amtei IS 'fid_amtei = Amtei

1	Solothurn-Lebern
2	Bucheggberg-Wasseramt
3	Thal-Gäu
4	Olten-Gösgen
5	Olten / Niederamt
6	Dorneck  / Thierstein
';
COMMENT ON COLUMN awjf_pub.wap_bst.fid_fk IS 'fid_fk = Forstkreise

1	FK Bucheggberg - Lebern
2	FK Wasseramt - Solothurn
3	FK Thal - Gäu
4	FK Olten - Gösgen
6	FK Dorneck - Thierstein
';
COMMENT ON COLUMN awjf_pub.wap_bst.fid_fr IS 'fid_fr = Forstreviere

1	FR Grenchen
2	FR Leberberg
3	FR Bucheggberg
4	FR Wasseramt
5	FR Solothurn
6	FR Balsthal-Mümliswil
7	FR Laupersdorf / Matzendorf
8	FR Hinteres Thal
9	FR Oberbuchsiten/Oensingen/Holderbank
10	FR Oberes Gäu
11	FR Mittleres Gäu
13	FR Untergäu
14	FR Olten
15	FR Unterer Hauenstein
16	FR Gösgeramt-Kienberg
17	FR Obererlinsbach
18	FR Werderamt
19	FR Dorneckberg Nord
20	FR Dorneckberg Süd
21	FR Am Blauen
22	FR Thierstein Süd
23	FR Thierstein Mitte
24	FR Thierstein West/Laufenthal
';
COMMENT ON COLUMN awjf_pub.wap_bst.wirt_zone IS 'wirt_zone = Wirtschaftszonen

1 Jura
2 Mittelland';
COMMENT ON COLUMN awjf_pub.wap_bst.gem_bfs IS 'gem_bfs = BFS-Nummer vom Bundesamt für Statsitik';
COMMENT ON COLUMN awjf_pub.wap_bst.fid_we IS 'fid_we = Grundstücknummer Waldeigentümer';
COMMENT ON COLUMN awjf_pub.wap_bst.gb_flaeche IS 'gb_flaeche = Fläche einer Parzelle. Ermittelt aus der Amtlichen Vermessung';
COMMENT ON COLUMN awjf_pub.wap_bst.we_text IS 'we_text = Bezeichnung Waldeigentümer z.B.

BG ... = Bürgergemeinde
EG ... = Einwohnergemeinde
GE ... = Einheitsgemeinde
Staatswald
Bundeswald
Privatwald';
COMMENT ON COLUMN awjf_pub.wap_bst.fid_eigcod IS 'fid_eigcod = Eigentümer-Code';
COMMENT ON COLUMN awjf_pub.wap_bst.fid_eig IS 'fid_eig = Eigentumstyp (Code aus Forststatistik BFS)

1000 Budeswald
2000 Staatswald
3100 Bürgergemeinde
3200 Einwohnergemeinde
3300 Einheitsgemeinde
4000 Öffentlich (gemischt)
5000 Gemischt öffentlich-privat
6000 Privat
7000 Privat (gemischt)';
COMMENT ON COLUMN awjf_pub.wap_bst.fid_prod IS 'fid_prod = Produktivität

1 produktiv (Waldplantyp 1 und 2)
2 unproduktiv (Waldplantyp 3 bis 8)';
COMMENT ON COLUMN awjf_pub.wap_bst.wpnr IS 'wpnr = Waldfunktion

501 Wirtschaftswald
502 Schutzwald
503 Erholungswald
504 Natur und Landschaft
505 Schutzwald / Natur und Landschaft
509 Nicht Wald';
COMMENT ON COLUMN awjf_pub.wap_bst.wptyp IS 'wptyp = Waldplantyp

1 Mit Wald bestockt
2 Niederhaltezone
3 Waldstrasse
4 Maschinenweg
5 Bauten und Anlagen
6 Rodungsfläche (temporär)
7 Gewässer
8 Abbaustelle
9 Nicht Wald';
COMMENT ON COLUMN awjf_pub.wap_bst.betriebsteil IS 'betriebsteil = Betriebsteil

1 Talwald
2 Bergwald
3 Vorberg
4 Sonnseite
5 Schattseite
6 Lebern
7 usw.';
COMMENT ON COLUMN awjf_pub.wap_bst.fid_abt IS 'fid_abt = Waldabteilung';
COMMENT ON COLUMN awjf_pub.wap_bst.bstnr IS 'bstnr = Bestandesnummer';
COMMENT ON COLUMN awjf_pub.wap_bst.bsttyp IS 'bsttyp = Bestandestyp

10 Jungwuchs/Dickung (Blössen die noch nicht Jw/Di)
11 90-100%  Ndh	Jungwuchs/Dickung  0-8cm BHD dom 100
12 50-90% Ndh	Jungwuchs/Dickung  0-8cm BHD dom 100
13 50-90% Lbh	Jungwuchs/Dickung  0-8cm BHD dom 100
14 90-100% Lbh	Jungwuchs/Dickung  0-8cm BHD dom 100
21 90-100%  Ndh	Stangenholz 8 - 20 cm BHD dom 100
22 50-90% Ndh	Stangenholz 8 - 20 cm BHD dom 100
23 50-90% Lbh	Stangenholz 8 - 20 cm BHD dom 100
24 90-100% Lbh	Stangenholz 8 - 20 cm BHD dom 100
31 90-100%  Ndh	Schwaches  Baumholz 20 - 35 cm BHD dom 100
32 50-90% Ndh	Schwaches  Baumholz 20 - 35 cm BHD dom 100
33 50-90% Lbh	Schwaches  Baumholz 20 - 35 cm BHD dom 100
34 90-100% Lbh	Schwaches  Baumholz 20 - 35 cm BHD dom 100
41 90-100%  Ndh	Mittleres Baumholz 35 - 50 cm BHD dom 100
42 50-90% Ndh	Mittleres Baumholz 35 - 50 cm BHD dom 100
43 50-90% Lbh	Mittleres Baumholz 35 - 50 cm BHD dom 100
44 90-100% Lbh	Mittleres Baumholz 35 - 50 cm BHD dom 100
51 90-100%  Ndh	Starkes Baumholz >50 cm BHD dom 100
52 50-90% Ndh	Starkes Baumholz >50 cm BHD dom 100
53 50-90% Lbh	Starkes Baumholz >50 cm BHD dom 100
54 90-100% Lbh	Starkes Baumholz >50 cm BHD dom 100
61 90-100%  Ndh	St. Baumholz aufgelockert >50 cm BHD dom 100
62 50-90% Ndh	St. Baumholz aufgelockert >50 cm BHD dom 100
63 50-90% Lbh	St. Baumholz aufgelockert >50 cm BHD dom 100
64 90-100% Lbh	St. Baumholz aufgelockert >50 cm BHD dom 100
70 Übriger Wald ausser Bewirtschaftung
75 Altholzinsel mit Vereinbarung (< 20 ha / >= 50 Jahre)
76 Andere Förderfläche mit Vereinbarung z.B. Niederwald, Mittelwald und Eichenwald (>= 25 Jahre)
77 Waldrand mit Vereinbarung (>= 25 Jahre)
79 Waldreservat mit Vereinbarung (>= 50 Jahre)
81 90-100%  Ndh	Dauerwald / Plenterwald
82 50-90% Ndh	Dauerwald / Plenterwald
83 50-90% Lbh	Dauerwald / Plenterwald
84 90-100% Lbh	Dauerwald / Plenterwald
200 Niederwald
201 90-100%  Ndh	Niederwald
202 50-90% Ndh	Niederwald
203 50-90% Lbh	Niederwald
204 90-100% Lbh	Niederwald
210 Mittelwald
211 90-100%  Ndh	Mittelwald
212 50-90% Ndh	Mittelwald
213 50-90% Lbh	Mittelwald
214 90-100% Lbh	Mittelwald';
COMMENT ON COLUMN awjf_pub.wap_bst.wpinfo IS 'wpinfo = Waldplaninformation z.B.

Waldfeststellung
Weihnachtsbaumkultur
usw.';
COMMENT ON COLUMN awjf_pub.wap_bst.bemerkung IS 'Bemerkung = Kommentar';
COMMENT ON COLUMN awjf_pub.wap_bst.flae_gis IS 'flae_gis = Fläche eines Polygons';
COMMENT ON COLUMN awjf_pub.wap_bst.korr_flae IS 'korr_flae = Korrektur an Fläche Grundbuch';
COMMENT ON COLUMN awjf_pub.wap_bst.wpflae IS 'wpflae = Fläche korrigiert nach Grundbuch';
COMMENT ON COLUMN awjf_pub.wap_bst.zeitstand IS 'zeitstand = Zeitstand betreffend BST Kartierung';
COMMENT ON COLUMN awjf_pub.wap_bst.beschrift IS 'beschrift = Beschriftungsfeld BST';
COMMENT ON COLUMN awjf_pub.wap_bst.x_beschr IS 'x_beschr = Positionsfeld X-Koordinate';
COMMENT ON COLUMN awjf_pub.wap_bst.y_beschr IS 'y_beschr = Positionsfeld Y-Koodinate';
COMMENT ON COLUMN awjf_pub.wap_bst.objnummer IS 'Objektnummer (N&L Vereinbarungen)';


-- Index: awjf_pub.wap_bst_geom_idx

-- DROP INDEX awjf_pub.wap_bst_geom_idx;

CREATE INDEX wap_bst_geom_idx
  ON awjf_pub.wap_bst
  USING gist
  (wkb_geometry);

-- Create Table sw_funktion_ar
CREATE TABLE awjf_pub.sw_funktion_ar
(
  ogc_fid serial NOT NULL, -- Automatisch generierte ID
  fk integer, -- Forstkreis...
  fr integer, -- fr = Forstrevier...
  name character varying(80), -- Alte Bezeichnung des Schutzwaldperimeters
  sturz integer, -- Gemäss Modellrechnung ist der Prozess Sturz vorhanden:...
  rutsch integer, -- Gemäss Modellrechnung ist der Prozess Rutschung vorhanden:...
  grs integer, -- Gemäss Modellrechnung sind gerinnerelevante Prozesse vorhanden:...
  lawine integer, -- Gemäss Modellrechnung ist der Prozess Lawine vorhanden:...
  anderekt integer, -- Gemäss Modellrechnung ist das Schadenpotential in einen anderen Kanton:...
  obj_kat double precision, -- Unterteilung des Schadenpotentials in Objektkategorien gemäss Bundesrichtlinien...
  schaden_po character varying(50), -- Name des Schadenpotentials
  h_gef_pot integer, -- Das Hauptgefahrenpotential in der Schutzwaldfläche ist:...
  igef_pot integer, -- Geschätzte Intensität des Hauptgefahrenpotentials:...
  bemerkunge character varying(199), -- Bemerkungen zur Schutzwaldfläche
  flaeche integer, -- Fläche des Schutzwaldperimeters in m2
  wkb_geometry geometry(MULTIPOLYGON,2056), -- Geometrie
  status smallint, -- Bearbeitungsstatus
  name_2 character varying, -- Neue und aktuelle Bezeichnung des Schutzwaldperimeters
  gem_name character varying, -- Gemeindename Stand 2014
  gem_bfs integer, -- BFS Nummer der Gemeinde Stand 2014
  CONSTRAINT sw_funktion_ar_pkey PRIMARY KEY (ogc_fid)
);
--GRANT SELECT ON TABLE awjf_pub.sw_funktion_ar TO public,qgis_server;
--GRANT SELECT,DELETE,UPDATE,INSERT ON TABLE awjf_pub.sw_funktion_ar TO gretl;
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.ogc_fid IS 'Automatisch generierte ID';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.fk IS 'Forstkreis

1 = Bucheggberg / Lebern
2 = Wasseramt
3 = Thal
4 = Gäu / Untergäu
5 = Olten / Niederamt
6 = Dorneck / Thierstein';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.fr IS 'fr = Forstrevier
1	FR Grenchen
2	FR Leberberg
3	FR Bucheggberg
4	FR Wasseramt
5	FR BG Solothurn
6	FR Balsthal-Mümliswil                       
7	FR Laupersdorf/Matzendorf
8	FR Hinteres Thal                                          
9	FR Oberbuchsiten/Oensingen/Holderbank
10	FR Oberes Gäu
11	FR Neuendorf/Härkingen/Egerkingen
12	FR Boningen-Fulenbach-Gunzgen
13	FR Untergäu
14	FR BG Olten
15	FR Unterer Hauenstein
16	FR Gösgeramt-Kienberg                    
17	FR Obererlinsbach
18	FR Werderamt
19	FR Dorneckberg Nord
20	FR Dorneckberg Süd
21	FR  Am Blauen 
22	FR Thierstein Süd
23	FR Thierstein Mitte
24	FR Thierstein West / Laufental';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.name IS 'Alte Bezeichnung des Schutzwaldperimeters';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.sturz IS 'Gemäss Modellrechnung ist der Prozess Sturz vorhanden:
0 = nicht vorhanden
1 = vorhanden';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.rutsch IS 'Gemäss Modellrechnung ist der Prozess Rutschung vorhanden:
0 = nicht vorhanden
1 = vorhanden';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.grs IS 'Gemäss Modellrechnung sind gerinnerelevante Prozesse vorhanden:
0 = nicht vorhanden
1 = vorhanden';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.lawine IS 'Gemäss Modellrechnung ist der Prozess Lawine vorhanden:
0 = nicht vorhanden
1 = vorhanden';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.anderekt IS 'Gemäss Modellrechnung ist das Schadenpotential in einen anderen Kanton:
0 = Nein
1 = Ja';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.obj_kat IS 'Unterteilung des Schadenpotentials in Objektkategorien gemäss Bundesrichtlinien
2.2 = Verkehrswege von kommunaler Bedeutung, Hofzufahrten
2.3 = Einzelgebäude
3.1 = Kantonsstrassen / Bahnlinien
3.2 = Geschlossene  Siedlungen
3.3 = Sonderobjekte';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.schaden_po IS 'Name des Schadenpotentials';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.h_gef_pot IS 'Das Hauptgefahrenpotential in der Schutzwaldfläche ist:
1 = Sturz
2 = Rutschung
3 = gerinnerelevante Prozesse
4 = Lawine
';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.igef_pot IS 'Geschätzte Intensität des Hauptgefahrenpotentials:
1 = schwach
2 = mittel
3 = stark';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.bemerkunge IS 'Bemerkungen zur Schutzwaldfläche';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.flaeche IS 'Fläche des Schutzwaldperimeters in m2';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.wkb_geometry IS 'Geometrie';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.status IS 'Bearbeitungsstatus';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.name_2 IS 'Neue und aktuelle Bezeichnung des Schutzwaldperimeters';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.gem_name IS 'Gemeindename Stand 2014';
COMMENT ON COLUMN awjf_pub.sw_funktion_ar.gem_bfs IS 'BFS Nummer der Gemeinde Stand 2014';


-- Index: awjf_pub.sw_funktion_ar_geo_idx

-- DROP INDEX awjf_pub.sw_funktion_ar_geo_idx;

CREATE INDEX sw_funktion_ar_geo_idx
  ON awjf_pub.sw_funktion_ar
  USING gist
  (wkb_geometry);

-- Create Table waldge
CREATE TABLE awjf_pub.waldge
(
  ogc_fid serial NOT NULL, -- OGC Feature ID
  wkb_geometry geometry(POLYGON,2056), -- OGC WKB Geometrie
  area double precision, -- Fläche in m2
  perimeter double precision, -- Perimeter in m
  waldge_ double precision, -- ehemalige Identifikation
  waldge_id double precision, -- ehemalige Identifikation
  massstab double precision, -- Massstab...
  autor character varying, -- Autor :...
  kartierung double precision, -- Kartierung:...
  ges_alt character varying, -- Standorteinheiten aus Kartierung (Alte Gesellschaftsbezeichnung und Übernahme von den Grundlagenkarten)...
  ges_neu character varying, -- korrigierte Standorteinheiten (Burnand 1997)
  bezirk double precision, -- Bezirke:...
  wald double precision, -- Wald
  ges_neu_ber character varying, -- bereinigte Standorteinheiten (Kaufmann 2015)
  grundeinheit character varying, -- Standorteinheit nach E+K, erweitert
  legende character varying, -- Name Standorteinheit
  farbcode character varying, -- CMYK-Farbcode
  verband character varying, -- Waldverbände und Unterverbände
  ertragsklasse double precision, -- Ertragsklasse nach Wuchskraft
  zuwachs double precision, -- Jährlicher Zuwachs pro Hektare
  min_lbh_ant double precision, -- Minimaler Laubholz-Anteil
  CONSTRAINT waldge_pk PRIMARY KEY (ogc_fid)
);
--GRANT SELECT ON TABLE awjf_pub.waldge TO public,qgis_server;
--GRANT SELECT,DELETE,UPDATE,INSERT ON TABLE awjf_pub.waldge TO gretl;
COMMENT ON TABLE awjf_pub.waldge
  IS 'Waldgesellschaften';
COMMENT ON COLUMN awjf_pub.waldge.ogc_fid IS 'OGC Feature ID';
COMMENT ON COLUMN awjf_pub.waldge.wkb_geometry IS 'OGC WKB Geometrie';
COMMENT ON COLUMN awjf_pub.waldge.area IS 'Fläche in m2';
COMMENT ON COLUMN awjf_pub.waldge.perimeter IS 'Perimeter in m';
COMMENT ON COLUMN awjf_pub.waldge.waldge_ IS 'ehemalige Identifikation ';
COMMENT ON COLUMN awjf_pub.waldge.waldge_id IS 'ehemalige Identifikation ';
COMMENT ON COLUMN awjf_pub.waldge.massstab IS 'Massstab
1 = < 1: 2''500
2 = 1: 2''500 
3 = 1: 5''000
4 = 1: 10''000
5 = 1: 25''000
6 = 1: 50''000';
COMMENT ON COLUMN awjf_pub.waldge.autor IS 'Autor :
A = BGU
B = Kaufmann
C = Froelicher
D = Borer
W = Waldmaske';
COMMENT ON COLUMN awjf_pub.waldge.kartierung IS 'Kartierung:
Letzte beiden Ziffern des Kartierungsjahres (z.B. 80 = 1980) 
Waldmaske 1:25''000 = 98';
COMMENT ON COLUMN awjf_pub.waldge.ges_alt IS 'Standorteinheiten aus Kartierung (Alte Gesellschaftsbezeichnung und Übernahme von den Grundlagenkarten)
Anpassungen:
* = +
[ ] = ()
Spezialfälle:
98 = keine Attributierung vorhanden
99 = nicht bestockte Fläche
101 = Rutsche';
COMMENT ON COLUMN awjf_pub.waldge.ges_neu IS 'korrigierte Standorteinheiten (Burnand 1997)';
COMMENT ON COLUMN awjf_pub.waldge.bezirk IS 'Bezirke:
1 = Gäu
2 = Thal
3 = Bucheggberg
4 = Dorneck
5 = Gösgen
6 = Wasseramt
7 = Lebern
8 = Olten
9 = Solothurn
10= Thierstein

';
COMMENT ON COLUMN awjf_pub.waldge.wald IS 'Wald';
COMMENT ON COLUMN awjf_pub.waldge.ges_neu_ber IS 'bereinigte Standorteinheiten (Kaufmann 2015)';
COMMENT ON COLUMN awjf_pub.waldge.grundeinheit IS 'Standorteinheit nach E+K, erweitert';
COMMENT ON COLUMN awjf_pub.waldge.legende IS 'Name Standorteinheit';
COMMENT ON COLUMN awjf_pub.waldge.farbcode IS 'CMYK-Farbcode';
COMMENT ON COLUMN awjf_pub.waldge.verband IS 'Waldverbände und Unterverbände';
COMMENT ON COLUMN awjf_pub.waldge.ertragsklasse IS 'Ertragsklasse nach Wuchskraft';
COMMENT ON COLUMN awjf_pub.waldge.zuwachs IS 'Jährlicher Zuwachs pro Hektare';
COMMENT ON COLUMN awjf_pub.waldge.min_lbh_ant IS 'Minimaler Laubholz-Anteil';


-- Index: awjf_pub.kfa_waldge_geom_idx

-- DROP INDEX awjf_pub.kfa_waldge_geom_idx;

CREATE INDEX kfa_waldge_geom_idx
  ON awjf_pub.waldge
  USING gist
  (wkb_geometry);

-- Create table oberhoehenbonitaet
CREATE TABLE awjf_pub.oberhoehenbonitaet
(
  ogc_fid serial NOT NULL, -- OGC Feature ID
  wkb_geometry geometry(POLYGON,2056), -- OGC WKB Geometrie
  id integer, -- Identifikation durch Datenersteller
  ohb_code integer, -- 10 <= 10m...
  CONSTRAINT oberhoehenbonitaet_pk PRIMARY KEY (ogc_fid)
);
--GRANT SELECT ON TABLE awjf_pub.oberhoehenbonitaet TO public,qgis_server;
--GRANT SELECT,DELETE,UPDATE,INSERT ON TABLE awjf_pub.oberhoehenbonitaet TO gretl;
COMMENT ON COLUMN awjf_pub.oberhoehenbonitaet.ogc_fid IS 'OGC Feature ID';
COMMENT ON COLUMN awjf_pub.oberhoehenbonitaet.wkb_geometry IS 'OGC WKB Geometrie';
COMMENT ON COLUMN awjf_pub.oberhoehenbonitaet.id IS 'Identifikation durch Datenersteller';
COMMENT ON COLUMN awjf_pub.oberhoehenbonitaet.ohb_code IS '10 <= 10m
14 = 11-14m
18 = 15-18m
22 = 19-22m
26 = 23-26m
30 = 27-30m
100 > 30m';

-- Index: awjf_pub.oberhoehenbonitaet_geom_idx

-- DROP INDEX awjf_pub.oberhoehenbonitaet_geom_idx;

CREATE INDEX oberhoehenbonitaet_geom_idx
  ON awjf_pub.oberhoehenbonitaet
  USING gist
  (wkb_geometry);


