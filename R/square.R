#' Square a vector
#'
#' This function accepts inputs of numerical, logical, or character data. It then squares the data. There is also an option to plot the resulting output.
#'
#' @param x The vector to be squared.
#' @param plot_it A logical switch. If \code{TRUE} then a quick plot of the power function is created.
#' @param returnVal A logical switch. If \code{TRUE} then the a vector of squared inputs is returned. \code{TRUE} by default, but useful if you only wish to plot the input.
#' @param returnPlot A logical switch. If \code{TRUE} then the function plot is returned as part of the output object.
#'
#' @return A vector that is the square of \code{x}, this output can be supressed with \code{returnVal}. Option to also return a plot object with \code{returnPlot}.
#'
#' @details
#' The function output depends on what inputs are used. In the case of numeric or logical data, the output will simply be the square of the input.
#'
#' In the case of characters, the output will be the input character but with each component of the vector repeated twice.
#' For character inputs, the plot_it switch does not have any effect.
#'
#' By selecting \code{returnPlot = TRUE} then the output will contain a plot object. In the case of character vectors, no plot is generated and the plot object is empty.
#'
#' @examples
#' plot_object <- square(1:20, plot_it = TRUE, returnVal = FALSE, returnPlot = TRUE)
#' square(-5)
#' square(TRUE)
#' square(letters)
#' square("hello world")
#' @seealso \code{\link{pwr}}, \code{\link{cube}}, \code{\link{reciprocal}}, \code{\link{tenvec}}, \code{\link{negtenvec}}
#' @export
square <- function(x, plot_it = FALSE, returnVal = TRUE, returnPlot = FALSE) {
	pow(x, a = 2, plot_it = plot_it, returnVal = returnVal, returnPlot = returnPlot)
}
