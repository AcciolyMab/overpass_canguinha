FROM wiktorn/overpass-api

# Define variáveis para inicializar apenas a região nordeste
ENV OVERPASS_META=yes
ENV OVERPASS_MODE=init
ENV OVERPASS_PLANET_URL=https://download.geofabrik.de/south-america/brazil/nordeste-latest.osm.pbf

EXPOSE 80
