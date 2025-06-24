FROM wiktorn/overpass-api

# Configurações da API
ENV OVERPASS_META=yes
ENV OVERPASS_MODE=init
ENV OVERPASS_PLANET_URL=https://download.geofabrik.de/south-america/brazil/nordeste-latest.osm.bz2
ENV OVERPASS_DIFF_URL=

# Cria a estrutura de banco esperada
RUN mkdir -p /db/db && chmod -R 777 /db

# Expõe a porta da API
EXPOSE 80

# Inicia o servidor corretamente
CMD ["/app/bin/dispatcher_start.sh"]
