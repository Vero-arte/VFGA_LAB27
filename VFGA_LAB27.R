#
#Hecho con gusto por Veronica F. Garcia Arteaga
#
library(data.table)

choose.files()

green.products <- read.csv("C:\\Users\\Dell\\Downloads\\green products.csv")
all.products <- read.csv("C:\\Users\\Dell\\Downloads\\COMPLETE_YEARS_PRODUCTS.csv")

#leer elemento como tabla
green.products <- as.data.table(green.products)

all.products <- as.data.table(all.products)

#Merge

merge.allproducts = merge(all.products, green.products, by= "product_code")

merge.full = merge(all.products, green.products, by= "product_code", all.x = T)

write.csv(merge.full, file = "merge.full.csv")
