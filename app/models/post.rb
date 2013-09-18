class Post < ActiveRecord::Base
  attr_accessible :title, :content, :is_published, :slug

  scope :recent, order: "created_at DESC", limit: 5

  before_save :titleize_title, :slugify

  validates_presence_of :title, :content



  private

  def titleize_title
    self.title = title.titleize
  end

  def slugify
    # self.slug = self.title.downcase.gsub(' ', '-').gsub(/[^a-zA-Z0-9-]+/, '')
    self.slug = title.parameterize
  end



end