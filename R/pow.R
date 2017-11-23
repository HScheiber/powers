#' Take a vector to arbitrary power
#'
#' INTERNAL FUCTION used by powers library. Takes vector to arbitrary power.
#'
#' @param x The vector to be exponentiated.
#' @param a The exponent.
#' @param plot_it A logical. If TRUE then a quick plot of the power function is created.
#'
#' @return A vector that is the \code{a}-th exponent of \code{x}.
#'
#' @details
#' This function is for internal use only. Other functions in the \code{powers} library depend on this.
pow <- function(x, a=2, plot_it) {

	res <- x^a

	if (plot_it) print(ggplot2::qplot(x, res))
	return(res)
}
