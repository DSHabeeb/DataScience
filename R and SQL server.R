
install.packages("RODBC")
library("RODBC")
detach("package:RODBC")

conn <- odbcDriverConnect('driver={SQL Server};
                            server=FS-ABDULHAAQAB1\\ALJUFDEV;
                            database=AdventureWorks2014;
                            trusted_connection=true')

#121317 rows
qty<-sqlQuery(conn,"select ProductID, OrderQty, UnitPriceDiscount, UnitPrice, 
              SpecialOfferID from [Sales].[SalesOrderDetail] ")
qty<-filter(qty, qty$ProductID<800)

ggplot(qty, aes(x=qty$UnitPrice, y=qty$OrderQty)) + geom_point()



li










data <- sqlQuery(conn, "SELECT * FROM Production.TransactionHistoryArchive;")
price<-sqlQuery(conn,"select ListPrice from [Production].[ProductListPriceHistory]")

qplot(qty$UnitPrice, data=qty, geom = "histogram")
qplot(qty$UnitPrice, qty$OrderQty,  data=qty)
qplot(qty$UnitPrice, qty$OrderQty, data=qty, color=qty$ProductID)
qplot(qty$UnitPrice, qty$OrderQty, data=qty, color=qty$ProductID, binwidth=2000)
qplot(qty$UnitPrice, qty$OrderQty, data=qty, geom = "line")
qplot(qty$UnitPrice, qty$OrderQty, data=qty, facets =.~SpecialOfferID,geom = "line", binwidth=1000)
qplot(qty$UnitPrice, qty$OrderQty, data=qty, facets =.~SpecialOfferID,geom = "line", binwidth=1000)

p900<-qty$ProductID >= 900
p901<-qty[p900,]

plot(p901$UnitPrice, p901$OrderQty)
hist(p901$UnitPrice, breaks=50)
hist(p901$OrderQty, breaks=50)
hist(p901$OrderQty, breaks=20)


qty5<-qty$OrderQty<=5

qty5<-qty[qty5,]

plot(qty5$UnitPrice, qty5$OrderQty)


order10<-qty$OrderQty>=10
order10<-qty[order10,]

plot(order10$ProductID, order10$OrderQty)

qplot(as.integer(price$ListPrice), binwidth=20)

order1<-(qty$OrderQty<=10) & (qty$OrderQty>=5 )
order1<-qty[order1,]

order1
plot(order1$ProductID, order1$OrderQty)

#single step - using subset
order15<-subset(qty, qty$OrderQty<=15 & qty$OrderQty>=10)
plot(order15$ProductID, order15$OrderQty, xlab="Product Number", ylab="Order Quantity")

par(col="blue", lty=2, pch=3)
par(col.main="red")