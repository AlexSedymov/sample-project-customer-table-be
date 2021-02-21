#!/bin/bash

# Create MySql Docker instance
docker run --name sample-project-mydb  -p 5200:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw -e MYSQL_DATABASE=sample-project-mydb -e MYSQL_USER=yourusername -e MYSQL_PASSWORD=yourpassword -d mysql:5.7

# Check if MySql db is running
until mysqladmin ping -u root -pmy-secret-pw -P5200 -h 127.0.0.1
    do
        echo "Waiting for database connection..."
    sleep 1
done

# Restore DB from Dump
cat ./maintenance/dbDump.sql | docker exec -i my-mysql /usr/bin/mysql -u root --password=my-secret-pw sample-project-mydb


