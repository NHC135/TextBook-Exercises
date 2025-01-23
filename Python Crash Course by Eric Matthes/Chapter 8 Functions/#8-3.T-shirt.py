#8-3 T-shirt:

def make_shirt(shirt_size, shirt_text):
    shirt_size = f"this size is: {shirt_size}."
    shirt_text = f"the text says {shirt_text}."
    print(shirt_size)
    print(shirt_text)

#positional
make_shirt('large', 'this is an ugly shirt')
   
#keyword
make_shirt(shirt_text = 'this is a cool shirt.', shirt_size = 'small')    
    
    