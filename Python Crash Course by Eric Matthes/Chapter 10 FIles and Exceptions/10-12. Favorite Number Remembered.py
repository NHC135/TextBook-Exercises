import json

filename = 'favorite_number.json'

try: 
    with open(filename) as f: 
        favorite_number = json.load(f)
         
except FileNotFoundError: 
    with open(filename, 'w') as f: 
        favorite_number = input("What is your favorite number? ")
        json.dump(favorite_number, f)

else: 
    with open(filename,'r') as f:
        favorite_number = json.load(f)
        print(f'your favorite_number is {favorite_number}')