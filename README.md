### **Setup DB for the project**

#### Create MySql Docker instance
```bash
docker run --name sample-project-mydb  -p 5200:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw -e MYSQL_DATABASE=sample-project-mydb -e MYSQL_USER=yourusername -e MYSQL_PASSWORD=yourpassword -d mysql:5.7
```
#### Restore DB from Dump
```bash
cat ./maintenance/dbDump.sql | docker exec -i my-mysql /usr/bin/mysql -u root --password=my-secret-pw sample-project-mydb
```
### Setup project
### Libraries install
```
npm install
```
#### Run the project
```bash
node index.js
```
