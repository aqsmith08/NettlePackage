#' A function duplicating Excel's PROPER
#'
#' This function capitalizes the first letter of each word and does NOT
#' preserve ACRONYMS
#'  
#' @examples
#' nettle_simplecaps("the quick red fox jumps over the sleeping dog")
nettle_simplecaps <- function(x) {
  s <- strsplit(x, " ")[[1]]
  paste(toupper(substring(s, 1,1)), substring(s, 2), sep="", collapse=" ")
}