resource "local_file" "lastfile" {
  content  = "Welcome to the last file"
  filename = "lastfile.txt"

}