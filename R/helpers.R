#
# helpers functions to create and mantain CRAN repository


#' Initiliazie a miniCRAN repository
#'
#' @param pkgs List of packages to add to your repository.
#' @param path Location of your miniCRAN.
#' @param repos CRAN url repository to use.
#' @return Crete a CRAN like folder structure under \code{path}.
#' @examples
#' initialize_repo()
#' @export
initialize_repo <- function(pkgs=c(),path="./",repos="https://cran.rstudio.com/") {
  miniCRAN::makeRepo(pkgs=pkgs,path="./",repos=repos)
}

#' Add packages to a miniCRAN repository
#'
#' @param pkgs List of packages to add to your repository.
#' @param path Location of your miniCRAN.
#' @param repos CRAN url repository to use.
#' @return Add selected packages and all the dependecies to your miniCRAN repository.
#' @examples
#' addPackage(c("dplyr","ggplot2"))
#' @export
addPackage <- function(pkgs,path="./",repos="https://cran.rstudio.com/") {
  miniCRAN::addPackage(pkgs=pkgs,path="./",repos=repos)
}

#' Update a miniCRAN repository
#'
#' @param path Location of your miniCRAN.
#' @param repos CRAN url repository to use.
#' @return Update all the packages of a miniCRAN repository with the most recent version available on CRAN repo.
#' @examples
#' update_repo()
#' @export
#' @export
update_repo <- function(path="./",repos="https://cran.rstudio.com/") {
  miniCRAN::updatePackages(path="./",repos=repos)
}
