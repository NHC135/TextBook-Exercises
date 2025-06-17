#11-2. Population

import unittest
from city_functions import test_city_country 

class CitiesTestCase(unittest.TestCase): 
    """Test for city_functions"""
    def test_city_country(self): 
        formatted_city_country = test_city_country('santiago', "chile")
        self.assertEqual(formatted_city_country, "Santiago Chile")
    
    def test_city_country_population(self):
        """Can I include a population argument?"""
        santiago_chile = city_country('santiago', 'chile', population=5_000_000)
        self.assertEqual(santiago_chile, 'Santiago, Chile - population 5000000')

    
if __name__ == '__main__': 
    unittest.main()