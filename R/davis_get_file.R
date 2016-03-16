library("httr")
source("R/config.R")
davis_get_file <- function(file_name){
    get_end_point = paste(server_address,sprintf(get_end_point, file_name), sep="")
    GET(get_end_point, config=add_headers(Authorization=token_header))
}


