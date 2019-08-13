# test_app


Installation
============
Before start you need to hame installed Docker-compose.


* Downlod all files and folders to your local computer. 
* Create in the web-app/ folder env file (.env).
* Add 2 lines:

    GMAIL_USERNAME = your@gmail.com 
    
    GMAIL_PASSWORD = yourpassord 
    
* Then from the terminal go to the test_app/ folder
* type commands

        TAG=1 docker-compose build
        TAG=1 docker-compose up -d
        TAG=1 docker-compose exec web-app rake db:setup
        TAG=1 docker-compose exec web-app rake db:migrate
        
* Go to the web browser http://localhost:3003


Sidekiq http://localhost:3003/sidekiq
