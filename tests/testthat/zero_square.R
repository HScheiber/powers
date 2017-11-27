context("Squaring, cubing, and reciprocating zero")

test_that("zero values work.", {
	expect_identical(square(numeric(0)), numeric(0))
	expect_identical(cube(numeric(0)), numeric(0))
	expect_identical(reciprocal(numeric(0)), numeric(0))
	expect_identical(pwr(numeric(0),100), numeric(0))
})
