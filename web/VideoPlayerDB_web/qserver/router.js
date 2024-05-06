let express = require('express')
let router = express.Router()

let labels = require('./api/labels')
let users = require('./api/users')
let labelUsers = require('./api/labelUsers')
let creators = require('./api/creators')
let videos = require('./api/videos')
let comments = require('./api/comments')

router.get('/getLabels', labels.get)
router.get('/getUsers', users.get)
router.get('/getLabelUsers',labelUsers.get)
router.get('/getCreators', creators.get)
router.get('/getVideos', videos.get)
router.get('/getComments', comments.get)


module.exports = router
