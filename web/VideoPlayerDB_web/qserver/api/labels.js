let db = require('../db/index')

exports.get = (req, res) => {
    var sql = 'select * from labels'
    db.query(sql, (err, data) => {
        if(err) {
            return res.send('err: ' + err.message)
        }
        res.send(data)
    })
}
