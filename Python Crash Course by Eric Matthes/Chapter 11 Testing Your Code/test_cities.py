#test_city_country() 

import unittest
import test_city_country from city_functions

class CitiesTestCase(unittest.TestCase): 
    """Test for city_functions"""
    def test_city_country(self): 
        formatted_city_country = test_city_country('santiago', "chile")
        self.assertEqual(formatted_city_country, "Santiago Chile")
        



