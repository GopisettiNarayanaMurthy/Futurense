#using dictionaries
'''import pandas as pd
df=pd.DataFrame(
    {
        "Name":["srikanth",
                "babu mohan",
                "harinadh"],

        "age":[22,21,23],
        "phone_no":[123444,2334455555,1234532134]



    }

)'''
#using list
import pandas as pd
Data=[['GNM',12,123],['sri',13,132]]
df=pd.DataFrame(
    Data,columns = ['Name','age','phone_no']
)
print(df)

'''print(df['age'].max())
print(df.describe())
print(df.shape)
print(df.iloc[2])
print(df[['Name','age']].loc[df['Name']=='srikanth'])'''


'''print(df.where(df>7))'''