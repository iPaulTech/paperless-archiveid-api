<?php
   include 'vars.php';

   $host        = "host = " .$dbhost;
   $port        = "port = " .$dbport;
   $dbname      = "dbname = " .$dbname;
   $credentials = "user = " .$dbuser ." password=" .$dbpassword;

   $db = pg_connect( "$host $port $dbname $credentials"  );
   if(!$db) {
      echo "Error";
   }

   $sql =<<<EOF
      SELECT MAX(archive_serial_number) FROM documents_document;
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret) {
      echo pg_last_error($db);
      exit;
   }
   while($row = pg_fetch_row($ret)) {
      echo "LastID: " .$row[0];
   }
   pg_close($db);

?>
