#9-6. Restaurant / Ice Cream Stand
class Restaurant:
    """"Creates a description in a restaurant"""
    
    def __init__(self, name, cuisine):
        """intialize name and cuisine attributes."""
        self.name = name
        self.cuisine = cuisine
        self.number_served = 0
        
    def describe_restaurant(self):
        """Describe the restaurant."""
        print(f"{self.name} is the name of the restaurant.")
        print(f"the restaurant is {self.cuisine}.")
    
    def open_restaurant(self): 
        """Indicates the restaurant is open"""
        print(f"the {self.name} is open.")
        
    def set_number_served(self, number_served):
        """set the number of customers that have been served."""
        print(f"the number of customers served is {number_served}")
    
    def increment_number_served(self, increment):
        """increment the number of ustomers who've been served in a day."""
        print(f"{increment} customers were served in a day.")
        

#9-6 Ice Creame Stand: 
class IceCreamStand(Restaurant):
    """stores a list of ice cream flavors"""
    def __init__(self, name, cuisine='ice_cream'):
        super().__init__(name, cuisine)
        self.flavors = ['vanilla' ,'chocolate', 'green tea', 'lemon']
    
    def display_flavors(self): 
        """shows the list of flavors"""
        for flavor in self.flavors: 
            print(f"{flavor}\n")
        


new_restaurant = Restaurant('SushiCo', 'japanese')

print(f"{new_restaurant.name}")
print(f"{new_restaurant.cuisine}")

new_restaurant.describe_restaurant()
new_restaurant.open_restaurant()

print("\n")
new_stand = IceCreamStand('figo')
new_stand.display_flavors()


