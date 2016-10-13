Stockr
======
This project was a three day exercise ("Makerthon") in our 9th week of the Makers Academy bootcamp. It is a Ruby on Rails application that allows a food wholeseller to update their current stock and easily send their customers an updated list via e-mail.

https://samed-stockr.herokuapp.com/

Members
-------
* Richard - https://github.com/richo225
* Jose - https://github.com/joseck0510
* Ross - https://github.com/SlipperyJ
* Samed - https://github.com/SamedYalniz
* Zee - https://github.com/mzishtiaq

Installation
------------
Clone the repository:
```
$ git clone git@github.com:SamedYalniz/stockr.git
$ cd stockr
```
Get the required gems:
```
$ bundle install
```
Create the database:
```
$ rake db:create
$ rake db:migrate
```

Running the app
---------------
Run the rails server:
```
$ bin/rails s
```
Open another terminal window
```
$ open http://localhost:3000 //OS X
$ xdg-open http://localhost:3000 //Linux
```

Demonstration
-------------
![1](https://cloud.githubusercontent.com/assets/18379191/18225584/fab6d716-71ed-11e6-8347-8ff95c315346.png)
![2](https://cloud.githubusercontent.com/assets/18379191/18225585/fab8ce5e-71ed-11e6-9a3c-dd7377a30acd.png)

Range of products
-----------------
![3](https://cloud.githubusercontent.com/assets/18379191/18225586/fab98d3a-71ed-11e6-8463-6e173aab88cf.png)
![4](https://cloud.githubusercontent.com/assets/18379191/18225587/fab9e0fa-71ed-11e6-9ce8-68d9ba95e23b.png)
![5](https://cloud.githubusercontent.com/assets/18379191/18225589/fabe0270-71ed-11e6-9706-2ee6d08452ed.png)
![6](https://cloud.githubusercontent.com/assets/18379191/18225588/fabae482-71ed-11e6-85a4-b580bc7ca518.png)

Update stock list
-----------------
![8](https://cloud.githubusercontent.com/assets/18379191/18225590/fac81c06-71ed-11e6-93c1-0c82daa4bd8d.png)
![9](https://cloud.githubusercontent.com/assets/18379191/18225591/facbe5c0-71ed-11e6-83da-ade173c3ab4f.png)

Notify customers
---------------
![12](https://cloud.githubusercontent.com/assets/18379191/18225594/fad0f5d8-71ed-11e6-8e4a-9b290135240a.png)
![13](https://cloud.githubusercontent.com/assets/18379191/18225595/fad2d8e4-71ed-11e6-8f61-315af02fdc4b.png)
![14](https://cloud.githubusercontent.com/assets/18379191/18225596/fad9c622-71ed-11e6-99c2-47a43e3db9cd.png)

Customer email
--------------
![15 stockr email](https://cloud.githubusercontent.com/assets/18379191/18225597/fade48c8-71ed-11e6-9979-18809e1d8731.PNG)

User stories
------------
```
As a wholeseller
so that I can edit my stock
I would like to be able to login

As a wholeseller
so that I can save my range of goods
I would like to be able to create an item

As a wholeseller
so that I can update my current stock
I would like to be able pick from my range of goods

As a wholeseller
so that I can inform my customers
I would like to be able to store a list of my customers

As a wholeseller
so that I can inform my customers
I would like to be able to send them an email notification
```

Mockups
-------
![what_is_in_stock](https://cloud.githubusercontent.com/assets/9626479/18095879/4f7cb368-6ed0-11e6-88e8-7039f748f364.jpg)

![what_is_in_stock](https://cloud.githubusercontent.com/assets/18379191/18093101/b4aa367a-6ec6-11e6-93f1-9f8ed8e988e9.png)

Technologies
------------
* Rails-4
* Ruby
* Postgresql
* Rspec
* Capybara
* Jquery
* Bootstrap-3

Future implementations
----------------------
