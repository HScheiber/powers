#' Convenient Computation of Powers and repetition of strings.
#'
#' Are you tired of using the power operator, \code{^} or \code{**} in R?
#' Use this package to call functions that apply common powers
#' to your vectors.
#'
#' The functions also have the option to generate nice plots of your vectors of numbers, taken to some power.
#'
#' When character data is used as an input, the functions in this package will generally repeat in input string multiple times in the output,
#' depending on the chosen power. Negative powers also reverse the order of strings. Character inputs do not generate plots.
#'
#' @name powers
#' @author Hayden Scheiber
#' @note This package isn't actually meant to be serious. It's just for
#' learning purposes.
#' @docType package
NULL

## quiets concerns of R CMD check re: the .'s that appear in pipelines
if(getRversion() >= "2.15.1")  utils::globalVariables(c("."))
