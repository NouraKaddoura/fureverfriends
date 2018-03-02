

# Fur-Ever Friends
![website](/app/assets/images/homescreen.png)


This app is built to help connect people who are looking to adopt a pet into a forever home, and also for people who are currently looking for forever homes for the animals in their care. 
[Link to Fur-Ever Friends](https://stormy-harbor-34048.herokuapp.com/)

### Technology
    * Ruby on Rails (Ruby version 2.5.0)

    * Postgresql

    * Bcrypt

    * Bootstrap

    * HTML
    
    * CSS/SASS

    * Animate.css

### Approach

Planning for this app started with focusing on the first two main models and then determing the key user stories for that model. I built a trello board to help stay on track. I draw some images then transferred them to trello with the basic data information the app needed then migrated additional data after app implementation. 

[Link to Trello](https://trello.com/b/RKus7kZ5/fur-ever-friends)

### Installation/Startup Instructions

    * The first step is to download this directory from Github to a local directory on your computer.

    * Open Terminal 

    * Open the project directory and type: bundle install      -(This installs gems you need for the app)

    * Make sure you have Postgres, if not download from the Postgres website. 
    
    * Then, initiate a Postgres local server

    * Open a new terminal tab and make sure you are not in Postgres or have a rails server open in that tab.

    * Type: rails run rake db:migrate 
        -(this will migrate the app's tables)

    * Type: rails server. 
        -(This will initiate your server)

    * Open a new tab on your browser and type in localhost:3000
        -(If you get an error or a different application, make sure you do not have a previous local server running in a separate terminal tab.)

    * Start using/updating the app to help pets and people in your area!


### Unresolved Issues

* I ran out time to build full CRUD on the Users Model. I did finish the Pets Model, but I had some problems linking routes and ran out of time. Also, the navigation bar had some issues when I tried to open the app on my phone, I would like to make it mobile friendly. 

### Future Features and Functionality

* I want to be able to add a chat feature for those looking for a Pet and those who are the current caretakers so they can communicate real time. I also want to be able to have users upload photos in the future instead of URLs(which was a stretch goal I had but ran out of time. I also want the list of pets to fill up the entire screen when you hover over it, instead of it just being the buttom portion of the main webpage. 

### Acknolwedgements

[Background](http://jllsly.com/wallpapers/kitten-and-puppy-wallpapers-hd-resolution-Is-Cool-Wallpapers.jpg)

[Icon](https://www.inspirationde.com/wp-content/uploads/2017/05/dog-amp-cat-by-alfrey-davilla-vaneltia-dribbble-149607587484gkn.png)

[Google Font](https://fonts.googleapis.com/css?family=Carter+One|Josefin+Sans)

### Technical Requirements
* I two models: Pets & Users
* Users can log in & Sign up with authentication. Users cannot change other users profiles and cannot delete other users Pets. Only the original poster of the pet can take the pet down once it has been adopted. 
* I completed full CRUD with Pets, almost completed full crud with Users. 
* They app is currently deployed using Heroku 