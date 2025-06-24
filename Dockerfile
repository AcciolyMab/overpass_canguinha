FROM wiktorn/overpass-api

# Configurações da API
ENV OVERPASS_META=yes
ENV OVERPASS_MODE=init
ENV OVERPASS_PLANET_URL=https://download.geofabrik.de/south-america/brazil/nordeste-latest.osm.bz2
ENV OVERPASS_DIFF_URL=

# Corrige estrutura do banco esperada
RUN mkdir -p /db/db && chmod -R 777 /db

# Expõe a porta padrão do dispatcher
EXPOSE 80

# Inicia corretamente a API Overpass
CMD ["/app/bin/dispatcher", "--osm-base", "--db-dir=/db", "--meta"]
