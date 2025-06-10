#10-10.Common Words:

text_files = 'D:\Python Crash Course Eric Matthes\Chapter 10 Files and Exceptions\Chapter 10 FIles and Exceptions\Frankenstein.txt' 

def word_counter(text_files, word):
    with open(text_files, encoding= 'utf-8') as f: 
        contents = f.read()
        
    contents.lower()
    numb_word = contents.count(word)
    print(f"the word '{word}' appears {numb_word} different times approximately in {text_files}.")


word_counter(text_files, 'the')