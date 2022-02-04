#!/bin/sh
heroku login -i
heroku apps
read -p "Please enter your app to view logs for: " app_name
heroku logs --tail --app=${app_name}
