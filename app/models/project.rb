class Project < ApplicationRecord
    has_many :comments
    validates_presence_of :title, :content, :status
end
