#' Take the an arbitrary power and plot it.
#'
#' This function takes the a number or vector of numbers, and plots the resultant function if indicated.
#'
#' @param x The vector to be operated on.
#' @param a A numeric that \code{x} will be exponentiated to.
#' @param plot_it A logical switch. If TRUE then a quick plot of the power function is created.
#' @param returnVal A logical switch. If \code{TRUE} then the a vector of inverted inputs is returned. \code{TRUE} by default, but useful if you only wish to plot the input.
#' @param returnPlot A logical switch. If \code{TRUE} then the function plot is returned as part of the output object.
#'
#' @return A vector that is the \code{a}-th power of \code{x}, this output can be supressed with \code{returnVal}. Option to also return a plot object with \code{returnPlot}.
#'
#' @details
#' The function output depends on what inputs are used. In the case of numeric or logical data, the output will simply be the input taken to the \code{a}-th power.
#'
#' In the case of characters, the output will generally be the input repeated \code{|a|} times. If \code{|a|} is negative, then the order of the characters is also reverse.
#' If \code{|a|} is 0, the output is only the first letter of the input string. In addition, for character inputs the plot_it switch does not have any effect.
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
#' @seealso \code{\link{square}}, \code{\link{cube}}, \code{\link{reciprocal}}, \code{\link{tenvec}}, \code{\link{negtenvec}}
#' @export
pwr <- function(x, a, plot_it = FALSE, returnVal = TRUE, returnPlot = FALSE) {

	# Power input must be numeric and length 1.
	if (!is.numeric(a) | length(a) != 1){
		stop('This function expects a single nuermical power input.\n',
							'You have provided an object of class: ', class(a)[1],
							' with length', length(a)[1])
	}

	pow(x, a = a, plot_it = plot_it, returnVal = returnVal, returnPlot = returnPlot)
}
