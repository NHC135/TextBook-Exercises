#9-8: Login Attempts 

class User: 
    """Holds info about a user."""
    def __init__(self, first_name, last_name, **user_info):
        self.first_name = first_name
        self.last_name = last_name
        self.user_info = user_info
        login_attempts = 0
        
    def describe_user(self): 
        print(f"{self.first_name}\n{self.last_name}")
        print(f"{self.user_info}")
    
    def greet_user(self):
        print(f"hello {self.first_name} {self.last_name}!")
        
    def login_attempts(self, login_attempts): 
        "increments the login attempts."
        login_attempts += 1
        print(login_attempts)
    
    def reset_login_attempts(self):
        login_attempts = 0
        print(login_attempts)
        
class Admin(User):
    def __init__(self, first_name, last_name, **user_info):
        super().__init__(first_name, last_name, **user_info)
        
    
class Privileges(Admin): 
    def __init__(self, first_name, last_name, **user_info):
        super().__init__(first_name, last_name, **user_info)
        self.privileges = ['can add post', 'can delete post', 'can ban user']
    
    def show_privileges(self): 
        """shows the lists of the administator's set of privileges."""
        print(f"{self.privileges}")

admin_1 = Admin('natalie', 'lee')
admin_1_privileges = Privileges('natalie', 'lee')

admin_1_privileges.show_privileges()

