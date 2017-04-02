
#' @title Proportion
#' @description This is a function that will take the proportions of an element of one vector comparing to the similar element of another vector.
#' @author Ashish Jain, Matt Stuart, Haiyang Zhang
#' @param Vec1 a numeric vector
#' @param Vec2 a numeric vector
#' @export
#' @return The proportion of the values given by the user.
#' @examples
#' proportion(c(1:10),c(11:20))
#' proportion(c(1:100),c(101:200))
proportion <- function(Vec1,Vec2){
  if(length(Vec1)!=length(Vec2)) stop("Lengths of the two vectors must be the same.")
  Vec<-cbind(Vec1,Vec2)
  vector1<-apply(Vec,1,function(x){x[1]/(x[1]+x[2])})
  vector2<-apply(Vec,1,function(x){x[2]/(x[1]+x[2])})
  return(cbind(vector1,vector2))
}

#' @title Iowa
#' @description Total Votes for Trump and Clinton in Iowa by county
#' A data set containing the raw vote totals for Donald Trump and Hillary Clinton for each of Iowa's 99 counties.
#' @format A data frame with 99 rows and 2 variables
#' \describe{
#'  \item{Trump}{Total votes for Donald Trump}
#'  \item{Clinton}{Total votes for Hillary Clinton}
#' }
#' @examples
#' row.names(Iowa)
#' sum(Iowa[,1])
#' @source \url{http://www.nytimes.com/elections/results/iowa}
"Iowa"
