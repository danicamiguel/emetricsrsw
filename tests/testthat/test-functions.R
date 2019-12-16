test_that("functions correct", {
  expect_match(stata_sum(caschool), "Min.", all = FALSE)
  expect_equal(stata_sum_var(caschool$teachers,caschool),stata_sum_var(caschool$teachers,caschool))
  expect_identical(stata_desc(caschool),stata_desc(caschool))
  expect_identical(stata_list(caschool),stata_list(caschool))
  expect_identical(stata_list_2(caschool),stata_list_2(caschool))
  expect_identical(stata_list_10(caschool),stata_list_10(caschool))
  expect_equal(stata_graph(caschool$teachers,caschool$enrl_tot,caschool),stata_graph(caschool$teachers,caschool$enrl_tot,caschool))
  expect_equal(stata_reg(caschool$testscr,caschool$str),stata_reg(caschool$testscr,caschool$str))
  expect_equal(stata_logit(caschool$testscr,caschool$str),stata_logit(caschool$testscr,caschool$str))
  expect_equal(stata_ci(caschool$testscr,caschool$str),stata_ci(caschool$testscr,caschool$str))
}
)
