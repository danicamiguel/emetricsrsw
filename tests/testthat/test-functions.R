test_that("functions correct", {
  #test that output contains Min 
  expect_match(stata_sum(caschool), "Min.", all = FALSE)
  #test that the output is a list 
  expect_type(stata_sum_var(caschool$teachers,caschool), "list")
  #test that the output is a list 
  expect_type(stata_desc(caschool), "list")
  #test that the output is a list 
  expect_type(stata_list(caschool), "list")
  #test that the output is a list 
  expect_type(stata_list_2(caschool), "list")
  #test that the output is a list 
  expect_type(stata_list_10(caschool), "list")
  #test output is a ggplot 
  expect_is(stata_graph(caschool$teachers,caschool$enrl_tot,caschool), "ggplot")
  #test output is a list 
  expect_type(stata_reg(caschool$testscr,caschool$str), "list")
  #test output is a list 
  expect_type(stata_logit(caschool$testscr,caschool$str), "list")
  #test output is a double
  expect_type(stata_ci(caschool$testscr,caschool$str), "double")
}
)
