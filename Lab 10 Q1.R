Name=c("Sam","Kane","Jane","Anne","Sammie")
Age=c(23,21,24,25,20)
Gender=c("Male","Male","Female","Female","Female")
Marks=c(78,58,30,85,90)
df=data.frame(Name,Age,Gender,Marks)
df


#a
#$ = Use to access the DataFrame
df$Name = NULL
df

#b
str(df)
df$Gender=factor(df$Gender)
str(df)

#c
mean(df$Marks)

#d
df$Marks=df$Marks+5
df
mean(df$Marks)

#e
#1 way
df$Age[3]=22
df

#2 way
df[2,1]=22
df

#f
df$Results = ifelse(df$Marks>=50,"Pass","Fail")
df

#g
summary(df)


#h
df_Male=df[df$Gender=='Male',]
df_Male

df_Female=df[df$Gender=='Female',]
df_Female


#i
summary(df_Male)
summary(df_Female)


