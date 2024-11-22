
#6-4 Glossary: 

programming_words = {
'lists': 'interchangable information that can be stored or altered in a set.', 
'Dictionary': 'you can store information that pairs data with keys and values',
'Conditionals': 'provide conditionals that provide conditions for a program to permit or exempt', 
'variables': 'interchangable data that can be utilized or altered',
'print': 'enables an output of information to the screen',
'for loop': 'runs through iterations in a given set',
'set': 'used to find the unique key or values in a dictionary.', 
'append': 'is used to add values to a list or dictionary.',
'del': 'is used to delete values from a list or dictionary', 
'tuple': 'a list that is exempt from modifications.'
}

for word, definition in programming_words.items():
    print(f"\n{word.title()} : {definition}")