#create new rails project
rails new test_project
cd test_project

#create a table
rails g model User

#to add info to the table 
rails g model User first_name:string last_name:string email:string password:string age:integer

#datatypes
:binary
:boolean
:date
:datetime
:decimal
:float
:integer
:primary_key
:references
:string
:text
:time
:timestamp

#find this new db=> migrate => create_project_name
#make sure everything is fine, if it is migrate the db
rake db:migrate

#verify db was created by checking schema.rb