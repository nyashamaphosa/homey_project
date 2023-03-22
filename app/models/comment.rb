class Comment < ApplicationRecord
  belongs_to :project
  broadcasts_to :project
  validates_presence_of :user_name, :content
end
