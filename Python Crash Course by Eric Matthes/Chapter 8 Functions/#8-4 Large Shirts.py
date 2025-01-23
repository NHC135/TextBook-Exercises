#8-4 Large Shirts

def make_shirt(shirt_size = 'large', shirt_text = 'I love python'):
    shirt_size = f"this size is: {shirt_size}."
    shirt_text = f"the text says '{shirt_text}'."
    print(shirt_size)
    print(shirt_text)

make_shirt()
make_shirt(shirt_size= 'medium')
make_shirt(shirt_text='I love C++')