require 'rails_helper'

RSpec.describe Post, type: :model do
	before do
		@user = User.create username:"TESTER", password:"PSTTTDSF"
	end
	# it can be created ...
	it "can access its poster with `post.user`" do
		post = Post.new
		post.user = User.last
		post.content = "blah blahb labhbl ahlb "
		post.save

		expect(post.user).to eq(@user)
	end
	it "can be accessed through it poster with `user.posts`" do
		post = Post.new
		post.user = User.last
		post.content = "blah blahb labhbl ahlb "
		post.save
		expect(@user.posts.last).to eq(post)
		expect(@user.posts).to include(post)
	end
end
