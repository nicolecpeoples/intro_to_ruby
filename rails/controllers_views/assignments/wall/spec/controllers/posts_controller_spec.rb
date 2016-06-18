require 'rails_helper'

RSpec.describe PostsController, type: :controller do
	describe "POST posts#create"	do
		context "when logged in" do
			before do
				@user = User.create username:"TESTER", password:"DOESNtMATHER"
				session[:id] = @user.id
			end
			it "will create a post" do
				content = "THIS IS A POST"
				post :create, {
					:post => {
						:content => content
					}
				}
				
				expect(Post.last.content).to eq(content)
				expect(Post.last.user).to eq(@user)
				expect(Post.last.user.id).to eq(session[:id])

				expect(response).to redirect_to "/posts"
			end
		end
		context "when NOT logged in" do
			it "won't create a post, but will display error" do
				
			end
		end
	end
end
