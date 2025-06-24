FROM wiktorn/overpass-api

# Usa o mapa do nordeste do Brasil (Alagoas incluído)
ENV OVERPASS_META=yes
ENV OVERPASS_MODE=init
ENV OVERPASS_PLANET_URL=https://download.geofabrik.de/south-america/brazil/nordeste-latest.osm.pbf

# Força o uso correto do .pbf (sem tentativa de bzip2)
ENV OVERPASS_DIFF_URL=

EXPOSE 80
