class Blog < ApplicationRecord
  validates_presence_of :title, :body, :date
  belongs_to :user
end
