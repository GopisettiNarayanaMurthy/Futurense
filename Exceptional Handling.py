
def func(transport,amount):
   try:

      if transport=='road' and amount>3000:
        raise ValueError
   except ValueError:
      print("out of budget")
   else:
      print("no problem")
   finally:
     print("bye")
func('road',4000)