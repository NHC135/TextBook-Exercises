#6-7. people

person_0 = {
"first_name": "mathews", 
"last_name": "lewis", 
"age": 27, 
"city": "manhattan",
}

person_1 = {
"first_name": "sarah", 
"last_name": "koifish", 
"age": 34, 
"city": "hunter",
}

person_2 = {
"first_name": "justin", 
"last_name": "ray", 
"age": 19, 
"city": "queens",
}

people = [person_0, person_1, person_2]

for person in people:
    full_name = print(f'full name: {person['first_name'].title()} {person['last_name']}')
    user_info = print(f'\tage: {person['age']} \n\tcity: {person['city']}')




    