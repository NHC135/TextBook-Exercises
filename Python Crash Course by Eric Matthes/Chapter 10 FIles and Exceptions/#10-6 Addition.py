#10-6 Addition

print("let's add two numbers together") 

try:
    first_number = int(input("Enter the first number: "))
    second_number = int(input("Enter the second number: "))
except ValueError: 
    print("input is not a number")
else:
    sum = first_number + second_number

 