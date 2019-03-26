
<!-- README.md is generated from README.Rmd. Please edit that file -->
profootballref
==============

The purpose of profootballref is to provide historical data for fantasy football. The package doesn't house data, but instead allows you to scrape data from pro-football-reference.com. It can scrape any data from 1970 to 2018.

Installation
------------

You can install the released version of profootballref from [Github](https://github.com/willdebras/profootballref) with:

``` r
library(devtools)
install_github("willdebras/profootballref")
```

Example
-------

This is a basic example of how to use the function:

``` r

stats2014 <- profootballref::gen_tables(year = 2014)

library(knitr)
kable(head(stats2014))
```

|     | RK  | Player            | Team | FantPos | Age | Games\_G | Games\_GS | Passing\_Cmp | Passing\_Att | Passing\_Yds | Passing\_TD | Passing\_Int | Rushing\_Att | Rushing\_Yds | Rushing\_Y/A | Rushing\_TD | Receiving\_Tgt | Receiving\_Rec | Receiving\_Yds | Receiving\_Y/R | Receiving\_TD | Fumbles\_Fmb | Fumbles\_FL | Scoring\_TD | Scoring\_2PM | Scoring\_2PP | Fantasy\_FantPt | Fantasy\_PPR | Fantasy\_DKPt | Fantasy\_FDPt | Fantasy\_VBD | Fantasy\_PosRank | Fantasy\_OvRank |
|-----|:----|:------------------|:-----|:--------|:----|:---------|:----------|:-------------|:-------------|:-------------|:------------|:-------------|:-------------|:-------------|:-------------|:------------|:---------------|:---------------|:---------------|:---------------|:--------------|:-------------|:------------|:------------|:-------------|:-------------|:----------------|:-------------|:--------------|:--------------|:-------------|:-----------------|:----------------|
| 2   | 1   | DeMarco Murray\*+ | DAL  | RB      | 26  | 16       | 16        | 0            | 0            | 0            | 0           | 0            | 392          | 1845         | 4.71         | 13          | 64             | 57             | 416            | 7.30           | 0             | 6            | 5           | 13          |              |              | 294             | 351.1        | 362.1         | 322.6         | 175          | 1                | 1               |
| 3   | 2   | Le'Veon Bell\*+   | PIT  | RB      | 22  | 16       | 16        | 0            | 0            | 0            | 0           | 0            | 290          | 1361         | 4.69         | 8           | 105            | 83             | 854            | 10.29          | 3             | 0            | 0           | 11          |              |              | 288             | 370.5        | 376.5         | 329.0         | 168          | 2                | 2               |
| 4   | 3   | Marshawn Lynch\*  | SEA  | RB      | 28  | 16       | 14        | 0            | 0            | 0            | 0           | 0            | 280          | 1306         | 4.66         | 13          | 48             | 37             | 367            | 9.92           | 4             | 4            | 2           | 17          |              |              | 265             | 302.3        | 310.3         | 283.8         | 146          | 3                | 3               |
| 5   | 4   | Antonio Brown\*+  | PIT  | WR      | 26  | 16       | 16        | 2            | 2            | 20           | 1           | 0            | 4            | 13           | 3.25         | 0           | 181            | 129            | 1698           | 13.16          | 13            | 2            | 2           | 14          | 1            |              | 252             | 386.9        | 391.9         | 322.4         | 129          | 1                | 4               |
| 6   | 5   | Matt Forte        | CHI  | RB      | 29  | 16       | 16        | 0            | 0            | 0            | 0           | 0            | 266          | 1038         | 3.90         | 6           | 130            | 102            | 808            | 7.92           | 4             | 2            | 2           | 10          | 2            |              | 245             | 346.6        | 354.6         | 295.6         | 125          | 4                | 5               |
| 7   | 6   | Arian Foster\*    | HOU  | RB      | 28  | 13       | 13        | 1            | 1            | 5            | 1           | 0            | 260          | 1246         | 4.79         | 8           | 59             | 38             | 327            | 8.61           | 5             | 2            | 2           | 13          |              |              | 236             | 273.5        | 281.5         | 254.5         | 116          | 5                | 6               |

Specify any year between 1970 and 2018 in the function. The function's parameters can be found with the command `?gen_tables`.

Future plans
------------

The plan for this R package is not to replace the ffanalytics package, which does a great job of providing yearly stats, allowing one to simulate drafts, and giving users the functionality to make draft projections. This instead is useful for acquiring past data. The plan is to allow more functionality to acquire certain ranges of data over years for the purpose of helping people make models and projections based on historical data.
