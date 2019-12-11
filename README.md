---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# emetricsrsw

<!-- badges: start -->
<<<<<<< HEAD
<!-- badges: end -->
=======
[![Travis build status](https://travis-ci.org/danicamiguel/emetricsrsw.svg?branch=master)](https://travis-ci.org/danicamiguel/emetricsrsw) <!-- badges: end -->
>>>>>>> d55eb0c7247119e72ef0761712db977a1d4bdd27

The goal of `emetricsrsw` package is to support the exercises and examples from Chapter 5 of **Introduction to Econometrics** by James H. Stock and Mark W. Watson. Since this textbook was designed to assist learning in introductory econometrics courses, it's expected that users of the textbook will use statistical analysis software program STATA. However, given that STATA is not an open-source and free software (i.e. you must pay to obtain an operating license) this makes it inaccessible to those interested in learning econometrics from this textbook. `emetricsrsw` allows users to utilize some of the most commonly used STATA commands in R to perform statistical analysis - making it convenient and accessible for all readers of this textbook interested in learning econometrics without having to use STATA. It also takes some of the pressure off from those familiar with STATA commands but aren't as familiar with R's interface. Have fun!

## Installation

`emetricsrsw` is hosted on Github and can be installed by running the following: 

```r
devtools::install_github("danicamiguel/emetricsrsw")
```


```r
library(emetricsrsw)
```

## Data

The California Standardized Testing and Reporting dataset contains data on test performance, school characteristics and student demographic backgrounds. All of these data were obtained from the [California Department of Education](http://www.cde.ca.gov). For more information about this dataset see the [Companion Website](https://wps.pearsoned.com/aw_stock_ie_3/178/45691/11696965.cw/index.html) for Stock and Watson's Introduction to Econometrics. 

`dist_code`: District Code

`read_scr`: Average Reading Score

`math_scr`: Average Math Score

`county`: Country 

`district`: District

`gr_span`: Grade Span of District

`enrl_tot`: Total Enrollment

`teachers`: Teachers

`computer`: Number of Computers

`testscr` : Average Test Scores, (read_scr + math_scre)/2

`comp_stu`: Computers per Student (computer / enrl_tot)

`expn_stu`: Expentitures per Student (in $'s)

`str`: Student Teacher ratio (enrl_tot / teachers)

`el_pct`: Student Techer ratio (enrl_tot / teachers)

`meal_pct`: Percent Qualifying for Reduced-Price Lunch 

`calw_pct`: Percent Qualifying for Calworks

`avginc`: District Average Income (in $1000's)

## Example


```r
library(emetricsrsw)
library(mosaic)
#> Warning: package 'mosaic' was built under R version 3.4.4
#> Loading required package: dplyr
#> Warning: package 'dplyr' was built under R version 3.4.4
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
#> Loading required package: lattice
#> Warning: package 'lattice' was built under R version 3.4.4
#> Loading required package: ggformula
#> Warning: package 'ggformula' was built under R version 3.4.4
#> Loading required package: ggplot2
#> Warning: package 'ggplot2' was built under R version 3.4.4
#> Loading required package: ggstance
#> Warning: package 'ggstance' was built under R version 3.4.4
#> 
#> Attaching package: 'ggstance'
#> The following objects are masked from 'package:ggplot2':
#> 
#>     geom_errorbarh, GeomErrorbarh
#> 
#> New to ggformula?  Try the tutorials: 
#> 	learnr::run_tutorial("introduction", package = "ggformula")
#> 	learnr::run_tutorial("refining", package = "ggformula")
#> Loading required package: mosaicData
#> Warning: package 'mosaicData' was built under R version 3.4.4
#> Loading required package: Matrix
#> 
#> The 'mosaic' package masks several functions from core packages in order to add 
#> additional features.  The original behavior of these functions should not be affected by this.
#> 
#> Note: If you use the Matrix package, be sure to load it BEFORE loading mosaic.
#> 
#> Attaching package: 'mosaic'
#> The following object is masked _by_ '.GlobalEnv':
#> 
#>     sum
#> The following object is masked from 'package:Matrix':
#> 
#>     mean
#> The following object is masked from 'package:ggplot2':
#> 
#>     stat
#> The following objects are masked from 'package:dplyr':
#> 
#>     count, do, tally
#> The following objects are masked from 'package:stats':
#> 
#>     binom.test, cor, cor.test, cov, fivenum, IQR, median, prop.test, quantile, sd,
#>     t.test, var
#> The following objects are masked from 'package:base':
#> 
#>     max, mean, min, prod, range, sample, sum

#using command to get list of summary statistics for a variable based on user input, also known as 'sum' in STATA
sum(mtcars)
<<<<<<< HEAD
#>       mpg             cyl             disp             hp             drat      
#>  Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0   Min.   :2.760  
#>  1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5   1st Qu.:3.080  
#>  Median :19.20   Median :6.000   Median :196.3   Median :123.0   Median :3.695  
#>  Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7   Mean   :3.597  
#>  3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0   3rd Qu.:3.920  
#>  Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0   Max.   :4.930  
#>        wt             qsec             vs               am              gear      
#>  Min.   :1.513   Min.   :14.50   Min.   :0.0000   Min.   :0.0000   Min.   :3.000  
#>  1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000   1st Qu.:0.0000   1st Qu.:3.000  
#>  Median :3.325   Median :17.71   Median :0.0000   Median :0.0000   Median :4.000  
#>  Mean   :3.217   Mean   :17.85   Mean   :0.4375   Mean   :0.4062   Mean   :3.688  
#>  3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000   3rd Qu.:1.0000   3rd Qu.:4.000  
#>  Max.   :5.424   Max.   :22.90   Max.   :1.0000   Max.   :1.0000   Max.   :5.000  
#>       carb      
#>  Min.   :1.000  
#>  1st Qu.:2.000  
#>  Median :2.000  
#>  Mean   :2.812  
#>  3rd Qu.:4.000  
#>  Max.   :8.000

sum_var(mtcars$mpg, mtcars)
#>   min     Q1 median   Q3  max     mean       sd  n missing
#>  10.4 15.425   19.2 22.8 33.9 20.09062 6.026948 32       0
=======
#> [1] 13942.2

#sum_var(mtcars$mpg)
>>>>>>> d55eb0c7247119e72ef0761712db977a1d4bdd27
```


