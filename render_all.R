#list all the RMD files in your site's directory
files <- list.files(path = ".", pattern = '*.Rmd', full.names = FALSE)

#this function runs over all the RMD files and renders them to their default output (hopeful HTML)
lapply(files, function(x) {
  rmarkdown::render(paste0(x))
})