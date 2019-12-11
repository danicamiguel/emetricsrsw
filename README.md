
<!-- README.md is generated from README.Rmd. Please edit that file -->

# emetricsrsw

<!-- badges: start -->

<!-- badges: end -->

The goal of `emetricsrsw` package is to support the exercises and
examples from Chapter 5 of **Introduction to Econometrics** by James H.
Stock and Mark W. Watson. Since this textbook was designed to assist
learning in introductory econometrics courses, it’s expected that users
of the textbook will use statistical analysis software program STATA.
However, given that STATA is not an open-source and free software
(i.e. you must pay to obtain an operating license) this makes it
inaccessible to those interested in learning econometrics from this
textbook. `emetricsrsw` allows users to utilize some of the most
commonly used STATA commands in R to perform statistical analysis -
making it convenient and accessible for all readers of this textbook
interested in learning econometrics without having to use STATA. It also
takes some of the pressure off from those familiar with STATA commands
but aren’t as familiar with R’s interface. Have fun\!

## Installation

`emetricsrsw` is hosted on Github and can be installed by running the
following:

``` r
devtools::install_github("danicamiguel/emetricsrsw")
<<<<<<< HEAD
=======
#> Downloading GitHub repo danicamiguel/emetricsrsw@master
#>   

#> 
  
   
#> 
>>>>>>> 0aecbe0520794ab9c4ff4f0627d53e53301d17f7
```

``` r
library(emetricsrsw)
```



## Data

The California Standardized Testing and Reporting dataset contains data
on test performance, school characteristics and student demographic
backgrounds. All of these data were obtained from the [California
Department of Education](http://www.cde.ca.gov). For more information
about this dataset see the [Companion
Website](https://wps.pearsoned.com/aw_stock_ie_3/178/45691/11696965.cw/index.html)
for Stock and Watson’s Introduction to Econometrics.



The California Standardized Testing and Reporting dataset contains data on test performance, school characteristics and student demographic backgrounds. All of these data were obtained from the [California Department of Education](www.cde.ca.gov). For more information about this dataset see the [Companion Website](https://wps.pearsoned.com/aw_stock_ie_3/178/45691/11696965.cw/index.html) for Stock and Watson's Introduction to Econometrics.

`dist_code`: District Code

`read_scr`: Average Reading Score

`math_scr`: Average Math Score

`county`: Country

`district`: District

`gr_span`: Grade Span of District

`enrl_tot`: Total Enrollment

`teachers`: Teachers

`computer`: Number of Computers

`testscr` : Average Test Scores, (read\_scr + math\_scre)/2

`comp_stu`: Computers per Student (computer / enrl\_tot)

`expn_stu`: Expentitures per Student (in $'s)

`str`: Student Teacher ratio (enrl\_tot / teachers)

`el_pct`: Student Techer ratio (enrl\_tot / teachers)

`meal_pct`: Percent Qualifying for Reduced-Price Lunch

`calw_pct`: Percent Qualifying for Calworks

`avginc`: District Average Income (in $1000's)

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
library(emetricsrsw)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
