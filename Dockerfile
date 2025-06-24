FROM wiktorn/overpass-api

# Definições do mapa a ser baixado
ENV OVERPASS_META=yes
ENV OVERPASS_MODE=init
ENV OVERPASS_PLANET_URL=https://download.geofabrik.de/south-america/brazil/alagoas-latest.osm.pbf

# A porta padrão da Overpass é 80
EXPOSE 80
