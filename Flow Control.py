d={"GNM":60,"SRI":80,"ABC":123,"SRK":20}
l=[]
k=[]
for i in d.values():
    l.append(i)
print(l)

for i in l:
    if i<=50:
        print("10 percent of bonus")
    elif i<=100:
        print("20 percent of bonus")
    elif i<=130:
        print("30 percent of bonus")



