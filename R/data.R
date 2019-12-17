#' Birthweight Smoking Data Set 
#' 
#' The datafile Birthweight_Smoking is from the 1989 linked National Natality-Mortality Detail
#' files, which contains a census of infant births and deaths.
#' 
#' These data were provided by Porfessor Douglas Almond, Kenneth Chay, and David Lee and area 
#' subset of the data used in their paper “The Costs of Low Birth Weight,” Quarterly Journal of
#' Economics, August 2005, 120(3): 1031-1083.
#' 
#' @docType data
#' @format The file contains 3,000 observations on the variables described below: 
#' \describe{
#'   \item{birthweight}{birth weight of infant (in grams)}
#'   \item{smoker}{indicator equal to one if the mother smoked during pregnancy and zero, otherwise}
#'   \item{age}{age of Mother}
#'   \item{educ}{years of educational attainment by Mother (more than 16 years coded as 17)}
#'   \item{unmarried}{indicator = 1 if mother is unmarried}
#'   \item{alcohol}{indicator = 1 if mother drank alcohol during pregnancy}
#'   \item{drinks}{number of drinks per week}
#'   \item{tripre1}{indicator = 1 if 1st prenatal care visit in 1st trimester}
#'   \item{tripre2}{indicator = 1 if 1st prenatal care visit in 2nd trimester}
#'   \item{tripre3}{indicator = 1 if 1st prenatal care visit in 3rd trimester}
#'   \item{tripre0}{indicator = 1 if no prenatal visits}
#'   \item{nprevisit}{total number of prenatal visits}
#'   } 
#' @source Stock and Watson's Introduction to Econometrics, 3rd Edition. See \url{https://wps.pearsoned.com/wps/media/objects/11422/11696965/data3eu/Birthweight_Smoking_Description.pdf}
#' 
"birthweight_smoking"

#' California Test Score Data Set 
#' 
#' The California Standardized Testing and Reporting (STAR) dataset contains data on test performance, 
#' school characteristics and student demographic backgrounds. The data used here are from all 420 K-6 
#' and K-8 districts in California with data available for 1998 and 1999. 
#' 
#' @docType data
#' @format The file contains 3,000 observations on the variables described below: 
#' \describe{
#'   \item{dist_code}{district code}
#'   \item{read_scr}{average reading test score}
#'   \item{math_scr}{average math test score}
#'   \item{county}{county}
#'   \item{district}{district}
#'   \item{gr_span}{grade span of district}
#'   \item{enrl_tot}{total enrollment}
#'   \item{teachers}{number of teachers}
#'   \item{computer}{number of computers}
#'   \item{testscr}{average test score, (read_scr + math_scr)/2}
#'   \item{comp_stu}{computers per student, (computer / enrl_tot)}
#'   \item{expn_stu}{expentitures per student ($)}
#'   \item{str}{student teacher ratio (enrl_tot / teachers)}
#'   \item{el_pct}{percent of english learners}
#'   \item{meal_pct}{percent qualifying for reduced-price lunch}
#'   \item{calw_pct}{percent qualifying for calworks}
#'   \item{avginc}{district average income (in $1000's)}
#'  } 
#' @source Stock and Watson's Introduction to Econometrics, 3rd Edition. See \url{https://wps.pearsoned.com/aw_stock_ie_3/178/45691/11696965.cw/index.html}
#' 
#' "caschool"


