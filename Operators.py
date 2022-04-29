#operators using kwargs

def operations(firstnumber,secondnumber,**thirdnumber):
    keys=thirdnumber.keys()
    if "operation" in keys:


#addition
      if thirdnumber["operation"]=="addition":
         return firstnumber+secondnumber
#substraction
      if thirdnumber["operation"]=="substraction":
          return firstnumber-secondnumber
#multiplication
      if thirdnumber["operation"]=="multiplication":
          return firstnumber*secondnumber
#divison
      if thirdnumber["operation"]=="divison":
          return secondnumber/firstnumber

#relational
      if thirdnumber["operation"]=="greaterthan":
          return secondnumber>firstnumber
      if thirdnumber["operation"]=="lessthan":
          return secondnumber<firstnumber
      if thirdnumber["operation"]=="equal to":
          return secondnumber==firstnumber
      if thirdnumber["operation"]=="not equal":
          return secondnumber!=firstnumber
#boolean
      if thirdnumber["operation"]=="and":
          return secondnumber and firstnumber
      if thirdnumber["operation"]=="or":
          return secondnumber or firstnumber
      if thirdnumber["operation"]=="not":
          return secondnumber and not firstnumber
print(operations(2,6,operation="not"))