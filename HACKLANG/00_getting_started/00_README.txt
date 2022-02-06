1. GETTING STARTED: Serving Hack file "Hello World"

(1) touch .hhconfig #init project
(2) create index.hack file or index.php with "hello world", see public/ folder
(*) docker container run --name hacktesting -p 4999:80 1646c8150c15
    #note: uses given dockerfile
(*3) hhvm index.hack #run hack file in terminal / CLI
(3) hhvm -m server -p ${PORTNUMBER} #serve the file on some port=PORTNUMBER
(4) open http://localhost:${PORTNUMBER}/index.hack OR http://localhost:${PORTNUMBER}/index.php