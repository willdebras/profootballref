#' Fantasy function
#'
#' This function scrapes the pro-football-reference website for the year you specify
#' @param year Simply specify the year to retrieve that year of stats in tabular format.
#' @keywords cats
#' @export
#' @importFrom html_table rvest
#' @importFrom read_html xml2
#' @examples
#' fantasy_2017 <- gen_tables(2017)


gen_tables <- function(year) {

  url1 <- "https://www.pro-football-reference.com/years/"

  url2 <- "/fantasy.htm"

  url <- paste(url1, year, url2, sep = "")

  url_p <- read_html(url)
  table_year <- html_table(url_p, header = TRUE, fill = TRUE)


  data <- table_year[[1]] #%>%

  #add data manip steps here

  return(data)
}

