FROM secoresearch/fuseki

USER 0

RUN mkdir /tmp/data && wget -O - https://linkedpolitics.project.cwi.nl/web/talk_of_europe_2018-05-02.tar.gz | tar -xz -C /tmp/data/ && $TDBLOADER --graph=file://data/Croatian.ttl.gz /tmp/data/Croatian.ttl.gz \
        && $TDBLOADER --graph=file://data/MembersOfParliament_background.ttl.gz /tmp/data/MembersOfParliament_background.ttl.gz \
        && $TDBLOADER --graph=file://data/Greek.ttl.gz /tmp/data/Greek.ttl.gz \
        && $TDBLOADER --graph=file://data/text_prov.ttl.gz /tmp/data/text_prov.ttl.gz \
        && $TDBLOADER --graph=file://data/Estonian.ttl.gz /tmp/data/Estonian.ttl.gz \
        && $TDBLOADER --graph=file://data/MEPs_in_ItalianParliament_Person.ttl.gz /tmp/data/MEPs_in_ItalianParliament_Person.ttl.gz \
        && $TDBLOADER --graph=file://data/MEPs_in_ItalianParliament_ParliamentaryGroup.ttl.gz /tmp/data/MEPs_in_ItalianParliament_ParliamentaryGroup.ttl.gz \
        && $TDBLOADER --graph=file://data/Polish.ttl.gz /tmp/data/Polish.ttl.gz \
        && $TDBLOADER --graph=file://data/Countries_in_Geonames.ttl /tmp/data/Countries_in_Geonames.ttl \
        && $TDBLOADER --graph=file://data/Latvian.ttl.gz /tmp/data/Latvian.ttl.gz \
        && $TDBLOADER --graph=file://data/Lithuanian.ttl.gz /tmp/data/Lithuanian.ttl.gz \
        && $TDBLOADER --graph=file://data/Hungarian.ttl.gz /tmp/data/Hungarian.ttl.gz \
        && $TDBLOADER --graph=file://data/spokenAs.ttl.gz /tmp/data/spokenAs.ttl.gz \
        && $TDBLOADER --graph=file://data/MembersOfParliament_background_prov.ttl.gz /tmp/data/MembersOfParliament_background_prov.ttl.gz \
        && $TDBLOADER --graph=file://data/combine_graphs_prov.ttl.gz /tmp/data/combine_graphs_prov.ttl.gz \
        && $TDBLOADER --graph=file://data/Portuguese.ttl.gz /tmp/data/Portuguese.ttl.gz \
        && $TDBLOADER --graph=file://data/eurovoc_skos.rdf.gz /tmp/data/eurovoc_skos.rdf.gz \
        && $TDBLOADER --graph=file://data/Dutch.ttl.gz /tmp/data/Dutch.ttl.gz \
        && $TDBLOADER --graph=file://data/Slovak.ttl.gz /tmp/data/Slovak.ttl.gz \
        && $TDBLOADER --graph=file://data/Czech.ttl.gz /tmp/data/Czech.ttl.gz \
        && $TDBLOADER --graph=file://data/Maltese.ttl.gz /tmp/data/Maltese.ttl.gz \
        && $TDBLOADER --graph=file://data/English.ttl.gz /tmp/data/English.ttl.gz \
        && $TDBLOADER --graph=file://data/prov_portal_copy.ttl.gz /tmp/data/prov_portal_copy.ttl.gz \
        && $TDBLOADER --graph=file://data/Danish.ttl.gz /tmp/data/Danish.ttl.gz \
        && $TDBLOADER --graph=file://data/xmlrdf_prov.ttl.gz /tmp/data/xmlrdf_prov.ttl.gz \
        && $TDBLOADER --graph=file://data/Slovenian.ttl.gz /tmp/data/Slovenian.ttl.gz \
        && $TDBLOADER --graph=file://data/empty.ttl.gz /tmp/data/empty.ttl.gz \
        && $TDBLOADER --graph=file://data/hoyland_prov.ttl /tmp/data/hoyland_prov.ttl \
        && $TDBLOADER --graph=file://data/Finnish.ttl.gz /tmp/data/Finnish.ttl.gz \
        && $TDBLOADER --graph=file://data/Bulgarian.ttl.gz /tmp/data/Bulgarian.ttl.gz \
        && $TDBLOADER --graph=file://data/dbpedia_prov.ttl.gz /tmp/data/dbpedia_prov.ttl.gz \
        && $TDBLOADER --graph=file://data/Romanian.ttl.gz /tmp/data/Romanian.ttl.gz \
        && $TDBLOADER --graph=file://data/Spanish.ttl.gz /tmp/data/Spanish.ttl.gz \
        && $TDBLOADER --graph=file://data/German.ttl.gz /tmp/data/German.ttl.gz \
        && $TDBLOADER --graph=file://data/copy_settings_prov.ttl.gz /tmp/data/copy_settings_prov.ttl.gz \
        && $TDBLOADER --graph=file://data/vocabulary.ttl /tmp/data/vocabulary.ttl \
        && $TDBLOADER --graph=file://data/mep_wikidata.ttl.gz /tmp/data/mep_wikidata.ttl.gz \
        && $TDBLOADER --graph=file://data/annot_prov.ttl.gz /tmp/data/annot_prov.ttl.gz \
        && $TDBLOADER --graph=file://data/Swedish.ttl.gz /tmp/data/Swedish.ttl.gz \
        && $TDBLOADER --graph=file://data/Events_and_structure.ttl.gz /tmp/data/Events_and_structure.ttl.gz \
        && $TDBLOADER --graph=file://data/MEPs_in_DBpedia.ttl.gz /tmp/data/MEPs_in_DBpedia.ttl.gz \
        && $TDBLOADER --graph=file://data/wikidata_prov.ttl.gz /tmp/data/wikidata_prov.ttl.gz \
        && $TDBLOADER --graph=file://data/Italian.ttl.gz /tmp/data/Italian.ttl.gz \
        && $TDBLOADER --graph=file://data/void.ttl /tmp/data/void.ttl \
        && $TDBLOADER --graph=file://data/French.ttl.gz /tmp/data/French.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Croatian.ttl.gz /tmp/data/topics/speech/Croatian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Greek.ttl.gz /tmp/data/topics/speech/Greek.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Estonian.ttl.gz /tmp/data/topics/speech/Estonian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Polish.ttl.gz /tmp/data/topics/speech/Polish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Latvian.ttl.gz /tmp/data/topics/speech/Latvian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Lithuanian.ttl.gz /tmp/data/topics/speech/Lithuanian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Hungarian.ttl.gz /tmp/data/topics/speech/Hungarian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Portuguese.ttl.gz /tmp/data/topics/speech/Portuguese.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Dutch.ttl.gz /tmp/data/topics/speech/Dutch.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Slovak.ttl.gz /tmp/data/topics/speech/Slovak.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Czech.ttl.gz /tmp/data/topics/speech/Czech.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Maltese.ttl.gz /tmp/data/topics/speech/Maltese.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/English.ttl.gz /tmp/data/topics/speech/English.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Danish.ttl.gz /tmp/data/topics/speech/Danish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Slovenian.ttl.gz /tmp/data/topics/speech/Slovenian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Finnish.ttl.gz /tmp/data/topics/speech/Finnish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Bulgarian.ttl.gz /tmp/data/topics/speech/Bulgarian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Romanian.ttl.gz /tmp/data/topics/speech/Romanian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Spanish.ttl.gz /tmp/data/topics/speech/Spanish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/German.ttl.gz /tmp/data/topics/speech/German.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Swedish.ttl.gz /tmp/data/topics/speech/Swedish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/Italian.ttl.gz /tmp/data/topics/speech/Italian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/speech/French.ttl.gz /tmp/data/topics/speech/French.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Croatian.ttl.gz /tmp/data/topics/agenda/Croatian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Greek.ttl.gz /tmp/data/topics/agenda/Greek.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Estonian.ttl.gz /tmp/data/topics/agenda/Estonian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Polish.ttl.gz /tmp/data/topics/agenda/Polish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Latvian.ttl.gz /tmp/data/topics/agenda/Latvian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Lithuanian.ttl.gz /tmp/data/topics/agenda/Lithuanian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Hungarian.ttl.gz /tmp/data/topics/agenda/Hungarian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Portuguese.ttl.gz /tmp/data/topics/agenda/Portuguese.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Dutch.ttl.gz /tmp/data/topics/agenda/Dutch.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Slovak.ttl.gz /tmp/data/topics/agenda/Slovak.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Czech.ttl.gz /tmp/data/topics/agenda/Czech.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Maltese.ttl.gz /tmp/data/topics/agenda/Maltese.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/English.ttl.gz /tmp/data/topics/agenda/English.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Danish.ttl.gz /tmp/data/topics/agenda/Danish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Slovenian.ttl.gz /tmp/data/topics/agenda/Slovenian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Finnish.ttl.gz /tmp/data/topics/agenda/Finnish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Bulgarian.ttl.gz /tmp/data/topics/agenda/Bulgarian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Romanian.ttl.gz /tmp/data/topics/agenda/Romanian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Spanish.ttl.gz /tmp/data/topics/agenda/Spanish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/German.ttl.gz /tmp/data/topics/agenda/German.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Swedish.ttl.gz /tmp/data/topics/agenda/Swedish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/Italian.ttl.gz /tmp/data/topics/agenda/Italian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/agenda/French.ttl.gz /tmp/data/topics/agenda/French.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Croatian.ttl.gz /tmp/data/topics/trans/Croatian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Greek.ttl.gz /tmp/data/topics/trans/Greek.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Estonian.ttl.gz /tmp/data/topics/trans/Estonian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Polish.ttl.gz /tmp/data/topics/trans/Polish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Latvian.ttl.gz /tmp/data/topics/trans/Latvian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Lithuanian.ttl.gz /tmp/data/topics/trans/Lithuanian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Hungarian.ttl.gz /tmp/data/topics/trans/Hungarian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Portuguese.ttl.gz /tmp/data/topics/trans/Portuguese.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Dutch.ttl.gz /tmp/data/topics/trans/Dutch.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Slovak.ttl.gz /tmp/data/topics/trans/Slovak.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Czech.ttl.gz /tmp/data/topics/trans/Czech.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Maltese.ttl.gz /tmp/data/topics/trans/Maltese.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/English.ttl.gz /tmp/data/topics/trans/English.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Danish.ttl.gz /tmp/data/topics/trans/Danish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Slovenian.ttl.gz /tmp/data/topics/trans/Slovenian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Finnish.ttl.gz /tmp/data/topics/trans/Finnish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Bulgarian.ttl.gz /tmp/data/topics/trans/Bulgarian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Romanian.ttl.gz /tmp/data/topics/trans/Romanian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Spanish.ttl.gz /tmp/data/topics/trans/Spanish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/German.ttl.gz /tmp/data/topics/trans/German.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Swedish.ttl.gz /tmp/data/topics/trans/Swedish.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/Italian.ttl.gz /tmp/data/topics/trans/Italian.ttl.gz \
        && $TDBLOADER --graph=file://data/topics/trans/French.ttl.gz /tmp/data/topics/trans/French.ttl.gz \
        && $TEXTINDEXER \
        && $SPATIALINDEXER \
        && $TDBSTATS --graph urn:x-arq:UnionGraph > /tmp/stats.opt \
        && mv /tmp/stats.opt $FUSEKI_BASE/databases/tdb/ \
        && rm -rf /tmp/data

RUN chmod -R a+rwX $FUSEKI_BASE

USER 9008
