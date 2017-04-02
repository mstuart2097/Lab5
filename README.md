# Proportions
Ashish Jain, Matt Stuart, Haiyang Zhang  
`r format(Sys.time(), '%B %d, %Y')`  



This R package is used to calculate the proprtions of the two numeric vectors.


```r
library("Lab5")
```

This package consists of a data set containing the raw vote totals for Donald Trump and Hillary Clinton for each of Iowa's 99 counties from 2016 elections. By using the `proportion` function in `Lab5` package we calculated the proportions of vote counts.

```r
data("Iowa")
head(Iowa)
```

```
##            Trump Clinton
## Polk       93492  119804
## Linn       48390   58935
## Scott      39149   40440
## Johnson    21044   50200
## Black Hawk 27476   32233
## Story      19458   25709
```

```r
prop<-proportion(Iowa[,1],Iowa[,2])
head(prop)
```

```
##        vector1   vector2
## [1,] 0.4383205 0.5616795
## [2,] 0.4508735 0.5491265
## [3,] 0.4918896 0.5081104
## [4,] 0.2953793 0.7046207
## [5,] 0.4601651 0.5398349
## [6,] 0.4308012 0.5691988
```
