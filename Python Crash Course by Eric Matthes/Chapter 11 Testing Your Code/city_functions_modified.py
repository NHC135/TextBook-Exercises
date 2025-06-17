#11-1. City, Country

def test_city_country(city, country, population=''): 
    """verifies that the city, country results in the correct string."""
    city.title() + ' ' + country.title() 
    if population: 
        return city.title() + ' ' + country.title() + f' - population {population}'
    else: 
        return city.title() + ' ' + country.title() 
        
 

