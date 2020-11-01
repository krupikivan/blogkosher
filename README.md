# Commands

# Rails

## Start
- rails new appName
- rails generate controller pages

## Add Style
- yarn add bootstrap@4.5 jquery popper.js

- For Javascript into config/webpack/environment.js 

        const webpack = require("webpack")
        environment.plugins.append("Provide", new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        Popper: ['popper.js', 'default']
        }))
- For CSS into app/assets/stylesheets/application.css
        *= require bootstrap


## Rails command line

- rails s             ---> Start puma server

- rails new new_app   ---> Create new_app

- rails generate scaffold Post title:string description:text  ---> Create full set of model, database, migration of the post model, controller, views, data and test suite

- rails console   ---> Open debug console

## Creating Articles
- Migration file (db): rails generate migration create_articles
- Run migration file (if has changes):  rails db:migrate
- Undo last migration: rails db:rollback
- Create new migration every time has changes

# HEROKU

## Production Deploy
- heroku create

- add gem 'pg' to production group and sqlite to development and test group

- bundle install --without production

- make a commit of code: git add -A

- git commit -m ""

- git push heroku master

## To run migrations at heroku, you can use the following command:

- heroku run rails db:migrate
- heroku open

## Heroku Command

- Create app: heroku create

- Rename app: heroku rename newname

- Remove heroku remote: git remote rm heroku

- Migrate database: heroku run rake db:migrate

- Delete app: heroku apps:destroy --app appname
