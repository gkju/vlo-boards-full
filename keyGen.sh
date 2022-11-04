#!/bin/bash
pwd=`openssl rand -hex 30`

npgsql_str="Host=db:5432;Database=vlo-accounts;Username=admin;Password=${pwd}"
identity_str="Host=db:5432;Database=identitydb;Username=admin;Password=${pwd}"

#docker secret rm pgpw
#docker secret rm pgusernme
#printf $pwd | docker secret create pgpw -
printf $pwd > ./secrets/pgpw
#printf "admin" | docker secret create pgusername -
printf "admin" > ./secrets/pgusername

#docker secret rm ConnectionStrings__NPGSQL
#docker secret rm ConnectionStrings__IDENTITYDB
#docker secret rm minio__endpoint
#docker secret rm minio__secret
#docker secret rm minio__access

#printf $npgsql_str | docker secret create ConnectionStrings__NPGSQL -
#printf $identity_str | docker secret create ConnectionStrings__IDENTITYDB -
printf $npgsql_str > ./secrets/ConnectionStrings__NPGSQL
printf $identity_str > ./secrets/ConnectionStrings__IDENTITYDB

pwd2=`openssl rand -hex 30`
pwd3=`openssl rand -hex 30`

#printf "https://minio.suvlo.pl" | docker secret create minio__endpoint -
#printf $pwd2 | docker secret create minio__secret -
#printf $pwd3 | docker secret create minio__access -

printf "https://minio.suvlo.pl" > ./secrets/minio__endpoint
printf $pwd2 > ./secrets/minio__secret
printf $pwd3 > ./secrets/minio__access

printf Done✅