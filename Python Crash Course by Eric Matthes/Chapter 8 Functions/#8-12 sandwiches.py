#8-12. Sandwiches 



def sandwich_fill(*sandwich_toppings):
    """
    collects as many items as the function call provides, and 
    print a summary of the sandwich that's being ordered.
    """
    print('\nwe are making a sandwich with: ')
    for sandwich_topping in sandwich_toppings:
        print(sandwich_topping)
        
sandwich_fill('meatballs','toasted')
sandwich_fill('meatballs','pepperoni','lettuce')
