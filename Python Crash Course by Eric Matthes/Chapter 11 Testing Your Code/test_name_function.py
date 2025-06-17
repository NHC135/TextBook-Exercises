import unittest
from name_function import get_formatted_name

class NamesTestCase(unittest.TestCase):
    """Test for 'name_function.py'. """
    
    def test_first_last_name(self): 
        """Do names like 'Janis Joplin' Work? """
        formatted_name = get_formatted_name('janis', 'joplin')
        self.assertEqual(formatted_name, "Janis joplin")
    
if __name__ == '__main__': 
    unittest.main() 