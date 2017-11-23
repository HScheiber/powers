context("Squaring and cubing zero")

test_that("zero values work.", {
	expect_identical(square(numeric(0)), numeric(0))
	expect_identical(cube(numeric(0)), numeric(0))
})
