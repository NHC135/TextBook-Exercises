#8-6. City Names

def city_country(city_name, country_name): 
    name = f"{city_name}, {country_name}"
    return name.title()

print(city_country('Santiago','Chile'))
print(city_country('paris','France'))
print(city_country('Manhattan', 'United States'))