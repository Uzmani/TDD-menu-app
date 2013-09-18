require 'spec_helper'

describe Post do
  let(:post) { Post.new(title: "good search engine", content: "google might is the best") }
  it "title should be automatically titleized before save" do
    post = Post.new
    post.title   = "good search engine"
    post.content = "google is good"
    expect { post.save }.to change { post.title }.from("good search engine").to("Good Search Engine")
    post.save

  end

  it "post should be unpublished by default" do
    expect(post.is_published).to be_false
  end

  # a slug is an automaticaly generated url-friendly
  # version of the title
  it "slug should be automatically generated" do
    post = Post.new
    post.title   = "New post!"
    post.content = "A great story"
    post.slug.should be_nil
    post.save

    post.slug.should eq "new-post"
  end
end
