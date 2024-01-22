FROM mariadb:latest

COPY init.sql /docker-entrypoint-initdb.d

ENV MARIADB_ROOT_PASSWORD=novaedu #keep this password! needed for php connection
 
EXPOSE 3306
