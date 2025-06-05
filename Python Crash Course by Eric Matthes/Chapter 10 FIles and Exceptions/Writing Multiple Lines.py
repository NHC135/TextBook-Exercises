#Writing to a Empty file
#Writing multiple lines

filename = 'programming.txt' 

with open(filename, 'w') as file_object: 
    file_object.write("I love PROGRAMMING!")
    file_object.write("\n I love creating new games.")
    

