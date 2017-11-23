#' Take a vector to arbitrary power
#'
#' INTERNAL FUCTION used by powers library. Takes vector to arbitrary power.
#'
#' @param x The vector to be exponentiated.
#' @param a The exponent.
#'
#' @return A vector that is the \code{a}-th exponent of \code{x}.
#'
#' @details
#' This function is for internal use only. Other functions in the \code{powers} library depend on this.
pow <- function(x, a=2) x^a
