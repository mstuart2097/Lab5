# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' @title Proportion
#' @description This is a function that will take the proportions of an element of one vector comparing to the similar element of another vector
#' @author Ashish Jain, Matt Stuart, Haiyang Zhang
#' @param Vec1 a Vector
#' @param Vec2 a Vector
#' @param byrow logical.  If \code{TRUE} (default), the proportions will be calculated by row, otherwise by column
#' @export
#' @return The proportion of the value in the first row or column specified by the user
#' @examples
#' proportion(c(1:10),c(11:20))
#' proportion(c(1:100),c(101:200))
proportion <- function(Vec1,Vec2,byrow=TRUE){
  if(length(Vec1)!=length(Vec2)) stop("Lengths of the two vectors must be the same.")
  if (byrow==TRUE) {MAR <- 1} else {MAR <- 2}
  apply(cbind(Vec1,Vec2),MAR,function(x){x[1]/(x[1]+x[2])})
}


