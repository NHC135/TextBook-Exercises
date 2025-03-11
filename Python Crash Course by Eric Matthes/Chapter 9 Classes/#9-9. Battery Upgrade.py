class Car: 

    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year
        self.odometer_reading = 0
        
    def get_descriptive_name(self): 
        """Return a neatly formatted descriptive name."""
        long_name = f"{self.year} {self.make} {self.model}."
        return long_name.title()
    
    def read_odometer(self): 
        """Print a statement showing the car's milage."""
        print(f"this car has {self.odometer_reading} miles.")
        
    def update_odometer(self, mileage):
        """Set the odometer reading to the reading given value."""
        if mileage >= self. odometer_reading: 
            self.odometer_reading = mileage
        else: 
            print("your can't roll back an odometer.")
    
    def increment_odometer(self,miles): 
        """Add the given amount to the odometer reading"""            
        self.odometer_reading += miles
    
class Battery:
    """a simple attempt to model a battery for an electric car."""
    
    def __init__(self, battery_size=40):
        """Initialize the battery's attributes."""
        self.battery_size = battery_size
    
    def get_range(self):
        """Print a statement about the range this battery provides."""
        if self.battery_size == 40:
            range = 150
        elif self.battery_size == 65:
            range = 225

        print(f"This car can go about {range} miles on a full charge.")
        
    def describe_battery(self):
        """Print a statement describing the battery size."""
        print(f"this car has a {self.battery_size} -kwh battery.")
        
    def upgrade_battery(self): 
        """check the battery size and set the capacity to 65 if it isn't"""
        if self.battery_size < 65: 
            self.battery_size = 65
            
        
class ElectricCar(Car): 
    """Represent aspects of  car, specific to electric vehicles."""
    
    def __init__(self, make, model, year):
        """Initialize attributes of the parent class."""
        super().__init__(make,model,year)
        self.battery = Battery()


electric_car_1 = ElectricCar('nissan', 'leaf', '2004')
electric_car_1.battery.get_range()
electric_car_1.battery.upgrade_battery()
electric_car_1.battery.get_range()

