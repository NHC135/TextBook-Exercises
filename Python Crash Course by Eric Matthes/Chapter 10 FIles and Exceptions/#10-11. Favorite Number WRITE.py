#10-11. Favorite Number Write
import json

filename = 'favorite_number.json' 

with open(filename, 'w') as f: 
    favorite_number = input("What is your favorite number? ")
    json.dump(favorite_number, f)

