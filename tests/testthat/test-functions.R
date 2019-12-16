test_that("functions correct", {
  expect_equal(stata_sum(caschool),stata_sum(caschool))
  expect_equal(stata_sum_var(caschool$teachers,caschool),stata_sum_var(caschool$teachers,caschool))
}
)