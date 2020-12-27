FROM library/postgres

#First add the creation and modifications of the schemas and tables
ADD ./DDL/*.sql /DDL/

#Second add the creation of stored procedures
ADD ./DML/*.sql /DML/

#Finally add the population of data
ADD ./Data/*.sql /Data/


RUN [ "/bin/bash", "-c", "cat /DDL/{001..999}-*.sql >> /init.sql 2> /dev/null; exit 0"]

RUN cat /DML/*.sql >> /init.sql

RUN cat /Data/*.sql >> /init.sql

RUN cp /init.sql /docker-entrypoint-initdb.d/

ENV POSTGRES_USER=dbmaster
ENV POSTGRES_PASSWORD=dbpassword
ENV POSTGRES_DB=piangles
