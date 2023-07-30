attach(airquality)
#View(airquality)


library(DataExplorer)
plot_missing(airquality)
library(mlr)

#imputetion Histogram showing\
imputed = impute(airquality, cols = list(Ozone = 100))
imp_Ozone = imputed$data[,1]

imputed2= impute(airquality, cols = list(Ozone = imputeMedian()))
imp_Ozone2 = imputed2$data[,1]

imputed3 = impute(airquality, cols = list(Ozone= 0))
imp_Ozone3 = imputed$data[,1]

imputed4 = impute(airquality, cols = list(Ozone= imputeNormal()))
imp_Ozone4 = imputed4$data[,1]

 imputed5 = impute(airquality, cols = list(Ozone = imputeHist()))
 imp_Ozone5 = imputed5$data[,1]
 
 
 #Histogram Showing
 
 par(mfrow=c(2,3))
 
 hist(Ozone, breaks = 25, ylim = (c(0,45)), main = "Original Data")
 hist(imp_Ozone, breaks = 25, ylim = (c(0,45)), main = "Imputation with 100")
 hist(imp_Ozone2, breaks = 25, ylim = (c(0,45)), main = "Imputation with Median")
 hist(imp_Ozone3, breaks = 25, ylim = (c(0,45)), main = "Imputation with 0")
 hist(imp_Ozone4, breaks = 25, ylim = (c(0,45)), main = "Imputation with Normal Distribution")
 hist(imp_Ozone5,breaks = 25, ylim = (c(0,44)), main = "Imputation with histogram")
 
 
 mean(imp_Ozone5)
 mean(imp_Ozone4)
 mean(imp_Ozone3)
 
 