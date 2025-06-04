#10-7 Addition Calculator

print("let's add two numbers together") 

while True: 
    try:
        first_number = int(input("Enter the first number: "))
        second_number = int(input("Enter the second number: "))
    except ValueError: 
        print("input is not a number")
    else:
        sum = first_number + second_number
    