#session4_assignment_4.3

#1. States = rownames(US Arrests) 
#Get states names with 'w'. lower case
data(USArrests)
names<-row.names(USArrests)
grep("\\<w",USArrests,value = TRUE, ignore.case = FALSE)  #lower case no state names with w

#output:named character(0)



#Get states names with 'W'. upper case
data(USArrests)
head(USArrests)
names<-row.names(USArrests)
grep("\\<W",names, value = TRUE)   #uppercase , 4 states with W

# output: [1] "Washington"    "West Virginia" "Wisconsin"     "Wyoming" 


#2.Prepare a Histogram of the number of characters in each US state. 
data(USArrests)
head(USArrests)
names<-row.names(USArrests)

require(stringr)
count<-str_count(names)
hist(count)
hist(count, 
     main="Histogram for number of characters", 
     xlab="USArrests", 
     border="blue", 
     col="green",
     xlim=c(4,14),
     las=1, 
     breaks=10)
