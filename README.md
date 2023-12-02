# Govtech-Test

Prerequisite:
- Install ruby (I use version 3.1.3)
- Run `$ gem install cucumber`
- Run `$ gem install Selenium web-driver`
- Use chrome version 113.0 to run

How to test and run automation:
- Clone this repository
- Open the project on your application (I use RubyMine)
- Open `features/login.feature` file
- Open the terminal
- Run the automation using `bundle exec cucumber --tag <tag name>`, or
- Run the automaion using `cucumber -f pretty -f html -o report.html` to generate the report and see the report in report.html
  
