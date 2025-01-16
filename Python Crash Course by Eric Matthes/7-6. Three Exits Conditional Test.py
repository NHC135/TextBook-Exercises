#7-6 Three Exits: 
#(7-5. Movie Tickets)

#conditional while
ticket_prices = ['free', 10, 15] 

prompt = "Enter your age: "
print("Enter a zero when you are finished.")

i = 1
while i != 0:
    age = int(input(prompt))
    
    if 0 < age < 3: 
        print(f"the ticket is {ticket_prices[-3]}.")
        age = i
    elif 3 <= age <= 12: 
        print(f'the ticket is {ticket_prices[-2]}.')
        age = i
    elif age > 12: 
        print(f"the ticket is {ticket_prices[-1]}.")
        age = i
        



    
    