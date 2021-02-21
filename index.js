const express = require('express'),
    app = express(),
    mysql = require('mysql'),
    cors = require('cors'),
    bodyParser = require('body-parser');

db = mysql.createConnection({
    host: 'localhost',
    port: "5200",
    user: "yourusername",
    password: "yourpassword",
    database: "sample-project-mydb"
})

var server = {
    port: 4040
};

const customersRouter = require('./routes/customers');

// use the modules
app.use(cors())
app.use(bodyParser.json());

app.use('/customers', customersRouter);

// starting the server
app.listen( server.port , () => console.log(`Server started, listening port: ${server.port}`));