output "random" {
    description = "Random string used in SQL server name"
    value       = module.sql_database_server.random
}

output "sql_server_name" {
    description = "The name of the SQL server"
    value       = module.sql_database_server.sql_server_name  
  
}

output "sql_db_name" {
    description = "The name of the SQL database"
    value       = module.sql_database_server.sql_db_name
}