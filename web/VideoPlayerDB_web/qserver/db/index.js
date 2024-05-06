let mysql = require('mysql')

// let db = mysql.createPool({
//     host: '127.0.0.1',
//     user: 'root',
//     password: '123',
//     database: 'vpdbHydrogen'
// })

let db = mysql.createPool({
    host: '127.0.0.1',
    user: 'root',
    password: '******', //fill your password here
    database: '******' //fill your database name here
})

module.exports = db
