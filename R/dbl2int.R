#' Convert double to int
#'
#' @param x A single double value.
#'
#' @return `x`, converted to integer.
#' @export
#'
#' @examples
#' dbl2int(1.2)
dbl2int <- function(x) {
  dbl2int_cpp(x)
}
