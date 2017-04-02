
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
  if (byrow==TRUE)
  {
    Vec<-cbind(Vec1,Vec2)
    vector1<-apply(Vec,1,function(x){x[1]/(x[1]+x[2])})
    vector2<-apply(Vec,1,function(x){x[2]/(x[1]+x[2])})
    cbind(vector1,vector2)
  }
  else
    {apply(cbind(Vec1,Vec2),2,function(x){x[1]/(x[1]+x[2])})}
}

#' @title Iowa
#' @description Total Votes for Trump and Clinton in Iowa by county
#' A data set containing the raw vote totals for Donald Trump and Hillary Clinton for each of Iowa's 99 counties.
#' @format A data frame with 99 rows and 3 variables
#' \describe{
#'  \item{Trump}{Total votes for Donald Trump}
#'  \item{Clinton}{Total votes for Hillary Clinton}
#' }
#' @examples
#' row.names(Iowa)
#' sum(Iowa[,1])
#' @source \url{http://www.nytimes.com/elections/results/iowa}
"Iowa"
