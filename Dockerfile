# Usa imagem oficial do Overpass API preparada pelo wiktorn
FROM wiktorn/overpass-api

# Define que o banco conterá metadados (opcional mas útil)
ENV OVERPASS_META=yes

# Define que estamos inicializando o banco de dados no primeiro deploy
ENV OVERPASS_MODE=init

# Baixa o arquivo XML compactado (região nordeste em .osm.bz2)
ENV OVERPASS_PLANET_URL=https://download.geofabrik.de/south-america/brazil/nordeste-latest.osm.bz2

# Desativa atualizações por diff (não precisamos)
ENV OVERPASS_DIFF_URL=

# Expõe a porta padrão do servidor Overpass (escuta em 80)
EXPOSE 80

# Inicia o dispatcher (servidor HTTP da Overpass API)
CMD ["/app/bin/dispatcher", "--osm-base", "--db-dir=/db", "--meta"]
