let express = require('express')
let webapp = express()
let cors = require('cors')
let bodyParser = require('body-parser')
let router = require('./router')

webapp.use(bodyParser.json());
webapp.use(bodyParser.urlencoded({extended: false}));
webapp.use(cors())
webapp.use(router)

webapp.listen(8000, () => { console.log('success!'); })
