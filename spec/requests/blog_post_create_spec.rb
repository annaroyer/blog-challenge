require 'rails_helper'

describe "blog API" do
  context "post /api/v1/user/:user_id/blog_posts" do
    it "creates a new blog post for that user" do
      user = User.create(first_name: "Anna", last_name: "Royer", email: "email@email.com", token: "123456", uid: "54321", oauth_expires_at: 1)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      post "/api/v1/user/user.id/blog_posts"
    end
  end
end
