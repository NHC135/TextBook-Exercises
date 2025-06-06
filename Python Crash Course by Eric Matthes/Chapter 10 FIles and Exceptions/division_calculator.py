#Handling exceptions

    
print("Give me two numebrs, and I'll divide them.")
print("Enter 'q' to quit.")

while True: 
    first_number = int(input("First number: "))
    if first_number == 'q': 
        break
    second_number = int(input("Second number: "))
    if second_number == 'q':
        break
    try: 
        answer = first_number / second_number
    except ZeroDivisionError: 
        print("you can't divide by zero!")
    else:
        print(answer)