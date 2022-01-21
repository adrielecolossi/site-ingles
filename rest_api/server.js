
const express = require('express');
const formidableMiddleware = require('express-formidable');
const cors= require('cors')
const app = express();
const routes= require('./routes/routes.js')
const bodyParser = require('body-parser');
app.use(cors()) //configuração do servidor
//app.use(express.json());
app.use(express.urlencoded({extended: true}));

app.use(bodyParser.json());
 app.use(cors())
app.use('/', routes)
app.listen(3001)




//app.use('/', require('./rest_api/server/route/questaoRoute'));
/*
app.get('/', (req, res)=>{
    return res.json({message:'okay'})
})
*/


