//getNodeLibraries.js
//const pool = require('./node_pool')
const {Pool} = require('pg');
const pool = new Pool({
    user: 'lucky',
    database: 'node',
    password: 'IamorThanuno',
    port: 5432,
    host: 'localhost'
});


const getNodeLibraries = async (request,response) => {
    
console.log('getNodeLibraries')
    await pool.query('SELECT libName FROM libraries;',(error,result) => {
        if(error){
            throw error
        }
        response.status(200).json(result.rows)
    })
 
  }
  
module.exports = getNodeLibraries;