Developing Data Projects
========================================================
transition:rotate
Course Project: David Hayes
(May 2015)




Background
========================================================

This presentation was created to the support the corresponding Shiny application for the Coursera **Developing Products** Module; part of the Data Science Specialism.

The **Shiny** application  allows the selection of a woman's weight in *lbs* and returns the predicted height in *inches*. The data is based upon Average heights and weights for American women aged 30-39, and utilises the **women** data-set.

The application can be accessed via the following link:

https://davidhayes2.shinyapps.io/Project/


Application Design
========================================================

The **women** data-set has 15 observations (see next slide), each with 2 variables:
- **height** (inches)
- **weight** (lbs)

The **server.R** file contains a simple linear regression model to support the prediction of height outcome from a given weight predictor. The model is derived as follows:

```r
lm.out <- lm(height ~ weight, data=women)
```

The **ui.R** file outputs the results of the Prediction together with a plot of height against weight.



Women data-set
========================================================


```
   height weight
1      58    115
2      59    117
3      60    120
4      61    123
5      62    126
6      63    129
7      64    132
8      65    135
9      66    139
10     67    142
11     68    146
12     69    150
13     70    154
14     71    159
15     72    164
```
 
Data Plot (from women data-set)
========================================================
![plot of chunk unnamed-chunk-3](Pres1-figure/unnamed-chunk-3-1.png) 
