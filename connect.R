library(RMySQL)
readRenviron(".env")
mydb <- dbConnect(
    RMariaDB::MariaDB(),
    user = Sys.getenv("MYSQL_ROOT_USER"),
    password = Sys.getenv("MYSQL_ROOT_PASSWORD"),
    dbname = Sys.getenv("MYSQL_ROOT_DATABASE"),
    host = "127.0.0.1",
    port = 3306
)
dbListTables(mydb)