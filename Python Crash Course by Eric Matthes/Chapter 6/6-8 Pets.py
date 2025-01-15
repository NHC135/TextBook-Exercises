#pets 6-8. 

pet_0 = {'name': 'rofus', 'pet' : 'dog', 'owner' : 'david'} 

pet_1 = {'name': 'rufus','pet' : 'snake', 'owner' : 'sarah'}

pet_2 = {'name': 'rover','pet' : 'cat', 'owner' : 'phil'} 

pet_3 = {'name': 'rugby','pet' : 'hamster', 'owner' : 'jess'}

pets = [pet_0, pet_1, pet_2, pet_3]

for animal in pets: 
    animal_info = f'pet: {animal['pet']}' + f'\nowner: {animal['owner']}'
    
    print(f'this is {animal['name']}.')
    print(f'{animal_info}\n')