from datetime import datetime,date
expire_date=date(year=2019,month=3,day=12)
l=[]
k=[]
first_product=date(year=2022,month=4,day=24)

l.append(first_product-expire_date)
second_product=date(year=2018,month=2,day=25)
l.append(second_product-expire_date)
third_product=date(year=2019,month=4,day=25)
l.append(third_product-expire_date)
forth_product=date(year=2021,month=12,day=25)
l.append(forth_product-expire_date)
print(l)
'''for i in l:
    j=i-expire_date
    k.append(j)

print(k)
if k.days>=100:
    print("20% discount")
if k.days>=1000:
    print("50% discount")

difference=second_date_of_joining-first_date_of_joining
print(difference)'''
'''from datetime import date
e = date(2022,5,31)
t = date(2022,4,21)
print(e-t)'''

