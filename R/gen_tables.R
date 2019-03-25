#' gen_tables function
#'
#' This function scrapes the pro-football-reference website for the year you specify
#' @param year Specify the year to retrieve that year of stats in tabular format.
#' @keywords football
#' @export
#' @importFrom  rvest html_table
#' @importFrom xml2 read_html
#' @examples
#' fantasy_2017 <- gen_tables(2017)


gen_tables <- function(year) {

  url1 <- "https://www.pro-football-reference.com/years/"

  url2 <- "/fantasy.htm"

  url <- paste(url1, year, url2, sep = "")

  url_p <- read_html(url)
  table_year <- html_table(url_p, header = TRUE, fill = TRUE)


  data <- table_year[[1]]

  names(data) <- paste(names(data), data[1, ], sep = "_")
  data <- data[-1,]
  colnames(data)[1:5] <- c("RK", "Player", "Team", "FantPos", "Age")

  data <- data[!data$RK == "Rk",]

  return(data)
}



