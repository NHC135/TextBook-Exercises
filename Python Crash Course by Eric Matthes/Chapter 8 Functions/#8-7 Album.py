#8-7. Album

def make_album(artist_name, album_title, number_of_songs= None):
    if number_of_songs:
        album = { 'Name' : {artist_name} , 'Title' : {album_title}, 'number of songs' : {number_of_songs}}
    else: 
        album = {'Name' : {artist_name} , 'Title' : {album_title}}
    return album

print(make_album('justin','No water', 29))
     
    