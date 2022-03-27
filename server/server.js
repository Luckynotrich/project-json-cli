//server.js
const express = require("express");
const open = require("open");
const path = require('path');
const app = express();
const router = express.Router();

app.use(express.json())
app.use(express.urlencoded({ extended: false }))


// router.route('/')
//     .get((request,response) =>{
//         response.sendFile(path.join(__dirname + './index.html'))
//     })


 const PORT = process.env.PORT || 8001;
 //app.use(express.static(path.resolve(__dirname, './client/public/index.html')))
app.use('/libraries',require('./getNodeLibraries'),()=>console.log('Libraries'));

app.listen(PORT,
    console.log(`Something Node-ish running on http://localhost:${PORT}`)
    );
    // (async () => { await open('http://localhost:'+ PORT+'/', { app: { name: 'google-chrome' } }) })()	