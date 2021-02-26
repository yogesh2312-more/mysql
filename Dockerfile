FROM mysql
# Add a database
ENV MYSQL_DATABASE emp \
    MYSQL_USER=root \
    MYSQL_ROOT_PASSWORD=test \
# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup

COPY ./CREATETABLE.sql /docker-entrypoint-initdb.d/
EXPOSE 3306

CMD ["run-mysqld"]
