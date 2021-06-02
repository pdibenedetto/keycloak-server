export db_name=keycloak
export db_schema=keycloak
export db_username=keycloak
export db_password=password

createuser ${db_username}
createdb ${db_name}

psql -d ${db_name} -c "alter user ${db_username} with password '${db_password}';"
psql -d ${db_name} -c "grant all privileges on database ${db_name} to ${db_username};"
psql -d ${db_name} -c "create schema ${db_schema};"
psql -d ${db_name} -c "alter schema ${db_schema} owner to ${db_username};"
