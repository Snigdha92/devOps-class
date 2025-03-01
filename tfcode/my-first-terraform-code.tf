resource "local_file" "myfile" {
  content  = "Welcome to first terraform code"
  filename = "mylocalfile.txt"
}
resource "local_file" "newfile" {
  content  = "Welcome to new file, Welcome ${random_pet.mypetname.id}"
  filename = "newlocalfile.txt"
}

resource "random_pet" "mypetname" {
  length    = 1
  prefix    = "Mr"
  separator = "."
}