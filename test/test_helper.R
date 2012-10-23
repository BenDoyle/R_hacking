for(f in list.files(file.path(getwd(), "lib"))) {
  source(file.path(getwd(), "lib", f))
}
