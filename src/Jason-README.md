
//READ-ME

Project-json-cli is a complete Node-Express, Reactjs and Postgresql project.

If you have Postgresql installed you would:

    sudo -i -u postgres 
    psql -f /dir/containing/project-json.sql

to install the 'node' database which contains one table called 'libraries' with entries/rows of NPM library names.

Then back at bash command prompt in project-json-cli directory:

    npm install

Same in the server directory. This will re-create the node_modules directory in both places.

To run, from the project-json directory:

    npm run dev  
    
This will start both the server and the client.


If you want, the purejs directory contains a straight html-js version. 

It would need to be initialized as it has its own Express server