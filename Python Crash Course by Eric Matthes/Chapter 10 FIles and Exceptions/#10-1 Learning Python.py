#10-1. Learning Python 
file_name = 'learning_python.txt' 

with open(file_name, 'w') as file_object: 
    file_object.write("I learned to code with different data structs and types and for loops and if statements in python") 
 
with open(file_name) as file_object:   
    lines = file_object.read()

print(lines)

with open(file_name) as file_object:   
    for line in file_object: 
        print(f"{line}")
        
with open(file_name) as file_object:   
    lines = file_object.readlines()

for line in lines:
    print(line.replace('python', 'C'))
        
# ^^^ 10-2 Learning C, replace python in the txt with C.



