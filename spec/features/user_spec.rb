require 'spec_helper'

feature 'User browsing the website' do

  context "on homepage" do

    let(:post) { Post.create(title: "best search engine", content: "google is the best") }

    it "sees a list of recent posts titles" do
      visit root
      expect(page).to have_content("Best Search Engine")
      # given a user and a list of posts
      # user visits the homepage
      # user can see the posts titles
    end

    it "can click on titles of recent posts and should be on the post show page" do
      pending
      # given a user and a list of posts
      # user visits the homepage
      # when a user can clicks on a post title they should be on the post show page
    end
  end

  context "post show page" do
    it "sees title and body of the post" do
      pending
      # given a user and post(s)
      # user visits the post show page
      # user should see the post title
      # user should see the post body
    end
  end
end
