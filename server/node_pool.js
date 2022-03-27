//node_pool
const {Pool} = require('pg');

const pool = new Pool({
    user: 'lucky',
    database: 'node',
    password: 'IamorThanuno',
    port: 5432,
    host: 'localhost'
});

module.exports = {pool};