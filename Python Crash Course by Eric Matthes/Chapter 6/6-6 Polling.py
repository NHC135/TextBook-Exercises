favorite_languages = {
    'jen': 'python', 
    'sarah': 'c', 
    'edward': 'ruby', 
    'phil': 'python',
}

Poll = ['water',
    'jackie',
    'edward', 
    'phil']

for people in Poll: 
    if people in favorite_languages:
        print(f'{people.title()}, thank you for taking the poll')
    else: 
        print(f'{people}, you should take the poll')