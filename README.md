# dbfiles-heroku 

dbfiles-heroku is (herofu.heroku.com ) ready to deploy on a Heroku  Cedar stack

dbfiles-heroku is a sinatra/rack app that is designed to be an easily deployed 
static file server for Heroku's zero-provisioning app hosting service.  Files 
are stored in database and are served in expected URL formats like
"http://appname.heroku.com/files/file.html".

## QUICK START

1.  git clone git@github.com:gertfindel/dbfiles-heroku.git && cd dbfiles-heroku
2. Change the USERNAME, PASSWORD
3. git commit -a -m "initial setup"
4. Make sure you have the 'heroku' gem installed (sudo gem install heroku)
5. heroku create <APPNAME>
6. git push heroku master
7. heroku addons:add shared-database
8. heroku open