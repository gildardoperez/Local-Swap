#  Local Swap

Local Swap is a complex application that allows users to create profiles and trade items with other users via a geographically and socially enabled environment. User locations are hidden via a location scrambling function that offsets their given location by up to 500 ft. Directions are available for users to locate other users, but those directions will never point to a user's true location. In this way user locations are used as an asset to the application but not made available for other users.

Find *Local Swap* Live on Heroku
```
https://local-swap.herokuapp.com/
```

##  Important Notice

When logging in for the first time, use **Email: local@swap.app**  **Password: password**  
The database must first be seeded for this to work. It will allow you to access all features, including the ReactJS Admin Dashboard.

## Technologies Used

* **Application**: *Ruby on Rails 5, ReactJS*<br>
* **Testing**: *Rspec, Capybara, Simplecov, FactoryGirl, PhantomJS, Poltergeist*<br>
* **Database**: *Postgres, ActiveRecord*

Installation
------------

Install *Local Swap* by cloning the repository.  
```
$ git clone https://github.com/PatrickCLipscomb/Local-Swap.git
```

Check to make sure ruby and rails are installed on your machine.  
```
$ ruby -v
$ rails -v
```
If they are not installed, please follow instructions [here](http://guides.rubyonrails.org/getting_started.html#installing-rails) to install ruby on rails.

Install required gems:
```
$ bundle install
```

Install ImageMagick which allows for file attachments and image cropping.

If on Mac:
```
$ brew install imagemagick
```
If on Windows please follow this guide:
```
http://andystu.github.io/blog/2015/06/03/how-to-install-paperclip-for-rails-app-on-windows/
```

Run Postgres:
```
$ postgres
```

Navigate to project file and setup database:
```
$ rake db: setup
```

Create a .env file in the Root Directory:
```
GOOGLE_API=<google_maps_api_key>
```

Start the Rails webserver:
```
$ rails server
```

Navigate to `localhost:3000` in your browser of choice.

License
-------
_This software is licensed under the MIT license._<br>
Copyright (c) 2016 **Patrick Lipscomb**
