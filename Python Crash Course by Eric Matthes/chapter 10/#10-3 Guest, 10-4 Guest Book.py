#10-3 Guest

guest_list = "guest_list.txt" 

with open(guest_list, 'a') as file_object: 
    file_object.write(input("write your name: "))
 

#10-4 Guest Book: 

print("Enter 'quit' when you're finished: ")

while True: 
    name = input("what is your name?")
    if name == 'quit':
        break
    else: 
        with open(guest_list, 'a') as file_object: 
            file_object.write(name + "\n")
        print("Hi, you've been added to the list.")
    