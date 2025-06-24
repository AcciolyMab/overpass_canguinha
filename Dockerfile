FROM wiktorn/overpass-api

# Define o modo e se deseja armazenar metadados
ENV OVERPASS_META=yes
ENV OVERPASS_MODE=init

# Região Nordeste do Brasil (contém Alagoas)
ENV OVERPASS_PLANET_URL=https://download.geofabrik.de/south-america/brazil/nordeste-latest.osm.bz2

# Sem aplicação de diffs automáticos
ENV OVERPASS_DIFF_URL=

# Cria diretórios obrigatórios do banco
RUN mkdir -p /db/db

# Expõe a porta 80 padrão usada pela Overpass
EXPOSE 80

# A linha CMD abaixo foi removida.
# O entrypoint da imagem wiktorn/overpass-api já lida com o OVERPASS_MODE=init
# e executará os comandos necessários para download e rebuild.
# Após a inicialização, ele automaticamente iniciará o dispatcher.
# CMD ["/app/bin/dispatcher", "--osm-base", "--db-dir=/db", "--meta"]
