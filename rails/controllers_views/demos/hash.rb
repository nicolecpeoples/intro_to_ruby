#hash tables

#this method puts everything into a single user table
<form action='/users/' method='post'>
  ...
  <input type='text' name='user[first_name]' />
  <input type='text' name='user[last_name]' />
  <input type='text' name='user[email]' />
  <input type='text' name='user[birthday]' />
  <input type='text' name='user[age]' />
  <input type='text' name='user[birth_place]' />
  <input type='text' name='user[hobbies]' />
  <input type='text' name='user[favorite_food]' />
  ...
</form>

#then return all of the params this way

User.create(params[:user])

User.create(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], birthday:params[:birthday], age:params[:age], ..., favorite_food: params[:favorite_food])
