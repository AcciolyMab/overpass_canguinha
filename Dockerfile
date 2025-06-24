FROM wiktorn/overpass-api

# Baixa apenas a região nordeste (inclui Alagoas)
ENV OVERPASS_META=yes
ENV OVERPASS_MODE=init
ENV OVERPASS_PLANET_URL=https://download.geofabrik.de/south-america/brazil/nordeste-latest.osm.bz2
ENV OVERPASS_DIFF_URL=

# Expõe a porta 80 para o Railway
EXPOSE 80

# Comando que sobe o servidor dispatcher
CMD ["/app/bin/dispatcher", "--osm-base", "--db-dir=/db", "--meta"]
