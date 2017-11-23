#' Cube a vector
#'
#' That's it -- this function just cubes a vector.
#'
#' @param x The vector to be cubed.
#'
#' @return A vector that is the cube of \code{x}.
#'
#' @details
#' This function isn't complicated. It simply cubes the vector. The input may be a single number or a vector of numbers.
#'
#' @examples
#' cube(1:10)
#' cube(-5)
#' @export
cube <- function(x) pow(x, a = 3)
