#### Example: Pedigree analyses for self-polinated species.

Here we illustrate the use of the function ```getASelfing``` in the computation of the A matrix from an example pedigree which contains information on number of selfing cycles (```nCycles```), and illustrate the differences in the A matrix with and without taking selfing into account. 

### Section A: Creation of example ```data.frame``` pedigrees with and without selfing cycles

Here is an example pedigree similar to the one used previously ( see Example 1 ) with an additional column called ```nCycles```. 

Note that the pedigree must be complete and sorted ( see Example 1 )before using it with the functions in Section B.

| Subject  |      Sire     |  Dam | nCycles |
|----------:|-------------:|------:|-------:|
| 1	| NA| 	NA | 0|
| 2	| NA| 	NA | 0|
| 3	| NA| 	NA | 0|
| 4	| NA| 	NA | 0|
| 5	| NA| 	NA | 0|
| 6	| 1| 2 | 0|
| 7	| 3	| 2 | 0|
| 8	| 5	| NA | 5|
| 9	| 6| 	7 | 0|
| 10	| 4| 7 | 0|
| 11	| 8	| NA | 0|
| 12	| 1	| 9 | 0|
| 13	| 10| 9 | 3|
| 14	| 8| 13 | 0|

```R
pedCycles <-data.frame(sire=as.character(c(NA,NA,NA,NA,NA,1,3,5,6,4,8,1,10,8)),
                      dam= as.character(c(NA,NA,NA,NA,NA,2,2,NA,7,7,NA,9,9,13)),
                      label=as.character(1:14),nCycles=c(0,0,0,0,0,0,0,5,0,0,0,0,3,0))
```
And an example pedigree identical to the one used in Example 1.

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

```R
pedNoCycles <-data.frame(sire=as.character(c(NA,NA,NA,NA,NA,1,3,5,6,4,8,1,10,8)),
                      dam= as.character(c(NA,NA,NA,NA,NA,2,2,NA,7,7,NA,9,9,13)),
                      label=as.character(1:14))
```
### Section B: A Matrix using 

```R

library(pedigreeR)

pedigree_info=system.file("data/sample_pedigree_selfing.csv",package="pedigreeR")

pedigree_data=read.csv(file=pedigree_info,header=TRUE)


nCycles=substr(pedigree_data$Generation,start=2,stop=2)
nCycles=as.integer(nCycles)
ID=pedigree_data$id
Par1=pedigree_data$Par1
Par2=pedigree_data$Par2

A=getASelfing(ID=ID,Par1=Par1,Par2=Par2,nCycles=nCycles,nCyclesDefault=6)


```

[Home](https://github.com/Rpedigree/pedigreeR)
 

 
