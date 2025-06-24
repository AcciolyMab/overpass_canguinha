FROM wiktorn/overpass-api

# Modo de inicialização (criação de banco)
ENV OVERPASS_META=yes
ENV OVERPASS_MODE=init
# Região Nordeste (contém Alagoas)
ENV OVERPASS_PLANET_URL=https://download.geofabrik.de/south-america/brazil/nordeste-latest.osm.bz2
# Não precisamos de diffs automáticos
ENV OVERPASS_DIFF_URL=

# Expõe porta padrão do dispatcher
EXPOSE 80

# Inicia o servidor da Overpass API
CMD ["/app/bin/dispatcher", "--osm-base", "--db-dir=/db", "--meta"]
