context("Cubing numerics and non-numerics")

test_that("At least numeric values work.", {
	num_vec <- c(0, -4.6, 3.4)
	expect_identical(cube(num_vec), num_vec^3)
})

test_that("Logicals automatically convert to numeric.", {
	logic_vec <- c(TRUE, TRUE, FALSE)
	expect_identical(cube(logic_vec), logic_vec^3)
})

test_that("Character inputs are tripled.", {
	char_vec <- c("a","hello","test")
	expect_identical(cube(char_vec),
																		c("a a a","hello hello hello","test test test"))
})

test_that("Missing data throws an error.", {
	expect_error(cube(NULL))
})

test_that("Logical NA throws an error for the plot_it switch.", {
	expect_error(cube(3, plot_it = NA))
})
