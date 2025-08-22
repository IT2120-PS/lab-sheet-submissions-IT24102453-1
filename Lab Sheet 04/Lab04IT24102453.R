#Lab04
#Exercise
#01
setwd("C:/Users/it24102453/Desktop/IT24102453/Lab04")

branch_data<-read.table("Exercise.txt",header=TRUE,sep=",")
fix(branch_data)
attach(branch_data)

#02
#Branch    - catagorical(nominal)
#sales_x1  - Numeric(Ratio)
#Advertising_X2 - Numeric(Ratio)
#Years_X3  - Numeric(Ratio)

#03
boxplot(branch_data$Sales_X1,main="Boxplot for sales",outline=TRUE,outpch=8,horizontal=TRUE)

#04
summary(branch_data$Advertising_X2)
fivenum(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

#05
find_outliers<-function(x){
  Q1<-quantile(x,0.25)
  Q3<-quantile(x,0.75)
  IQR_val<-Q3-Q1
  lower <- Q1-1.5*IQR_val
  upper <- Q3+1.5*IQR_val
  
  outliers<-x[x<lower|x>upper]
  return(outliers)
}
find_outliers(branch_data$Years_X3)




