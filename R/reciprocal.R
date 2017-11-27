#' Take the reciprocal of a vector
#'
#' This function takes the reciprocal of an input vector, and plots the resultant function if indicated.
#'
#' @param x The vector to be inversed.
#' @param plot_it A logical switch. If TRUE then a quick plot of the power function is created.
#' @param returnVal A logical switch. If \code{TRUE} then the a vector of inverted inputs is returned. \code{TRUE} by default, but useful if you only wish to plot the input.
#' @param returnPlot A logical switch. If \code{TRUE} then the function plot is returned as part of the output object.
#'
#' @return A vector that is the reciprocal of \code{x}, this output can be supressed with \code{returnVal}. Option to also return a plot object with \code{returnPlot}.
#'
#' @details
#' The function output depends on what inputs are used. In the case of numeric or logical data, the output will simply be the reciprocal of the input.
#'
#' In the case of characters, the output will be the input string reversed.
#' For character inputs, the plot_it switch does not have any effect.
#'
#' By selecting \code{returnPlot = TRUE} then the output will contain a plot object. In the case of character vectors, no plot is generated and the plot object is empty.
#'
#' @examples
#' plot_object <- reciprocal(1:20, plot_it = TRUE, returnVal = FALSE, returnPlot = TRUE)
#' reciprocal(-5)
#' reciprocal(-2)
#' reciprocal(TRUE)
#' reciprocal(letters)
#' reciprocal("hello world")
#' @export
reciprocal <- function(x, plot_it = FALSE, returnVal = TRUE, returnPlot = FALSE) {
	pow(x, a = -1, plot_it = plot_it, returnVal = returnVal, returnPlot = returnPlot)
}
