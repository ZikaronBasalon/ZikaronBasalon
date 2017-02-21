#Zikaron Basalon

###How to set up Zikaron Basalon on you computer:

1. Make sure you have a Github account and git is set up on you computer:
  1. Create a Github account: https://github.com/join
  2. Setting up git: https://help.github.com/articles/set-up-git/
2. Now that you have git set up, in the command prompt, navigate to your favorite working folder (C:\Sites ?)
3. Run the command `git clone https://github.com/uriklar/ZikaronBasalon.git`
4. Now that you have cloned the Zikaron Basalon repository, navigate inside it's folder in the command prompt by doing `cd ZikaronBasalon` (You will need to be inside this folder whenever you work on Zikaron Basalon)
5. run the `bundle install` command to install all the gems used by Zikaron Basalon on your computer.
6. run the `rake db:migrate` command to create the needed database tables on your computer.
7. to see the website, start a server by running `rails s` and navigating to `http:localhost:3000`
8. to run a local console, run `rails c`

###New Year Setup:
* Whenever a new year starts, we need to have all users be inactive, so they will be asked if they want to continue this year(one time popup), and which role do they wish to have. To do this (careful!), run the following rake task:
* Locally: `bundle exec rake hotfixes:send_users_to_last_year`
* For Heroku: `heroku run rake hotfixes:send_users_to_last_year`

###How to contribute:

1. In the [issues page](https://github.com/uriklar/ZikaronBasalon/issues) you will find bugs and tasks
2. Choose a task you would like to work on (run it by me before uriklar@gmail.com)
3. Download the [github GUI tool](https://windows.github.com/) (it's much nicer then writing git commands in the command prompt!)
4. In the GUI tool, find the option "Add local repository" and select the ZikaronBasalon folder
5. Once the repository has been added, create a branch for your task (In the Github GUI tool there's a button for creating a branch)
6. Code away!
7. Commit you changes to github and create a pull request


### Feel free to contact me with any issues (uriklar@gmail.com)


