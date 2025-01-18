#7-8 Deli 

sandwich_orders = ['BLT', 'chopped cheese', 'Bacon Egg Cheese', 'turkey', 'Ham & Egg']

finished_sandwiches = []

while sandwich_orders: 
    current_sandwich = sandwich_orders.pop()
    
    print(f"I made the {current_sandwich}")
    finished_sandwiches.append(current_sandwich)
    
print('all finished sandwiches:\n ')
for sandwich in finished_sandwiches:
    print(f"\t{sandwich}")