FROM wiktorn/overpass-api

# Baixa apenas nordeste (contém Alagoas)
ENV OVERPASS_META=yes
ENV OVERPASS_MODE=init
ENV OVERPASS_PLANET_URL=https://download.geofabrik.de/south-america/brazil/nordeste-latest.osm.bz2
ENV OVERPASS_DIFF_URL=

# Expõe a porta padrão
EXPOSE 80

# Inicia o dispatcher para escutar requisições
CMD ["/app/bin/dispatcher", "--osm-base", "--db-dir=/db", "--meta"]
