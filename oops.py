class car:#6467
    def __init__(self,name,mileage):
        self.name=name
        self.mileage=mileage

    def __init__(self, color,speed):
            self.color = color
    def description(self):

        return f"The {self.name} car gives  the mileage of {self.mileage}km/hr"
class bmw(car):
    return f"this is a discription method {self.color}"
class porsche(car):
    def porsche_desc(self):
        return "this is a discription method"
obj1=bmw("bmw_x10",20,green)
print(obj1.description())
obj2=porsche("porsche_001",15)
print(obj2.description())
print(obj2.porsche_desc())

