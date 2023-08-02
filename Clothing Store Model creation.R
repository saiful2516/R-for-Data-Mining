

#getwd()
#dim(clothing)
#View(clothing)


clothing = read.csv(file = "F:/HIS/Data Mining/DM Code/clothing_store.txt")

names(clothing)
dim(clothing)

set.seed(42)
clothing_nobs =nrow(clothing)


#To get the row numbers of the sampled training data
Clothing_train_no = sample(nrow(clothing), .7*clothing_nobs)


#To get the row numbers of the sampled validation data:
clothing_validate_no = sample(setdiff(seq_len(nrow(clothing)), Clothing_train_no), .30* clothing_nobs)


#get the length of the training an validation data:
length(Clothing_train_no)


length(clothing_validate_no)

#Now, create the training and validation data sets from the total data
#set, using the randomly selected row numbers above#


training_data = clothing[Clothing_train_no,]
validation_data = clothing[clothing_validate_no,]

#How many observations are there in the training data set? How many
#observations are there in the validation data set?

dim(training_data)
dim(validation_data)
#Unique Levels finding for different numbers

attach(training_data)
length(unique(HHKEY))
length(unique(RESP))


length(unique(MON))
length(unique(STYLES))


#Histogram for RESP target variable

hist(RESP)
hist(HHKEY)
hist(SMONSPEND)

unique(RESP)

data_one = training_data[RESP == 1,]
data_zero = training_data[RESP == 0, ]

dim(data_zero)

dim(data_one)

#Variables to Reject HHKEY, Zip_code

tr = training_data[,-1]
tr1 = tr[,-1]

#Reject validation Data _1 actually rejecting the first position of the variables.
names(validation_data)
val = validation_data[,-1]
val = val[,-1]
names(val)


#Skewness of right and left


attach(tr1)
names(tr1)

hi_trans = log(HI)
tr=tr1[,-45]
tr=data.frame(tr, hi_trans)
names(tr)

#for validation data
attach(val)
hi_trans = log(HI)
val = val[, -45]
val = data.frame(val, hi_trans)


names(val)

hist(hi_trans)

attach(tr)
amount23 = TMONSPEND - OMONSPEND
amount456 = SMONSPEND - TMONSPEND
names(tr)

tr = tr[, -26]
names(tr)
tr = tr[, -27]
names(tr)

tr = data.frame(tr, amount23, amount456)
names(tr)

attach(val)
amount23 = TMONSPEND - OMONSPEND
amount456 = SMONSPEND - TMONSPEND
val=val[,-26]
val = val[,-27]
val= data.frame(val, amount23, amount456)
names(val)


#write Table

write.table(tr, "tr_clothing_prepared.txt", row.names = FALSE)
write.table(val, "val_clothing_prepared.txt", row.names = FALSE)

