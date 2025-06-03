#Working with multiple files
def count_words(filename): 
    """Count the approximate number of words in a file."""
    try: 
        with open(filename, encoding='utf-8') as f:
            contents = f.read()
    except FileNotFoundError: 
        print(f"the file {filename} does not exist.")
    else:
        words = contents.split()
        numb_words = len(words)
        print(numb_words)

filename = 'alice.txt'
count_words(filename)