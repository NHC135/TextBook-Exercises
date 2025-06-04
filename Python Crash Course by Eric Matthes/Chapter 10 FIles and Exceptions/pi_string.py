filename = 'pi_million_digits.txt' 
with open(filename) as file_object: 
    lines = file_object.readlines() 

pi_string = ' ' 
for line in lines: 
    pi_string += line.strip() 
    print(f"{pi_string[:52]}...") #print 50 first decimal places
    print(len(pi_string)) #shows string contains 1_000_000 dec. places
    
#does your birthday appear in pi? 
birthday = input("Enter your DOB mmddyy: ")
if birthday in pi_string: 
    print("Your birthday is in the first million digits of pi!")
else: 
    print("your birthday is not in first million digits in pi.")