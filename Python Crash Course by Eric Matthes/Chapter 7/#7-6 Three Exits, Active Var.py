prompt = 'enter your age: '

active = True
while active: 
    age = int(input(prompt))
    
    if 3 > age: 
        print("your ticket is free.")
        active = False
    elif 3 <= age <= 12: 
        print("your ticket is $10.")
        active = False
    elif age > 12: 
        print("your ticket is $15.") 
        active = False
    
    