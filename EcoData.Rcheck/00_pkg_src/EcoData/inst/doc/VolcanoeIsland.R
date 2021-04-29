## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## -----------------------------------------------------------------------------
library(EcoData)
data = volcanoisland

## ---- fig.height=7, fig.width = 14--------------------------------------------
par(mfrow = c(1,2))
contour(x = 1:ncol(volcano), y = 1:nrow(volcano), t(volcano), asp = 1)
points(data$x, data$y, cex = data$wind)
persp(volcano)

## ---- echo = F, fig.align = "center", fig.width = 10, fig.height = 10, cache = F----

with(data, {

plot(year, altitude, cex = beetles/5, pch =2, main = "Beetle counts across altitudinal gradient, triangle is proportional to counts")
#lines(plot, altitude * 1000)
#points(unique(plot), unique(altitude * 1000) , pch = 3)
#text(unique(plot), unique(altitude * 1000) - 50, unique(plot), cex = 0.7 )
})




## ---- eval = F, echo=F--------------------------------------------------------
#  library(DHARMa)
#  library(effects)
#  library(glmmTMB)
#  
#  fit <- lm(log(windObs) ~ sAltitude, data = data )
#  summary(fit)
#  plot(allEffects(fit, partial.residuals = T))
#  
#  
#  fit <- glm(ducksObs ~ earth, data = data, family = binomial )
#  summary(fit)
#  plot(allEffects(fit, partial.residuals = T))
#  
#  fit <- glmmTMB(beetles ~ sAltitude + I(sAltitude^2) + habitatQuality + earth + windObs + (1|year) + (1|plot) , data = data, family = poisson)
#  summary(fit)
#  
#  fit <- glmmTMB(beetles2 ~ sAltitude + I(sAltitude^2) + habitatQuality + earth + windObs + (1|year) + (1|plot) , data = data, family = poisson)
#  summary(fit)
#  
#  
#  fit <- glm(cbind(survivedOf20, 20-survivedOf20) ~ habitatQuality, data = data, family = binomial )
#  summary(fit)
#  res = simulateResiduals(fit)
#  plot(res)
#  

