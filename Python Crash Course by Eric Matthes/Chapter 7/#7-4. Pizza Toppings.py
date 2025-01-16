#7.4 pizza-toppings: write a loop that prompts the user to enter a series of pizza toppings until they enter a 'quit' value.
#As they enter each topping, print a message saying you'll add that topping to their pizza.
pizza_toppings_0 = [] 
prompt ='Enter your toppings'
prompt += '\n(Enter quit when finished.)'

pizza_toppings = '' 
while pizza_toppings != 'quit': 
    pizza_toppings = input(prompt)
  
    if pizza_toppings != 'quit':
        pizza_toppings_0.append(pizza_toppings)
        print("I will add that to your pizza.")