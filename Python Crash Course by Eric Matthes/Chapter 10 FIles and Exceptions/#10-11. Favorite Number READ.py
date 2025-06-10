#10-11. Favorite Number READ
import json

filename = 'favorite_number.json' 

with open(filename, 'r') as f: 
    fav_numb = json.load(f)
    print(f"I know your favorite number it's {fav_numb}")