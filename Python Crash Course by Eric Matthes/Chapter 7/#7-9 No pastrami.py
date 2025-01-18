#7-9 No pastrami

sandwich_orders = ['BLT', 'chopped cheese', 'Bacon Egg Cheese', 'turkey', 'Ham & Egg', 'pastrami' ,'pastrami', 'pastrami']
finished_sandwiches = []

print("the deli has run out of pastrami.\n")

while 'pastrami' in sandwich_orders: 
    sandwich_orders.remove('pastrami')
    
while sandwich_orders:
    current_sandwich = sandwich_orders.pop()
    
    print(f"I made {current_sandwich}")
    finished_sandwiches.append(current_sandwich)

print("\nfinished orders: ")

for sandwich in finished_sandwiches:
    print(f'\t{sandwich}')
    
    