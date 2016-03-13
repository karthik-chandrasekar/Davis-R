library("httr")
source("R/config.R")
davis_put_file <- function(path, file_name, type, override, append){
  post_end_point <- paste(server_address, sprintf(upload_endpoint, path,
                                                  type, override, append), sep = "")
  POST(url=post_end_point, encode = "multipart", config=add_headers(Authorization=token_header),
       body=list(file=upload_file(file_name, "text/csv")), verbose())
}

