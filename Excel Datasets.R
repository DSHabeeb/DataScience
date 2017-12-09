#www.statmethods.net for help
#Use XL Connect package
#library("XLConnect")
marks<-loadWorkbook(file.choose(), create = T) #choose excel file only not csv
marks.data<-readWorksheet(marks,"Sheet1")

marks.data
head(marks.data)
str(marks.data)

#single step
marks<-readWorksheetFromFile(file.choose(),1)
attach(marks)
#or
marks.new<-readWorksheetFromFile(file.choose(),"Sheet1")
marks.new
English<-marks$English

Maths
#read csv files
csvmarks<-read.csv(file.choose()) #choose csv file

maths<-csvmarks$Maths>80

plot(csvmarks[maths, c("Student.Name", "Maths")])

plot(csvmarks[csvmarks$Maths<35, c("Student.Name", "Maths")])


#Read a range of cells named "TopTen"
topten
topten

marksdata<-readNamedRegionFromFile(file.choose(),"Data")
marks<-readNamedRegionFromFile(file.choose(),"Marks")
attach(marks)
marks
as.vector(marks[,])

qplot(as.vector(as.matrix(marksdata[,c("Maths", "Arabic", "English", "Science", "History","Tamil")])))
qplot(as.vector(as.matrix(marksdata[,c("Maths")])))
detach(Marks)
summary(Marks$Arabic)
Mean(Marks$Arabic)
median(Marks$Arabic)

sd(Marks$Arabic)

csvmarks
summary(Marks$Arabic)

#Sub setting from the dataset
tenrows<-csvmarks[1:10,]
tenrows

ggplot(tenrows)
hist(marks$English)

attach(Marks)
summary(English)
mean(Maths)
unique(English)

mpg

?ddply
sum(Marks[2,2:7])
qplot(Student.Name,Maths, data=marks)
qplot(displ, hwy, data=mpg, color=drv)
qplot(Maths)
qplot(Arabic)

rm(list=ls())
ls()

#plot points
qplot(Student.Name, Maths, data=marks, facets = .~marks$Tution)

qplot(Student.Name, Maths, color=Tution)

#hist
qplot( Maths, data=marks, facets = .~marks$Tution, binwidth=2)
??dataset
require(psych)
cities

