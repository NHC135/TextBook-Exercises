#6-11. Cities

cities = {
    'Manhattan': {
        'country': 'United States', 
        'population': 3_302_547, 
        'fact' : 'very smelly',
        }, 
    
    'Austin': {
        'country': 'United States', 
        'population': 1_235_235, 
        'fact' : 'very big portions',
        },
    
    'Seattle': {
        'country': 'United States', 
        'population': 3_634_547, 
        'fact':'very rainy'},
    }

for city, name in cities.items():
    city_info = f'country: {name['country']}' +  f'\npopulation: {name['population']}' + f'\nfact: {name['fact']}'    
    print(city) 
    print(f'{city_info}\n')