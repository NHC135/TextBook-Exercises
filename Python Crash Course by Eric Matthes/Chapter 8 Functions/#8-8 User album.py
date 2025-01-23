#8-8. User Albums

def make_album(artist_name, album_title, number_of_songs= None):
    if number_of_songs:
        album = {'Name' : {artist_name} , 'Title' : {album_title}, 'number of songs' : {number_of_songs}}
    else: 
        album = {'Name' : {artist_name} , 'Title' : {album_title}}
    return album

while True: 
    print("input info: ")
    print("enter a xxx for artist name or album title to quit: ")
    
    a_name = input("Artist's name: ")
    if a_name == 'xxx':
        break
    
    a_title = input("Album title: ")
    if a_name == 'xxx':
        break
    
    n_songs = int(input("Enter number of songs: "))
    
    formatted_album = make_album(a_name, a_title, n_songs)
    print(formatted_album)
   