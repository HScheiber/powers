#' Cube a vector
#'
#' That's it -- this function just cubes a vector.
#'
#' @param x The vector to be cubed.
#' @param plot_it A logical switch. If TRUE then a quick plot of the power function is created.
#'
#' @return A vector that is the cube of \code{x}.
#'
#' @details
#' This function isn't complicated. It simply cubes the vector. The input may be a single number or a vector of numbers.
#'
#' @examples
#' cube(1:10, plot_it = TRUE)
#' cube(-5)
#' @export
cube <- function(x, plot_it = FALSE) pow(x, a = 3, plot_it = plot_it)
