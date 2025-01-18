prompt = "enter your age: "
print('enter "100" to stop')


while True: 
    age = input(prompt)
    age = int(age)
        
    if 3 > age: 
        print("your ticket is free.")
        
    elif 3 <= age <= 12: 
        print("your ticket is $10.")
        
    elif 12 < age <= 99: 
        print("your ticket is $15.") 
        
    elif age == 100: 
        break
    
    
    
    
           