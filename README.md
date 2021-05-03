## Assessment application for Marley Spoons

This is a demo application for evaluation purpose. Please follow the necessary steps to get the
application up and running.

* Install Ruby version: 3.0.1
* NodeJS and Yarn should be installed
* Create a .env file at root directory with the following keys and appropriate values. See .env.sample for reference<br>
  `SPACE_ID=xxxxxx`<br>
  `ACCESS_TOKEN=xxxxxxx`<br>
  `CONTENTFUL_ENVIRONMENT=master`<br>
  
* run `gem install bundler`
* run `bundle install`
* run `rails s` to start the application at `http://localhost:3000/`

#### OR You can run app through DOCKER
Simply run,
* `docker-compose build`
* `docker-compose up` to spin the container at `http://localhost:3000/`

#### To run the application in production mode:
Change the prod values in .env file and run
* `RAILS_ENV=production docker-compose up`
