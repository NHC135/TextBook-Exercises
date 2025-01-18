#7-10. Dream Vacation: 

dream_vacation = {}

polling_active = True

while polling_active: 
    name = input('what is your name? ')
    prompt = input("if you could visit one place in the world where would you go? ")
    
    dream_vacation[name] = prompt
    
    repeat = input("would like to let another person respond? (y/n)")
    if repeat == 'n':
        polling_active = False

print("poll results: -----")

for name, location in dream_vacation.items(): 
    print(f"{name}, likes {location}")
