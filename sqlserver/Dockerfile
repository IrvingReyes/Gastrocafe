FROM mcr.microsoft.com/mssql/server:2017-latest
RUN apt-get update && apt-get install -y dos2unix
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=Your_password123
COPY importar-datos.sh /
COPY script_maestro.sql /
COPY script_crear_bd.sql /
COPY Configuracion_Relacion_Receta_AreaProduccion.sql /
COPY script_insumos.sql /
COPY entrypoint.sh /
RUN dos2unix /importar-datos.sh && apt-get --purge remove -y dos2unix && rm -rf /var/lib/apt/lists/*
RUN chmod +x importar-datos.sh
CMD /bin/bash ./entrypoint.sh