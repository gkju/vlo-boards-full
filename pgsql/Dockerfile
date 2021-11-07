FROM postgres:latest

COPY pg.crt /var/lib/postgresql/server.crt
COPY pg.key /var/lib/postgresql/server.key

RUN chown 999:999 /var/lib/postgresql/server.crt
RUN chown 999:999 /var/lib/postgresql/server.key
RUN chmod 600 /var/lib/postgresql/server.crt
RUN chmod 600 /var/lib/postgresql/server.key