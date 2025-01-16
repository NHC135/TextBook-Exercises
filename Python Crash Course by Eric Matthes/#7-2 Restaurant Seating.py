#7-2 Restaurant Seating 

reservation = input('how many people are in your dinner group?')
reservation = int(reservation)

if reservation > 8: 
    print('you will have to wait for another table.')
else: 
    print('your table is ready.')