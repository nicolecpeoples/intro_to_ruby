<form action='/products/' method='post'>
  <input type='text' name='product[name]' placeholder='name' />
  <input type='text' name='product[description]' placeholder='description' />
  <input type='text' value='Create' />
</form>

def create
  @product = Product.create( params[:product] )
  #this redirect only applies for when the product was successfully created! You'll have to modify this  code with an if statement to RENDER the new view IF there are errors ELSE REDIRECT to the products view if there weren't errors.
  redirect_to '/products'
end

def create
  @product = Product.create( product_params )
  redirect_to '/products'
end
private 
  def product_params
   params.require(:product).permit(:name, :description)
  end


  def create
  @product = Product.create( product_params )
  redirect_to '/products'
end
def update
  @product = Product.update( product_params )
  redirect_to '/products'
end
private 
  def product_params
   params.require(:product).permit(:name, :description)
  end


 #form helpers

 <% form_for :person, @person, :url => { :action => "create" } do |f| %>
  <%= f.text_field :first_name %>
  <%= f.text_field :last_name %>
  <%= submit_tag 'Create' %>
<% end %>

generates this HTML

<form action="/persons/create" method="post">
  <input id="person_first_name" name="person[first_name]" size="30" type="text" />
  <input id="person_last_name" name="person[last_name]" size="30" type="text" />
  <input name="commit" type="submit" value="Create" />
</form>

<%= form_tag({action: :create}) do %>
	<%= label_tag(:q, "Search for:") %>
  	<%= text_field_tag(:q) %>
<% end %>

#for patch method in the edit form
<form method='post'>
    <input type="hidden"name="_method"value="patch">
</form>

#deleting
<a href= "blogs/<%= blog.id %>" data-method='delete'>delete this blog!</a>

