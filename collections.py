#list
size=int(input())
list=[]
for i in range(1,size+1):
    ele=int(input())
    list.append(ele)
print(list)


#tuple

s=(2,(12,23,4),1,2)
print(s[1][1])

#dictionary
a={"a":1,"b":2}
print(a.keys())
#sets
b={1,2,3,4,3}
print(b)




#linkedlist



class Node:
   def __init__(self, data):
      self.data = data
      self.next = None
class linkedlist:
    def __init__(self):
        self.head=None
if __name__=='__main__':
    llist=linkedlist()
    llist.head=Node(1)
    second=Node(2)
    third=Node(3)
    llist.head.next=second;
    second.next=third
