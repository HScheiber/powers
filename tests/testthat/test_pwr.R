context("Exponentiating numerics and non-numerics")

test_that("At least numeric values work.", {
	num_vec <- seq(-100,100,1)
	exp <- runif(1,min = -100, max = 100)
	expect_identical(pwr(num_vec,exp), num_vec^exp)
})

test_that("Logicals automatically convert to numeric.", {
	logic_vec <- c(TRUE, TRUE, FALSE)
	exp <- runif(1,min = -100, max = 100)
	expect_identical(pwr(logic_vec, exp), logic_vec^exp)
})

test_that("Character inputs work.", {
	char_vec <- c("a","b","c")
	exp <- 3
	expect_identical(pwr(char_vec, exp),c("a a a","b b b","c c c"))
})

test_that("Missing data throws an error.", {
	expect_error(pwr(NULL, 2))
})

test_that("Logical NA throws an error for the plot_it switch.", {
	expect_error(pwr(2, plot_it = NA))
})
