FROM wiktorn/overpass-api

# Define variáveis de ambiente necessárias
ENV OVERPASS_META=yes
ENV OVERPASS_MODE=init
ENV OVERPASS_PLANET_URL=https://download.geofabrik.de/south-america/brazil/nordeste-latest.osm.bz2
ENV OVERPASS_DIFF_URL=

# Corrige diretório do banco
RUN mkdir -p /db/db && chmod -R 777 /db

# Expõe a porta correta para Railway
EXPOSE 80

# Inicia a API Overpass
CMD ["/app/bin/dispatcher", "--osm-base", "--db-dir=/db", "--meta"]
