#10-8.Cats and Dogs 

dog_file = 'dog.txt' 

cat_file = 'cat.txt' 

with open(cat_file, 'w') as cat: 
    cat_names = ['alex', 'jest', 'kilter']
    cat.write(cat_names)

with open(dog_file, 'w') as dog: 
    dog_names = ['dalex', 'djest', 'dkilter']
    dog.write(dog_names)

multiple_files = [cat_file, dog_file]

try:
    with open(multiple_files, 'r') as mult:
        contents = mult.read()
except FileNotFoundError:
    print(f"The files {multiple_files} is missing.")
else: 
    print(contents)
    
    