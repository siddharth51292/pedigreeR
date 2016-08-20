#### Example: Creating a Valid Pedigree Object 

A valid pedigree object is a pedigree that is : 
*Complete : Any individual that appears as ancestor must also appear as a row in the pedigree, and 
*Sorted :  Ancestors must preceed progeny in the pedigree. 

The functions ```editPed()``` can be used to complete and sort pedigrees. In the following example we use the small pedigree printed below to illustrate the use of the function editPed() and the creation of a pedigree object.

| Subject  |      Sire     |  Dam |
|----------:|-------------:|------:|
| 1	| NA| 	NA
| 2	| NA| 	NA
| 3	| NA| 	NA
| 4	| NA| 	NA
| 5	| NA| 	NA
| 6	| 1| 2
| 7	| 3	| 2
| 8	| 5	| NA
| 9	| 6| 	7
| 10	| 4| 7
| 11	| 8	| NA
| 12	| 1	| 9
| 13	| 10| 9
| 14	| 8| 13


#### Example: Computing inbreeding, additive relationships and functions of it.


```R
pede<-data.frame(sire=as.character(c(NA,NA,NA,NA,NA,1,3,5,6,4,8,1,10,8)),
                  dam= as.character(c(NA,NA,NA,NA,NA,2,2,NA,7,7,NA,9,9,13)),
                  label=as.character(1:14))
        #scrambled original pedigree:
        (pede<- pede[sample(replace=FALSE, 1:14),]  )
        (pede<- editPed(sire=pede$sire, dam= pede$dam, label=pede$label)) 
        ped<- with(pede, pedigree(label=label, sire=sire, dam=dam))

```
Missing labels and not sorted pedigrees
```R
      #(2) With missing labels
        pede<-data.frame(sire=as.character(c(NA,1,3,5,6,4,8,1,10,8)),
                  dam= as.character(c(NA,2,2,NA,7,7,NA,9,9,13)),
                  label=as.character(5:14))
        #scrambled original pedigree:
        (pede<- pede[sample(replace=FALSE, 1:10),]  )
        (pede<- editPed(sire=pede$sire, dam= pede$dam, label=pede$label)) 
        ped<- with(pede, pedigree(label=label, sire=sire, dam=dam))

```

 

[Home](https://github.com/Rpedigree/pedigreeR)
 
