FROM wiktorn/overpass-api

# Define variáveis para baixar o XML BZ2 (não o .pbf)
ENV OVERPASS_META=yes
ENV OVERPASS_MODE=init
ENV OVERPASS_PLANET_URL=https://download.geofabrik.de/south-america/brazil/nordeste-latest.osm.bz2

EXPOSE 80
