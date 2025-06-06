#Failing silently
def count_words(filename): 
    """Count the approximate number of words in a file."""
    try: 
        with open(filename, encoding='utf-8') as f:
            contents = f.read()
    except FileNotFoundError: 
        pass
    else:
        words = contents.split()
        numb_words = len(words)
        print(numb_words)
        
