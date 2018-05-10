#models/article.rb
class Article < ApplicationRecord
  validates_presence_of :title, :body
end
