context("Inverting numerics and non-numerics")

test_that("At least numeric values work.", {
	num_vec <- c(0, -4.6, 3.4)
	expect_identical(reciprocal(num_vec), num_vec^(-1))
})

test_that("Logicals automatically convert to numeric.", {
	logic_vec <- c(TRUE, TRUE, FALSE)
	expect_identical(reciprocal(logic_vec), logic_vec^(-1))
})

test_that("Character inputs are reversed.", {
	char_vec <- "Hello world"
	expect_identical(reciprocal(char_vec), "dlrow olleH")
})

test_that("Missing data throws an error.", {
	expect_error(reciprocal(NULL))
})

test_that("Logical NA throws an error for the plot_it switch.", {
	expect_error(reciprocal(3, plot_it = NA))
})

test_that("Zero and Infinity form a reciprocal pair.", {
	extremes <- c(0, Inf)
	expect_identical(reciprocal(extremes), c(Inf, 0))
})
