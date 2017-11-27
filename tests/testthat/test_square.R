context("Squaring numerics and non-numerics")

test_that("At least numeric values work.", {
	num_vec <- c(0, -4.6, 3.4)
	expect_identical(square(num_vec), num_vec^2)
})

test_that("Logicals automatically convert to numeric.", {
	logic_vec <- c(TRUE, TRUE, FALSE)
	expect_identical(square(logic_vec), logic_vec^2)
})

test_that("Character inputs double the input string.", {
	char_vec <- "hello world"
	expect_identical(square(char_vec), "hello world hello world")
})

test_that("Missing data throws an error.", {
	expect_error(square(NULL))
})

test_that("Logical NA throws an error for the plot_it switch.", {
	expect_error(square(2, plot_it = NA))
})
