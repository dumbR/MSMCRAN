#
# helpers functions to create and mantain CRAN repository



#' @export
initialize_repo <- function(pkgs=c(),path="./",repos="https://cran.rstudio.com/") {
  miniCRAN::makeRepo(pkgs=pkgs,path="./",repos=repos)
}

#' @export
addPackage <- function(pkgs,path="./",repos="https://cran.rstudio.com/") {
  miniCRAN::addPackage(pkgs=pkgs,path="./",repos=repos)
}
