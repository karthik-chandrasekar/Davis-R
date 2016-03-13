token <- Sys.getenv("TOKEN")
username <- Sys.getenv("USERNAME")
token_header <- sprintf("Bearer %s&username=%s", token, username)
server_address <- "http://localhost:8080/api/v0.1"
get_end_point <- "/data/view/1/0?path=%s"
upload_endpoint <- "/dataset/upload?path=%s&type=%s&override=%s&append=%s"


