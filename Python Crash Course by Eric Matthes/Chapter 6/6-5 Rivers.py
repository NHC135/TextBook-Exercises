#6-5. Rivers

Rivers = {'Nile' : 'Egypt', 'Mississippi' : 'US', 'Yangtze' : 'China'}

for river, location in Rivers.items(): 
    print(f"The {river.title()} runs through through {location.title()}.")


for river in Rivers: 
    print(river)



for location in Rivers: 
    print(location) 

