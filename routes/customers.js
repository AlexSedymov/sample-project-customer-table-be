const express = require('express'),
    router = express.Router();

// get customers list
router.get('/list', function(req, res) {
    let sql = `SELECT * FROM customers`;
    db.query(sql, function(err, data, fields) {
        if (err) throw err;
        res.json({
            status: 200,
            data,
            message: "Customers lists retrieved successfully"
        })
    })
});

// check the user exist
router.get('/check', function(req, res) {
    let sql = `SELECT * FROM customers WHERE id = ${req.body.id}`;
    // let value = [
    //     req.body.id,
    // ];
    db.query(sql, function(err, data, fields) {
        if (err) throw err;
        res.json({
            status: 200,
            data,
            message: "Customer data retrieved successfully"
        })
    })
});

// add new user
router.post('/new', function(req, res) {
    let sql = `INSERT INTO customers(id, name, phone, email, description) VALUES (?)`;
    let values = [
        req.body.id,
        req.body.name,
        req.body.phone,
        req.body.email,
        req.body.description
    ];
    db.query(sql, [values], function(err, data, fields) {
        if (err) throw err;
        res.json({
            status: 200,
            message: "New customer added successfully"
        })
    })
});

module.exports = router;