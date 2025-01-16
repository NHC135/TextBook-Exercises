#7-5. Movie Tickets

ticket_prices = ['free', 10, 15] 

prompt = "Enter your age: "
print("Enter a zero when you are finished.")

while True:
    age = input(prompt)
    age = int(age)
    
    if 0 < age < 3: 
        print(f"the ticket is {ticket_prices[-3]}.")
        continue
    elif 3 <= age <= 12: 
        print(f'the ticket is {ticket_prices[-2]}.')
        continue
    elif age > 12: 
        print(f"the ticket is {ticket_prices[-1]}.")
        continue
    elif age == 0: 
        break

    
    