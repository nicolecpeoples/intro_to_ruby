rails g migration [name of the migration] (e.g. rails g migration addNewColumnToBooks)

Functions
create_table(name, options)
drop_table(name)
rename_table(old_name, new_name)
add_column(table_name, column_name, type, options)
rename_column(table_name, column_name, new_column_name)
change_column(table_name, column_name, type, options)
remove_column(table_name, column_name)
add_index(table_name, column_name, index_type)
remove_index(table_name, column_name)
add_reference(table_name, referenced_model, index:true)

Different data types
string - for small data types (less than 256 characters)
text - for longer text (more than 256 characters)
integer - for whole numbers
float - for decimals
datetime and timestamp - store the date and time into a column
date and time - store either the date only or time only (not used very often)
binary - for storing data such as images, audio, or movies (not used very often)
boolean - for storing true or false values

Rake
rake routes
rake db:migrate
rake db:rollback - rollback the change; do this if you made a mistake
rake db:rollback STEP=3 - rollback the last 3 changes made in the migrations