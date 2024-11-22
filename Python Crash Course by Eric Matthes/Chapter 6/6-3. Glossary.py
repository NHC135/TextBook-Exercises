#6-3 Glossary: 

programming_words = {'lists': 'interchangable information that can be stored or altered in a set.', 
'Dictionary': 'you can store information that pairs data with keys and values',
'Conditionals': 'provide conditionals that provide conditions for a program to permit or exempt', 
'variables': 'interchangable data that can be utilized or altered',
'print': 'enables an output of information to the screen'}

print(f'lists : {programming_words['lists']}. ')
print(f'\nDictionary : {programming_words['Dictionary']}. ')
print(f'\nConditionals : {programming_words['Conditionals']}. ')
print(f'\nvariables : {programming_words['variables']}. ')
print(f'\nprint : {programming_words['print']}. ')

for word in programming_words: 
    print(programming_words.values())