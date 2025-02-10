#User Profile

def build_profile(first, last, **user_info):
    """build a discitonary containing everuthing we know about a user."""
    user_info['first_name'] = first
    user_info['last_name'] = last
    return user_info

user_profile = build_profile('josh', 'allen', team = 'KC', field = 'football')

print(user_profile)

