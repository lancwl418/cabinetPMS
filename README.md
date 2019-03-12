# README

This README would normally document whatever steps are necessary to get the
application up and running.


* Ruby version 2.6.0

1. Add/edit/remove a room
2. Add/edit/remove a guest
3. Add/edit/remove a booking (assign a guest to a room)
3. Authetication of all the request by using devise. 

* Three Panels:
Guest
House
Booking

* Table: 
House (in this case, it is doc): title, content, user_id(foreign key)
Guest: name, gender, note, user_id(foreign key)
Booking: room (doc) ID, guest ID, checkin, checkout, user_id(foreign key)
User(authetication) - using the devise library 

* Authentication:
The user have to create an account before doing all the requests. 
Each user can only do all the requests in their own archives. Like user Linda can only see the guests she created. 

* Booking: 
In my case, a room can have multiple bookings, a guest can also have multiple bookings. So I created associations between room(doc) and booking(1 to many), guest and booking (1 to many). 

When create booking, the user just input the house(doc) id, guest id, checkin, checkout. It will show the corresponding house title, guest name, as well as checkin and checkout in the list page.





