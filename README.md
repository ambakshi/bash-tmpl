Dead simple bash templating
===========================

1. Create a text file containing valid bash variables.
2. Create a properties file containing key=value pairs.
3. Pipe the template into tmpl.sh, optionally passing a 
   file to source.

    $ cat test.tmpl
    > Hello ${SERVER} You're on port ${PORT}.
    > Hey dev ${DEV}. Your db is on ${DB_HOST:-localhost}

    $ cat vars.properties
    > SERVER=foo.com
    > PORT=9999
    > DEV=1

    $ cat test.tmpl | ./tmpl.sh vars.properties
    > Hello foo.com You're on port 9999.
    > Hey dev 1. Your db is on localhost


Amit Bakshi
5/24/2013
