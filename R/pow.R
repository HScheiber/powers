#' Take a vector to arbitrary power
#'
#' Internal function used by the powers library. Takes vector to an arbitrary power, and may plot the function if indicated.
#'
#' @param x The vector to be exponentiated.
#' @param a The exponent.
#' @param plot_it A logical. If \code{TRUE} then a plot of the power function is created.
#' @param returnVal A logical. If \code{TRUE} then the squared values are returned. Generally \code{TRUE} by default for functions that depend on this one.
#' @param returnPlot A logical. If \code{TRUE} then the generated plot is returned as an object. If both \code{returnVal} and \code{returnPlot} are \code{TRUE} then the output is a list containing both.
#'
#' @return In the case of a numerical input, a vector that is the \code{a}-th exponent of \code{x} is returned.
#' For strings, the input string is repeated code{|a|} times. If \code{a} is negative, the order of the input string \code{x} is also reversed.
#'
#' @details
#' This function is for internal use only. Other functions in the \code{powers} library depend on this.
#' @import ggplot2 stringr
pow <- function(x, a, plot_it, returnVal, returnPlot) {

	# Vector Input must be numeric, logical, or string
	if (!is.numeric(x) & !is.logical(x) & !is.character(x)){
		stop('This function expects a nuermical, logical, or character input.\n',
							'You have provided an object of class: ', class(x)[1])
	}

	# Plot_it must be logical TRUE or FALSE
	if (!is.logical(plot_it) | is.na(plot_it) ){
		stop('plot_it switch must be logical TRUE or FALSE.\n',
							'You have provided an object of class: ', class(plot_it)[1])
	}

	# returnVal must be logical TRUE or FALSE
	if (!is.logical(returnVal) | is.na(returnVal) ){
		stop('returnVal switch must be logical TRUE or FALSE.\n',
							'You have provided an object of class: ', class(returnVal)[1])
	}

	# returnPlot must be logical TRUE or FALSE
	if (!is.logical(returnPlot) | is.na(returnPlot) ){
		stop('returnPlot switch must be logical TRUE or FALSE.\n',
							'You have provided an object of class: ', class(returnPlot)[1])
	}

	# If the input x is a character or vector of characters, output a list of the input "a" times as long as the input
	if (is.character(x)){
		res <- x

		if (a > 1){
			for(i in 1:(a-1)){
				res <- paste(res,x)
			}
			# do not modify output if a = 1.
		} else if (a == 1 ){

			# for a = 0, return only the first letter of the string
		} else if (a == 0){
			res <- stringr::str_extract(res,"^.")

		# for negative a, reverse the order of characters in the string first.
		} else {
			x <- sapply(lapply(strsplit(x, NULL), rev), paste, collapse="")
			res <- x

			if (a < -1){
				for(i in -1:(a+1)){
					res <- paste(res,x)
				}
			}
		}
		pplot = NULL

		# Warn user if plot outputs are selected, characters cannot be plotted
		if(plot_it == TRUE){
			warning("Character inputs cannot be plotted, supressing plot output.",
											call. = FALSE)
		}
		if (returnPlot == TRUE){
			warning("Returning empty plot object.",
											call. = FALSE)
		}

		# If input is a numerical or logical
	}else{
		res <- x^a

		# Generate the plot
			tag <- bquote('f(x) ='~x^{.(a)})

			dat <- data.frame("x.values" = x, "y.values" = res)

			pplot <- ggplot2::ggplot(dat, ggplot2::aes_string(x = "x.values", y = "y.values")) +
				ggplot2::geom_point() +
				ggplot2::theme_bw() +
				ggplot2::theme(axis.text.x = ggplot2::element_text(size=12,face ="bold"),
										axis.text.y = ggplot2::element_text(size=12,face ="bold"),
										axis.title = ggplot2::element_text(size=14, face ="bold")) +
				ggplot2::labs(x = "x",
									y = tag)

		# Plot if plot_it is true
		if (plot_it) {
			print(pplot)
		}
	}

	# Return selected values
	if (returnVal == TRUE & returnPlot == TRUE){
	return(list(res, pplot))
	}else if (returnVal == TRUE & returnPlot == FALSE){
		return(res)
	}else if (returnVal == FALSE & returnPlot == TRUE){
		return(pplot)
	}else {
		return(NULL)
	}
}
