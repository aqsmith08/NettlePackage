#' A function that formats big numbers
#' Numbers that have 12 digits are abreviated "T" for trillion
#' Numbers that have 9 digits are abreviated "B" for billion
#' Numbers that have 6 digits are abreviated "M" for Million
#' Commas are inserted
#'  
#' 
#' @examples
#' nettle_lib()
#' 
nettle_bignumbers <- function(x) {
  t.index = x >= 1e12
  b.index = x >= 1e9 & x < 1e12
  m.index = x >= 1e5 & x < 1e9
  output = formatC(x, format = "d", big.mark = ",")
  
  output[t.index] = paste(formatC(x[t.index] / 1e12, digits = 1,format = "f"), "T")
  output[b.index] = paste(formatC(x[b.index] / 1e9, digits = 1, format = "f"), "B")
  output[m.index] = paste(formatC(x[m.index] / 1e6, digits = 1, format = "f"), "M")
  return(output)
}

